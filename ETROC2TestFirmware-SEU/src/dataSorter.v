`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Engineer: Datao Gong
//
// Create Date: Tuesday, September 12, 2023 11:18:58 AM
// Design Name: dataSorter
// Module Name: dataSorter
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

module dataSorter(
    input reset,                    // reset signal
    input clk40,                      // input 40 MHz clock
    // input clk160,                      // input 160 MHz clock
    input [3:0] enableCh,        //
    input [3:0] emptyETROC2FIFOCh,
    output reg [3:0] rdenETROC2FIFOCh,
    input [39:0] boardDataCh0,
    input [39:0] boardDataCh1,
    input [39:0] boardDataCh2,
    input [39:0] boardDataCh3,
    output reg [11:0] BCID, //for L1 BCID match
    output reg chip_data_ready,
    output reg hold_L1A,
    input chip_data_buffer_rden,
    output chip_data_buffer_empty,
    output [10:0] chip_data_word_count,
    input dumping_mode,  //if 0, dump the data when state change, if 1, dump data for every clock
    input debug_mode,  //in debug mode, the state machine stop at error_state, in non debug mode, it goes to reset mode
    input resume,     //in debug mode, if it is true, it goes to reset mode
    output [3:0] error_status,
    output reg [503:0] latch_dump_data,
  // `ifdef DEBUG_DATA_SORT
  //   output [2:0] debug_data_sort_state,
  //   output [3:0] debug_sortMask,
  //   output [1:0] debug_readToken,
  //   output [2:0] debug_pre_state,
  //   output [3:0] debug_isHeader,
  //   output debug_chip_data_buffer_empty,
  //   output [3:0] debug_emptyETROC2FIFOCh,
  //   output reg [39:0] debug_data_word,
  //   // output  [39:0] debug_data_word2,
  //   output reg snapshot,
  //   output [47:0] debug_state_seq,
  // `endif
    output reg [15:0] reset_counter, //for long term run log
    output [39:0] dout
);
  localparam header = {16'h3C5C,2'b00}; //header
  localparam filler = {16'h3C5C,2'b10}; //filler

  localparam state_reset        = 3'd0;  //reset the process,start hold_L1A, clear chip_data_buffer
  localparam state_hold_L1A     = 3'd1;  //wait until the input buffer has been empty for tens clock period
  localparam state_sort         = 3'd2; //sort the data and define the data to be read
  localparam state_read_start   = 3'd3;
  // localparam state_output_wait  = 3'd2;  //wait for output buffer to be cleared
  localparam state_header_read  = 3'd4; //read header and write into buffer, extract BCID
  localparam state_data_read    = 3'd5; //read data and write into buffer
  // localparam state_read_wait    = 3'd5; //input buffer is empty, wait for next data
  localparam state_trailer_read = 3'd6; //read trailer and write into buffer
  localparam state_session_error = 3'd7; //check if event read is done

  wire [39:0] boardDataCh [3:0];
  assign boardDataCh[0] = boardDataCh0;
  assign boardDataCh[1] = boardDataCh1;
  assign boardDataCh[2] = boardDataCh2;
  assign boardDataCh[3] = boardDataCh3;

  wire [3:0] isHeader;
  wire [3:0] isData;
  wire [3:0] isTrailer;
  wire [3:0] isFiller;
  assign isHeader[0] = boardDataCh0[39:22] == header;
  assign isHeader[1] = boardDataCh1[39:22] == header;
  assign isHeader[2] = boardDataCh2[39:22] == header;
  assign isHeader[3] = boardDataCh3[39:22] == header;
  assign isData[0] = boardDataCh0[39] == 1'b1;
  assign isData[1] = boardDataCh1[39] == 1'b1;
  assign isData[2] = boardDataCh2[39] == 1'b1;
  assign isData[3] = boardDataCh3[39] == 1'b1;
  assign isFiller[0] = boardDataCh0[39:22] == filler;
  assign isFiller[1] = boardDataCh1[39:22] == filler;
  assign isFiller[2] = boardDataCh2[39:22] == filler;
  assign isFiller[3] = boardDataCh3[39:22] == filler;
  assign isTrailer[0] = (!isHeader[0]) && (!isData[0]) && (!isFiller[0]);
  assign isTrailer[1] = (!isHeader[1]) && (!isData[1]) && (!isFiller[1]);
  assign isTrailer[2] = (!isHeader[2]) && (!isData[2]) && (!isFiller[2]);
  assign isTrailer[3] = (!isHeader[3]) && (!isData[3]) && (!isFiller[3]);

  reg [2:0] state; //state register
  reg [3:0] sortMask; //define the read order and size
  wire [1:0] readToken;
