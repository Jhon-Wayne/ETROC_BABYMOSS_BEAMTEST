//////////////////////////////////////////////////////////////////////////////////
// Company: University of California, Santa Barbara && Southern Methodist University
// Author: Xing Huang 
// 
// Create Date: Fri Mar 20 10:30:06 CDT 2023
// Module Name: ETROC2FastCommandController
// Project Name: ETROC2 readout 
// Description: 
// Dependencies: No
// 
// Revision:
// Revision 0.01 - File Created

// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

module ETROC2FastCommandController (
    input       clk40,
    input       clk320,
    input       rstn,
    input       period,
    input       trig,
    input       testTrig,
    input       hold,
    input       startPulse,
    input       errInjPulse,
    input [7:0] errorMask,
    input [3:0] inputCmd,
    input [15:0] duration,
    output      fastCommand   //
);

    // -------- fast command definition --------

    localparam idle         = 8'hF0;
    localparam linkReset    = 8'h33;
    localparam BCR          = 8'h5A;
    localparam STP          = 8'h55;
    localparam L1ACR        = 8'h66;
    localparam chargeInj    = 8'h69;
    localparam L1A          = 8'h96;
    localparam L1A_BCR      = 8'h99;
    localparam WS_start     = 8'hA5;
    localparam WS_stop      = 8'hAA;

    localparam fc_idle      = 4'd0;
    localparam fc_linkReset = 4'd1;
    localparam fc_BCR       = 4'd2;
    localparam fc_STP       = 4'd3;
    localparam fc_L1ACR     = 4'd4;
    localparam fc_chargeInj = 4'd5;
    localparam fc_L1A       = 4'd6;
    localparam fc_L1A_BCR   = 4'd7;
    localparam fc_WS_start  = 4'd8;
    localparam fc_WS_stop   = 4'd9;

    wire start;
    wire errorInj;
    reg [2:0] startPulseDelay;
    reg [2:0] errInjPulseDelay;
    assign start = startPulseDelay[2] & ~startPulseDelay[1]; //rising edge
    assign errorInj = errInjPulseDelay[2] & ~errInjPulseDelay[1]; //
    always @(posedge clk40) 
    begin
        if(~rstn)begin
            startPulseDelay     <= 3'd0;
            errInjPulseDelay    <= 3'd0; 
        end
        else begin
            startPulseDelay     <= {startPulseDelay[1:0],startPulse};
            errInjPulseDelay    <= {errInjPulseDelay[1:0],errInjPulse};
        end
    end


    wire [3:0] chainCmd[7:0];
    assign chainCmd[0] = fc_idle;
    wire [39:0] linkResetDuration;
    assign linkResetDuration = 40'H0000000001<<duration[5:0];
    commandSession #(.WIDTH(40),.CMD(fc_linkReset)) LinkResetCommandInst
    (
        .clk(clk40),
        .rstn(rstn),
        .start(start),
        .inputCmd(chainCmd[0]),
        .startCmd(inputCmd),
        .endCmd(fc_idle),
        .duration(linkResetDuration),
        .hold(1'b1),
        .period(1'b0),
        .outCmd(chainCmd[1])
    );

    commandSession #(.WIDTH(12),.CMD(fc_BCR)) BCRCommandInst
    (
        .clk(clk40),
        .rstn(rstn),
        .start(start),
        .inputCmd(chainCmd[1]),
        .startCmd(inputCmd),
        .endCmd(fc_idle),
        .duration(12'd3654),
        // .duration(duration),
        .hold(1'b0),
        .period(1'b1),
        .outCmd(chainCmd[2])
    );

    wire [3:0] trigCmd;
    assign trigCmd = testTrig ? inputCmd : (trig ? fc_L1A : fc_idle);
    commandSession #(.WIDTH(16),.CMD(fc_L1A)) L1ACommandInst
    (
        .clk(clk40),
        .rstn(rstn),
        .start(start),
        .inputCmd(chainCmd[2]),
        .startCmd(trigCmd),
        .endCmd(fc_idle),
        .duration(duration),
        .hold(1'b0),
        .period(period),
        .outCmd(chainCmd[3])
    );

    commandSession #(.WIDTH(8),.CMD(fc_chargeInj)) QinjCommandInst
    (
        .clk(clk40),
        .rstn(rstn),
        .start(start),
        .inputCmd(chainCmd[3]),
        .startCmd(inputCmd),
        .endCmd(fc_idle),
        .duration(duration[7:0]),
        .hold(1'b0),
        .period(period),
        .outCmd(chainCmd[4])
    );

    commandSession #(.WIDTH(8),.CMD(fc_WS_start)) WSCommandInst
    (
        .clk(clk40),
        .rstn(rstn),
        .start(start),
        .inputCmd(chainCmd[4]),
        .startCmd(inputCmd),
        .endCmd(fc_WS_stop),
        .duration(duration[7:0]),
        .hold(1'b0),
        .period(1'b0),
        .outCmd(chainCmd[5])
    );

    commandSession #(.WIDTH(8),.CMD(fc_STP)) STPCommandInst
    (
        .clk(clk40),
        .rstn(rstn),
        .start(start),
        .inputCmd(chainCmd[5]),
        .startCmd(inputCmd),
        .endCmd(fc_idle),
        .duration(duration[7:0]),
        .hold(1'b0),
        .period(1'b0),
        .outCmd(chainCmd[6])
    );

    commandSession #(.WIDTH(8),.CMD(fc_L1ACR)) fc_L1ACRCommandInst
    (
        .clk(clk40),
        .rstn(rstn),
        .start(start),
        .inputCmd(chainCmd[6]),
        .startCmd(inputCmd),
        .endCmd(fc_idle),
        .duration(duration[7:0]),
        .hold(1'b0),
        .period(1'b0),
        .outCmd(chainCmd[7])
    );

    wire [3:0] outCmd;
    assign outCmd = chainCmd[7];

    wire [7:0] encodeCmd;
    assign encodeCmd = outCmd == fc_idle ?      idle : 
                      (outCmd == fc_linkReset ? linkReset :
                      (outCmd == fc_BCR ? BCR : 
                      (outCmd == fc_STP ? STP :
                      (outCmd == fc_L1ACR ? L1ACR :
                      (outCmd == fc_chargeInj ? chargeInj :
                      (outCmd == fc_L1A ? L1A : 
                      (outCmd == fc_L1A_BCR ? L1A_BCR : 
                      (outCmd == fc_WS_start ? WS_start : WS_stop))))))));

    wire [7:0] maskedCmd;
    assign maskedCmd = errorInj ? (encodeCmd ^ errorMask) : encodeCmd;

    serializer8MSB serializer8MSBInst
    (
        .rstn(rstn),
        .clk40(clk40),
        .clk320(clk320),
        .din(maskedCmd),
        .sout(fastCommand)
    );


endmodule
