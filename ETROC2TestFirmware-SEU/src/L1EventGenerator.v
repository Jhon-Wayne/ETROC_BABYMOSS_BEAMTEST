`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Author: Datao Gong 
// 
// Create Date: Monday, April 10, 2023 10:52:57 AM
// Module Name: L1EventGenerator
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////


module L1EventGenerator 
(
	input  			        clk,             //40MHz
	input  			        reset,           //
    input                   disTrig,
    input [7:0]             trigInterval,
    input [6:0]             hitInterval,       //from 0 to 127, if it is 127, the occupancy is up to 50%
    input [11:0]            emptySlot, //How many trigger signals, from 0 to 16
    output [15:0]           triggerData,     //trigger data, up to 16 bits, 
	output reg [11:0]       BCID,
    output [8:0]            hitsCount,
    output            reg   L1A         //L1 triggr
 );


// reg [11:0] BCID;
always @(posedge clk)
begin
    if(reset == 1'd1 || BCID == 12'd3563) begin
        BCID <= 12'd0;
    end
    else begin
        BCID <= BCID + 1;
    end
end

reg [7:0] timeCount;
always @(posedge clk)
begin
    if(reset == 1'd1 || timeCount == trigInterval) begin
        timeCount <= 8'd0;
    end
    else  begin
        timeCount <= timeCount + 1;
    end
end

assign iL1A = disTrig ? 1'b0 : (timeCount == trigInterval);
always @(posedge clk)
begin
    if(reset) L1A <= 1'b0;
    else L1A <= iL1A;
end

reg [6:0] trigCount;
// wire [6:0] noHitsInterval;
// assign noHitsInterval = occupancy == 0 ? 7'd127 : (8'd128)/occupancy - 1;

reg [8:0] trHitsCount;
always @(posedge clk)
begin
    if(reset == 1'd1) begin
        trigCount <= 8'd0;
        trHitsCount <= 9'd0;
    end
    else if(iL1A) begin
        if(trigCount == hitInterval)begin
            trHitsCount <= (trHitsCount == 9'd256) ? 9'd0 : (trHitsCount + 1);
            trigCount <= 8'd0;
        end 
        else begin
            trigCount <= trigCount + 1;
        end
    end
end

assign hitsCount = ~L1A | (trigCount != hitInterval) ? 9'd0 : trHitsCount;

reg [15:0] triggerDataReg;
always @(posedge clk)
begin
    if(reset == 1'd1) begin
        triggerDataReg <= 16'd0;
    end
    else begin
        triggerDataReg <= triggerDataReg + 16'd7;
    end
end

assign triggerData = (emptySlot == BCID) ? 16'd0 : triggerDataReg;

endmodule