// `ifdef DEBUG_DATA_SORT
//   assign debug_sortMask = sortMask;
//   assign debug_readToken = readToken;
// `endif
  assign readToken = sortMask[0] ? 2'b00:
                    (sortMask[1] ? 2'b01 :
                    (sortMask[2] ? 2'b10 : 
                    (sortMask[3] ? 2'b11 : 2'b00)));
  wire [3:0] BCIDCheck[11:0];
  assign BCIDCheck[0]  = {boardDataCh[3][0], boardDataCh[2][0], boardDataCh[1][0], boardDataCh[0][0]} & enableCh;
  assign BCIDCheck[1]  = {boardDataCh[3][1], boardDataCh[2][1], boardDataCh[1][1], boardDataCh[0][1]} & enableCh;
  assign BCIDCheck[2]  = {boardDataCh[3][2], boardDataCh[2][2], boardDataCh[1][2], boardDataCh[0][2]} & enableCh;
  assign BCIDCheck[3]  = {boardDataCh[3][3], boardDataCh[2][3], boardDataCh[1][3], boardDataCh[0][3]} & enableCh;
  assign BCIDCheck[4]  = {boardDataCh[3][4], boardDataCh[2][4], boardDataCh[1][4], boardDataCh[0][4]} & enableCh;
  assign BCIDCheck[5]  = {boardDataCh[3][5], boardDataCh[2][5], boardDataCh[1][5], boardDataCh[0][5]} & enableCh;
  assign BCIDCheck[6]  = {boardDataCh[3][6], boardDataCh[2][6], boardDataCh[1][6], boardDataCh[0][6]} & enableCh;
  assign BCIDCheck[7]  = {boardDataCh[3][7], boardDataCh[2][7], boardDataCh[1][7], boardDataCh[0][7]} & enableCh;
  assign BCIDCheck[8]  = {boardDataCh[3][8], boardDataCh[2][8], boardDataCh[1][8], boardDataCh[0][8]} & enableCh;
  assign BCIDCheck[9]  = {boardDataCh[3][9], boardDataCh[2][9], boardDataCh[1][9], boardDataCh[0][9]} & enableCh;
  assign BCIDCheck[10] = {boardDataCh[3][10],boardDataCh[2][10],boardDataCh[1][10],boardDataCh[0][10]} & enableCh;
  assign BCIDCheck[11] = {boardDataCh[3][11],boardDataCh[2][11],boardDataCh[1][11],boardDataCh[0][11]} & enableCh;

  wire BCIDCheckPassed;
  assign BCIDCheckPassed = (BCIDCheck[0] == 4'd0 || BCIDCheck[0] == enableCh) &&
                           (BCIDCheck[1] == 4'd0 || BCIDCheck[1] == enableCh) &&
                           (BCIDCheck[2] == 4'd0 || BCIDCheck[2] == enableCh) &&
                           (BCIDCheck[3] == 4'd0 || BCIDCheck[3] == enableCh) &&
                           (BCIDCheck[4] == 4'd0 || BCIDCheck[4] == enableCh) &&
                           (BCIDCheck[5] == 4'd0 || BCIDCheck[5] == enableCh) &&
                           (BCIDCheck[6] == 4'd0 || BCIDCheck[6] == enableCh) &&
                           (BCIDCheck[7] == 4'd0 || BCIDCheck[7] == enableCh) &&
                           (BCIDCheck[8] == 4'd0 || BCIDCheck[8] == enableCh) &&
                           (BCIDCheck[9] == 4'd0 || BCIDCheck[9] == enableCh) &&
                           (BCIDCheck[10] == 4'd0 || BCIDCheck[10] == enableCh) &&
                           (BCIDCheck[11] == 4'd0 || BCIDCheck[11] == enableCh);
// reg [2:0] next_state;
localparam buffer_clear_threshold = 8'd192;
reg reset_buffer;
reg [7:0] empty_time_counter;
reg chip_data_buffer_wren;
reg [39:0] chip_data_buffer_din;
wire buffer_cleared;
assign buffer_cleared = empty_time_counter >= buffer_clear_threshold;

// `ifdef DEBUG_DATA_SORT
//   reg [2:0] pre_state;
//   reg chip_data_buffer_empty_reg;
//   reg [3:0] emptyETROC2FIFOCh_reg;
//   assign debug_data_sort_state = state;
//   assign debug_pre_state = pre_state;
//   assign debug_chip_data_buffer_empty = chip_data_buffer_empty_reg;
//   assign debug_emptyETROC2FIFOCh = emptyETROC2FIFOCh_reg;
// `endif
// reg snapshot;

always @*
begin
  case (state)
    state_reset:
      begin
        chip_data_buffer_wren   = 1'b0;
        chip_data_buffer_din    = 40'd0;
        rdenETROC2FIFOCh        = 4'd0;
        reset_buffer            = 1'b1;
        hold_L1A                = 1'b1;
      end
    state_hold_L1A:
      begin
        chip_data_buffer_wren   = 1'b0;
        chip_data_buffer_din    = 40'd0;
        reset_buffer            = 1'b0;
        hold_L1A                = 1'b1;
        rdenETROC2FIFOCh        = ~emptyETROC2FIFOCh; //if not empty keep reading
      end
    state_sort:
      begin
        chip_data_buffer_wren   = 1'b0;
        chip_data_buffer_din    = 40'd0;
        rdenETROC2FIFOCh        = 4'd0;
        reset_buffer            = 1'b0;
        hold_L1A                = 1'b0;
      end
    state_read_start:
      begin
        chip_data_buffer_wren   = ~emptyETROC2FIFOCh[readToken];
        chip_data_buffer_din    = boardDataCh[readToken];
        rdenETROC2FIFOCh[0]     = (readToken == 2'b00) && (emptyETROC2FIFOCh[0] == 1'b0);
        rdenETROC2FIFOCh[1]     = (readToken == 2'b01) && (emptyETROC2FIFOCh[1] == 1'b0);
        rdenETROC2FIFOCh[2]     = (readToken == 2'b10) && (emptyETROC2FIFOCh[2] == 1'b0);
        rdenETROC2FIFOCh[3]     = (readToken == 2'b11) && (emptyETROC2FIFOCh[3] == 1'b0);
        reset_buffer            = 1'b0;
        hold_L1A                = 1'b0;
      end
    state_header_read:
      begin
        chip_data_buffer_wren   = ~emptyETROC2FIFOCh[readToken];
        chip_data_buffer_din    = boardDataCh[readToken];
        rdenETROC2FIFOCh[0]     = (readToken == 2'b00) && (emptyETROC2FIFOCh[0] == 1'b0);
        rdenETROC2FIFOCh[1]     = (readToken == 2'b01) && (emptyETROC2FIFOCh[1] == 1'b0);
        rdenETROC2FIFOCh[2]     = (readToken == 2'b10) && (emptyETROC2FIFOCh[2] == 1'b0);
        rdenETROC2FIFOCh[3]     = (readToken == 2'b11) && (emptyETROC2FIFOCh[3] == 1'b0);
        reset_buffer            = 1'b0;
        hold_L1A                = 1'b0;
      end
    state_data_read:
      begin
        chip_data_buffer_wren   = ~emptyETROC2FIFOCh[readToken];
        chip_data_buffer_din    = boardDataCh[readToken];
        rdenETROC2FIFOCh[0]     = (readToken == 2'b00) && (emptyETROC2FIFOCh[0] == 1'b0);
        rdenETROC2FIFOCh[1]     = (readToken == 2'b01) && (emptyETROC2FIFOCh[1] == 1'b0);
        rdenETROC2FIFOCh[2]     = (readToken == 2'b10) && (emptyETROC2FIFOCh[2] == 1'b0);
        rdenETROC2FIFOCh[3]     = (readToken == 2'b11) && (emptyETROC2FIFOCh[3] == 1'b0);
        reset_buffer            = 1'b0;
        hold_L1A                = 1'b0;
      end
state_trailer_read:
      begin
        chip_data_buffer_wren   = 1'b0;
        chip_data_buffer_din    = 40'd0;
        rdenETROC2FIFOCh        = 4'd0; 
        reset_buffer            = 1'b0;
        hold_L1A                = 1'b0;
      end
state_session_error:
      begin
        chip_data_buffer_wren   = 1'b0;
        chip_data_buffer_din    = 40'd0;
        reset_buffer            = 1'b0;
        hold_L1A                = 1'b0;
        rdenETROC2FIFOCh        = 1'b0;
      end
      default:
      begin
        chip_data_buffer_wren   = 1'b0;
        chip_data_buffer_din    = 40'd0;
        reset_buffer            = 1'b1;
        hold_L1A                = 1'b1;
        rdenETROC2FIFOCh        = 4'd0; 
      end
  endcase
end

reg snapshot;
// reg [503:0] latch_dump_data;
reg [503:0] shift_dump_data;

localparam code_normal = 2'b00;
localparam code_noheader = 2'b01;
localparam code_notrailer = 2'b10;
localparam code_BCID_error = 2'b11;

reg [3:0] reg_isHeader;
assign debug_isHeader = reg_isHeader;
reg [1:0] error_code;
reg [3:0] error_ch;
wire [1:0] error_ch_enc;
assign error_ch_enc = error_ch[0] ? 2'b00:
                    (error_ch[1] ? 2'b01 :
                    (error_ch[2] ? 2'b10 : 
                    (error_ch[3] ? 2'b11 : 2'b00)));
assign error_status = {error_code,error_ch_enc};
always @(posedge clk40)
begin
    if(reset)begin
      sortMask        <= enableCh;
      chip_data_ready <= 1'b0;
      state           <= state_reset;
      snapshot        <= 1'b0;     
      error_code      <= code_normal;
      error_ch        <= 4'd0;
    end 
    // else if(resume)
    // begin
    //   latch_dump_data <= shift_dump_data;
    // end
    else if(state == state_reset) begin
      sortMask        <= enableCh;       
      chip_data_ready <= 1'b0;       
      if(enableCh == 4'd0)begin
        state <= state_reset;   //it may need time to restore enableCh
      end
      else 
        state <= state_hold_L1A;
    end
    else if(state == state_hold_L1A) begin
      sortMask        <= enableCh;       
      state           <=  buffer_cleared ?  state_sort : state_hold_L1A;      
    end
    else if(state == state_sort) begin
      sortMask        <= enableCh;       
      if(chip_data_buffer_empty)chip_data_ready  <= 1'b0;
      state           <=  (enableCh != (~emptyETROC2FIFOCh)&enableCh) ? state_sort : 
                         (((isHeader & enableCh) != enableCh || BCIDCheckPassed == 1'b0) ? state_session_error : 
                        (chip_data_buffer_empty ? state_read_start : state_sort));
      error_code <= (enableCh != (~emptyETROC2FIFOCh)&enableCh) ? error_code : 
                    ((isHeader & enableCh) != enableCh ? code_noheader : 
                    ((BCIDCheckPassed == 1'b0) ? code_BCID_error : error_code));
      error_ch <= (enableCh != (~emptyETROC2FIFOCh)&enableCh) ? error_ch : 
                  ((isHeader & enableCh) != enableCh ? ((isHeader & enableCh) ^ enableCh) : error_ch);      
    end
    else if(state == state_read_start)begin
      state           <= state_header_read;
    end
    else if (state == state_header_read)begin
      state           <= emptyETROC2FIFOCh[readToken] ? state_header_read : 
                        (isData[readToken] ? state_data_read : 
                        (isTrailer[readToken] ? state_trailer_read : state_session_error));
      error_code <= emptyETROC2FIFOCh[readToken] ? error_code : 
                        (isData[readToken] ? error_code : 
                        (isTrailer[readToken] ? error_code : code_notrailer));
      error_ch <= emptyETROC2FIFOCh[readToken] ? error_ch : 
                        (isData[readToken] ? error_ch : 
                        (isTrailer[readToken] ? error_ch : sortMask));
      if(emptyETROC2FIFOCh[readToken]==1'b0 && isTrailer[readToken] == 1'b1)sortMask[readToken] <= 1'b0;
    end
    else if(state == state_data_read)begin 
      state           <= emptyETROC2FIFOCh[readToken] ? state_data_read : 
                        (isData[readToken] ? state_data_read : 
                        (isTrailer[readToken] ? state_trailer_read : state_session_error));
      if(emptyETROC2FIFOCh[readToken]==1'b0 && isTrailer[readToken] == 1'b1)sortMask[readToken] <= 1'b0;
    end
    else if(state == state_trailer_read)begin 
      if(sortMask == 4'd0)begin
        chip_data_ready  <= 1'b1;
        sortMask  <= enableCh;
        state <= state_sort;
      end
      else 
        state <= state_read_start;
    end
    else if (state == state_session_error)begin
      if(debug_mode) begin
        if(~snapshot)begin
          snapshot <= 1'b1;
          latch_dump_data <= shift_dump_data;
        end
        if(resume) begin
          snapshot <= 1'b0;
          state <= state_reset;
        end
        else
        begin
          state <= state_session_error;
        end
      end
      else begin
        if(~snapshot)begin
          snapshot <= 1'b1;
          latch_dump_data <= shift_dump_data;
        end
        state <= state_reset;
      end
    end
end

// assign debug_data_word2 = boardDataCh[0];
wire chip_data_buffer_full;
// `ifdef DEBUG_DATA_SORT
wire [55:0] dumpData;
assign dumpData = {rdenETROC2FIFOCh[readToken],emptyETROC2FIFOCh[readToken],isHeader[readToken],chip_data_buffer_wren,
                  chip_data_buffer_full,chip_data_buffer_empty,readToken,
                  sortMask,
                  chip_data_ready,state,
                  chip_data_buffer_din };
reg [2:0] delay_state;
always @(posedge clk40)
begin
    if(reset)begin
      delay_state  <= state_reset;
      shift_dump_data <= 504'd0;
    end
    else begin
      delay_state <= state;
      if(dumping_mode) begin
        shift_dump_data <= {shift_dump_data[447:0],dumpData};
      end
      else if(delay_state != state)begin //if state change
        shift_dump_data <= {shift_dump_data[447:0],dumpData};
      end
    end
end
// `endif


always @(posedge clk40)
begin
    if(reset)begin
      reset_counter         <= 16'd0;
    end
    else if(state == state_reset)begin
      reset_counter         <= reset_counter + 1;
    end
end

always @(posedge clk40)
begin
    if(reset)begin
      empty_time_counter    <= 8'd0;
    end
    else if(state == state_reset)begin
      empty_time_counter    <= 8'd0;
    end
    else if (state == state_hold_L1A) begin
      if(enableCh == (emptyETROC2FIFOCh & enableCh)) begin
        if(empty_time_counter < buffer_clear_threshold)empty_time_counter <= empty_time_counter + 1;
      end
      else empty_time_counter <= 8'd0;
    end
end

always @(posedge clk40)
begin
    if(reset)begin
      BCID <= 12'd0;
    end
    else if(state == state_read_start)begin
      BCID  <= boardDataCh[readToken][11:0];
    end
end

    wire rd_rst_busy;
    wire wr_rst_busy;
    wire [14:0] wordCount;
    assign chip_data_word_count = wordCount[10:0];
    FIFO40To40_Depth1K FIFO40To40_Depth1Kinst
    (
        .srst(reset_buffer),
        .clk(clk40),
        .wr_en(chip_data_buffer_wren),
        .din(chip_data_buffer_din),
        .full(chip_data_buffer_full),
        .data_count(wordCount),
        .empty(chip_data_buffer_empty),
        .dout(dout),
        .rd_en(chip_data_buffer_rden)
    );

endmodule
