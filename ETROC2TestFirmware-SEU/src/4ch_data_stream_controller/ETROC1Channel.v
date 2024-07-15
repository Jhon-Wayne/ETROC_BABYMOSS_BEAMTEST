`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: FERMILAB
// Engineer: Datao Gong
// 
// Create Date: Thursday, March 30, 2023 5:24:42 PM
// Design Name: ETROC1Channel
// Module Name: ETROC1Channel
// Project Name: ETROC1 Array For Beam Test
// Target Devices: KC705
// Tool Versions: Vivado 2018.3
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created

// 
//////////////////////////////////////////////////////////////////////////////////

module ETROC1Channel(
    input wire reset,
    input wire fifo_reset,
    input wire rx_clk,
    input wire [1:0] channel,
    input wire clk40,                 //40 MHz
    input wire testMode,
    input wire enableChannel,
    input wire enableDescrambler,
    input wire trig,                //from trigselect
    input wire [31:0] din,          //input data from GTX
    input wire [3:0] delayData,         //1-16 clock delay
    output wire hitflag,         //hit flags for trigger
    output wire synched,
    output wire [31:0] dout
);

wire [31:0] syncedData;
// wire synched;
DataFrameSync DataFrameSync_inst0(
    .CLK(rx_clk),
    .RSTn(!reset),
    .testMode(testMode),
    .rawDataInParallel(din),
    .enableDescrambler(enableDescrambler),
    .DataOut(syncedData),
    .synched(synched)               //0 is not synchronized 1 is synchronized
    );

wire rst;
assign rst = reset | fifo_reset;
wire wr_en;
wire rd_en;
wire full;
wire empty;
wire [7:0] data_count;
wire [31:0] bufferData;
wire wr_rst_busy;
wire rd_rst_busy;
assign wr_en = ~full & synched & enableChannel;
assign rd_en = ~empty;
fifo_32to32_width256 fifo_32to32_width256_inst(
    .rst(rst),                              // input wire rst
    .wr_clk(rx_clk),                      // input wire wr_clk
    .rd_clk(clk40),                        // input wire rd_clk
    .din(syncedData),                             // input wire [31 : 0] din
    .wr_en(wr_en),                         // input wire wr_en
    .rd_en(rd_en),                         // input wire rd_en
    .dout(bufferData),                           // output wire [31 : 0] dout
    .full(full),                           // output wire full
    .empty(empty),                         // output wire empty
    .wr_data_count(data_count),
    .wr_rst_busy(wr_rst_busy),             // output wire wr_rst_busy
    .rd_rst_busy(rd_rst_busy)              // output wire rd_rst_busy
);

assign hitflag = bufferData[0];

ETROC1DataCache ETROC1DataCache_inst
(
    .reset(reset),
    .clk(clk40),
    .trig(trig),
    .empty(empty),
    .delay(delayData),
    .din({channel,bufferData[29:0]}),
    .dout(dout)
);

endmodule
