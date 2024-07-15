`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/27/2018 02:40:26 PM
// Design Name: 
// Module Name: create_input_data_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module create_input_data_tb(

    );
reg clk = 1'b0;
reg reset = 1'b0;
reg fifo_wr_en = 1'b0;
reg fifo_rd_clk = 1'b0;
reg fifo_rd_en = 1'b0;
wire [255:0] fifo_data_out;
initial begin 
#500 reset = 1'b1;
#300 reset = 1'b0;

#300 fifo_wr_en = 1'b1;
#50000 fifo_wr_en = 1'b0;

#4000 fifo_rd_en = 1'b1;
#5000 fifo_rd_en = 1'b0;
end

always begin
#20 clk = ~clk;
end

always begin
#100 fifo_rd_clk = ~fifo_rd_clk;
end

create_input_data create_input_data_inst(
.clk(clk),         //input clock
.reset(reset),       //system reset
.fifo_wr_en(fifo_wr_en),
.fifo_rd_clk(fifo_rd_clk),
.fifo_rd_en(fifo_rd_en),
.fifo_data_out(fifo_data_out),
.fifo_empty(fifo_empty)
);
endmodule
