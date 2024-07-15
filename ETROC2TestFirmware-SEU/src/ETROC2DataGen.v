`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Engineer: Datao Gong 
// 
// Create Date: Wednesday, April 19, 2023 3:44:40 PM
// Design Name: ETROC1 Array four boards beam test
// Module Name: ETROC2DataGen
// Project Name: ETROC2DataGen
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: ETROC2 data generator for test purpose
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module ETROC2DataGen
(
    input                   clk,
    input                   reset,
    input                   disTrig,
    input [4:0]             triggerDataSize,
    input [7:0]             trigInterval,
    input [6:0]             hitInterval,       //from 0 to 127, if it is 127, the occupancy is up to 50%
    input [11:0]            emptySlot, //How many trigger signals, from 0 to 16
    input [1:0]             dataRate,
    output [31:0]           dout
);

wire [11:0] BCID;
wire [8:0] hitsCount;
wire [15:0]triggerData;
wire L1A;

L1EventGenerator L1EventGeneratorInst
(
    .clk(clk),
    .reset(reset),
    .disTrig(disTrig),
    .trigInterval(trigInterval),
    .hitInterval(hitInterval),
    .emptySlot(emptySlot),
    .triggerData(triggerData),
    .BCID(BCID),
    .hitsCount(hitsCount),
    .L1A(L1A)
);

wire streamBufAlmostFull;
wire [28:0] TDCData;
wire hit;
wire eventStart;
wire [7:0] pixelID;
wire [11:0] pixelBCID;
wire [7:0] L1Counter;
wire L1BufFull;
wire L1BufHalfFull;
wire L1BufOverflow;

L1EventBuffer L1EventBufferInst
(
    .clk(clk),
    .reset(reset),
    .streamBufAlmostFull(streamBufAlmostFull),
    .BCIDin(BCID),
    .hitsCount(hitsCount),
    .L1A(L1A),
    .TDCData(TDCData),
    .hit(hit),
    .eventStart(eventStart),
    .pixelID(pixelID),
    .BCIDout(pixelBCID),
    .L1Counter(L1Counter),
    .L1BufFull(L1BufFull),
    .L1BufHalfFull(L1BufHalfFull),
    .L1BufOverflow(L1BufOverflow)
);

wire [39:0] dataFrame;
frameBuilder frameBuilderInst
(
    .clk(clk),
    .reset(~reset),
    .type(2'b00),
    .TDCData(TDCData),
    .chipID(17'd11),
    .hit(hit),
    .eventStart(eventStart),
    .pixelID(pixelID),
    .BCID(pixelBCID),
    .L1Counter(L1Counter),
    .EA(2'b00),
    .L1BufFull(L1BufFull),
    .L1BufHalfFull(L1BufHalfFull),
    .L1BufOverflow(L1BufOverflow),
    .streamBufAlmostFull(streamBufAlmostFull),
    .dataFrame(dataFrame)
);

wire noErrorInternal;
dataStreamCheck dataStreamCheckInst
(
    .clk40(clk),
    .dataValid(~streamBufAlmostFull),
    .reset(~reset),
    .din(dataFrame),
    .noError(noErrorInternal)
);

wire [11:0] genBCID;

BCIDCounter BCIDCounterInst
    (
	    .clkTMR(clk), 
        .disTMR(1'b0),
        .resetTMR(~reset),                 //40MHz
        .rstBCIDTMR(~reset),    //BCID reset signal 
        .offsetTMR(12'd121),        //value when it is reset
        .BCIDTMR(genBCID)
    );

wire [31:0] streamData;
streamBuffer streamBufferInst
(
    .clk(clk),
    .reset(~reset),
    .rate(dataRate),
    .triggerDataSize(triggerDataSize),
    .triggerData({16'd0,triggerData}),
    .dataFrame(dataFrame),
    .RT_BCID(genBCID),
    .DBS(2'b00),
    .RT_L1Counter(8'd123),
    .almostFull(streamBufAlmostFull),
    .dout(streamData)
);

wire [31:0] scr;

//    wire resetScrambler = dnReset&~dis; 
reg [19:0] delayLine;
always @(posedge clk) 
    begin
        delayLine <= {delayLine[18:0],reset};
    end
wire dlReset;
assign dlReset = delayLine[19];
    Scrambler scrInst
    (
        .clk(clk),
        .reset(~dlReset),
        .dataWidth(dataRate),
        .din(streamData),
        .bypass(1'b0),
        .dout(scr)
    );

wire [31:0] sscr;
assign sscr = dataRate == 2'b00 ? {24'd0,scr[7:0]} :(dataRate == 2'b01 ? {16'd0,scr[15:0]} : scr);

dataExtender dataExtenderInst
(
    .dataRate(dataRate),
    .din(sscr),
    .dout(dout)
);

endmodule
