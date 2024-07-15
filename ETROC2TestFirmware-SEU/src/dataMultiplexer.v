`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Engineer: Datao Gong 
// 
// Create Date: Thursday, July 20, 2023 9:59:59 PM
// Design Name: ETROC2 test
// Module Name: dataMultiplexer
// Project Name: dataMultiplexer
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: 
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module dataMultiplexer(
    input reset,
    input clk40,
    input clk320,
    input clk200, //for delay cell
    input [3:0] bit_latency,
    input auto_mode,
    input falling_edge,
    input rx_clk,
    input notGTX,
    input notGTXPolarity,
    input [1:0] rate,
    input [31:0] GTX_DP_Data,
    input noGTX_RX,
    output GTXBitSync,
    output GTXLinkError,
    output latch_edge,
    output edge_found,
    output align_done,
    output align_error,
    output [31:0] non_descr_data,
    output [31:0] dout
);


wire [31:0] sampledData;
dataSampler dataSamplerInst
(
    .reset(reset),
    .clk(clk40),
    .rx_clk(rx_clk),
    .rate(rate),
    .din(GTX_DP_Data),
    .bitSync(GTXBitSync),
    .dataError(GTXLinkError),
    .dout(sampledData)
);

wire [31:0] descr;

wire [7:0] ET2_notGTX_DATA;
noGTXdataSampler noGTXdataSamplerInst
(
   .rstn(~reset),
   .clk40(clk40),
   .clk320(clk320),
   .clk200(clk200),
   .bit_latency(bit_latency),
   .auto_mode(auto_mode),
   .falling_edge(falling_edge),
   .enable(notGTX),
   .polarity(notGTXPolarity),
   .din(noGTX_RX),
   .latch_edge(latch_edge),
   .edge_found(edge_found),
   .align_done(align_done),
   .align_error(align_error),
   .dout(ET2_notGTX_DATA)
);

// wire [31:0] raw_ET2_data;
wire [31:0] rawCode;  
assign rawCode = notGTX ? {24'd0,ET2_notGTX_DATA} : sampledData;

DescramblerWrap DescramblerWrapInst
(
    .clk(clk40),
    .reset(~reset),
    .rate(rate),
    .din(rawCode),
    .bypass(1'b0),
    .dout(descr)
);
assign non_descr_data = rawCode;
assign dout = descr;

endmodule
