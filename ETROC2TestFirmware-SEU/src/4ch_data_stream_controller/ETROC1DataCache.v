`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: FERMILAB
// Engineer: Datao Gong
// 
// Create Date: Thursday, March 30, 2023 11:30:23 AM
// Design Name: ETROC1DataCache
// Module Name: ETROC1DataCache
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

module ETROC1DataCache(
    input wire reset,
    input wire clk,                 //40 MHz
    input wire trig,                //output 
    input wire empty,               //input data buffer is empty or not
    input wire [3:0] delay,         //1-16 clock delay
    input wire [31:0] din,  
    output wire [31:0] dout
);

wire [31:0] data;
reg [511:0] delayLine;
assign data = empty ? 32'd0 : din;
always @(posedge clk)
begin
    if(reset)
    begin
        delayLine <= 512'd0;
    end
    else
    begin
        delayLine <= {delayLine[511-32:0],data};
    end
end

    wire [31:0] delayedData;
    wire [8:0] delayX32 = {delay,5'd0}; 
    // assign delayedData = delayLine[delayX32+9'd31:delayX32];
    assign delayedData = delayLine[delayX32 +: 32];

    assign dout = trig ? delayedData : 32'd0;
 
endmodule
