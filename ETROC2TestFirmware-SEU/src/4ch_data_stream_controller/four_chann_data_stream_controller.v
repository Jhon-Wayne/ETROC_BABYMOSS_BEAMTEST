`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Datao Gong and Wei Zhang
// 
// Create Date: Fri Jan 15 23:03:34 CST 2021
// Design Name: 4ch_data_stream_controller
// Module Name: 4ch_data_stream_controller
// Project Name: ETROC1 Array For Beam Test
// Target Devices: KC705
// Tool Versions: Vivado 2018.3
// Description: four channels data comes from four gtxs
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created

// 
//////////////////////////////////////////////////////////////////////////////////


 module four_chann_data_stream_controller(
input clk160,                     // input clock
input clk40,                      // 40 MHz main clock
input reset,                        // reset signal, high active
input fifo_reset,                   // manual reset fifo
input [3:0] synced,
input noTimestamp,
input [3:0] enableChannel,
input [29:0] gtx_ch1_data,          // gtx1 rx data
input [29:0] gtx_ch2_data,          // gtx2 rx data
input [29:0] gtx_ch3_data,          // gtx3 rx data
input [29:0] gtx_ch4_data,          // gtx4 rx data
output  [3:0] empty,
input gtx_ch1_clk,                  // gtx1 rx recovered clock
input gtx_ch2_clk,                  // gtx2 rx recovered clock
input gtx_ch3_clk,                  // gtx3 rx recovered clock
input gtx_ch4_clk,                  // gtx4 rx recovered clock
input output_fifo_rd_clk,           // connect to contorl interface 
input output_fifo_rd_en,            // connect to fifo read enable
output [31:0] output_fifo_dout,     // fifo data output
output output_fifo_empty            // 
);
wire [3:0] ch_clk;
assign ch_clk[0] = gtx_ch1_clk;
assign ch_clk[1] = gtx_ch2_clk;
assign ch_clk[2] = gtx_ch3_clk;
assign ch_clk[3] = gtx_ch4_clk;

wire rst;
assign rst = reset | fifo_reset;
//--------------------------------------------------------------> first stage fifo
wire [31:0] din [3:0];
wire [7:0] data_count [3:0];
wire [3:0] wr_en;
wire [3:0] rd_en;
wire [31:0] dout [3:0];
wire [3:0] full;
// wire [3:0] empty;
wire [3:0] wr_rst_busy;
wire [3:0] rd_rst_busy;
assign din[0] = {2'b00,gtx_ch1_data};
assign din[1] = {2'b00,gtx_ch2_data};
assign din[2] = {2'b00,gtx_ch3_data};
assign din[3] = {2'b00,gtx_ch4_data};
assign wr_en[0] = ~full[0] & synced[0] & enableChannel[0];
assign wr_en[1] = ~full[1] & synced[1] & enableChannel[1];
assign wr_en[2] = ~full[2] & synced[2] & enableChannel[2];
assign wr_en[3] = ~full[3] & synced[3] & enableChannel[3];
assign rd_en[0] = !empty[0];
assign rd_en[1] = !empty[1];
assign rd_en[2] = !empty[2];
assign rd_en[3] = !empty[3];

genvar i;
generate
for(i=0;i<4;i=i+1)
begin
    fifo_32to32_width256 fifo_32to32_width256_inst(
      .rst(rst),                              // input wire rst
      .wr_clk(ch_clk[i]),                      // input wire wr_clk
      .rd_clk(clk40),                        // input wire rd_clk
      .din(din[i]),                             // input wire [31 : 0] din
      .wr_en(wr_en[i]),                         // input wire wr_en
      .rd_en(rd_en[i]),                         // input wire rd_en
      .dout(dout[i]),                           // output wire [31 : 0] dout
      .full(full[i]),                           // output wire full
      .empty(empty[i]),                         // output wire empty
      .wr_data_count(data_count[i]),
      .wr_rst_busy(wr_rst_busy[i]),             // output wire wr_rst_busy
      .rd_rst_busy(rd_rst_busy[i])              // output wire rd_rst_busy
    );
end
endgenerate
//--------------------------------------------------------------< first stage fifo

//--------------------------------------------------------------> invoke readoutController
readoutController readoutController_inst(
.reset(rst),                                  // reset signal
.clk40(clk40),                                 // input 40 MHz clock
.clk160(clk160),                              //input 160 MHz clock
.noTimestamp(noTimestamp),
.ch1_data(dout[0]),                             // 32-bit TDC data from gtx_FIFO
.empty(empty),
// .ch1_empty(empty[0]),
.ch2_data(dout[1]),                             // 32-bit TDC data from gtx_FIFO
// .ch2_empty(empty[1]),
.ch3_data(dout[2]),                             // 32-bit TDC data from gtx_FIFO
// .ch3_empty(empty[2]),
.ch4_data(dout[3]),                             // 32-bit TDC data from gtx_FIFO
// .ch4_empty(empty[3]),
// .ch1_rd_en(rd_en[0]),                           // read enable signal for gtx_FIFO
// .ch2_rd_en(rd_en[1]),                           // read enable signal
// .ch3_rd_en(rd_en[2]),                           // read enable signal
// .ch4_rd_en(rd_en[3]),                           // read enable signal 
.output_fifo_rd_clk(output_fifo_rd_clk),        //to Ethernet controller
.output_fifo_rd_en(output_fifo_rd_en),          // read clock
.output_fifo_dout(output_fifo_dout),            // fifo32to32 data output
.output_fifo_empty(output_fifo_empty)           // fifo32to32 empty signal
);
//--------------------------------------------------------------< invoke readoutController
endmodule