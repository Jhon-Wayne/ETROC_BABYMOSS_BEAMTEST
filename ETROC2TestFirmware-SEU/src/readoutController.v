`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Datao Gong and Wei Zhang
// 
// Create Date: Fri Jan 15 23:03:34 CST 2021
// Design Name: readoutController
// Module Name: readoutController
// Project Name: ETROC1 Array For Beam Test
// Target Devices: KC705
// Tool Versions: Vivado 2018.3
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created

// 
//////////////////////////////////////////////////////////////////////////////////


module readoutController(
    input reset,                    // reset signal
    input clk40,                      // input 40 MHz clock
    input clk160,                      // input 160 MHz clock
    input [3:0] boardType,          //0, ETROC1, 1, ETROC2
    input noTimestamp,
    input [127:0] snapshot_data,
    input randomTrigger,
    input output_fifo_rd_clk,               //to Ethernet controller
    input output_fifo_rd_en,                // read clock
    output output_fifo_almostfull,
    output [31:0] output_fifo_dout,         // fifo32to32 data output
    output trigger_fifo_full,
    output output_fifo_empty                // fifo32to32 empty signal
);

parameter low_level = 1000;
parameter high_level = 8000;

wire [3:0] snapshot_hitflags;           // do not use 

//timestamp
reg [51:0] timestamp;
wire [25:0] timestampLSB;
wire [25:0] timestampMSB;
assign timestampLSB = timestamp[25:0];
assign timestampMSB = timestamp[51:26];
always @(posedge clk40)
begin
    if(reset)
        timestamp <= 51'd0;
    else
        timestamp <= timestamp + 1;
end

//---------------------------------------------------------< fifo160to160
// trigger fifo
// wire trigger_fifo_full; //not used, never full
wire trigger_fifo_empty;
reg trigger_fifo_rd_en;
wire trigger_fifo_wr_en; 
wire [191:0] trigger_fifo_dout;
wire trigger_fifo_wr_rst_busy; //not used
wire trigger_fifo_rd_rst_busy; //not used

//monitor missing event
reg [15:0] missingCount0;
reg [15:0] missingCount1;
reg [15:0] missingCount2;
reg [15:0] missingCount3;
wire [191:0] trigger_fifo_din;

 wire anyHits;
 assign anyHits = snapshot_data[0] | snapshot_data[32] | snapshot_data[64] | snapshot_data[96];
 assign trigger_fifo_wr_en = ~trigger_fifo_full & anyHits;

assign  trigger_fifo_din[191:160] = {6'b100011,timestampMSB};
assign  trigger_fifo_din[159:128] = {5'b10000,randomTrigger,timestampLSB}; //timestamp LSB    
assign  trigger_fifo_din[31:0]   = anyHits ? snapshot_data[31:0]   : {15'd0, missingCount0, missingCount0 != 16'd0};
assign  trigger_fifo_din[63:32]  = anyHits ? snapshot_data[63:32]  : {15'd0, missingCount1, missingCount1 != 16'd0}; 
assign  trigger_fifo_din[95:64]  = anyHits ? snapshot_data[95:64]  : {15'd0, missingCount2, missingCount2 != 16'd0}; 
assign  trigger_fifo_din[127:96] = anyHits ? snapshot_data[127:96] : {15'd0, missingCount3, missingCount3 != 16'd0}; 

always @(posedge clk40)
begin
    if(reset)
    begin
        missingCount0 <= 16'd0;
        missingCount1 <= 16'd0;
        missingCount2 <= 16'd0;
        missingCount3 <= 16'd0;
    end
    else if (anyHits == 1'b1)
    begin
        if(trigger_fifo_full) //trigger fifo is full, can not write, count the missed event
        begin
          if(snapshot_data[0])
          begin
            missingCount0 <= missingCount0 + 1;
          end
          if(snapshot_data[32])
          begin
            missingCount1 <= missingCount1 + 1;
          end
          if(snapshot_data[64])
          begin
            missingCount2 <= missingCount2 + 1;
          end
          if(snapshot_data[96])
          begin
            missingCount3 <= missingCount3 + 1;
          end
        end
    end
    else if (~trigger_fifo_full) //trigger fifo is not full, trigger is not selected, we write missing counter and clear the counter data.
    begin
            missingCount0 <= 16'd0;
            missingCount1 <= 16'd0;
            missingCount2 <= 16'd0;
            missingCount3 <= 16'd0;
    end
end

// wire [191:0] tmp_trigger_fifo_dout;

    // reg [31:0] counter;
    // always @(posedge clk40)
    // begin
    //     if(reset)
    //     begin
    //         counter <= 32'd0;
    //     end
    //     else if(trigger_fifo_wr_en)
    //     begin
    //         counter <= counter + 1;
    //     end
    // end


fifo_160to160_depth2k fifo_160to160_depth2k_inst0( //actual 192 bits width
  .rst(reset),                           		// fifo160to160 reset 
  .wr_clk(clk40),                          		// input wire wr_clk
  .rd_clk(clk160),                    				// input wire rd_clk
  .din(trigger_fifo_din),           // input wire [159:0] din
  // .din({trigger_fifo_din[191:32],3'd0,counter[27:0],1'b1}),
  .wr_en(trigger_fifo_wr_en),                        // input wire wr_en
  .rd_en(trigger_fifo_rd_en),                        // input wire rd_en
  .dout(trigger_fifo_dout),                          // output wire [159:0] dout
  .full(trigger_fifo_full),                          // output wire full
  .empty(trigger_fifo_empty),                        // output wire empty
  .wr_rst_busy(trigger_fifo_wr_rst_busy),            // output wire wr_rst_busy
  .rd_rst_busy(trigger_fifo_rd_rst_busy)             // output wire rd_rst_busy
);


// assign trigger_fifo_dout = {tmp_trigger_fifo_dout[191:32],3'd0,counter[27:0],1'b1};

wire [31:0] currentTimeStampMSB;
assign currentTimeStampMSB = trigger_fifo_dout[191:160];

//---------------------------------------------------------< zero compress
reg output_fifo_wr_en;
wire output_fifo_wr_rst_busy;
wire output_fifo_rd_rst_busy;
wire output_fifo_full; 
wire [13: 0] output_fifo_wr_count;
reg [31:0] output_fifo_din;
// wire output_fifo_almostfull;
wire output_fifo_almostempty;
assign output_fifo_almostfull = output_fifo_wr_count > high_level;
// assign output_fifo_almostempty = output_fifo_wr_count < low_level;

assign output_fifo_almostempty = 1'b0;


wire [2:0] maskedHitCount;
wire [3:0] hitflag;

reg [3:0] mask;
wire [3:0] maskedflag;
wire [1:0] token;  //which word will be read next

assign hitflag[0] = trigger_fifo_dout[0];
assign hitflag[1] = trigger_fifo_dout[32];
assign hitflag[2] = trigger_fifo_dout[64];
assign hitflag[3] = trigger_fifo_dout[96];
assign maskedflag = mask & hitflag;
assign maskedHitCount = {2'b00,maskedflag[0]} + 
                        {2'b00,maskedflag[1]} + 
                        {2'b00,maskedflag[2]} + 
                        {2'b00,maskedflag[3]};

assign token = maskedflag[0] ? 2'b00 : 
              (maskedflag[1] ? 2'b01 :
              (maskedflag[2] ? 2'b10 : 2'b11 ) );
wire [28:0] currentTDCETROC1;
wire [27:0] currentTDCETROC2;
wire [28:0] ch0TDC = trigger_fifo_dout[29:1];
wire [28:0] ch1TDC = trigger_fifo_dout[29+32:1+32];
wire [28:0] ch2TDC = trigger_fifo_dout[29+64:1+64];
wire [28:0] ch3TDC = trigger_fifo_dout[29+96:1+96];
// wire currentBoardType; 
assign currentTDCETROC1 = (token == 2'b00) ? ch0TDC : 
                         ((token == 2'b01) ? ch1TDC :
                         ((token == 2'b10) ? ch2TDC : ch3TDC));
assign currentTDCETROC2 = currentTDCETROC1[27:0]; //drop the MSB
// assign currentBoardType = boardType[token];

reg [25:0] lastTimeStampMSB;
reg [2:0] state;  //state register
localparam state_idle = 3'd0;
localparam state_timestampLSB = 3'd1;
localparam state_timestampMSB = 3'd2;
localparam state_writeTDC = 3'd3;
localparam filler32 = 32'H9800;

wire [31:0] filler = noTimestamp ? 32'd0 : filler32;
always @*
begin
  case (state)
    state_idle:
      begin
        output_fifo_wr_en   = output_fifo_almostempty;
        trigger_fifo_rd_en  = 1'b0;
        output_fifo_din     = filler;//output_fifo_almostempty ? {6'b100010,26'd0} : 32'd0; //write null event
      end
    state_timestampLSB:
      begin
        // output_fifo_wr_en   = ~output_fifo_full;
        output_fifo_wr_en = 1'b0;
        trigger_fifo_rd_en  = 1'b0; 
        output_fifo_din     = {5'b10000,trigger_fifo_dout[128+26:128]}; //timestamp LSB
      end
    state_timestampMSB:
      begin
        // output_fifo_wr_en = ~output_fifo_full;
        output_fifo_wr_en = 1'b0;

        trigger_fifo_rd_en = 1'b0; //no read
        output_fifo_din = currentTimeStampMSB; //timestamp MSB
      end
    state_writeTDC:
      begin
        output_fifo_wr_en = ~output_fifo_full & (maskedHitCount != 3'd0) & ~trigger_fifo_empty;
        trigger_fifo_rd_en = ~output_fifo_full & ~trigger_fifo_empty & (maskedHitCount == 3'd1); //if read is complete
        output_fifo_din = trigger_fifo_empty ? filler : 
                          (noTimestamp ?  {token,currentTDCETROC1,1'b1} : 
                          (boardType[token] == 1'b0 ? {1'b0, token,currentTDCETROC1} : {2'b11,token,currentTDCETROC2}));
      end
      default:
      begin
        output_fifo_wr_en   = output_fifo_almostempty;
        trigger_fifo_rd_en  = 1'b0;
        output_fifo_din     = filler;//output_fifo_almostempty ? {6'b100010,26'd0} : 32'd0; //write null event
      end
  endcase
end


always @(posedge clk160)
begin
    if(reset)
    begin
        mask <= 4'b1111;
        lastTimeStampMSB <= 26'd0; 
        state <= state_idle;
    end
    else 
    begin
    case (state)
      state_idle:
        begin
          mask  <= 4'b1111;
          state <= trigger_fifo_empty ? state_idle : (noTimestamp ? state_writeTDC : state_timestampLSB);
        end
      state_timestampLSB:
        begin
          mask  <= 4'b1111;
          state <= output_fifo_full ? state_timestampLSB : 
                  (lastTimeStampMSB != currentTimeStampMSB[25:0] ? state_timestampMSB : state_writeTDC);
        end
      state_timestampMSB:
        begin
          mask  <= 4'b1111;
          lastTimeStampMSB <= currentTimeStampMSB[25:0];
          state <= output_fifo_full ? state_timestampMSB : state_writeTDC;
        end
      state_writeTDC: //at least one hit
        begin
          if(~output_fifo_full) mask[token]  <= 1'b0;
          state <= trigger_fifo_empty ? state_idle : 
          ((output_fifo_full | maskedHitCount > 3'd1) ? state_writeTDC : state_idle );
        end
      default:
        begin
          mask  <= 4'b1111;
          state <= trigger_fifo_empty ? state_idle : (noTimestamp ? state_writeTDC : state_timestampLSB);
        end
    endcase
    end
end

//---------------------------------------------------------< fifo32to32
// `define ETHERNET_SPEED_TEST
`ifdef ETHERNET_SPEED_TEST
  reg [23:0] counterTimer;
  reg [7:0] counterData;
  wire speed_test_wr_en;

  always @(posedge clk160)
  begin
    if(reset)
    begin
      counterTimer <= 24'd0;
    end
    else begin
      counterTimer <= counterTimer + 1;
    end
  end

  always @(posedge clk160)
  begin
    if(reset)
    begin
      counterData <= 8'd0;
    end
    else if(speed_test_wr_en)
    begin
      counterData <= counterData + 1;
    end
  end
wire [31:0] speed_test_din;
assign speed_test_din =  {counterData,counterTimer};
assign speed_test_wr_en = ~output_fifo_full;

fifo32to32 output_fifo(
  .rst(reset),                          // input wire rst
  .wr_clk(clk160),                   // input wire wr_clk
  .rd_clk(output_fifo_rd_clk),                      // input wire rd_clk
  .din(speed_test_din),                            // input wire [31 : 0] din
  .wr_en(speed_test_wr_en),                        // input wire wr_en
  .rd_en(output_fifo_rd_en),                        // input wire rd_en
  .dout(output_fifo_dout),                          // output wire [31 : 0] dout
  .full(output_fifo_full),                          // output wire full
  .empty(output_fifo_empty),                        // output wire empty
  .wr_data_count(output_fifo_wr_count),        // output wire [13 : 0] wr_data_count
  .wr_rst_busy(output_fifo_wr_rst_busy),            // output wire wr_rst_busy
  .rd_rst_busy(output_fifo_rd_rst_busy)             // output wire rd_rst_busy
);

`else
fifo32to32 output_fifo(
  .rst(reset),                          // input wire rst
  .wr_clk(clk160),                   // input wire wr_clk
  .rd_clk(output_fifo_rd_clk),                      // input wire rd_clk
  .din(output_fifo_din),                            // input wire [31 : 0] din
  .wr_en(output_fifo_wr_en),                        // input wire wr_en
  .rd_en(output_fifo_rd_en),                        // input wire rd_en
  .dout(output_fifo_dout),                          // output wire [31 : 0] dout
  .full(output_fifo_full),                          // output wire full
  .empty(output_fifo_empty),                        // output wire empty
  .wr_data_count(output_fifo_wr_count),        // output wire [13 : 0] wr_data_count
  .wr_rst_busy(output_fifo_wr_rst_busy),            // output wire wr_rst_busy
  .rd_rst_busy(output_fifo_rd_rst_busy)             // output wire rd_rst_busy
);
`endif
//---------------------------------------------------------> fifo32to32
endmodule
