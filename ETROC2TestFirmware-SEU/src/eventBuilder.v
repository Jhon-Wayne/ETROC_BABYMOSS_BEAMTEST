`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Engineer: Datao Gong 
// 
// Create Date: Monday, September 11, 2023 12:27:18 PM        
// Design Name: eventBuilder
// Module Name: eventBuilder
// Project Name: ETROC2 Array For Beam Test
// Target Devices: KC705
// Tool Versions: Vivado 2018.3
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created

// 
//////////////////////////////////////////////////////////////////////////////////

`include "commonDefinition.v"


module eventBuilder(
    input reset,                        // reset signal
    input clk40,                       // input 160 MHz clock
    input test_raw_data_falling_edge,
    input data_aligned,
    input dis_descr_raw_data,
    input [31:0] descr_raw_data,
    input [31:0] non_descr_data,
    input dis_regular_filler,
    input [3:0] prescale_factor,
    input auto_prescale,
    input [4:0] auto_prescale_factor,
    input fixed_time_filler,
    input sample_event,
    input [3:0] error_status,
    input add_ethernet_filler,
    input [3:0] enableCh,
    input [39:0] sortedWord,
    input [11:0] eventBCID,             //for L1BCID match later
    // input [2:0] overflowCount,
    // input [2:0] HammingCount,
    input chip_data_ready,
    input chip_data_buffer_empty,
    input [7:0] linkNormal,
    input [7:0] resetCount,
`ifdef SIMPLE_DUMPDATA
    output  chip_data_buffer_rden,               //read the input event buffer
`else
    output reg chip_data_buffer_rden,               //read the input event buffer
`endif
    input [10:0] chip_data_word_count,
    input output_fifo_rd_clk,               //to Ethernet controller
    input output_fifo_rd_en,                // read clock
    output [31:0] output_fifo_dout,         // fifo32to32 data output
    output [13:0] output_fifo_wr_count,
    output raw_data_mode,
    output output_fifo_empty                // fifo32to32 empty signal
);

reg [31:0] raw_data32;
reg [1:0] raw_data_cnt;
reg raw_data_wr_en;
wire [13:0] raw_data_fifo_wr_count;

reg dump_raw_data;
reg data_aligned_reg;
always @(posedge clk40)
begin
  if(reset)begin
    raw_data32 <= 32'd0;
    raw_data_cnt <= 2'd0;
    raw_data_wr_en <= 1'b0;
    dump_raw_data <= 1'b0;
    data_aligned_reg <= 1'b0;
  end
  else begin
    data_aligned_reg <= data_aligned;
    raw_data_cnt <= raw_data_cnt + 1;
    raw_data32 <= dis_descr_raw_data ? {non_descr_data[7:0],raw_data32[31:8]} : {descr_raw_data[7:0],raw_data32[31:8]};
    raw_data_wr_en <= (raw_data_cnt == 2'd3);
    dump_raw_data <= raw_data_fifo_wr_count > 14'd2048;
  end
end

wire data_aligned_falling_edge;
assign data_aligned_falling_edge = (data_aligned_reg == 1'b1 && data_aligned == 1'b0) | test_raw_data_falling_edge;
reg raw_data_state_entry;
reg raw_data_session;
reg [13:0] after_linkloss_raw_data_counter;
assign raw_data_mode = raw_data_session;

always @(posedge clk40)
begin
  if(reset)begin
    raw_data_session <= 1'b0;
    after_linkloss_raw_data_counter <= 14'd0;
  end
  else if(raw_data_session == 1'b0 ) begin //not allowed re-entry
    after_linkloss_raw_data_counter <= 14'd0;
    if(data_aligned_falling_edge) 
      raw_data_session <= 1'b1;
  end
  else begin
    if(after_linkloss_raw_data_counter == 14'd6144)begin
      if(raw_data_fifo_empty)begin
        raw_data_session <= 1'b0;
        after_linkloss_raw_data_counter <= 14'd0;
      end
    end
    else if(raw_data_wr_en)begin
      after_linkloss_raw_data_counter <= after_linkloss_raw_data_counter + 1; 
    end
  end
end

always @(posedge clk40)
begin
  if(reset)begin
    raw_data_state_entry <= 1'b0;
  end
  else if(raw_data_session == 1'b0 && data_aligned_falling_edge) begin 
    raw_data_state_entry = 1'b1;
  end
  else if(state == state_idle)begin //hold the state until state_idle is true.
      raw_data_state_entry = 1'b0;   
  end
end

localparam raw_data_start_marker = {32'H5555AAAA};
localparam raw_data_end_marker = {32'H55AA55AA};
localparam raw_data_linkloss_marker = {32'HAAAA5555};

wire raw_data_rd_en;
reg raw_data_session_rd_en;

assign raw_data_rd_en = raw_data_session ? raw_data_session_rd_en : dump_raw_data;
wire raw_data_fifo_wr_rst_busy;//not used
wire raw_data_fifo_rd_rst_busy; //not used
wire raw_data_fifo_full; //not used.
wire raw_data_fifo_empty;
wire raw_data_write_linkloss_marker;
assign raw_data_write_linkloss_marker = (state == state_raw_data_output_start_marker1) || 
                                        (state == state_raw_data_output_start_marker2);
wire raw_data_fifo_wr;
wire [31:0] raw_data_fifo_din;
wire [31:0] raw_data_fifo_dout;
assign raw_data_fifo_din = raw_data_write_linkloss_marker ? raw_data_linkloss_marker : raw_data32;
assign raw_data_fifo_wr = (raw_data_wr_en | raw_data_write_linkloss_marker) & (after_linkloss_raw_data_counter < 14'd6144);
fifo32to32 raw_data_fifo(
  .rst(reset),                          // input wire rst
  .wr_clk(clk40),                   // input wire wr_clk
  .rd_clk(clk40),                      // input wire rd_clk
  .din(raw_data_fifo_din),                            // input wire [31 : 0] din
  .wr_en(raw_data_fifo_wr),                        // input wire wr_en
  .rd_en(raw_data_rd_en),                        // input wire rd_en
  .dout(raw_data_fifo_dout),                          // output wire [31 : 0] dout
  .full(raw_data_fifo_full),                          // output wire full
  .empty(raw_data_fifo_empty),                        // output wire empty
  .wr_data_count(raw_data_fifo_wr_count),        // output wire [13 : 0] wr_data_count
  .wr_rst_busy(raw_data_fifo_wr_rst_busy),            // output wire wr_rst_busy
  .rd_rst_busy(raw_data_fifo_rd_rst_busy)             // output wire rd_rst_busy
);


  wire output_fifo_full;
// wire [13:0] output_fifo_wr_count;
wire output_fifo_almostfull;
assign output_fifo_almostfull = output_fifo_wr_count >= 14'd8192-14'd1024; //reserve 1024 words for time stamp and next event

`ifdef DUMPDATA

`ifdef SIMPLE_DUMPDATA
wire output_fifo_wr_en;
wire [31:0] output_fifo_din;
assign chip_data_buffer_rden   = ~output_fifo_full & ~chip_data_buffer_empty;
assign output_fifo_wr_en       = ~output_fifo_full & ~chip_data_buffer_empty;
assign output_fifo_din         = {sortedWord[39:18],chip_data_ready,chip_data_word_count[8:0]};
`else


localparam state_idle       = 3'd0;
localparam state_read       = 3'd3;
reg [2:0] state;
always @(posedge clk40)
begin
    if(reset) state <= state_idle;
    else if(state == state_idle)
      state <= chip_data_ready ? state_read : state_idle;
    else if(state == state_read)
      state <= chip_data_buffer_empty ? state_idle : state_read;
end

reg output_fifo_wr_en;
reg [31:0] output_fifo_din;

always @*
begin
  case (state)
    state_idle:
      begin
        chip_data_buffer_rden   = 1'b0;
        output_fifo_wr_en       = 1'b0;
        output_fifo_din         = 32'd0;
      end
    state_read:
      begin
        chip_data_buffer_rden   = ~output_fifo_full & ~chip_data_buffer_empty;
        output_fifo_wr_en       = ~output_fifo_full & ~chip_data_buffer_empty;
        output_fifo_din         = {sortedWord[39:18],chip_data_word_count[9:0]};
      end
  endcase
end
`endif
`else
localparam header = {16'h3C5C,2'b00}; //header
wire isHeader;
wire isData;
wire isTrailer;
assign isHeader   = sortedWord[39:22] == header;
assign isData     = sortedWord[39] == 1'b1;
assign isTrailer  = ~isHeader & ~isData;

reg [4:0] state;  //state register
localparam state_idle       = 4'd0;
localparam state_header1    = 4'd1;
localparam state_header2    = 4'd2;
localparam state_read       = 4'd3;
// localparam state_read_hold  = 3'd4;
// localparam state_padding    = 3'd5;
localparam state_read_off   = 4'd6;
localparam state_trailer    = 4'd7;

localparam state_raw_data_init = 4'd8;
localparam state_raw_data_write_linkloss_marker1 = 4'd9;
localparam state_raw_data_write_linkloss_marker2 = 4'd10;
localparam state_raw_data_output_start_marker1 = 4'd11;
localparam state_raw_data_output_start_marker2 = 4'd12;
localparam state_raw_data_dump = 4'd13;
localparam state_raw_data_output_end_marker1 = 4'd14;
localparam state_raw_data_output_end_marker2 = 4'd15;


reg [31:0] output_fifo_din;
wire [3:0] version = 4'd1;
wire[15:0] eventNumber;
wire [5:0] evt_overflow_count;
wire [8:0] bits_count; //how many bits in the memory, from 0 to 256
wire buffer_almost_full;
wire buffer_almost_empty;

reg [21:0] totalEventCount;
reg [19:0] eventCount;
assign evt_overflow_count = totalEventCount[21:16];
assign eventNumber = totalEventCount[15:0];
reg writeMask;
wire [5:0] bar_count_bin;
wire [19:0] bar_count;
// assign bar_count_bin = sample_event ? 5'd12 : (auto_prescale ? auto_prescale_factor : 5'd0);
assign bar_count_bin = 5'd11;
assign bar_count = (sample_event | auto_prescale) ? (20'd1 << bar_count_bin) -1 : 20'HFFFFF;

wire readEventReady;
assign readEventReady = (sample_event | auto_prescale ) ? ((eventCount == 20'd0) ? ~output_fifo_almostfull: 1'b1) : ~output_fifo_almostfull;
wire sampleCurrentEvent;
assign sampleCurrentEvent = (sample_event | auto_prescale ) ? (eventCount == 20'd0) : 1'b1;

always @(posedge clk40)
begin
    if(reset)begin
      state <= state_idle;
      writeMask <= 1'b0;
      totalEventCount <= 22'd0;
      eventCount <= 20'd0;
    end
    else if(state == state_idle)begin
      // state <= (chip_data_ready & ~output_fifo_almostfull)? state_header1 : state_idle;
      state      <= raw_data_state_entry ? state_raw_data_init : (chip_data_ready & readEventReady ? state_header1 : state_idle);
      writeMask  <= chip_data_ready & sampleCurrentEvent ? ~output_fifo_almostfull : 1'b0;
      if(chip_data_ready & readEventReady)begin
        eventCount  <= (eventCount >= bar_count) ? 20'd0 : eventCount + 1;
        totalEventCount <= totalEventCount + 1;
      end
    end
    else if(state == state_header1)
      // state <= output_fifo_almostfull ? state_header1 : state_header2;
      state <= state_header2;
    else if(state == state_header2)
      // state <= output_fifo_almostfull ? state_header2 : state_read;
      state <= state_read;
    else if(state == state_read)
      state <= ~chip_data_buffer_empty ? state_read : state_read_off;                                   
    else if(state == state_read_off)
      // state <= (output_fifo_almostfull == 1'b1) || (bits_count > 12'd32)? state_read_off : state_trailer;
      state <= (bits_count > 12'd32) ? state_read_off : state_trailer;
    // else if(state == state_padding)
    //   state <= state_read_off;
    else if(state == state_trailer)
      // state <= output_fifo_almostfull ? state_trailer : state_idle;
      state <= state_idle;
    else if(state == state_raw_data_init)begin
      state <= raw_data_wr_en ? state_raw_data_write_linkloss_marker1 : state_raw_data_init;
    end
    else if(state == state_raw_data_write_linkloss_marker1)begin
      state <= state_raw_data_write_linkloss_marker2;
    end
    else if (state == state_raw_data_write_linkloss_marker2)begin
      state <= state_raw_data_output_start_marker1;
    end
    else if(state == state_raw_data_output_start_marker1)begin
      state <= state_raw_data_output_start_marker2;
    end
    else if(state == state_raw_data_output_start_marker2)begin
      state <= state_raw_data_dump;
    end
    else if(state == state_raw_data_dump)begin
      state <= (raw_data_fifo_empty& ~raw_data_session) ? state_raw_data_output_end_marker1 : state_raw_data_dump;
    end    
    else if(state == state_raw_data_output_end_marker1)begin
      state <= state_raw_data_output_end_marker2;
    end
    else if(state == state_raw_data_output_end_marker2)begin
      state <= state_idle;
    end
end

wire rstn;
assign rstn = ~(reset | (state == state_idle));
reg output_fifo_wr_en;
reg internal_buffer_rd;
wire [31:0] buffer_rd_data;
wire [39:0] buffer_wr_data;

`ifdef DEBUG_EVENT_BUILDER
reg [7:0] data_count;
always @(posedge clk40)
begin
  if(reset | (state == state_idle))begin
    data_count <= 8'd0;
  end  
  else if(chip_data_buffer_rden)begin
    if (data_count == 8'd250)
      data_count <= 8'd0;
    else 
      data_count <= data_count + 8'd5;
  end
end

assign buffer_wr_data = {data_count+4,data_count+3,data_count+2,data_count+1,data_count};
`else
assign buffer_wr_data = sortedWord;
`endif

wordBuffer wordBufferInst
(
  .clk(clk40),
  .rstn(rstn),
  .wren(chip_data_buffer_rden),
  .rden(internal_buffer_rd),
  .din(buffer_wr_data),
  .dout(buffer_rd_data),
  .bitsCount(bits_count),
  .almost_empty(buffer_almost_empty),
  .almost_full(buffer_almost_full)
);

reg [19:0] timerCount;
wire writeFixedTimeFiller;
wire writeRegularFiller; //for empty fifo
wire allowFiller;
assign allowFiller = (allowFillerCount > 8'd0);
reg [7:0] allowFillerCount;
always @(posedge clk40)
begin
  if(reset)begin
    timerCount <= 20'd0;
    allowFillerCount <= 8'd0;
  end  
  else begin 
    timerCount <= timerCount + 1;
    if(timerCount != 20'HFFFFF)begin 
      if(writeFixedTimeFiller == 1'b1 && state == state_idle)begin
        if(allowFillerCount > 8'd0)allowFillerCount <= allowFillerCount - 1;
      end
    end
    else if(fixed_time_filler)begin
        allowFillerCount <= allowFillerCount + 1;
    end
  end 
end

reg [7:0] linkNormalReg;
reg [3:0] error_status_reg;

always @(posedge clk40)
begin
  if(reset )begin
    linkNormalReg <= 8'HFF;
    error_status_reg <= 4'd0;
  end  
  else if((writeFixedTimeFiller | writeRegularFiller) && state == state_idle)begin
    linkNormalReg <= linkNormal;
    error_status_reg <= error_status;
  end
  else begin 
    linkNormalReg <= linkNormalReg & linkNormal;   //any errors are recorded
    error_status_reg <= error_status[3:2] == 2'b00 ? error_status_reg : error_status; //keep the last error
  end
end

// reg [19:0] eventCount;
// reg writeMask;
// wire [5:0] bar_count_bin;
// wire [19:0] bar_count;
// assign bar_count_bin = sample_event ? 5'd10 : (auto_prescale ? auto_prescale_factor : 5'd0);
// assign bar_count = (sample_event | auto_prescale) ? (20'd1 << bar_count_bin) -1 : 20'HFFFFF;
// always @(posedge clk40)
// begin
//   if(reset )begin
//     eventCount <= 20'd0;
//     writeMask <= 1'b0;
//   end  
//   else begin
//     if((state == state_trailer) && (output_fifo_almostfull == 1'b0))begin 
//         eventCount <= eventCount >= bar_count ? 20'd0 :  eventCount + 1;
//     end
//     // writeMask <= ~sample_event | (eventCount == 20'd0);
//     writeMask <= (sample_event | auto_prescale ) ? (eventCount == 20'd0) : 1'b1;
//   end
// end

// assign allowSample = ~sample_event | (eventCount == 10'b1111111111); 

assign writeFixedTimeFiller = add_ethernet_filler & (allowFiller & ~output_fifo_full);
assign writeRegularFiller = dis_regular_filler ? 1'b0 : add_ethernet_filler & (~chip_data_ready & output_fifo_empty);

wire [11:0] leading_bits;
assign leading_bits = allowFiller == 1'b1 ? 12'H559 : 12'H556;
wire [31:0] ethernet_filler;
// assign ethernet_filler = auto_prescale ? {leading_bits,error_status_reg,evt_overflow_count,linkNormalReg[1:0],resetCount} 
                        //  : {leading_bits, error_status_reg, linkNormalReg, resetCount};
assign ethernet_filler = {leading_bits, error_status_reg, linkNormalReg, resetCount};
always @*
begin
  case (state)
    state_idle:
      begin
        chip_data_buffer_rden   = 1'b0;
        // output_fifo_wr_en       = add_ethernet_filler & (~chip_data_ready) & output_fifo_empty;
        // output_fifo_wr_en       = add_ethernet_filler & (((~chip_data_ready) & output_fifo_empty) | (allowFiller & ~output_fifo_full));
        output_fifo_wr_en       = writeFixedTimeFiller | writeRegularFiller;

        internal_buffer_rd      = 1'b0;
        raw_data_session_rd_en = 1'b0;
        // output_fifo_din         = add_ethernet_filler & (~chip_data_ready) & output_fifo_empty ? {16'H5555,linkNormal,resetCount} : 32'd0;
        // output_fifo_din         = add_ethernet_filler & ((~chip_data_ready & output_fifo_empty) | (allowFiller & ~output_fifo_full)) ? ethernet_filler : 32'd0;
        // output_fifo_din = (writeFixedTimeFiller | writeRegularFiller) ? ethernet_filler : 32'd0;
        output_fifo_din  = ethernet_filler;
      end
    state_header1:
      begin
        chip_data_buffer_rden   = 1'b0;
        // output_fifo_wr_en       = ~output_fifo_almostfull & writeMask;
        output_fifo_wr_en       = writeMask;
        internal_buffer_rd      = 1'b0;
        raw_data_session_rd_en = 1'b0;
        output_fifo_din         = {28'HC3A3C3A,enableCh};
      end
    state_header2:
      begin
        //read event to internal event_buffer only if output_fifo is not full, simplify logic 
        // chip_data_buffer_rden   = ~output_fifo_almostfull  & ~buffer_almost_full;  
        chip_data_buffer_rden   = ~buffer_almost_full;  
        // output_fifo_wr_en       = ~output_fifo_almostfull & writeMask; 
        output_fifo_wr_en       = writeMask; 
        internal_buffer_rd      = 1'b0;
        raw_data_session_rd_en = 1'b0;
        output_fifo_din         = {version,eventNumber,chip_data_word_count[9:0],2'b00};
      end
    state_read:  //read chip data buffer
      begin
        chip_data_buffer_rden   = ~buffer_almost_full & ~chip_data_buffer_empty; 
        // internal_buffer_rd      = ~output_fifo_almostfull & ~buffer_almost_empty;   
        internal_buffer_rd      = ~buffer_almost_empty;             
        // output_fifo_wr_en       = ~output_fifo_almostfull & ~buffer_almost_empty & writeMask;
        output_fifo_wr_en       = ~buffer_almost_empty & writeMask;
        raw_data_session_rd_en = 1'b0;
        output_fifo_din         = buffer_rd_data;
      end
    state_read_off:  
//do not read chip data to event_buffer, but may output
      begin
        chip_data_buffer_rden   = 1'b0;
        // internal_buffer_rd      = ~output_fifo_almostfull;        
        internal_buffer_rd      = 1'b1;        
        // output_fifo_wr_en       = ~output_fifo_almostfull & writeMask; //event_buffer is not empty
        output_fifo_wr_en       = writeMask; //event_buffer is not empty
        raw_data_session_rd_en = 1'b0;
        output_fifo_din         = buffer_rd_data;
      end
//     state_padding:  
// //do not read chip data to event_buffer and not ouput to output buffer.
//       begin
//         chip_data_buffer_rden   = 1'b0;
//         internal_buffer_rd      = 1'b0;
//         output_fifo_wr_en       = 1'b0;
//         output_fifo_din         = buffer_rd_data;
//       end
      state_trailer:
      begin
        chip_data_buffer_rden   = 1'b0;
        internal_buffer_rd  = 1'b0;
        // output_fifo_wr_en   = ~output_fifo_almostfull & writeMask;
        output_fifo_wr_en   = writeMask;
        raw_data_session_rd_en = 1'b0;
        output_fifo_din     = {6'b001011,hits_counter,overflowCount,HammingCount,8'd0};
      end
      state_raw_data_init,state_raw_data_write_linkloss_marker1,state_raw_data_write_linkloss_marker2:
      begin
        chip_data_buffer_rden   = 1'b0;
        internal_buffer_rd  = 1'b0;
        output_fifo_wr_en = 1'b0;
        raw_data_session_rd_en = 1'b0;
        output_fifo_din = 32'd0;   //does not matter        
      end
      state_raw_data_output_start_marker1,state_raw_data_output_start_marker2:
      begin
        chip_data_buffer_rden   = 1'b0;
        internal_buffer_rd  = 1'b0;
        output_fifo_wr_en = 1'b1;
        raw_data_session_rd_en = 1'b0;
        output_fifo_din = raw_data_start_marker;
      end
      state_raw_data_dump:
      begin
        chip_data_buffer_rden   = 1'b0;
        internal_buffer_rd  = 1'b0;
        output_fifo_wr_en = ~output_fifo_almostfull & ~raw_data_fifo_empty;
        raw_data_session_rd_en = ~output_fifo_almostfull & ~raw_data_fifo_empty;
        output_fifo_din = raw_data_fifo_dout;
      end
      state_raw_data_output_end_marker1,state_raw_data_output_end_marker2:
      begin
        chip_data_buffer_rden   = 1'b0;
        internal_buffer_rd  = 1'b0;
        output_fifo_wr_en = ~output_fifo_full; //write two words in the reserved space
        raw_data_session_rd_en = 1'b0;
        output_fifo_din = raw_data_end_marker;
      end
      default:
      begin
        chip_data_buffer_rden   = 1'b0;
        internal_buffer_rd      = 1'b0;
        output_fifo_wr_en       = 1'b0;
        raw_data_session_rd_en = 1'b0;
        output_fifo_din         = 32'd0;
      end
  endcase
end

reg [2:0] overflowCount;
reg [2:0] HammingCount;
reg [11:0] hits_counter;
always @(posedge clk40)
begin
    if(reset | (state == state_idle))begin
      hits_counter  <= 12'd0;
      overflowCount <= 3'd0;
      HammingCount  <= 3'd0;
    end
    else if(chip_data_buffer_rden == 1'b1)begin
      if(isData)hits_counter <= hits_counter + 1;
      if(isTrailer) begin
        if(sortedWord[16] == 1'b1)overflowCount <= overflowCount + 1;
        if(sortedWord[20:19] != 2'b00)HammingCount <= HammingCount + 1;
      end
    end
end

// always @(posedge clk40)
// begin
//     if(reset)begin
//       eventNumber <= 16'd0;
//       evt_overflow_count <= 6'd0;
//     end
//     else if(state == state_header2 && output_fifo_almostfull == 1'b0)begin
//       evt_overflow_count <= eventNumber == 16'HFFFF ? evt_overflow_count + 1 : evt_overflow_count; 
//       eventNumber <= eventNumber + 1;
//     end
// end
`endif
//---------------------------------------------------------< fifo32to32
// `define ETHERNET_SPEED_TEST

`ifdef ETHERNET_SPEED_TEST
  reg [23:0] counterTimer;
  reg [7:0] counterData;
  wire speed_test_wr_en;

  always @(posedge clk40)
  begin
    if(reset)
    begin
      counterTimer <= 24'd0;
    end
    else begin
      counterTimer <= counterTimer + 1;
    end
  end

  always @(posedge clk40)
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
  .wr_clk(clk40),                   // input wire wr_clk
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
  .wr_clk(clk40),                   // input wire wr_clk
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
ila_32X1
    u_ila_32X1
    (.clk(clk40),
    .probe0({raw_data_wr_en,raw_data_fifo_wr,state,raw_data_fifo_empty,raw_data_session,raw_data_session_rd_en,
    dump_raw_data,raw_data_write_linkloss_marker,after_linkloss_raw_data_counter,raw_data_rd_en,raw_data_fifo_wr_count,test_raw_data_falling_edge})
    );
endmodule
