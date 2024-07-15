`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Datao Gong 
// 
// Create Date: 01/14/2021 01:26:36 PM
// Design Name: ETROC1 Array four boards beam test
// Module Name: streamBufferFIFO
// Project Name: streamBufferFIFO
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: FIFO for stream buffer
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module streamBufferFIFO
(
    input clk,
    input reset,
    input wr_en,
    input rd_en,
    output reg full,
    output reg empty,
    output [2:0] count,
    output [39:0] data_out,
    input [39:0] data_in
);

reg [39:0] memory [0:7];
reg [2:0] wrAddr;
reg [2:0] rdAddr;
wire [2:0] rdAddrNext;
wire [2:0] wrAddrNext;
assign rdAddrNext = ~empty ? rdAddr + 1 : rdAddr;
assign wrAddrNext = ~full ? wrAddr + 1 : wrAddr;

always @(posedge clk) begin
    if(reset) begin
        wrAddr <= 0;
        rdAddr <= 0;
        full <= 0;
        empty <= 1'b1;
    end 
    else 
    begin
        if(rd_en == 1'b1)
        begin
            rdAddr <= rdAddrNext;
            empty <= (rdAddrNext == wrAddr);
            full <= 1'b0;
        end
        if(wr_en)
        begin
            wrAddr <= wrAddrNext;
            full <= (wrAddrNext == rdAddr);
            empty <= 1'b0;
            memory[wrAddr] <= data_in;
        end
    end
end

assign data_out = memory[rdAddr];
assign count = wrAddr >= rdAddr ? (wrAddr - rdAddr) : ({1'b1,wrAddr} - {1'b0,rdAddr});

endmodule
