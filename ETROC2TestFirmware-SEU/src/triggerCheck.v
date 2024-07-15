`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Engineer: Datao Gong 
// 
// Create Date: Wednesday, July 5, 2023 9:41:55 AM
// Design Name: ETROC1 Array four boards beam test
// Module Name: triggerCheck
// Project Name: triggerCheck
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: Check flashing bit of trigger signal
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module triggerCheck
(
    input rstn,
    input clk,              //40 MHz
    input trigger,
    output synched,
    output flashBitFlag,
    output error           //if error occur
);

reg [11:0] wrAddr;
reg [3653:0] trig_buff;
reg [3653:0] xor_buff;
reg full;   //no check until trig_buff is full
always @(posedge clk)
begin
   if(~rstn)
    begin 
      wrAddr <= 12'd0;
      full <= 1'b0;
   end
   else if(wrAddr == 12'd3563) begin
      wrAddr <= 12'd0;
      full <= 1'b1;
   end
   else begin
      wrAddr <= counter + 1;
   end
end

reg [3563:0] trigbits;
reg [11:0] flash_bit_counter
always @(posedge clk)
begin
   if(~rstn)
    begin 
      trig_buff   <= 3654'd0;
      xor_buff    <= {3654{1'b1}};
   end
    
end
endmodule

