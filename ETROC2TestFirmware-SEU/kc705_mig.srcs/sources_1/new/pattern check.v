`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/06/11 14:35:25
// Design Name: 
// Module Name: pattern check
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: check if the input is period pattern
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module pattern_check(
input clk,
input din,
input rst,
input din_vld,
output reg checkpass
    );

reg [7:0] din_srl; 
reg [7:0] din_vld_srl;
reg [15:0] pattern = 16'b01001010;

always @(posedge clk)
    begin
        if (rst)
            begin
            din_srl <= 'b0;
            din_vld_srl <= 'b0;
            end
        else if (din_vld)
            begin
            din_srl <= {din_srl[6:0],din};
            din_vld_srl <= {din_vld_srl[6:0],din_vld};    
            end
        else
            begin
            din_srl <= din_srl;
            din_vld_srl <= {din_vld_srl[6:0],din_vld}; 
            end
    end
    
always @(posedge clk)
    begin
        if(rst)
            begin
                checkpass <= 'b0;
            end
        else
            begin
                if (din_vld_srl==8'hff)
                    begin
                       checkpass = (pattern == din); 
                    end
            end
    end



    
    
    
endmodule
