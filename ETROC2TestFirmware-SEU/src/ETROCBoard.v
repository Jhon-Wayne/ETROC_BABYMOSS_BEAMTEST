`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Author: Datao Gong 
// 
// Create Date: Friday, July 21, 2023 9:48:53 AM
// Module Name: ETROCBoard
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////

module ETROCBoard
(
	input  			         clk40,   
	input  			         clk320,  
    input                    inject_SEU,
    input                    clk200, //for delay cell
    input [3:0]              bit_latency,
    input                    auto_mode,
    input                    falling_edge,
    input                    session_DAQ_on,   
    input                    GTX_rx_clk,
	input  			         reset,   
    input                    fifo_reset,
    input [1:0]              channel,
    input                    enable,
    input                    clrError,
    input                    enableAutoSync,
    input                    delayTrig,
    output reg [31:0]        headerCounter,
    output reg [31:0]        dataCounter,
    output reg [31:0]        trigCounter,
    output reg [15:0]        refreshCounter,
    input [1:0]              rate,
    input [4:0]              trigDataSize,
    input [31:0]             GTX_DP_Data,
    input                    notGTX,
    input                    notGTXPolarity,      
    input                    noGTX_RX,
    output [1:0]             dataType,
    output                   GTXBitSync,
    output                   GTXLinkError,
    output                   dataError,
    output                   synched,
    output                   trigSynched,
    output                   trigError,
    output                   linkConsistent,
    output                   trigOut,
    output                   flashingBit,
    output                   dataValid,
    output [39:0]            dataWord,
    input                    rdenETROC2FIFO,
    output                   almost_full_ETROC2FIFO,
    output                   half_full__ETROC2FIFO,
    output                   emptyETROC2FIFO,
    output [7:0]             resetCount,
    output                   latch_edge,
    output                   edge_found,
    output                   align_done,
    output                   align_error,
    output [14:0]            wordCountFIFO,
    output [31:0]            descr_raw_data,
    output [31:0]            non_descr_data,
    output [39:0]            dout
 );

wire [31:0] descr;

dataMultiplexer dataMultiplexerInst
(
    .reset(reset | fifo_reset),
    .clk40(clk40),
    .clk320(clk320),
    .clk200(clk200),
    .non_descr_data(non_descr_data),
    .bit_latency(bit_latency),
    .auto_mode(auto_mode),
    .falling_edge(falling_edge),
    .rx_clk(GTX_rx_clk),
    .notGTX(notGTX),
    .notGTXPolarity(notGTXPolarity),
    .rate(rate),
    .GTX_DP_Data(GTX_DP_Data),
    .noGTX_RX(noGTX_RX),
    .GTXBitSync(GTXBitSync),
    .GTXLinkError(GTXLinkError),
    .latch_edge(latch_edge),
    .edge_found(edge_found),
    .align_done(align_done),
    .align_error(align_error),
    .dout(descr)
);

    reg [23:0] eventCount;
    reg [31:0] bit_flip_mask;
    wire [31:0] msb_mask;
    assign msb_mask = rate == 2'b00 ? 32'H80 : (rate == 2'b01 ? 32'H8000 : 32'H80000000);
    always @(posedge clk40)
    begin
        if(reset | fifo_reset)begin
           eventCount <= 24'd0; 
           bit_flip_mask <= 32'd1;
        end
        else begin
            bit_flip_mask <= bit_flip_mask == msb_mask ? 32'd1 : (bit_flip_mask << 1);
            if(eventCount == 24'H100000) begin //period is 24'H100001
                eventCount <= 24'd0;
            end
            else begin
                eventCount <= eventCount + 1;
            end
        end
    end

    wire [31:0] masked_descr;
    assign masked_descr = (eventCount == 24'd0 && inject_SEU == 1'b1) ? (descr^bit_flip_mask) : descr;
    assign descr_raw_data = masked_descr; 
    wire [15:0] RC_triggerData;
    wire RC_dataValid;
    wire RC_dataError;
    wire RC_aligned;
    wire [1:0] RC_dataType;
    wire [39:0] RC_dataWord;
    wire syncedETROC1GTX;

    assign dataError = RC_dataError;
    assign synched = RC_aligned;

    wire trigOut1;
 	ETROC2DataFrameSync ETROC2DataFrameSync_Inst(
	.clk40(clk40),			
    .reset(~(reset|fifo_reset)),			
    .dataRate(rate),      	
	.din(masked_descr),         
    .clrError(clrError),	
    .enableAutoSync(enableAutoSync),   
	.trigDataSize(trigDataSize),   
    .trigSynched(trigSynched),
    .trigError(trigError),
    .trigOut(trigOut1),
    .flashingBit(flashingBit),
    .linkConsistent(linkConsistent),
    .dataValid(RC_dataValid),		
	.aligned(RC_aligned),
	.dataError(RC_dataError),
	.dataType(RC_dataType), 
    .resetCount(resetCount),
	.dout(RC_dataWord)  
	);

    assign dataValid = RC_dataValid;
    assign dataWord = RC_dataWord;

    reg trigOutReg;
    always @(posedge clk40)
    begin
        trigOutReg <= trigOut1;
    end
    assign trigOut = delayTrig ? trigOutReg : trigOut1;


    localparam header   = 2'b00;
    localparam data     = 2'b01;
    localparam trailer  = 2'b10;
    localparam idle     = 2'b11;

    wire isData     = RC_dataType == data;
    wire isHeader   = RC_dataType == header;
    wire isFiller   = RC_dataType == idle;
    wire isTrailer  = RC_dataType == trailer;

    wire [31:0] timerClocks = 32'd40000000; 

    reg [31:0] timer40MHz;
    reg [31:0] headerCounterInt;
    reg [31:0] dataCounterInt;
    reg [31:0] trigCounterInt;

    reg tick1Hz;
    wire linAligned = RC_aligned & trigSynched;
    always @(posedge clk40)
    begin
        if(reset | fifo_reset | ~linAligned)begin
            timer40MHz <= 32'd0;
            tick1Hz <= 1'b0;
        end
        else if (timer40MHz == timerClocks) begin
            timer40MHz <= 32'd0;
            tick1Hz <= 1'b1;
        end
        else begin
            timer40MHz <= timer40MHz + 1;
            tick1Hz <= 1'b0;
        end
    end

    always @(posedge clk40)
    begin
        if(reset | fifo_reset | ~linAligned)
        begin
            headerCounterInt    <= 32'd0;
            dataCounterInt      <= 32'd0;
            trigCounterInt      <= 32'd0;
            headerCounter       <= 32'd0;
            dataCounter         <= 32'd0;
            trigCounter         <= 32'd0;
            refreshCounter      <= 16'd0;
        end
        else if(tick1Hz)
        begin
            headerCounterInt    <= 32'd0;
            dataCounterInt      <= 32'd0;
            trigCounterInt      <= 32'd0;
            headerCounter       <= headerCounterInt;
            dataCounter         <= dataCounterInt;
            trigCounter         <= trigCounterInt;
            refreshCounter      <= refreshCounter + 1;
        end
        else 
        begin
            if(isData & RC_dataValid)dataCounterInt        <= dataCounterInt + 1;
            if(isHeader & RC_dataValid)headerCounterInt    <= headerCounterInt + 1;
            if(trigOut)trigCounterInt       <= trigCounterInt + 1;
        end
    end

    // wire almost_full_ETROC2FIFO;
    // wire half_full__ETROC2FIFO;

    assign dataType = RC_dataType;  
    wire [39:0] doutETROC2FIFO;
    // reg stopDAQ;
    wire wrenETROC2FIFO;
    // assign wrEnFIFO = wrenETROC2FIFO;
    assign wrenETROC2FIFOData = RC_dataValid & 
                            (~isFiller)& 
                            // ~stopDAQ&
                            RC_aligned &
                            ~fullETROC2FIFO&
                            session_DAQ_on;
    // wire wrenETROC2FIFOMissingCnt;
    // assign wrenETROC2FIFOMissingCnt = (missingCount != 21'd0) & 
    //                         ~stopDAQ&
    //                         RC_aligned;
    // assign wrenETROC2FIFO = wrenETROC2FIFOMissingCnt | wrenETROC2FIFOData;
    assign wrenETROC2FIFO =  wrenETROC2FIFOData;
  
    wire fullETROC2FIFO;
    wire [14:0] wordCountETROC2FIFO;

    assign wordCountFIFO = enable ? wordCountETROC2FIFO : 15'd0;
    assign almost_full_ETROC2FIFO =  wordCountETROC2FIFO > 15'd12336;
    assign half_full__ETROC2FIFO = wordCountETROC2FIFO > 15'd8192;


    wire [39:0] dinETROC2Word;
    // assign dinETROC2Word = missingCount != 21'd0 ? missingCountWord : RC_dataWord;
    assign dinETROC2Word = RC_dataWord;

    reg [2:0] session_DAQ_on_dly;

    always @(posedge clk40)
    begin
        if(reset | fifo_reset)
        begin
            session_DAQ_on_dly <= 3'd0;
        end
        else 
            session_DAQ_on_dly <= {session_DAQ_on_dly[1:0],session_DAQ_on};

    end
    wire session_DAQ_on_fall = session_DAQ_on_dly[2] & ~session_DAQ_on_dly[1];

    FIFO40To40_Depth1K FIFO40To40_Depth1Kinst
    (
        .srst(reset|fifo_reset | session_DAQ_on_fall),
        .clk(clk40),
        .wr_en(wrenETROC2FIFO),
        .din(dinETROC2Word),
        .full(fullETROC2FIFO),
        .data_count(wordCountETROC2FIFO),
        .empty(emptyETROC2FIFO),
        .dout(doutETROC2FIFO),
        .rd_en(rdenETROC2FIFO)
    );

    assign dout = doutETROC2FIFO;


endmodule
