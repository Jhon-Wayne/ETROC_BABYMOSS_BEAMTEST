`timescale 10ps / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of California, Santa Barbara
// Author: Xing Huang 
// 
// Create Date: Mon Jan 30 12:40:40 CST 2022
// Module Name: ETROC2DataSync
// Project Name: ETROC2 Data Frame Sync
// Description: using a circular buffer to buffering input data with variable data width to fixed 40-bit data
// Dependencies: ETROC2Emulator ETROC2DataFIFO.v, dataExtract.v, dataStreamCheck.v ...
// 


//////////////////////////////////////////////////////////////////////////////////

module ETROC2DataFrameSync(
	input					clk40,			// 40 MHz clock
    input                   reset,			// reset signal, active low
    input                   clrError,
    input                   enableAutoSync,
    input [1:0]             dataRate,      	// data rate related to serializer rate, 8 bits -- 40 MHz, 16 bits --
	input [31:0]            din,         	// paralelled data from serializer, data width depends on data rate 
	input [4:0]             trigDataSize,   // from 0 to 16
    // output [15:0]           trigData,
    output                  trigSynched,
    output                  trigError,
    output                  trigOut,
    output                  flashingBit,
    output                  linkConsistent,
    output                  dataValid,		
	output					aligned,
	output reg				dataError,
	output [1:0]			dataType,   
    output [7:0]            resetCount,
	output [39:0]       	dout         	//input data
);
	
    wire [39:0] receivedDataFrame;
	//wire [4:0] wordAddrReg;
    reg forceReset;
    wire transientDataError;
    dataExtract dataExtract_Inst(
        .clk40(clk40),
		.dataRate(dataRate),
        .reset(reset),
        .enableAutoSync(enableAutoSync),
        .clrError(clrError),
        .din(din),
		.trigDataSize(trigDataSize),
		// .trigData(trigData),
        .trigSynched(trigSynched),
        .trigError(trigError),
        .trigOut(trigOut),
        .aligned(aligned),
        .flashingBit(flashingBit),
        .linkConsistent(linkConsistent),
		.dataValidOut(dataValid),
		.dataType(dataType),
        .dataError(transientDataError),
        .resetCount(resetCount),
        .dout(receivedDataFrame)
    );

    // wire noError;
    // dataStreamCheck dataStreamCheck_Inst(
    //     .clk40(clk40),
	// 	.dataValid(dataValid),
    //     .reset(reset),
    //     .din(receivedDataFrame),
    //     .noError(noError)
    // );

	//assign delay 		= wordAddrReg;
    always @(posedge clk40) 
    begin
        if(~reset) begin
            dataError <= 1'b0;
            forceReset <= 1'b0;
        end
        else if (aligned & trigSynched) begin
            if(~forceReset)begin
                if(clrError) begin
                    forceReset <= 1'b1;
                end
                else if(enableAutoSync) begin 
                    if(~linkConsistent)begin
                        forceReset <= 1'b1;
                    end
                end
                // if(clrError)dataError <= 1'b0;
                else if(~dataError) dataError <= transientDataError; //hold the error
            end
            else begin 
                forceReset <= 1'b0;
            end
        end
    end
	// assign dataError 	= ~noError;
	assign dout 		= receivedDataFrame;

endmodule
