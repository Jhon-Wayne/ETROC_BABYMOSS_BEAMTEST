`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Engineer: Datao Gong and Wei Zhang
// 
// Create Date: Fri Jan 15 23:16:38 CST 2021
// Design Name: zeroCompress
// Module Name: zeroCompress
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

//module priorityCode(
//    input wire [3:0] flags,
//    input wire [3:0] mask,
//    output wire [1:0] code,
//    output wire overflow

//);

module zeroCompress(
    input reset,                        	// reset signal
    input clk,                          	// input 200 MHz clock--->160 MHz
    input  wire [159:0] din,            	// input data from trigger fifo
    output reg [31:0] dout,            	// output data to output fifo
    input wire input_fifo_empty,			// input fifo empty
    output wire input_fifo_rd_en,       	// read data from input fifo
    input wire missedEvtWriteReq,       	// request to write missed evt data
    input wire [31:0] missedEvtData,		// 
    output wire [2:0] dataType,          	//0-3, channel TDC data, 4, timestamp, 5, nodata, 6, missed event data
    input wire output_fifo_almost_empty, 	//
    input wire output_fifo_almostfull,
    output reg output_fifo_wr_en
);

wire [3:0] hitflag;    //hit flag of 4 channel data
wire [2:0] hitCount;
reg [2:0] readFIFOCount;
reg [3:0] mask;
wire [3:0] maskedHitflag;
wire [1:0] priotyCode;
wire maskHitAllZero;
wire mustReadFIFO;
wire [31:0] currentTDC;
assign hitflag[0] = din[0];
assign hitflag[1] = din[32];
assign hitflag[2] = din[64];
assign hitflag[3] = din[96];
assign hitCount = {2'b00,hitflag[0]} + {2'b00,hitflag[1]} + {2'b00,hitflag[2]} + {2'b00,hitflag[3]};

assign maskedHitflag = mask & hitflag; //bitwise masked hit

assign priotyCode = maskedHitflag[0] ? 2'b00 : 
                                (maskedHitflag[1] ? 2'b01 :
                                    (maskedHitflag[2] ? 2'b10 : 2'b11 ) );

assign maskHitAllZero = !(maskedHitflag[0] | maskedHitflag[1] | maskedHitflag[2] | maskedHitflag[3]);

assign currentTDC = (priotyCode == 2'b00) ? din[31:0] : 
                        ((priotyCode == 2'b01) ? din[63:32] :
                            ((priotyCode == 2'b10) ? din[95:64] : din[127:96])); 

// assign dout = missedEvtWriteReq ? missedEvtData :               //missed event data
//                                     (input_fifo_empty ? 32'b0 : //dummy data 
//                                             (maskHitAllZero ? din[127:96] : //timestamp
//                                                             currentTDC)); //TDC data

assign dataType = missedEvtWriteReq ? 3'b110 :    
                        (input_fifo_empty ? 3'b101 :  
                                (maskHitAllZero ? 3'b100 : 
                                                {1'b0, priotyCode}));

// assign mustReadFIFO = (!missedEvtWriteReq)&(zerocmps_fifo_almost_empty | (!input_fifo_empty));
 assign mustReadFIFO = ~missedEvtWriteReq & ~input_fifo_empty;

//read input fifo rules:
assign input_fifo_rd_en = mustReadFIFO & (readFIFOCount == hitCount-1);
//write output fifo rules:
// assign output_fifo_wr_en = (output_fifo_almost_empty | missedEvtWriteReq) ? 1'b1 : 
//                                 (output_fifo_almostfull ? 1'b0 : (!input_fifo_empty));

// assign output_fifo_wr_en = missedEvtWriteReq ? 1'b1 : 
//                                 (output_fifo_almostfull ? 1'b0 : (!input_fifo_empty));

//write operation state machine
always @(posedge clk)
begin
    if(reset)
    begin
        output_fifo_wr_en <= 1'b0;
        dout = 32'd0; //no data 
    end
    else if (missedEvtWriteReq == 1'b1)
    begin
        output_fifo_wr_en <= 1'b1;
        dout = missedEvtData;
    end
    else if (!output_fifo_almostfull && !input_fifo_empty) //write ETROC1 TDC data to FIFO
    begin
        output_fifo_wr_en <= 1'b1;
        dout = currentTDC;
    end
end

//read operation state machine
always @(posedge clk)
begin
    if(reset)
    begin
        readFIFOCount <= 3'b000;
        mask = 4'b1111;
    end
    else if(mustReadFIFO == 1'b1)
    begin
        if(readFIFOCount >=  hitCount-1) 	//read complete or hitCount is 0 at all
        begin
            readFIFOCount <= 3'b000; 		//refresh count
            mask = 4'b1111;
        end
        else
        begin
            readFIFOCount <= readFIFOCount + 1;
            if(!maskHitAllZero) 
            begin
                mask[priotyCode] <= 1'b0; //masked the hit that has been read
            end
        end
    end
end
endmodule
