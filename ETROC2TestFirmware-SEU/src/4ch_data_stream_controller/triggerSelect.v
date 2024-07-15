`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Datao Gong and Wei Zhang
// 
// Create Date: Fri Jan 15 23:02:09 CST 2021
// Design Name: triggerSelect
// Module Name: triggerSelect
// Project Name: ETROC1 Array For Beam Test
// Target Devices: KC705
// Tool Versions: Vivado 2018.3
// Description: Due to the output data of TDC is random, and the data transmission rate of 
//              Ethernet is limited between low_rate and high_rate.
//              This module is used to control data stream of writing into fifo to meet
//              the requirement of data rate transmission of ethernet.
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created

// 
//////////////////////////////////////////////////////////////////////////////////


module triggerSelect(
    input wire reset,                    // reset signal
    input wire clk,                      // input 40 MHz clock
    input wire randomTrigOn,
    input wire persistentTrig,
    input wire [9:0] delay,             //delay from 1 to 1024 clock period
    input wire [1:0] triggerChannelSel, //channel from 0 to 3.
    input wire [3:0] hitflags,
    output wire trigger,
    output wire randomTrigger
);

wire iTrig;
assign iTrig = hitflags[triggerChannelSel];
reg [1023:0] delayLine;

always @(posedge clk)
begin
    if(reset)
        delayLine <= 1024'd0;
    else
        delayLine <= {delayLine[1022:0],iTrig};
end

assign trigger = delayLine[delay] | randomTrigger;

//----------------------------------------------------------------> trigger counter
reg [19:0] counter;
assign randomTrigger = randomTrigOn ? (counter == 20'd1024) : 1'b0;				// 1024 clock peroid
always @(posedge clk)
begin
    if(reset)
    begin
        counter <= 20'b0; 
    end
    else
    begin
        counter <= counter + 1;
    end
end
//----------------------------------------------------------------< trigger counter
endmodule
