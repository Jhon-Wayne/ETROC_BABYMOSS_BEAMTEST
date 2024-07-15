`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Engineer: Datao Gong
// 
// Create Date: Thursday, July 13, 2023 4:32:02 PM
// Design Name: ETROC1 Array four boards beam test
// Module Name: module trigBitSynchronizer
// Project Name: ETROC2 test
// Target Devices: KC705
// Tool Versions:  Vivado 2018.3
// Description: gtx receives four boards 1.28 Gbps high speed serial data 
//              the gtx interface is located at DP[3:0]_M2C and GBCLK1 acts as 160 MHz reference 
//              clock input.
//              
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
// `define AUTO_RESYNCH
module trigBitSynchronizer
(
    input rstn,
    input clk,       //40 MHz clock
    input trigIn,
    // input clrError,
    output reg [4:0] wordOffset,
    output reg synched,   //found flashing bit
    output reg error,    //get error
    output reg flashingFlag,  //
    output reg flashingBit,
    output reg [7:0] resetCount,
    output reg trigOut    //trig bits without flashing bit
);

localparam period = 12'd3564;
localparam st_init = 3'd0;
localparam st_seek = 3'd1;
localparam st_prelock = 3'd2;
localparam st_locked = 3'd3;
localparam st_relock = 3'd4;
localparam st_fill = 3'd5;  //wait untill buffer is refreshed.

localparam prelock_check_counter_threshold = 15'H0100; //long enough to last for a second to show the status on LED light
localparam relock_check_counter_threshold = 15'H0100;
// localparam hold_counter_threshold = 6'd41;
reg [2:0] state;
reg [period - 1 : 0] trigBuffer;
reg [period - 1 : 0] xorBuffer;
reg [11:0] goodFBs;
reg [11:0] wrAddr;
reg [11:0] flashBitAddr;
reg [14:0] prelock_counter;
reg [14:0] relock_counter;
reg [11:0] full_counter;
wire nextXOR;
assign nextXOR = trigIn ^ trigBuffer[wrAddr];

always @(posedge clk)
begin
    if(~rstn)
    begin
        wrAddr <= 12'd0;
        trigBuffer <= 3564'd0;
    end
    else
    begin
        trigBuffer[wrAddr] <= trigIn;
        if(wrAddr == 12'd3563)
            wrAddr <= 12'd0;
        else 
            wrAddr <= wrAddr + 1;
    end
end

always @(posedge clk)
begin
    if(~rstn)
    begin
        state <= st_init;
        wordOffset <= 5'd0;
        resetCount   <= 8'd0;
        flashBitAddr <= 12'd0;
        xorBuffer <= {3564{1'b1}};
        error <= 1'b0;
        synched <= 1'b0;
        goodFBs <= 12'd3564;
    end
    else if (state == st_init)
    begin
        error <= 1'b0;
        synched <= 1'b0;
        resetCount <= resetCount + 1;
        wordOffset <= wordOffset + 1;
        state <= st_fill;
        full_counter <= 12'd0;
    end
    else if(state == st_fill)
    begin
        xorBuffer <= {3564{1'b1}};
        error <= 1'b0;
        synched <= 1'b0;
        goodFBs <= 12'd3564;
        full_counter <= full_counter + 1;
        if(full_counter >= 12'd4000)
            state <= st_seek;
        else
            state <= st_fill;
    end
    else if(state == st_seek) //seek the flashing bit
    begin
        synched <= 1'b0;
        error           <= 1'b0;
        if(goodFBs == 12'd0)begin //not found
            state <= st_init;
        end
        else if(nextXOR == 1'b0)
        begin
            xorBuffer[wrAddr] <= 1'b0;
            if(xorBuffer[wrAddr] == 1'b1)begin
                goodFBs <= goodFBs - 1;
            end
            state <= st_seek;
        end
        else if(goodFBs == 12'd1 && xorBuffer[wrAddr] == 1'b1)begin
            state           <= st_prelock;
            flashBitAddr    <= wrAddr;
            prelock_counter <= 15'd0;
        end 
        else begin
            state <= st_seek;
        end
    end
    else if(state == st_prelock)
    begin //found it, confirm the lock
        synched <= 1'b0;
        error <= 1'b0;   
        if(prelock_counter == prelock_check_counter_threshold)begin
            state <= st_locked;             
        end
        else if(flashBitAddr == wrAddr)
        begin
            if(nextXOR == 1'b1)begin
                prelock_counter <= prelock_counter + 1;
                state <= st_prelock;             
            end
            else 
            begin
                state <= st_init;       
            end                   
        end
        else 
            state <= st_prelock;             
    end
    else if(state == st_locked)
    begin
        synched <= 1'b1;
        error <= 1'b0;
        if(flashBitAddr == wrAddr)
        begin
            if(nextXOR == 1'b1)begin  //monitoring
                state <= st_locked;
            end
            else 
            begin
                state <= st_relock;    //not confirmed, go to resynch mode.
                relock_counter <= 15'd0;
            end                      
        end
        else begin
            state <= st_locked;
        end
    end
    else if(state == st_relock)
    begin
        error <= 1'b1;
        synched <= 1'b1;
        if(relock_counter == relock_check_counter_threshold)begin
            state <= st_locked;      
        end
        else if(flashBitAddr == wrAddr)
        begin
            if(nextXOR == 1'b1)begin
                relock_counter <= relock_counter + 1;
                state <= st_relock;
            end
            else  //second error, restart the process
            begin
                state <= st_init;
            end                     
        end
        else begin
            state <= st_relock;
        end
    end
end

always @(posedge clk)
begin
    if(~rstn)
    begin
        flashingFlag <= 1'b0;
        trigOut <= 1'b0;
        flashingBit <= 1'b0;
    end
    if(state == st_locked)
    begin
        flashingFlag <= (flashBitAddr == wrAddr);
        trigOut <= flashBitAddr == wrAddr ? 1'b0 : trigIn;
        flashingBit <= flashBitAddr == wrAddr ? trigIn : 1'b0;
    end
    else 
    begin
        trigOut <= 1'b0;
        flashingBit <= 1'b0;
        flashingFlag <= 1'b0;
    end
end

endmodule

