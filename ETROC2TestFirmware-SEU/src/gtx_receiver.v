`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Wei Zhang 
// 
// Create Date: 01/14/2021 01:26:36 PM
// Design Name: ETROC1 Array four boards beam test
// Module Name: gtx_receiver
// Project Name: gtx_receiver
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: gtx receives four boards 1.28 Gbps high speed serial data 
//              the gtx interface is located at DP[3:0]_M2C and GBCLK1 acts as 160 MHz reference 
//              clock input.
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
`include "commonDefinition.v"

module gtx_receiver(
input reset,
input tickTok,
input test_raw_data_falling_edge,
input inject_SEU,
input dis_descr_raw_data,
input dis_regular_filler,
input [3:0] prescale_factor,
input fixed_time_filler,
input auto_prescale,
input clk200,
input [3:0] bit_latency,
input auto_mode,
input falling_edge,
input sample_event,
input add_ethernet_filler,
input session_DAQ_on,
input trig_or_logic,
input [1:0] rate,
input [3:0] trigSelMask,
input [1:0] monitorSel,
input clrError,
input enableAutoSync,
input [3:0] noGTX_RX,
input notGTX,
input notGTXPolarity,
input clk40,
input clk160,
input clk320,
output  [31:0] headerCounter,
output  [31:0] dataCounter,
output  [31:0] trigCounter,
output  [15:0] refreshCounter,
input [3:0] enableCh,
input [3:0] delayTrigCh,
input fifo_reset,
input [4:0] trigDataSize,
output linkConsistent,
input Q3_CLK1_GTREFCLK_PAD_P_IN,        // GBTCLK1 reference clock input
input Q3_CLK1_GTREFCLK_PAD_N_IN,
input DRPCLK_IN,                        // DRPCLK input 100 MHz, changed to 120 MHz clock
input [3:0] RXP_IN,                     // DP[3:0]_M2C 
input [3:0] RXN_IN,
output [3:0] TXP_OUT,                   // DP[3:0]_C2M
output [3:0] TXN_OUT,
output  synched,
output  dataError,
output [3:0] GTXLinkError,
output [1:0] dataType,
output [3:0] GTXBitSync,
output trigSynched,
output trigError,
output flashingBit,
output trigOut,
input output_fifo_rd_clk,           // connect to contorl interface 
input output_fifo_rd_en,            // connect to fifo read enable
output [31:0] output_fifo_dout,     // fifo data output
output reg [15:0] combineTriggerCount,
output reg BCIDMatchError,
output reg L1CountMatchError,
output hold_L1A,
output latch_edge,
output edge_found,
output align_done,
output align_error,
input dumping_mode,  //if 0, dump the data when state change, if 1, dump data for every clock
input debug_mode,  //in debug mode, the state machine stop at error_state, in non debug mode, it goes to reset mode
input resume,     //in debug mode, if it is true, it goes to reset mode
output [503:0] latch_dump_data,

// `ifdef DEBUG_DATA_SORT
//   output [2:0] debug_data_sort_state,
//   output [3:0] debug_emptyETROC2FIFOCh,
//   output [3:0] debug_sortMask,
//   output [1:0] debug_readToken,
//   output [2:0] debug_pre_state,
//   output [3:0] debug_isHeader,
//   output debug_chip_data_buffer_empty,
//   output [39:0] debug_data_word,
//   output [39:0] debug_data_word2,
//   output snapshot,
//   output [47:0] debug_state_seq,
// `endif
output [15:0] reset_counter,
output chip_data_ready,
output buffer_almost_full,
output buffer_half_full,
output output_fifo_empty            // 
);


wire [3:0] DP_Rx_Clock;               // rx side recovered clock
wire [3:0] DP_Tx_Clock;               // tx side recovered clock
//------------------------------------------------------------< gtx four channels
wire [31:0] DP_Data[3:0];

