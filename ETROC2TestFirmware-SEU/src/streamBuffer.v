`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Mon Feb  8 19:42:43 CST 2021
// Module Name: streamBuffer
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////


module streamBuffer 
// #(  parameter FIFODEPTH = 4)
(
	input  			        clk,            //40MHz
	input  			        reset,         //
    input [1:0]             rate,           //00: 320 Mbps, 01: 640Mbps, 10/11: 1280 Mbps
    input [4:0]             triggerDataSize,  //How many trigger signals, from 0 to 16
    input [31:0]            triggerData,    //trigger data, up to 16 bits, 
	input [39:0]            dataFrame,
//    input                   disSCR,        //disable scrambler
    input [11:0]            RT_BCID,
    input [1:0]             DBS,
    input [7:0]             RT_L1Counter,
    output                  almostFull,
    output reg [31:0]       dout            //output data to serializer 
 );
// tmrg default triplicate

    localparam filler = {16'h3C5C,2'b10};
    localparam lowLevel = 3'd3;
    localparam highLevel = 3'd5;
    wire almostEmpty;
    wire isAFiller;
    assign isAFiller = dataFrame[39:22] == filler;
    reg wren;
    wire [39:0] rt_dataFrame;
    assign rt_dataFrame = isAFiller ? {dataFrame[39:22],RT_L1Counter,DBS,RT_BCID} : dataFrame;
    // wire [39:0] scrData;
    // Scrambler scrInst(
    //     .clk(clk),
    //     .reset(reset),
    //     .bypass(disSCR),
    //     .hold(~wren),
    //     .din(dataFrame),
    //     .dout(scrData)
    // );

    wire rden;
    wire [39:0] QA; //read port of SRAM  
    // wire [FIFODEPTH-1:0] wrAddr;
    // wire [FIFODEPTH-1:0] rdAddr;
    // reg [FIFODEPTH-1:0] wrAddrReg;
    reg [39:0] scrDataReg;
    always @(posedge clk)
    begin
        // wrAddrReg <= wrAddr;
        wren <= almostFull ? 1'b0: (almostEmpty ? 1'b1 : ~isAFiller); 
        scrDataReg <= rt_dataFrame;       
    end

// wire noError1;
// dataStreamCheck dataStreamCheckInst2
// (
//     .clk40(clk),
//     .dataValid(wren),
//     .reset(reset),
//     .din(scrDataReg),
//     .noError(noError1)
// );


// wire noError2;
// dataStreamCheck dataStreamCheckInst3
// (
//     .clk40(clk),
//     .dataValid(rden),
//     .reset(reset),
//     .din(QA),
//     .noError(noError2)
// );



    wire [2:0] wordCount;
    wire full;
    wire empty;
    assign almostFull   = wordCount >  highLevel;
    assign almostEmpty  = wordCount <  lowLevel;

    streamBufferFIFO streamBufferFIFOInst
    (
        .clk(clk),
        .reset(~reset),
        .wr_en(wren),
        .rd_en(rden),
        .full(full),
        .empty(empty),
        .count(wordCount),
        .data_out(QA),
        .data_in(scrDataReg)
    );

wire [31:0] outData;
wire [6:0] serializerBits = (rate == 2'b00) ? 7'd8 : (rate == 2'b01 ? 7'd16 : 7'd32);
wire [6:0] readOutSize = serializerBits - {2'H0,triggerDataSize};
wire fullBuffer;
wire emptyBuffer;

wordBufferReadVar #(.INPUTWIDTH(40),.OUTPUTWIDTH(32)) wordBufferInst
(
    .clk(clk),
    .rstn(reset),
    .wren(~fullBuffer),
    .rden(~emptyBuffer),
    .readLength(readOutSize),
    .offset(7'd0),
    .din(QA),
    .dout(outData),
    .empty(emptyBuffer),
    .full(fullBuffer)
);

    assign rden = ~fullBuffer;

// wire full2;
// wire empty2;
// wire [39:0] tmpData40;
// wire wren2 = ~emptyBuffer;
// wordBuffer #(.INPUTWIDTH(32),.OUTPUTWIDTH(40)) wordBufferInst2
// (
//     .clk(clk),
//     .rstn(reset),
//     .wren(wren2),
//     .rden(~empty2),
//     .LSB_First(1'b1),
//     .offset(7'd0),
//     .din(outData),
//     .dout(tmpData40),
//     .empty(empty2),
//     .full(full2)
// );

// wire noError3;
// dataStreamCheck dataStreamCheckInst5
// (
//     .clk40(clk),
//     .dataValid(~empty2),
//     .reset(reset),
//     .din(tmpData40),
//     .noError(noError3)
// );

    
    always @(negedge clk) 
    begin
        //dout <= outData;
        if(reset)
            begin
            if(rate == 2'b00) //8 bits 
            begin 
                dout[0] <= triggerDataSize > 5'd7 ? triggerData[triggerDataSize-5'd8] : outData[0];
                dout[1] <= triggerDataSize > 5'd6 ? triggerData[triggerDataSize-5'd7] : outData[1];
                dout[2] <= triggerDataSize > 5'd5 ? triggerData[triggerDataSize-5'd6] : outData[2];
                dout[3] <= triggerDataSize > 5'd4 ? triggerData[triggerDataSize-5'd5] : outData[3];
                dout[4] <= triggerDataSize > 5'd3 ? triggerData[triggerDataSize-5'd4] : outData[4];
                dout[5] <= triggerDataSize > 5'd2 ? triggerData[triggerDataSize-5'd3] : outData[5];
                dout[6] <= triggerDataSize > 5'd1 ? triggerData[triggerDataSize-5'd2] : outData[6];
                dout[7] <= triggerDataSize > 5'd0 ? triggerData[triggerDataSize-5'd1] : outData[7];            
            end
            else if(rate == 2'b01) //16 bits
            begin
                dout[0]  <= triggerDataSize > 5'd15 ? triggerData[triggerDataSize-5'd16] : outData[0];
                dout[1]  <= triggerDataSize > 5'd14 ? triggerData[triggerDataSize-5'd15] : outData[1];
                dout[2]  <= triggerDataSize > 5'd13 ? triggerData[triggerDataSize-5'd14] : outData[2];
                dout[3]  <= triggerDataSize > 5'd12 ? triggerData[triggerDataSize-5'd13] : outData[3];
                dout[4]  <= triggerDataSize > 5'd11 ? triggerData[triggerDataSize-5'd12] : outData[4];
                dout[5]  <= triggerDataSize > 5'd10 ? triggerData[triggerDataSize-5'd11] : outData[5];
                dout[6]  <= triggerDataSize > 5'd9  ? triggerData[triggerDataSize-5'd10] : outData[6];
                dout[7]  <= triggerDataSize > 5'd8  ? triggerData[triggerDataSize-5'd9] : outData[7];            
                dout[8]  <= triggerDataSize > 5'd7  ? triggerData[triggerDataSize-5'd8] : outData[8];
                dout[9]  <= triggerDataSize > 5'd6  ? triggerData[triggerDataSize-5'd7] : outData[9];
                dout[10] <= triggerDataSize > 5'd5  ? triggerData[triggerDataSize-5'd6] : outData[10];
                dout[11] <= triggerDataSize > 5'd4  ? triggerData[triggerDataSize-5'd5] : outData[11];
                dout[12] <= triggerDataSize > 5'd3  ? triggerData[triggerDataSize-5'd4] : outData[12];
                dout[13] <= triggerDataSize > 5'd2  ? triggerData[triggerDataSize-5'd3] : outData[13];
                dout[14] <= triggerDataSize > 5'd1  ? triggerData[triggerDataSize-5'd2] : outData[14];
                dout[15] <= triggerDataSize > 5'd0  ? triggerData[triggerDataSize-5'd1] : outData[15];            
            end
            else
            begin //32 bits
                dout[15:0] <= outData[15:0];
                dout[16] <= triggerDataSize > 5'd15 ? triggerData[triggerDataSize-5'd16] : outData[16];
                dout[17] <= triggerDataSize > 5'd14 ? triggerData[triggerDataSize-5'd15] : outData[17];
                dout[18] <= triggerDataSize > 5'd13 ? triggerData[triggerDataSize-5'd14] : outData[18];
                dout[19] <= triggerDataSize > 5'd12 ? triggerData[triggerDataSize-5'd13] : outData[19];
                dout[20] <= triggerDataSize > 5'd11 ? triggerData[triggerDataSize-5'd12] : outData[20];
                dout[21] <= triggerDataSize > 5'd10 ? triggerData[triggerDataSize-5'd11] : outData[21];
                dout[22] <= triggerDataSize > 5'd9  ? triggerData[triggerDataSize-5'd10] : outData[22];
                dout[23] <= triggerDataSize > 5'd8  ? triggerData[triggerDataSize-5'd9]  : outData[23];            
                dout[24] <= triggerDataSize > 5'd7  ? triggerData[triggerDataSize-5'd8]  : outData[24];
                dout[25] <= triggerDataSize > 5'd6  ? triggerData[triggerDataSize-5'd7]  : outData[25];
                dout[26] <= triggerDataSize > 5'd5  ? triggerData[triggerDataSize-5'd6]  : outData[26];
                dout[27] <= triggerDataSize > 5'd4  ? triggerData[triggerDataSize-5'd5]  : outData[27];
                dout[28] <= triggerDataSize > 5'd3  ? triggerData[triggerDataSize-5'd4]  : outData[28];
                dout[29] <= triggerDataSize > 5'd2  ? triggerData[triggerDataSize-5'd3]  : outData[29];
                dout[30] <= triggerDataSize > 5'd1  ? triggerData[triggerDataSize-5'd2]  : outData[30];
                dout[31] <= triggerDataSize > 5'd0  ? triggerData[triggerDataSize-5'd1]  : outData[31];            
            end
        end
    end

endmodule
