`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Fri May  5 10:34:04 CDT 2023
// Module Name: DescramblerWrap
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// The scrambling polynomial : x^58 + x^39 + 1
// LSB firs scrambling
//
//DIN (LSB first)
//    |
//    V
//   (+)<---------------------------(+)<-----------------------------.
//    |                              ^                               |
//    |  .----.  .----.       .----. |  .----.       .----.  .----.  |
//    +->|  0 |->|  1 |->...->| 38 |-+->| 39 |->...->| 56 |->| 57 |--'
//    |  '----'  '----'       '----'    '----'       '----'  '----'
//    V
//   DOUT


//////////////////////////////////////////////////////////////////////////////////


module DescramblerWrap 
(
    input                       clk,
    input                       reset,
    input [1:0]                 rate,
	input [31:0] 	            din,         //input data
    input                       bypass,      //bypass scrambler or not
	output [31:0]               dout         //output data
);

    wire [31:0] dscr32;

    Descrambler #(.WORDWIDTH(32))dscrInst32
    (
        .clk(clk),
        .reset(reset),
        .din(din),
        .bypass(bypass),
        .dout(dscr32)
    );

    wire [15:0] dscr16;
    Descrambler #(.WORDWIDTH(16))dscrInst16
    (
        .clk(clk),
        .reset(reset),
        .din(din[15:0]),
        .bypass(bypass),
        .dout(dscr16)
    );

    wire [7:0] dscr8;
    Descrambler #(.WORDWIDTH(8))dscrInst8
    (
        .clk(clk),
        .reset(reset),
        .din(din[7:0]),
        .bypass(bypass),
        .dout(dscr8)
    );

    assign dout = (rate == 2'b00) ? {24'd0,dscr8} :
             ((rate == 2'b01) ? {16'd0,dscr16} : dscr32); 


endmodule