gtwizard_4_channel_exdes gtwizard_4_channel_exdes_inst(
.Q3_CLK1_GTREFCLK_PAD_N_IN(Q3_CLK1_GTREFCLK_PAD_N_IN),
.Q3_CLK1_GTREFCLK_PAD_P_IN(Q3_CLK1_GTREFCLK_PAD_P_IN),
.DRPCLK_IN(DRPCLK_IN),
.TRACK_DATA_OUT(),
.RXN_IN(RXN_IN),
.RXP_IN(RXP_IN),
.TXN_OUT(TXN_OUT),
.TXP_OUT(TXP_OUT),
.gt0_rxdata_i(DP_Data[0]),           // DP0_M2C
.gt0_txdata_i(32'd0),           // DP0_C2M
.gt1_rxdata_i(DP_Data[1]),           // DP1_M2C
.gt1_txdata_i(32'd0),           // DP1_C2M
.gt2_rxdata_i(DP_Data[2]),           // DP2_M2C
.gt2_txdata_i(32'd0),           // DP2_C2M
.gt3_rxdata_i(DP_Data[3]),           // DP3_M2C
.gt3_txdata_i(32'd0),           // DP3_C2M
.gt0_txusrclk2_i(DP_Tx_Clock[0]),     
.gt0_rxusrclk2_i(DP_Rx_Clock[0]),
.gt1_txusrclk2_i(DP_Tx_Clock[1]),
.gt1_rxusrclk2_i(DP_Rx_Clock[1]),
.gt2_txusrclk2_i(DP_Tx_Clock[2]),
.gt2_rxusrclk2_i(DP_Rx_Clock[2]),
.gt3_txusrclk2_i(DP_Tx_Clock[3]),
.gt3_rxusrclk2_i(DP_Rx_Clock[3])
);

wire [31:0] etroc1Data [3:0];
wire [1:0] channel;
wire [31:0] headerCounterCh [3:0];
wire [31:0] dataCounterCh [3:0];
wire [31:0] trigCounterCh [3:0];
wire [15:0] refreshCounterCh [3:0];
wire [3:0] trigSynchedCh;
wire [3:0] trigErrorCh;
wire [3:0] trigOutCh;
wire [3:0] flashingBitCh;
wire [39:0] boardDataCh [3:0];
wire [3:0] rdenETROC2FIFOCh;
wire [3:0] almost_full_ETROC2FIFOCh;
wire [3:0] half_full__ETROC2FIFOCh;
// `ifdef DEBUG_DATA_SORT
//   assign debug_emptyETROC2FIFOCh = emptyETROC2FIFOCh;
// `endif
wire [3:0] emptyETROC2FIFOCh;
wire [1:0] dataTypeCh [3:0];
wire [3:0] dataErrorCh;
wire [3:0] synchedCh;
wire [3:0] linkConsistentCh;
// wire trigger_fifo_full;
wire [3:0] channel_reset;
wire [3:0] dataValidCh;
wire [39:0] dataWordCh[3:0];
wire [11:0] BCIDCh [3:0];
wire [7:0] L1CountCh[3:0];
wire [3:0] latch_edgeCh;
wire [3:0] edge_foundCh;
wire [3:0] align_doneCh;
wire [3:0] align_errorCh;
wire [11:0] goodBCID =  enableCh[0] ? BCIDCh[0] : 
                       (enableCh[1] ? BCIDCh[1] : 
                       (enableCh[2] ? BCIDCh[2] : BCIDCh[3]));

wire [7:0] goodL1Count = enableCh[0] ? L1CountCh[0] : 
                        (enableCh[1] ? L1CountCh[1] : 
                        (enableCh[2] ? L1CountCh[2] : L1CountCh[3]));
wire [11:0] checkBCIDCh[3:0];
wire [7:0] checkL1CountCh[3:0];
wire [3:0] googFillerCh;
wire [7:0] resetCountCh [3:0];
wire [14:0] wordCountFIFOCh [3:0];
wire [31:0] descr_raw_data_ch[3:0];
wire [31:0] non_descr_data_ch[3:0];

localparam idle     = 2'b11;
genvar i;

   wire RDY;
   IDELAYCTRL IDELAYCTRL_inst (
      .RDY(RDY),       // 1-bit output: Ready output
      .REFCLK(clk200), // 1-bit input: Reference clock input
      .RST(~RDY)        // 1-bit input: Active high reset input
   );


generate
assign channel = i;
for(i=0;i<4;i=i+1)
begin
    // assign channel_reset[i] = fifo_reset & (channel == monitorSel); 

    assign channel_reset[i]   = fifo_reset; 
    assign BCIDCh[i]          = dataWordCh[i][11:0];
    assign L1CountCh[i]       = dataWordCh[i][21:14];
    assign checkBCIDCh[i]     = enableCh[i] ? BCIDCh[i] : goodBCID;
    assign checkL1CountCh[i]  = enableCh[i] ? L1CountCh[i] : goodL1Count;
    assign googFillerCh[i] = ~enableCh[i] | (enableCh[i] & dataValidCh[i] & (dataTypeCh[i] == idle) );
    ETROCBoard ETROCBoardInst(
      .clk40(clk40),       
      // .clk160(clk160),              
      .clk320(clk320),
      .clk200(clk200),
      .inject_SEU(inject_SEU),
      .bit_latency(bit_latency),
      .auto_mode(auto_mode),
      .falling_edge(falling_edge),
      .session_DAQ_on(session_DAQ_on),
      .GTX_rx_clk(DP_Rx_Clock[i]),
      .reset(reset),                             
      .fifo_reset(channel_reset[i]),
      .channel(channel),
      .enable(enableCh[i]),
      .clrError(clrError),
      .enableAutoSync(enableAutoSync),
      .delayTrig(delayTrigCh[i]),
      .headerCounter(headerCounterCh[i]),
      .dataCounter(dataCounterCh[i]),
      .trigCounter(trigCounterCh[i]),
      .refreshCounter(refreshCounterCh[i]),
      .rate(rate),
      .trigDataSize(trigDataSize),
      .GTX_DP_Data(DP_Data[i]),
      .notGTX(notGTX),
      .notGTXPolarity(notGTXPolarity),
      .noGTX_RX(noGTX_RX[i]), 
      // .trigger_fifo_full(trigger_fifo_full),
      .dataType(dataTypeCh[i]),
      .GTXBitSync(GTXBitSync[i]),
      .GTXLinkError(GTXLinkError[i]),
      .dataError(dataErrorCh[i]),
      .synched(synchedCh[i]),
      .trigSynched(trigSynchedCh[i]),
      .trigError(trigErrorCh[i]),
      .linkConsistent(linkConsistentCh[i]),
      .trigOut(trigOutCh[i]),
      .flashingBit(flashingBitCh[i]),
      .dataValid(dataValidCh[i]),
      .dataWord(dataWordCh[i]),
      .rdenETROC2FIFO(rdenETROC2FIFOCh[i]),
      .almost_full_ETROC2FIFO(almost_full_ETROC2FIFOCh[i]),
      .half_full__ETROC2FIFO(half_full__ETROC2FIFOCh[i]),
      .emptyETROC2FIFO(emptyETROC2FIFOCh[i]),
      .resetCount(resetCountCh[i]),
      .latch_edge(latch_edgeCh[i]),
      .edge_found(edge_foundCh[i]),
      .align_done(align_doneCh[i]),
      .align_error(align_errorCh[i]),
      .wordCountFIFO(wordCountFIFOCh[i]),
      .descr_raw_data(descr_raw_data_ch[i]),
      .non_descr_data(non_descr_data_ch[i]),
      .dout(boardDataCh[i])
    );
end
endgenerate

wire [7:0] resetCountTotal;
wire [14:0] max_wordCountFIFO;
wire [14:0] max_wordCountFIFO1;
wire [14:0] max_wordCountFIFO2;

assign max_wordCountFIFO1 = wordCountFIFOCh[1] > wordCountFIFOCh[0] ? wordCountFIFOCh[1] : wordCountFIFOCh[0];
assign max_wordCountFIFO2 = wordCountFIFOCh[3] > wordCountFIFOCh[2] ? wordCountFIFOCh[3] : wordCountFIFOCh[2];
assign max_wordCountFIFO = max_wordCountFIFO2 > max_wordCountFIFO1 ? max_wordCountFIFO2 : max_wordCountFIFO1;

assign resetCountTotal = resetCountCh[0] + resetCountCh[1] + resetCountCh[2] + resetCountCh[3];
wire [3:0] valid_emptyETROC2FIFOCh;
wire [3:0] valid_almost_full_ETROC2FIFOCh = almost_full_ETROC2FIFOCh & enableCh;
wire [3:0] valid_half_full__ETROC2FIFOCh = half_full__ETROC2FIFOCh & enableCh;
assign buffer_almost_full = valid_almost_full_ETROC2FIFOCh[0] | valid_almost_full_ETROC2FIFOCh[1] |
                            valid_almost_full_ETROC2FIFOCh[2] | valid_almost_full_ETROC2FIFOCh[3];
assign buffer_half_full  = valid_half_full__ETROC2FIFOCh[0] | valid_half_full__ETROC2FIFOCh[1] | 
                           valid_half_full__ETROC2FIFOCh[2] | valid_half_full__ETROC2FIFOCh[3];
assign valid_emptyETROC2FIFOCh = emptyETROC2FIFOCh | (~enableCh);
// reg tickTok; //second counter
wire iBCIDMatch;
wire iL1CountMatch;

assign iBCIDMatch =  checkBCIDCh[0] == checkBCIDCh[1] 
                  && checkBCIDCh[0] == checkBCIDCh[2]
                  && checkBCIDCh[0] == checkBCIDCh[3];

assign iL1CountMatch =  checkL1CountCh[0] == checkL1CountCh[1] 
                     && checkL1CountCh[0] == checkL1CountCh[2]
                     && checkL1CountCh[0] == checkL1CountCh[3];

reg [4:0] auto_prescale_factor;

reg [9:0] overTimeHigh;
reg [21:0] overTimeLow;
wire [13:0] output_fifo_wr_count;

// localparam base_level = 15'd12288;
always @(posedge clk40)
begin
    if(reset)begin
      auto_prescale_factor <= 5'd12;
      overTimeLow <= 22'd0;
      overTimeHigh <= 10'd0;
    end
    // else begin 
    //   if (output_fifo_wr_count > 14'd5120)begin
    //     overTimeHigh <= overTimeHigh + 1;
    //   end
    //   else begin
    //     overTimeHigh <= 10'd0;
    //   end
    //   if (output_fifo_wr_count < 14'd1536)begin
    //     overTimeLow <= overTimeLow + 1;
    //   end
    //   else begin
    //     overTimeLow <= 22'd0;
    //   end

    //   if(overTimeHigh == 10'H3FF)
    //   begin
    //     auto_prescale_factor <= auto_prescale_factor + 1;
    //   end
    //   else if(overTimeLow == 22'H3FFFFF)
    //   begin
    //     auto_prescale_factor <= auto_prescale_factor - 1;
    //   end
    // end
end

always @(posedge clk40)
begin
    if(reset)begin
      BCIDMatchError    <= 1'b0;
      L1CountMatchError <= 1'b0;
    end
    else begin
      if(tickTok) begin
        BCIDMatchError    <= 1'b0;
        L1CountMatchError <= 1'b0;
      end
      else if(googFillerCh[0] & googFillerCh[1] & googFillerCh[2] & googFillerCh[3] ) begin
        if(~BCIDMatchError)BCIDMatchError <= ~iBCIDMatch; //hold
        if(~L1CountMatchError)L1CountMatchError <= ~iL1CountMatch;//hold
      end
    end
end

reg [15:0] triggerCount;
always @(posedge clk40)
begin
  if(reset)begin
    combineTriggerCount <= 16'd0;
    triggerCount <= 16'd0;
  end
  else if(tickTok)begin
    triggerCount <= 16'd0;
    combineTriggerCount <= triggerCount;
  end
  else if(trigSynchedCh == enableCh && trigOutCh == enableCh)begin
    triggerCount <= triggerCount + 1;
  end
end


assign headerCounter = headerCounterCh[monitorSel];
assign dataCounter = dataCounterCh[monitorSel];
assign trigCounter = trigCounterCh[monitorSel];
assign refreshCounter = refreshCounterCh[monitorSel];
assign trigSynched = trigSynchedCh[monitorSel];
assign trigError = trigErrorCh[monitorSel];
assign dataType = dataTypeCh[monitorSel];
assign flashingBit = flashingBitCh[monitorSel];
assign synched = synchedCh[monitorSel];
assign dataError = dataErrorCh[monitorSel];
assign linkConsistent = linkConsistentCh[monitorSel];
assign trigOut = trig_or_logic ? 
              ((trigOutCh&trigSelMask) != 4'd0) : 
              ((trigOutCh&trigSelMask) == trigSelMask) && (trigSelMask != 4'd0);

assign latch_edge = latch_edgeCh[monitorSel];
assign edge_found = edge_foundCh[monitorSel];
assign align_done = align_doneCh[monitorSel];
assign align_error = align_errorCh[monitorSel];

wire [7:0] linkNormal;
assign linkNormal[0] = ~(enableCh[0]) | (~(dataErrorCh[0]) & synchedCh[0]);
assign linkNormal[1] = ~(enableCh[0]) | (~(trigErrorCh[0]) & trigSynchedCh[0]);
assign linkNormal[2] = ~(enableCh[1]) | (~(dataErrorCh[1]) & synchedCh[1]);
assign linkNormal[3] = ~(enableCh[1]) | (~(trigErrorCh[1]) & trigSynchedCh[1]);
assign linkNormal[4] = ~(enableCh[2]) | (~(dataErrorCh[2]) & synchedCh[2]);
assign linkNormal[5] = ~(enableCh[2]) | (~(trigErrorCh[2]) & trigSynchedCh[2]);
assign linkNormal[6] = ~(enableCh[3]) | (~(dataErrorCh[3]) & synchedCh[3]);
assign linkNormal[7] = ~(enableCh[3]) | (~(trigErrorCh[3]) & trigSynchedCh[3]);


wire [11:0] dataSortBCID;
wire [39:0] dataSortWord;
// wire chip_data_ready;
// wire hold_L1A;
wire chip_data_buffer_rden;
wire chip_data_buffer_empty;
// wire [15:0] reset_counter;
wire [10:0] chip_data_word_count;
wire [3:0] error_status;
dataSorter dataSorterInst(
    .reset(fifo_reset | reset),                   
    .clk40(clk40),                     
    .enableCh(enableCh),        
    .emptyETROC2FIFOCh(valid_emptyETROC2FIFOCh),
    .rdenETROC2FIFOCh(rdenETROC2FIFOCh),
    .boardDataCh0(boardDataCh[0]),
    .boardDataCh1(boardDataCh[1]),
    .boardDataCh2(boardDataCh[2]),
    .boardDataCh3(boardDataCh[3]),
    .BCID(dataSortBCID), 
    .chip_data_ready(chip_data_ready),
    .hold_L1A(hold_L1A),
    .chip_data_buffer_rden(chip_data_buffer_rden),
    .chip_data_buffer_empty(chip_data_buffer_empty),
    .chip_data_word_count(chip_data_word_count),
    .reset_counter(reset_counter), // 
    .dumping_mode(dumping_mode),
    .debug_mode(debug_mode),
    .resume(resume),
    .latch_dump_data(latch_dump_data),
// `ifdef DEBUG_DATA_SORT
//     .debug_data_sort_state(debug_data_sort_state),
//     .debug_sortMask(debug_sortMask),
//     .debug_readToken(debug_readToken),
//     .debug_pre_state(debug_pre_state),
//     .debug_isHeader(debug_isHeader),
//     .debug_chip_data_buffer_empty(debug_chip_data_buffer_empty),
//     .debug_emptyETROC2FIFOCh(debug_emptyETROC2FIFOCh),
//     .debug_data_word(debug_data_word),
//     // .debug_data_word2(debug_data_word2),
//     .snapshot(snapshot),
//     .debug_state_seq(debug_state_seq),
// `endif
    .error_status(error_status),
    .dout(dataSortWord)
);

    reg [2:0] session_DAQ_on_dly;

    always @(posedge clk40)
    begin
        if(reset)
        begin
            session_DAQ_on_dly <= 3'd0;
        end
        else 
            session_DAQ_on_dly <= {session_DAQ_on_dly[1:0],session_DAQ_on};

    end
    wire session_DAQ_on_fall = session_DAQ_on_dly[2] & ~session_DAQ_on_dly[1];

wire raw_data_mode;
wire reset_event_builder;
assign reset_event_builder = reset | (~raw_data_mode & (fifo_reset | clrError | session_DAQ_on_fall)); 
eventBuilder eventBuilderInst(
    .reset(reset_event_builder),                        
    .clk40(clk40),      
    .test_raw_data_falling_edge(test_raw_data_falling_edge),
    .dis_descr_raw_data(dis_descr_raw_data),
    .descr_raw_data(descr_raw_data_ch[0]),
    .non_descr_data(non_descr_data_ch[0]),
    .dis_regular_filler(dis_regular_filler),  
    .prescale_factor(prescale_factor),
    .auto_prescale(auto_prescale),
    .auto_prescale_factor(auto_prescale_factor),
    .error_status(error_status),
    .fixed_time_filler(fixed_time_filler),
    .sample_event(sample_event),
    .add_ethernet_filler(add_ethernet_filler),                
    .enableCh(enableCh),
    .sortedWord(dataSortWord),
    .eventBCID(dataSortBCID),  
    .linkNormal(linkNormal),
    .data_aligned(synched),
    // .resetCount(resetCountTotal),        
    .resetCount(reset_counter[7:0]),        
    .chip_data_ready(chip_data_ready),
    .chip_data_buffer_empty(chip_data_buffer_empty),
    .chip_data_buffer_rden(chip_data_buffer_rden),               
    .chip_data_word_count(chip_data_word_count),
    .output_fifo_rd_clk(output_fifo_rd_clk),              
    .output_fifo_rd_en(output_fifo_rd_en),              
    .output_fifo_dout(output_fifo_dout),         
    .output_fifo_wr_count(output_fifo_wr_count),
    .raw_data_mode(raw_data_mode),
    .output_fifo_empty(output_fifo_empty)               
);


// wire [127:0] snapshot_data;
// assign snapshot_data = {boardDataCh[3],boardDataCh[2],boardDataCh[1],boardDataCh[0]};
// wire output_fifo_almostfull;
// readoutController readoutController_inst
// (
//     .reset(reset),
//     .clk40(clk40),
//     .clk160(clk160),
//     .boardType(4'b1111),
//     .noTimestamp(1'b0),
//     .snapshot_data(snapshot_data),
//     .randomTrigger(1'b0),
//     .output_fifo_almostfull(output_fifo_almostfull),
//     .output_fifo_rd_clk(output_fifo_rd_clk),     // connect to contorl interface 
//     .output_fifo_rd_en(output_fifo_rd_en),       // connect to fifo read enable
//     .trigger_fifo_full(trigger_fifo_full),
//     .output_fifo_dout(output_fifo_dout),        // fifo data output
//     .output_fifo_empty(output_fifo_empty)       // fifo data empty
// );

endmodule
