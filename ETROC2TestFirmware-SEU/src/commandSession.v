`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Saturday, May 13, 2023 2:52:47 PM
// Module Name: commandSession
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 

//////////////////////////////////////////////////////////////////////////////////
module commandSession #(parameter WIDTH = 8, parameter CMD = 4'd0)
(
    input                       clk,
    input                       rstn,
    input                       start,
    input [3:0]                 inputCmd,
    input [3:0]                 startCmd,
    input [3:0]                 endCmd,
    input [WIDTH-1:0]           duration,
    input                       hold,         //output start command constantly or not
    input                       period,       //periodic or single
	output [3:0]                outCmd        //output data
);

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

    wire maskedStart;
    assign maskedStart = (startCmd == CMD) ? start : 1'b0;
    reg startDelay;
    reg [WIDTH-1:0] durationLatch;
    reg [3:0] startCmdReg;
    reg [3:0] endCmdReg;
    always @(posedge clk) 
    begin
        if(~rstn) begin
            startDelay       <= 1'b0;
            durationLatch   <= 8'd0;
            startCmdReg     <= fc_idle;
            endCmdReg       <= fc_idle;
        end
        else 
        begin
            startDelay      <= maskedStart;
            if(maskedStart)
            begin
                durationLatch   <= duration;
                startCmdReg     <= startCmd;
                endCmdReg       <= endCmd;
            end
        end
    end

    reg[WIDTH-1:0] count;
    reg sessionOn;

    always @(posedge clk) 
    begin
        if(~rstn)
        begin
            sessionOn       <= 1'b0;
        end
        else if (sessionOn)
        begin
            sessionOn <= period ? 1'b1 : ~(count == (durationLatch-1)); 
        end
        else if(startDelay)
            sessionOn <= 1'b1;
    end

    always @(posedge clk) 
    begin
        if(~rstn)
        begin
            count           <= {WIDTH{1'b0}}; 
        end
        else if (sessionOn)
        begin
            if(count < durationLatch)
                count <= count + 1;
            else 
                count <= 0;
        end
    end

    wire [3:0] tmpOutCmd;
    assign tmpOutCmd = ~sessionOn ? inputCmd : 
                     (hold ? ((count >= 0 && count < durationLatch) ? startCmdReg : inputCmd) : 
                     (count == {WIDTH{1'b0}} ? startCmdReg : (count == (durationLatch-1) ? endCmdReg : inputCmd)));

    assign outCmd = (tmpOutCmd == fc_linkReset || inputCmd == fc_linkReset ) ? fc_linkReset :  //linkReset hight prioriority
                    ((inputCmd == fc_BCR ) ? (tmpOutCmd == fc_L1A ? fc_L1A_BCR : fc_BCR ) : (inputCmd != fc_idle ? inputCmd : tmpOutCmd));


endmodule