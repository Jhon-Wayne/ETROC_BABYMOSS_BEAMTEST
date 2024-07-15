//////////////////////////////////////////////////////////////////////////////////
// Company: Ferimilab
// Author: Datao Gong 
// 
// Create Date: Fri Mar 20 10:30:06 CDT 2023
// Module Name: ETROC2FastCommandMemController
// Project Name: ETROC2 readout 
// Description: 
// Dependencies: No
// 
// Revision:
// Revision 0.01 - File Created

// 
//////////////////////////////////////////////////////////////////////////////////

`timescale 1ns/10ps

module ETROC2FastCommandMemController (
    input           clk40,
    input           clk320,
    input           rstn,
    input           triple_trig,
    input           en_ws_trig,
    input           ws_stop_sig,
    input           ws_start_sig,
    input           hold_L1A,
    input           period,
    input           enableL1Trig,
    input           L1Trig,
    input [9:0]     L1Delay,
    // input       hold,
    input           initPulse,
    input [7:0]     errorMask,
    input [3:0]     initCmd,
    input [11:0]    initAddressFirst,
    input [11:0]    initAddressLast,
    input           startPulse,
    input           errInjPulse,
    input [11:0]    execToAddress,
    input           fake_trigger,
    input           trigger_source,
    output reg         delayL1A,
    output          fastCommand   //
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
    wire init;
    wire errorInj;
    reg [2:0] startPulseDelay;
    reg [2:0] initPulseDelay;
    reg [2:0] errInjPulseDelay;
    
    wire L1andexternaltrig;
    assign L1andexternaltrig = trigger_source?fake_trigger:L1Trig;
    assign start = startPulseDelay[2] & ~startPulseDelay[1]; //rising edge
    assign init = initPulseDelay[2] & ~initPulseDelay[1]; //rising edge
    assign errorInj = errInjPulseDelay[2] & ~errInjPulseDelay[1]; //

    always @(posedge clk40) 
    begin
        if(~rstn)begin
            startPulseDelay     <= 3'd0;
            initPulseDelay      <= 3'd0;
            errInjPulseDelay    <= 3'd0; 
        end
        else begin
            startPulseDelay   <= {startPulseDelay[1:0],startPulse};
            initPulseDelay   <= {initPulseDelay[1:0],initPulse};
            errInjPulseDelay    <= {errInjPulseDelay[1:0],errInjPulse};
        end
    end

    reg [3:0] mem [4095:0]; //for 12 bit address

    reg initSession;
    reg [11:0] initAddressReg;   
    // wire [3:0] writeCmd;
    // assign writeCmd = initCmd == fc_idle ? fc_idle : (mem[initAddressReg] == fc_BCR );
    always @(posedge clk40) 
    begin
        if(~rstn) 
        begin
            initSession     <= 1'b0;
            initAddressReg  <= 12'd0;
        end
        else if (~initSession)
        begin
                if(init)begin
                    initSession     <= 1'b1;
                    initAddressReg  <= initAddressFirst;
                end
        end
        else 
        begin
                mem[initAddressReg] <= initCmd;
                if(initAddressReg >= initAddressFirst && initAddressReg < initAddressLast)begin
                    initAddressReg  <= initAddressReg + 1;
                end
                else if(initAddressReg == initAddressLast) begin
                    initSession <= 1'b0;
                end
        end
    end

    reg startDelay;
    reg [11:0] execToAddressReg;
    reg periodReg;
    always @(posedge clk40) 
    begin
        if(~rstn) 
        begin
            execToAddressReg     <= 12'd0;
            periodReg  <= 1'd0;
            startDelay  <= 1'b0;
        end
        else begin
            startDelay          <= start;
            if(start)begin
                periodReg           <= period;
                execToAddressReg    <= execToAddress;
            end
        end
    end

    reg execSession;
    reg [11:0] execAddress;
    reg [3:0] outCmd;
    always @(posedge clk40) 
    begin
        if(~rstn) 
        begin
            execSession     <= 1'b0;
            execAddress  <= 12'd0;
            outCmd  <= fc_idle;
        end
        else if (~execSession)
        begin
            outCmd  <= fc_idle;
            if(startDelay)begin
                execSession  <= 1'b1;
                execAddress  <= 12'd0;
            end
        end
        else 
        begin
            outCmd <= mem[execAddress];
            if(execAddress < execToAddressReg)begin
                execAddress  <= execAddress + 1;
            end
            else if(execAddress == execToAddressReg) begin
                execSession <= periodReg; //if period is true, repeat
                execAddress <= 12'd0;
            end
        end
    end

    reg [1023:0] delayLine;
    always @(posedge clk40) 
    begin
        if(~rstn) 
        begin
            delayLine <= 1024'd0;
            delayL1A <= 1'b0;
        end
        else begin
            if(triple_trig)
                delayLine <= {delayLine[1020:0],L1andexternaltrig,L1andexternaltrig,L1andexternaltrig};
            else 
                delayLine <= {delayLine[1022:0],L1andexternaltrig};
            delayL1A <= delayLine[L1Delay];
        end
    end

    // assign delayL1A = delayLine[L1Delay];


    wire [7:0] encodeCmd;
    assign encodeCmd = outCmd == fc_idle ?      idle : 
                      (outCmd == fc_linkReset ? linkReset :
                      (outCmd == fc_BCR ? BCR : 
                      (outCmd == fc_STP ? STP :
                      (outCmd == fc_L1ACR ? L1ACR :
                      (outCmd == fc_chargeInj ? chargeInj :
                      (outCmd == fc_L1A  ? L1A : 
                      (outCmd == fc_L1A_BCR ? L1A_BCR : 
                      (outCmd == fc_WS_start ? WS_start : WS_stop))))))));

    wire [7:0] maskedCmd;
    assign maskedCmd = errorInj ? (encodeCmd ^ errorMask) : encodeCmd;

    wire [7:0] encodedCmdPlusL1;
    assign encodedCmdPlusL1 = (enableL1Trig & delayL1A ) ? L1A : maskedCmd;

    wire [7:0] filteredCmd1;
    wire [7:0] filteredCmd2;
    assign filteredCmd1 = (hold_L1A == 1'b1 && encodedCmdPlusL1 == L1A) ? idle : encodedCmdPlusL1;
    assign filteredCmd2 = (hold_L1A == 1'b1 && filteredCmd1 == L1A_BCR) ? BCR : filteredCmd1;

    wire [7:0] ws_command;
    // assign ws_command = (en_ws_trig & ws_stop_sig) ? WS_stop : filteredCmd2;
    assign ws_command = (en_ws_trig & (ws_stop_sig | ws_start_sig)) ? 
                                                      (ws_start_sig ? WS_start : WS_stop ) : filteredCmd2;

    serializer8MSB serializer8MSBInst
    (
        .rstn(rstn),
        .clk40(clk40),
        .clk320(clk320),
        .din(ws_command),
        // .din(maskedCmd),
        .sout(fastCommand)
    );
    
    ila_8X1024
        u_ila_8X1024
        (.clk(clk40),
        .probe0(ws_command),
        .probe1({fake_trigger,trigger_source,outCmd,L1Trig,L1andexternaltrig}));

endmodule
