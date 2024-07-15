`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Datao Gong and Wei Zhang
// 
// Create Date: Fri Jan 15 22:24:02 CST 2021
// Design Name: dataCache
// Module Name: dataCache
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

module dataCache(
    input wire reset,
    input wire clk,
    input wire [127:0] input_data,
    input wire [3:0] empties,
    // output wire [3:0] hitflags,
    output wire [127:0] output_data
);

reg [127:0] data_1d;
reg [127:0] data_2d;
reg [127:0] data_3d;
reg [127:0] data_4d;
reg [127:0] data_5d;
wire [31:0] sec0;
wire [31:0] sec1;
wire [31:0] sec2;
wire [31:0] sec3;
assign sec0 = empties[0] ? 32'b0 : input_data[31:0]; //if no data, put dummy data (all zero)
assign sec1 = empties[1] ? 32'b0 : input_data[63:32];
assign sec2 = empties[2] ? 32'b0 : input_data[95:64];
assign sec3 = empties[3] ? 32'b0 : input_data[127:96];

// assign sec0 = input_data[31:0]; 
// assign sec1 = input_data[63:32];
// assign sec2 = input_data[95:64];
// assign sec3 = input_data[127:96];

// assign hitflags = {data_5d[96],data_5d[64],data_5d[32],data_5d[0]};
assign output_data = data_5d;
always @(posedge clk)
begin
    if(reset)
    begin
        data_1d <= 128'b0;
        data_2d <= 128'b0;
        data_3d <= 128'b0;
        data_4d <= 128'b0;
        data_5d <= 128'b0;
    end
    else
    begin
        data_1d <= {sec3,sec2,sec1,sec0};
        data_2d <= data_1d;
        data_3d <= data_2d;
        data_4d <= data_3d;
        data_5d <= data_4d;
    end
end

 
endmodule
