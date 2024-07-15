`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/16/2018 09:06:59 PM
// Design Name: 
// Module Name: i2c_wr_bytes_tb
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


module i2c_wr_bytes_tb(

    );
reg clk = 1'b0;
reg rst = 1'b0;
reg wr = 1'b0;          //wr = 0  -- write  wr = 1  -- read
reg [1:0]mode = 2'b01;
reg [7:0]reg_one = 8'haa;
reg pulse = 1'b0;

wire SDA_OUT;
wire SDA_T;
wire SCL;
wire busy;
reg [6:0]slave_addr = 7'h43;           //slave address

//integer MODE_ONE = 2'b00;               //one byte write or read
//integer MODE_TWO = 2'b01;               //two byte write or read
//integer MODE_THREE = 2'b10;             //three byte write or read

//    integer reg_one = 8'h00;                //register one


initial begin
#1000 rst = 1'b1;
#1000 rst = 1'b0;
#1000 pulse = 1'b1;
#100  pulse = 1'b0;
end

always begin
#20 clk <= ~clk;
end

i2c_wr_bytes utt
(
.CLK(clk),                      //system clock 50Mhz
.RESET(rst),                    //active high reset
.START(pulse),                  //the rising edge trigger a start, generate by config_reg
.MODE(mode),                //'0' is 1 bytes read or write, '1' is 2 bytes read or write,
                                //'2' is 3 bytes write only , don't set to '3'
.SL_WR(wr),                     //'0' is write, '1' is read
.SL_ADDR(slave_addr),           //slave addr
.WR_ADDR(reg_one),              //chip internal addr for read and write
.WR_DATA0(8'h4c),               //first byte data for write
.WR_DATA1(8'h55),              //second byte data for write
.RD_DATA0(),             //first byte readout
.RD_DATA1(),             //second byte readout
.BUSY(busy),                 //indicates transaction in progress
.SDA_in(),               //serial data input of i2c bus
.SDA_out(SDA_OUT),              //serial data output of i2c bus
.SDA_T(SDA_T),                //serial data direction of i2c bus
.SCL(SCL)                  //serial clock output of i2c bus
);
endmodule
