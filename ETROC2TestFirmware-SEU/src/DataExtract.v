`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: University of California, Santa Barbara & Southern Methodist University
// Author: Xing Huang
// 
// Create Date: Sat Jan 23 12:36:50 CST 2021
// Module Name: dataExtract
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - File Modified, Xing Huang
// Revision 0.03 - Update the algorithm
// 
//////////////////////////////////////////////////////////////////////////////////
module dataExtract (
	input           clk40,            //40MHz
   	input [1:0]		dataRate,
	input           reset,
    input           clrError,
    input           enableAutoSync,
    input [31:0]    din,
	input [4:0]     trigDataSize,   // from 0 to 16
    output          trigSynched,
    output          trigError,
    output          trigOut,
    output          flashingBit,
    output          aligned,   
    output          dataError,
	output 			dataValidOut,
    output reg      linkConsistent,
	output [1:0]	dataType,
    output [7:0]    resetCount,
	output [39:0]   dout
);

	reg [63:0] dinBuf;
    always @(posedge clk40) begin
		if(!reset) begin
			dinBuf <= 64'd0;
		end
        else if(dataRate == 2'b00) begin
            dinBuf[15:8]  <= din[7:0];
            dinBuf[7:0]   <= dinBuf[15:8];
            dinBuf[63:16] <= 48'd0;
        end
        else if(dataRate == 2'b01) begin
            dinBuf[31:16] <= din[15:0];
            dinBuf[15:0]  <= dinBuf[31:16];
            dinBuf[63:32] <= 32'd0;
        end
        else begin
            dinBuf[63:32] <= din;
            dinBuf[31:0]  <= dinBuf[63:32];
        end
	end

	// ----- ETROC2DataFIFO -----
	//----- word width calculation according to dataRate and trigDataSize -----
    wire [9:0] wordsize8 = {5'd0,(5'd8 - trigDataSize)};
    wire [9:0] wordsize16 = {5'd0,(5'd16 - trigDataSize)};
    wire [9:0] wordsize32 = {4'd0,(6'd32 - {1'b0,trigDataSize})};
    wire [9:0] wordsize = dataRate == 2'b00 ? wordsize8 : (dataRate == 2'b01 ? wordsize16 : wordsize32);

	reg [7:0]  word8;
	reg [15:0] word16;
	reg [31:0] word32;
	// reg [7:0]  word8_t;
	// reg [15:0] word16_t;
	// reg [31:0] word32_t;
	wire [4:0] wordShift;
	wire [4:0] wordShift_t;

	always @(posedge clk40) begin
		if(!reset) begin
            word8  <= 8'd0;
            word16 <= 16'd0;
            word32 <= 32'd0;
            // word8_t  <= 8'd0;
            // word16_t <= 16'd0;
            // word32_t <= 32'd0;
		end
        else begin
            word8  <= dinBuf[(7+wordShift)%16 -: 8];
            word16 <= dinBuf[(15+wordShift)%32 -: 16];
            word32 <= dinBuf[(31+wordShift)%64 -: 32];
            // word8_t  <= dinBuf[(7+wordShift)%16 -: 8];
            // word16_t <= dinBuf[(15+wordShift)%32 -: 16];
            // word32_t <= dinBuf[(31+wordShift)%64 -: 32];
        end
    end

	wire [31:0] word = dataRate == 2'b00 ? {24'd0,word8} : 
                      (dataRate == 2'b01 ? {16'd0,word16} : word32);
	// wire [31:0] word_t = dataRate == 2'b00 ? {24'd0,word8_t} : 
    //                     (dataRate == 2'b01 ? {16'd0,word16_t} : word32_t);

	//----- Circular buffer write/read pointers and counter operation -----
    reg[255:0] cb;             //a circular buffer
    reg [7:0] wrAddr;			// write pointer of the cb
    reg [7:0] rdAddr;			// read pointer of the cb
    reg [8 : 0] counter;
	wire dataValid;			// real time Data Valid flag 
	reg dataValidDelay, dataValidDelayReg;
	always @(posedge clk40) begin
		if(!reset) begin
			counter <= {9*{1'b0}};
            rdAddr <= 8'd0;  
            wrAddr <= 8'H00;
		end
		else begin
			dataValidDelay <= dataValid;	// delayed data valid flag reg
			dataValidDelayReg <= dataValidDelay;
			if(dataValid) begin
				counter <= counter + wordsize - 9'd40;
				wrAddr <= wrAddr + wordsize;
				rdAddr <= rdAddr + 9'd40;
			end
			else begin
				counter <= counter + wordsize;
				wrAddr <= wrAddr + wordsize;
				rdAddr <= rdAddr;
			end
		end
	end
	assign dataValid = (counter >= 9'd40); 	// real time data valid flag, as data frame clock
	assign dataValidOut = dataValidDelayReg;	// data valid flag output

	//----- Write data in cb -----
    // reg [15:0] triggerDataReg;
    always @(posedge clk40) //40 MHz clock
    begin
        cb[wrAddr+8'd0] <= word[0];
        cb[wrAddr+8'd1] <= word[1];
        cb[wrAddr+8'd2] <= word[2];
        cb[wrAddr+8'd3] <= word[3];
        cb[wrAddr+8'd4] <= word[4];
        cb[wrAddr+8'd5] <= word[5];
        cb[wrAddr+8'd6] <= word[6];
        cb[wrAddr+8'd7] <= word[7];
        if(dataRate != 2'b00) begin
            cb[wrAddr+8'd8] <= word[8];
            cb[wrAddr+8'd9] <= word[9];
            cb[wrAddr+8'd10] <= word[10];
            cb[wrAddr+8'd11] <= word[11];
            cb[wrAddr+8'd12] <= word[12];
            cb[wrAddr+8'd13] <= word[13];
            cb[wrAddr+8'd14] <= word[14];
            cb[wrAddr+8'd15] <= word[15];
            if(dataRate == 2'b10 || dataRate == 2'b11)
            begin
                cb[wrAddr+8'd16] <= word[16];
                cb[wrAddr+8'd17] <= word[17];
                cb[wrAddr+8'd18] <= word[18];
                cb[wrAddr+8'd19] <= word[19];
                cb[wrAddr+8'd20] <= word[20];
                cb[wrAddr+8'd21] <= word[21];
                cb[wrAddr+8'd22] <= word[22];
                cb[wrAddr+8'd23] <= word[23];
                cb[wrAddr+8'd24] <= word[24];
                cb[wrAddr+8'd25] <= word[25];
                cb[wrAddr+8'd26] <= word[26];
                cb[wrAddr+8'd27] <= word[27];
                cb[wrAddr+8'd28] <= word[28];
                cb[wrAddr+8'd29] <= word[29];  
                cb[wrAddr+8'd30] <= word[30];                   
                cb[wrAddr+8'd31] <= word[31];                   
            end
        end
    end
//only for trigger
	//----- Write data in cb_t -----
    reg [15:0] triggerDataReg;
    always @(posedge clk40) //40 MHz clock
    begin
         if(dataRate == 2'b00) begin
            triggerDataReg[0] <= word[7];
         end
         else if(dataRate == 2'b01)begin
            triggerDataReg[0] <= word[15];
         end
         else begin
            triggerDataReg[0] <= word[31];
         end
    end
    
    wire resetTrig;
    reg resyncTrig;
    assign resetTrig = reset &~ resyncTrig;
    wire flashingFlag;
    trigBitSynchronizer trigBitSynchronizerInst
    (
        .rstn(resetTrig),
        .clk(clk40),
        // .clrError(1'b1),	 
        .wordOffset(wordShift_t),  
        .trigIn(triggerDataReg[0]),
        .synched(trigSynched),
        .error(trigError),
        .flashingFlag(flashingFlag),
        .flashingBit(flashingBit),
        .resetCount(resetCount),
        .trigOut(trigOut)
    );


	//----- Read 40-bit data when dataValid is true ----- 
   	reg [39:0] word40;
    always @(posedge clk40) 
    begin
        if(dataValid) begin 
            word40[0]  <= cb[rdAddr];
            word40[1]  <= cb[rdAddr + 8'd1];
            word40[2]  <= cb[rdAddr + 8'd2];
            word40[3]  <= cb[rdAddr + 8'd3];
            word40[4]  <= cb[rdAddr + 8'd4];
            word40[5]  <= cb[rdAddr + 8'd5];
            word40[6]  <= cb[rdAddr + 8'd6];
            word40[7]  <= cb[rdAddr + 8'd7];
            word40[8]  <= cb[rdAddr + 8'd8];
            word40[9]  <= cb[rdAddr + 8'd9];
            word40[10] <= cb[rdAddr + 8'd10];
            word40[11] <= cb[rdAddr + 8'd11];
            word40[12] <= cb[rdAddr + 8'd12];
            word40[13] <= cb[rdAddr + 8'd13];
            word40[14] <= cb[rdAddr + 8'd14];
            word40[15] <= cb[rdAddr + 8'd15];
            word40[16] <= cb[rdAddr + 8'd16];
            word40[17] <= cb[rdAddr + 8'd17];
            word40[18] <= cb[rdAddr + 8'd18];
            word40[19] <= cb[rdAddr + 8'd19];
            word40[20] <= cb[rdAddr + 8'd20];
            word40[21] <= cb[rdAddr + 8'd21];
            word40[22] <= cb[rdAddr + 8'd22];
            word40[23] <= cb[rdAddr + 8'd23];
            word40[24] <= cb[rdAddr + 8'd24];
            word40[25] <= cb[rdAddr + 8'd25];
            word40[26] <= cb[rdAddr + 8'd26];
            word40[27] <= cb[rdAddr + 8'd27];
            word40[28] <= cb[rdAddr + 8'd28];
            word40[29] <= cb[rdAddr + 8'd29];
            word40[30] <= cb[rdAddr + 8'd30];
            word40[31] <= cb[rdAddr + 8'd31];
            word40[32] <= cb[rdAddr + 8'd32];
            word40[33] <= cb[rdAddr + 8'd33];
            word40[34] <= cb[rdAddr + 8'd34];
            word40[35] <= cb[rdAddr + 8'd35];
            word40[36] <= cb[rdAddr + 8'd36];
            word40[37] <= cb[rdAddr + 8'd37];
            word40[38] <= cb[rdAddr + 8'd38];
            word40[39] <= cb[rdAddr + 8'd39];
            // word40[39:0] <= cb[rdAddr+8'd39 -: 40];
        end            
    end


	// ----- dataExtract -----
    localparam header   = 2'b00;
    localparam data     = 2'b01;
    localparam trailer  = 2'b10;
    localparam idle     = 2'b11;

    wire resyncUnit;
    reg resync;
    assign resyncUnit = reset &~ resync;

    wire [39:0] dataAligned;

    dataExtractUnit dataExtractUnit_Inst
    (
        .clk40(clk40),
        .dataValid(dataValidDelay),
        .reset(resyncUnit),
        .din(word40),
        .wordOffset(wordShift),
        .aligned(aligned),
        .dataError(dataError),
        .dout(dataAligned)
    );

	assign dout = dataAligned;

	assign dataType = (dataAligned[39] == 1'b1)         ? data   : (
			   (dataAligned[39:22] == {16'h3C5C,2'b00}) ? header : (
			   (dataAligned[39:22] == {16'h3C5C,2'b10}) ? idle   :
			   trailer
			   )
	); 
										 
    always @(posedge clk40) 
    begin
        if(!reset) begin
            linkConsistent <= 1'b0;
        end
        else if(aligned & trigSynched & ~trigError)
        begin
            if(wordShift[2:0] == wordShift_t[2:0])
            begin
                linkConsistent <= 1'b1;
            end
            else 
            begin 
                linkConsistent <= 1'b0;
            end
        end
    end


endmodule
