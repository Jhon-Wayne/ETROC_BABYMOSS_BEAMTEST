`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Engineer: Datao Gong
// 
// Create Date: Sunday, July 2, 2023 6:38:04 PM
// Design Name: ETROC1 Array four boards beam test
// Module Name: noGTXdataSampler
// Project Name: dataSampler
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: Sample the data at 320 Mbps
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module noGTXdataSampler
(
    input rstn,
    input clk40,
    input clk320,
    input clk200, //for delay cell
    input [3:0] bit_latency,
    input auto_mode,
    input falling_edge,

    input enable,
    input polarity,
    input din,
    output latch_edge,
    output edge_found,
    output align_done,
    output align_error,

    output reg [7:0] dout
);

reg [7:0] ser_data;

// reg pos_rx_data;
// reg neg_rx_data;
// always @(posedge clk320)
// begin
//     pos_rx_data <= din;
// end

// always @(negedge clk320)
// begin
//     neg_rx_data <= din;
// end

wire rx_data;
// assign rx_data = polarity ? pos_rx_data : neg_rx_data;

bitLatch bitLatch_inst
(
    .clk(clk320),
    .clk200(clk200),
    .delay(bit_latency),
    .rstn(rstn),
    .auto_mode_asyn(auto_mode),
    .falling_edge_latch_asyn(falling_edge),
    .din(din),
    .dout(rx_data),
    .latch_edge(latch_edge),
    .edge_found(edge_found),
    .align_done(align_done),
    .align_error(align_error)
);

always @(posedge clk320)
begin
   if(enable)
       ser_data <= {rx_data,ser_data[7:1]};
   else 
      ser_data <= 8'd0;
end

always @(posedge clk40)
begin
   dout <= ser_data;
end

endmodule