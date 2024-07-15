`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Author: Datao Gong 
// 
// Create Date: Monday, April 10, 2023 10:52:57 AM
// Module Name: L1EventBuffer
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////


module L1EventBuffer 
(
	input  			        clk,             //40MHz
	input  			        reset,           //
    input                   streamBufAlmostFull,
	input [11:0]            BCIDin,
    input [8:0]             hitsCount,
    input                   L1A,
    output [28:0]           TDCData,
    output  reg             hit,
    output                  eventStart,
    output [7:0]            pixelID,
    output [11:0]           BCIDout,
    output reg [7:0]        L1Counter,
    output                  L1BufFull,
    output                  L1BufHalfFull,
    output                  L1BufOverflow   //
 );

wire [6:0] data_count;
wire wr_en;
wire rd_en;
wire full;
wire empty;

assign wr_en = ~full & L1A; //will not be full
assign L1BufFull = full;
assign L1BufHalfFull = data_count >= 7'd64;
assign L1BufOverflow = data_count >= 7'd96;

wire [21:0] eventDataIn;
wire [21:0] pixelBuffer;
reg [21:0] eventBuffer;
// assign eventBuffer = pixelBuffer;

assign eventDataIn = {1'b0,hitsCount,BCIDin};

L1EventFIFO L1EventFIFOInst(
    .clk(clk),                       // write/read clock
    .reset(reset),                   //reset
    .data_in(eventDataIn),                             // input wire [31 : 0] din
    .wr_en(wr_en),                         // input wire wr_en
    .rd_en(rd_en),                         // input wire rd_en
    .data_out(pixelBuffer),                           // output wire [31 : 0] dout
    .full(full),                           // output wire full
    .empty(empty),                         // output wire empty
    .count(data_count)
);


reg load;
always @(negedge clk)
begin
    if(reset) eventBuffer <= 22'd0;
    else if(load)eventBuffer <= pixelBuffer;
end

reg [8:0] countHit;
reg sessionStart;
assign TDCData = {1'b0,countHit,9'd5,10'd169};
assign BCIDout = eventBuffer[11:0];
wire [8:0] currentEventHits;
assign  currentEventHits = eventBuffer[20:12];
assign pixelID = countHit[7:0];
// assign hit = sessionStart & ~load & (countHit < currentEventHits);
// assign hit = sessionStart & (countHit < currentEventHits);
// assign hit = (countHit < currentEventHits);

assign rd_en = load;

always @(posedge clk) 
begin
    if(reset)
    begin
        L1Counter       <= 8'd0;
    end
    else if(L1A == 1'b1)begin 
        L1Counter <= L1Counter + 1;
    end
end

always @(posedge clk) 
begin
    if(reset)
    begin
        sessionStart    <= 1'b0;
        load            <= 1'b0;
        countHit        <= 9'd0;
        hit <= 1'b0;
    end
    else if(~sessionStart)
    begin
        if(~empty & ~streamBufAlmostFull)
        begin
            sessionStart <= 1'b1;
            load <= 1'b1;
            countHit <= 9'd0;
        end
    end
    else 
    begin
        load    <= 1'b0;
        hit     <= countHit < currentEventHits;
        if(~streamBufAlmostFull)
        begin
            countHit <= countHit + 1;
            sessionStart <= L1BufOverflow ? 1'b0 : (countHit < currentEventHits);
            // sessionStart <= L1BufOverflow ? 1'b0 : hit;

        end
 
    end
end

assign eventStart = load;

endmodule

