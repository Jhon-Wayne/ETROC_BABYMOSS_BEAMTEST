`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Tuesday, May 9, 2023 3:37:28 PM
// Module Name: wordBuffer
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////

module wordBuffer
// #(parameter INPUTWIDTH = 40, parameter OUTPUTWIDTH = 32)
(
	input  			         clk,            //40MHz
	input  			         rstn,          //rest, low active
    input                    wren,
    input                    rden,
	input [40-1:0]           din,
    output  [32-1:0]         dout,
    output [8:0]             bitsCount,
    output                   almost_empty,          //if there is no data for a word output
    output                   almost_full            //if there is no space for a word input
 );

    reg [255:0] cb; //circular buffer
    reg [7:0] wrAddr;
    reg [7:0] rdAddr;
    // wire [6:0] bitsCount = wrAddr - rdAddr;
    assign bitsCount = wrAddr >= rdAddr ? (wrAddr - rdAddr) : ({1'b1,wrAddr}-{1'b0,rdAddr});
    assign almost_empty = bitsCount < 9'd32;
    assign almost_full = (9'd256 - bitsCount ) < 9'd80; //avoid loopback

    always @(posedge clk) 
    begin 
        if(~rstn)
        begin
            wrAddr <= 8'd0;
            rdAddr <= 8'd0;
        end
        else 
        begin
            if(wren == 1'b1)
            begin
                wrAddr <= wrAddr + 8'd40;
            end 
            if(rden == 1'b1)
            begin
                rdAddr <= (bitsCount >= 32) ?  (rdAddr + 8'd32)%256 : (rdAddr + bitsCount)%256;
            end 
        end
    end    

    always @(posedge clk) 
        begin 
            if(~rstn)begin
                cb <= 256'd0;
            end
            else if(wren)
            begin
                cb[(wrAddr + 0)%256] <= din[39-0];
                cb[(wrAddr + 1)%256] <= din[39-1];
                cb[(wrAddr + 2)%256] <= din[39-2];
                cb[(wrAddr + 3)%256] <= din[39-3];
                cb[(wrAddr + 4)%256] <= din[39-4];
                cb[(wrAddr + 5)%256] <= din[39-5];
                cb[(wrAddr + 6)%256] <= din[39-6];
                cb[(wrAddr + 7)%256] <= din[39-7];
                cb[(wrAddr + 8)%256] <= din[39-8];
                cb[(wrAddr + 9)%256] <= din[39-9];

                cb[(wrAddr + 10)%256] <= din[39-10];
                cb[(wrAddr + 11)%256] <= din[39-11];
                cb[(wrAddr + 12)%256] <= din[39-12];
                cb[(wrAddr + 13)%256] <= din[39-13];
                cb[(wrAddr + 14)%256] <= din[39-14];
                cb[(wrAddr + 15)%256] <= din[39-15];
                cb[(wrAddr + 16)%256] <= din[39-16];
                cb[(wrAddr + 17)%256] <= din[39-17];
                cb[(wrAddr + 18)%256] <= din[39-18];
                cb[(wrAddr + 19)%256] <= din[39-19];

                cb[(wrAddr + 20)%256] <= din[39-20];
                cb[(wrAddr + 21)%256] <= din[39-21];
                cb[(wrAddr + 22)%256] <= din[39-22];
                cb[(wrAddr + 23)%256] <= din[39-23];
                cb[(wrAddr + 24)%256] <= din[39-24];
                cb[(wrAddr + 25)%256] <= din[39-25];
                cb[(wrAddr + 26)%256] <= din[39-26];
                cb[(wrAddr + 27)%256] <= din[39-27];
                cb[(wrAddr + 28)%256] <= din[39-28];
                cb[(wrAddr + 29)%256] <= din[39-29];

                cb[(wrAddr + 30)%256] <= din[39-30];
                cb[(wrAddr + 31)%256] <= din[39-31];
                cb[(wrAddr + 32)%256] <= din[39-32];
                cb[(wrAddr + 33)%256] <= din[39-33];
                cb[(wrAddr + 34)%256] <= din[39-34];
                cb[(wrAddr + 35)%256] <= din[39-35];
                cb[(wrAddr + 36)%256] <= din[39-36];
                cb[(wrAddr + 37)%256] <= din[39-37];
                cb[(wrAddr + 38)%256] <= din[39-38];
                cb[(wrAddr + 39)%256] <= din[39-39];
            end    
        end

    assign dout[31-0] = bitsCount > 0 ? cb[(rdAddr + 0)%256] : 1'b0; 
    assign dout[31-1] = bitsCount > 1 ? cb[(rdAddr + 1)%256] : 1'b0; 
    assign dout[31-2] = bitsCount > 2 ? cb[(rdAddr + 2)%256] : 1'b0; 
    assign dout[31-3] = bitsCount > 3 ? cb[(rdAddr + 3)%256] : 1'b0; 
    assign dout[31-4] = bitsCount > 4 ? cb[(rdAddr + 4)%256] : 1'b0; 
    assign dout[31-5] = bitsCount > 5 ? cb[(rdAddr + 5)%256] : 1'b0; 
    assign dout[31-6] = bitsCount > 6 ? cb[(rdAddr + 6)%256] : 1'b0; 
    assign dout[31-7] = bitsCount > 7 ? cb[(rdAddr + 7)%256] : 1'b0; 
    assign dout[31-8] = bitsCount > 8 ? cb[(rdAddr + 8)%256] : 1'b0; 
    assign dout[31-9] = bitsCount > 9 ? cb[(rdAddr + 9)%256] : 1'b0; 

    assign dout[31-10] = bitsCount > 10 ? cb[(rdAddr + 10)%256] : 1'b0; 
    assign dout[31-11] = bitsCount > 11 ? cb[(rdAddr + 11)%256] : 1'b0; 
    assign dout[31-12] = bitsCount > 12 ? cb[(rdAddr + 12)%256] : 1'b0; 
    assign dout[31-13] = bitsCount > 13 ? cb[(rdAddr + 13)%256] : 1'b0; 
    assign dout[31-14] = bitsCount > 14 ? cb[(rdAddr + 14)%256] : 1'b0; 
    assign dout[31-15] = bitsCount > 15 ? cb[(rdAddr + 15)%256] : 1'b0; 
    assign dout[31-16] = bitsCount > 16 ? cb[(rdAddr + 16)%256] : 1'b0; 
    assign dout[31-17] = bitsCount > 17 ? cb[(rdAddr + 17)%256] : 1'b0; 
    assign dout[31-18] = bitsCount > 18 ? cb[(rdAddr + 18)%256] : 1'b0; 
    assign dout[31-19] = bitsCount > 19 ? cb[(rdAddr + 19)%256] : 1'b0; 

    assign dout[31-20] = bitsCount > 20 ? cb[(rdAddr + 20)%256] : 1'b0; 
    assign dout[31-21] = bitsCount > 21 ? cb[(rdAddr + 21)%256] : 1'b0; 
    assign dout[31-22] = bitsCount > 22 ? cb[(rdAddr + 22)%256] : 1'b0; 
    assign dout[31-23] = bitsCount > 23 ? cb[(rdAddr + 23)%256] : 1'b0; 
    assign dout[31-24] = bitsCount > 24 ? cb[(rdAddr + 24)%256] : 1'b0; 
    assign dout[31-25] = bitsCount > 25 ? cb[(rdAddr + 25)%256] : 1'b0; 
    assign dout[31-26] = bitsCount > 26 ? cb[(rdAddr + 26)%256] : 1'b0; 
    assign dout[31-27] = bitsCount > 27 ? cb[(rdAddr + 27)%256] : 1'b0; 
    assign dout[31-28] = bitsCount > 28 ? cb[(rdAddr + 28)%256] : 1'b0; 
    assign dout[31-29] = bitsCount > 29 ? cb[(rdAddr + 29)%256] : 1'b0; 
    assign dout[31-30] = bitsCount > 30 ? cb[(rdAddr + 30)%256] : 1'b0; 
    assign dout[31-31] = bitsCount > 31 ? cb[(rdAddr + 31)%256] : 1'b0; 
endmodule
