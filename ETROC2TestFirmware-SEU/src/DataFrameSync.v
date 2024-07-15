/////////////////////////////////////////////////////////////////////////////////////////////////////
// Company: SMU
// Engineer: Datao Gong
// 
// Create Date: Tue Jan 12 16:07:12 CST 2021
// Design Name: DataFrameSync
// Module Name: DataFrameSync
// Project Name: kc705_mig
// Target Devices: KC705 EVB
// Tool Versions: 
// Description: 
// This module received the data from GTX and syncrhonize the data frame
// Dependencies: 
// 
// Revision: V1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module DataFrameSync(
    input wire CLK,
    input wire RSTn,
    input wire testMode,                //If testMode is true, it use the test pattern
    input wire [31:0] rawDataInParallel,
    input wire enableDescrambler,
    output wire [29:0] DataOut,
    output wire synched              //0 is not synchronized 1 is synchronized
);

//----------------------------------------------------------------< DataExtrater

wire [31:0] rawDataFrame;
wire [1:0] PATTERN;
// wire [63:0] data64;
wire shift_fr_later;

reg [9:0] TOACounter; //fake for test
always @(posedge CLK)
begin
    if(~RSTn)
        TOACounter  <= 9'd0;
    else if(descrData[0]&synched == 1'b1)
        TOACounter  <= TOACounter + 1;
end

DataExtrater dataext(
    .clk(CLK), 
    .datain(rawDataInParallel), 
    .dataout(rawDataFrame), 
    // .d_enb(synched), 
    .PATTERN(PATTERN), 
    // .data64(data64),
    .shift_fr_later(shift_fr_later) 
);

//----------------------------------------------------------------> DataExtrater
//----------------------------------------------------------------< Sync
// wire [1:0] synch_status; //not used
SynController sync (
    .clk(CLK), 
	.RSTn(RSTn),
    // .dataIn(rawDataInParallel),
    .PATTERN(PATTERN), 
    .d_enb(synched), 
    // .synch_status(synch_status), 
    .shift_fr_later(shift_fr_later)
);
//----------------------------------------------------------------> Sync
//----------------------------------------------------------------< Descrambler

wire [29:0] scrambledData;
genvar i;
generate 
    for(i=0;i<30;i=i+1) begin
        assign scrambledData[i] = rawDataFrame[31-i];  
    end
endgenerate

wire [29:0] descrData;
DESCR30b DESCR30b_inst(
	.CLK(CLK),
	.RSTn(RSTn),
	.DataIn(scrambledData),     
	.REV(1'b0),               
	.DataOut(descrData)
);
//----------------------------------------------------------------> Descrambler
// assign DataOut = enableDescrambler ? descrData : scrambledData;
 assign DataOut = ~enableDescrambler ? scrambledData : (testMode ? {descrData[29:21],TOACounter,descrData[10:0]} : descrData);

endmodule
