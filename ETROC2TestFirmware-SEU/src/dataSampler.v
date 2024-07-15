`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Wei Zhang 
// 
// Create Date: Thursday, May 4, 2023 5:11:10 PM
// Design Name: ETROC1 Array four boards beam test
// Module Name: dataSampler
// Project Name: dataSampler
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: gtx receives four boards 1.28 Gbps high speed serial data 
//              the gtx interface is located at DP[3:0]_M2C and GBCLK1 acts as 160 MHz reference 
//              clock input.
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module dataSampler
(
    input reset,
    input clk,
    input rx_clk,
    input [1:0] rate,
    input [31:0] din,
    output [31:0] dout,
    output bitSync,
    output dataError    //error flag, persistent error
);

reg [127:0] cb_buf;
reg [31:0] bb;
reg [1:0] wr_cnt;
reg [1:0] rd_cnt;

//write operation
always @(posedge rx_clk)
begin
    if(reset)begin
        wr_cnt <= 2'b00;
        cb_buf <= {128{1'b0}};
    end
    else begin
        wr_cnt <= wr_cnt + 1;
        if(wr_cnt == 2'b00)begin
            cb_buf[31:0] <= din;
        end
        else if (wr_cnt == 2'b01)begin
            cb_buf[63:32] <= din;
        end
        else if (wr_cnt == 2'b10)begin
            cb_buf[95:64] <= din;
        end
        else begin
            cb_buf[127:96] <= din;
        end
    end
end

//read operation
always @(posedge clk)
begin
    if(reset)begin
        rd_cnt <= 2'b10;
        bb <= {32{1'b0}};
    end
    else begin
        rd_cnt <= rd_cnt + 1;
        if(rd_cnt == 2'b00)begin
            bb <= cb_buf[31:0];
        end
        else if (rd_cnt == 2'b01)begin
            bb <= cb_buf[63:32];
        end
        else if (rd_cnt == 2'b10)begin
            bb <= cb_buf[95:64];
        end
        else begin
            bb <= cb_buf[127:96];
        end
    end
end

assign dout = (rate == 2'b00) ? {24'd0,bb[4*7],bb[4*6],bb[4*5],bb[4*4],bb[4*3],bb[4*2],bb[4*1],bb[4*0]} : 
             ((rate == 2'b01) ? {16'd0,bb[30],bb[28],bb[26],bb[24],bb[22],bb[20],bb[18],bb[16],bb[14],bb[12],bb[10],bb[8],bb[6],bb[4],bb[2],bb[0]}:
                                bb[31:0]);

assign bitSync = 1'b1;
assign dataError = (rate == 2'b00) ? ~(bb[0] == bb[1] && bb[1] == bb[2] && bb[2] == bb[3]) : 
                  ((rate == 2'b01) ? ~(bb[0] == bb[1]) :
                                     1'b0);

endmodule

