`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Tuesday, May 9, 2023 3:37:28 PM
// Module Name: wordBufferReadVar
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////

//FWFT
module wordBufferReadVar
#(parameter INPUTWIDTH = 40, parameter OUTPUTWIDTH = 32)
(
	input  			         clk,            //40MHz
	input  			         rstn,          //rest, low active
    input                    wren,
    input                    rden,
    input [6:0]              offset,
    input [6:0]              readLength,
	input [INPUTWIDTH-1:0]   din,
    output [OUTPUTWIDTH-1:0] dout,
    output [6:0]             bitsCount,
    output                   empty,          //if there is no data for a word output
    output                   full            //if there is no space for a word input
 );

    reg [127:0] cb; //circular buffer
    reg [6:0] wrAddr;
    reg [6:0] rdAddr;
    // wire [6:0] bitsCount = wrAddr - rdAddr;
    assign bitsCount = wrAddr - rdAddr;
    assign empty = bitsCount < OUTPUTWIDTH;
    assign full = (8'd128-{1'b0,bitsCount}) < INPUTWIDTH;

    always @(posedge clk) 
    begin 
        if(~rstn)
        begin
            wrAddr <= offset;
            rdAddr <= 7'd0;
        end
        else 
        begin
            if(wren == 1'b1)
            begin
                wrAddr <= wrAddr + INPUTWIDTH;
            end 
            if(rden == 1'b1)
            begin
                rdAddr <= rdAddr + readLength;
            end 
        end
    end    

// wire [6:0] wrIndex;
// assign wrIndex = (i+128-wrAddr)%128;
    
genvar i;
generate 
for(i = 0; i<128; i= i+1) 
begin
    always @(posedge clk) 
        begin 
            cb[i] <=  ~rstn ? 1'b0 : 
                     ((wren == 1'b1)&&(((i+128-wrAddr)%128)>=0 && ((i+128-wrAddr)%128) < INPUTWIDTH) ? din[(i+128-wrAddr)%128] : cb[i]);
                    // cb[ wrAddr +: INPUTWIDTH] <= din[0 +: INPUTWIDTH]; 
        end    
end
endgenerate

// wire [6:0] wrIndex;
// assign rdIndex = (rdAddr+k)%128
genvar k;
generate 
for(k = 0; k < OUTPUTWIDTH; k = k+1) 
begin
    assign dout[k] = cb[(rdAddr+k)%128];
    // always @(posedge clk) 
    //     begin 
    //             dout[k] <= ~rstn ? 1'b0 : 
    //                         (rden == 1'b1) ? cb[(rdAddr+k)%128] : dout[k];
    //             // dout[0 +: OUTPUTWIDTH] <= cb[ rdAddr +: OUTPUTWIDTH]; 
    //     end    
end
endgenerate

endmodule
