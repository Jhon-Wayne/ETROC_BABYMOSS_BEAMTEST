`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Thu Feb 11 12:58:07 CST 2021
// Module Name: serializerBlock
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// LSB first serializer



//////////////////////////////////////////////////////////////////////////////////
//MSB first

module serializerBlockMSB #(parameter WORDWIDTH = 8) (
    input                   enable,
    input                   load,
    input                   bitCK,
	input [WORDWIDTH-1:0]   din,         //input data
	output                  sout         //output serial data
);
// tmrg default triplicate


    reg[WORDWIDTH-1:0] r;        //internal registers
    always @(posedge bitCK) 
    begin
        if(load)
        begin
            r <= din;     
        end
        else if(enable) 
        begin
            // r <= {r[WORDWIDTH-1],r[WORDWIDTH-1:1]};
            r <= {r[WORDWIDTH-2:0],r[0]};
        end
    end
    assign sout = r[WORDWIDTH-1];

endmodule