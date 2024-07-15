`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Datao Gong and Wei Zhang
// 
// Create Date: Sat Jan 16 16:05:55 CST 2021
// Design Name: missedEvtMonitor
// Module Name: missedEvtMonitor
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


module missedEvtMonitor(
    input reset,                    // reset signal
    input clk,                      // input 200 MHz clock-->160 MHz
    input wire [2:0] dataType,          //current data type. 0-3, channel TDC data; 4, timestamp; 5, nodata; 6. missed event data
    input wire output_fifo_almostfull,
    output wire [31:0] missedEvtData,      //output data to output fifo
    output reg missedEvtWriteReq          //request to write missed event data. Highest priority
);

//state machine
reg output_fifo_almostfull_delay;
reg [27:0] missedEvtCount [3:0];
wire noZeroMissedEvt;
assign noZeroMissedEvt = missedEvtCount[0] >100 || missedEvtCount[1] >100 || missedEvtCount[2] >100 || missedEvtCount[3] > 100;

always @(posedge clk)
begin
    if(reset)
    begin
        output_fifo_almostfull_delay <= 1'b0;
        missedEvtWriteReq <= 1'b0; //state machine status
    end
    else
    begin
        output_fifo_almostfull_delay <= output_fifo_almostfull;        
        if (missedEvtWriteReq == 1'b0)
        begin
            missedEvtWriteReq <= output_fifo_almostfull_delay & !output_fifo_almostfull & noZeroMissedEvt;
        end
        else
        begin
            missedEvtWriteReq <= noZeroMissedEvt; //hold request until all zero
        end
    end
end

wire [1:0] writeMissCh; //which channel is going to be write
assign writeMissCh = (missedEvtCount[0] != 0) ? 2'b00 :
                        ((missedEvtCount[1] != 0) ? 2'b01 :
                        ((missedEvtCount[2] != 0) ? 2'b10 :2'b11));
wire [27:0] missEvtCountOutput;
assign missEvtCountOutput = (missedEvtCount[0] != 0) ? missedEvtCount[0] :
                                ((missedEvtCount[1] != 0) ? missedEvtCount[1] : 
                                ((missedEvtCount[2] != 0) ? missedEvtCount[2] : missedEvtCount[3]));

assign missedEvtData = {writeMissCh,missEvtCountOutput,2'b00}; //for output

always @(posedge clk)
begin
    if(reset)
    begin
        missedEvtCount[0] <= 28'b0;
        missedEvtCount[1] <= 28'b0;
        missedEvtCount[2] <= 28'b0;
        missedEvtCount[3] <= 28'b0;
    end
    else if (missedEvtWriteReq == 1'b1) //if it is writing missedEvtCount
    begin
        missedEvtCount[writeMissCh] <= 28'b0; //clear this channel
    end
    else if (output_fifo_almostfull == 1'b1)
    begin
        missedEvtCount[0] <= (dataType == 3'b000 ? (missedEvtCount[0] + 1) : missedEvtCount[0]);
        missedEvtCount[1] <= (dataType == 3'b001 ? (missedEvtCount[1] + 1) : missedEvtCount[1]);
        missedEvtCount[2] <= (dataType == 3'b010 ? (missedEvtCount[2] + 1) : missedEvtCount[2]);
        missedEvtCount[3] <= (dataType == 3'b011 ? (missedEvtCount[3] + 1) : missedEvtCount[3]);
    end
end

endmodule
