`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Engineer: Datao Gong 
// 
// Create Date: Thursday, April 20, 2023 11:42:31 AM
// Design Name: ETROC1 Array four boards beam test
// Module Name: L1EventFIFO
// Project Name: L1EventFIFO
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: FIFO for L1Event Buffer
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module L1EventFIFO
(
    input clk,
    input reset,
    input wr_en,
    input rd_en,
    output reg full,
    output reg empty,
    output [6:0] count,
    output [21:0] data_out,
    input [21:0] data_in
);

reg [21:0] memory [0:127];
reg [6:0] wrAddr;
reg [6:0] rdAddr;
wire [6:0] rdAddrNext;
wire [6:0] wrAddrNext;
assign rdAddrNext = ~empty ? rdAddr + 1 : rdAddr;
assign wrAddrNext = ~full ? wrAddr + 1 : wrAddr;

always @(posedge clk) begin
    if(reset) begin
        wrAddr <= 7'd0;
        rdAddr <= 7'd0;
        full <= 1'b0;
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
