`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Engineer: Datao Gong
// 
// Create Date: Wednesday, August 30, 2023 5:02:22 PM
// Design Name: ETROC2 Array four boards beam test
// Module Name: module TDCStatStream
// Project Name: ETROC2 test
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: 
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module TDCStatStream
(
    input rstn,
    input clk,       //40 MHz clock
    input valid,  //data validate or not
    input [7:0] pixelID,
    input [31:0] dataRecord,
    output reg [13:0] count,
    output reg [17:0] timeStamp, //timestamp in second
    output [15:0] TOAMean,
    output [25:0] TOAMSD,   //Mean Square Deviation
    output [15:0] CalMean,
    output [25:0] CalMSD,
    output [15:0] TOTMean,
    output [25:0] TOAMSD,
    output [8:0] E1ACount,
    output [8:0] E2ACount
);

reg tickTok; //second counter
reg [25:0] clockCounter;
always @(posedge clk)
begin
    if(~rstn)begin
        clockCounter <= 26'd0;
        tickTok <= 1'b0;
    end
    else if(clockCounter == (26'd40000000-1))
    begin
        clockCounter <= 26'd0;
        tickTok <= 1'b1;
    end
    else begin
        clockCounter <= clockCounter + 1;
        tickTok <= 1'b0;
    end
end

wire [9:0] cTOA;
wire [9:0] cCal;
wire [8:0] cTOT;
wire [7:0] cPixelID
wire cE1A;
wire cE2A;
assign cE2A = dataRecord[38];
assign cE1A = dataRecord[37];
assign cPixelID = dataRecord[36:29];
assign cTOA = dataRecord[28:19];
assign cTOT = dataRecord[18:10];
assign cCal = dataRecord[9:0];

reg [17:0] memTOAMean; 
reg [25:0] memTOAMSD; 
reg [17:0] memCalMean; 
reg [25:0] memCalMSD; 
reg [16:0] memTOTMean; 
reg [23:0] memTOTMSD; 
reg [13:0] memCount;
reg [8:0] memE1ACount;
reg [8:0] memE2ACount;

always @(posedge clk)
begin
    if(~rstn)begin
        timeStamp <= 18'd0;
    end
    else if(tickTok) begin
        timeStamp <= timeStamp + 1;
    end
end

endmodule

