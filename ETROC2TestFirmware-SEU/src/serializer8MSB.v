`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Thu Feb 11 12:58:07 CST 2021
// Module Name: serializer8MSB
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// LSB first serializer



//////////////////////////////////////////////////////////////////////////////////
//MSB first

module serializer8MSB (
    input                   rstn,
    input                   clk40,
    input                   clk320,
	input [7:0]             din,         //input data
	output                  sout         //output serial data
);

reg data;           //
reg [7:0] dinReg;
always @ (posedge clk40)
begin
    if(~rstn)begin
        data <= 1'b0;
        dinReg <= 8'd0;
    end
    else begin
        dinReg <= din;
        data <= ~data;
    end    
end

wire load;
reg [2:0] dl;
assign load = dl[2]^dl[1];
always @ (posedge clk320)
begin
    dl <= {dl[1:0],data};
end


serializerBlockMSB #(.WORDWIDTH(8)) serializerBlockMSB
(
    .enable(1'b1),
    .load(load),
    .bitCK(clk320),
    .din(dinReg),
    .sout(sout)
);

endmodule