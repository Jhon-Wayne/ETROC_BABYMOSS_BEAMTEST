`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Sat Jan 23 12:36:50 CST 2021
// Module Name: dataExtractUnit
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Revision 0.02 - File Modified, Xing Huang
// Revision 0.03 - Update state machine, Datao
// 
//////////////////////////////////////////////////////////////////////////////////
module dataExtractUnit(
	input           clk40,            //40MHz
	input			dataValid,    
	input           reset,
    input [39:0]    din,
    output reg [4:0]  wordOffset,
    output reg       aligned,  
    output           dataError,
	output [39:0]    dout
);

    reg [79:0] dataBuf;
    always @(posedge clk40) begin
		if(dataValid) begin
		    dataBuf[79:40]  <=  din;
		    dataBuf[39:0]   <= dataBuf[79:40];
		end
    end

    reg [5:0] alignAddr;
    generate
        genvar i;
        for (i = 0 ; i < 40; i= i+1 )
        begin
            assign  dout[i] = dataBuf[alignAddr+i];
        end    
    endgenerate

    wire noError;
    reg reset_check;
    dataStreamCheck dataStreamCheck_Inst
    (
        .clk40(clk40),
		.dataValid(dataValid),
        .reset(reset_check),
        .din(dout),
        .noError(noError)
    );

    localparam st_init          = 3'd0;
    localparam st_refill_data   = 3'd1;
    localparam st_reset_check   = 3'd2;
    localparam st_seek          = 3'd3;
    localparam st_locked        = 3'd4;
    localparam st_relock        = 3'd5;

    reg [2:0] state;
    reg dataError;
    reg [8:0] no_error_counter;
    reg [3:0] refill_data_count;
    reg [3:0] error_counter;
    always @(posedge clk40) 
    begin
        if(~reset)
        begin
            aligned         <= 1'b0;
            dataError       <= 1'b0;  
            alignAddr       <= 6'd0;
            wordOffset      <= 5'd0;
            reset_check     <= 1'b1;    //not reset 
            state           <= st_init;
        end
        else if(dataValid) begin //only count when dataValid is true;
            if(state == st_init)begin
                aligned         <= 1'b0;
                dataError       <= 1'b0;  
                reset_check     <= 1'b1;    //not reset 
                if(alignAddr == 6'd39)begin
                    alignAddr       <= 6'd0;
                    wordOffset      <= wordOffset + 1;
                end
                else begin
                    alignAddr <= alignAddr + 1;
                end
                refill_data_count <= 4'd0;
                state             <= st_refill_data;
            end
            else if(state == st_refill_data)begin
                aligned         <= 1'b0;
                dataError       <= 1'b0;  
                if(refill_data_count == 4'd6)begin
                    state <= st_reset_check;
                    reset_check     <= 1'b0;    //reset
                end
                else begin
                    refill_data_count <= refill_data_count + 1;
                    reset_check     <= 1'b1;    //not reset
                    state <= st_refill_data;
                end
            end
            else if (state == st_reset_check)begin
                aligned         <= 1'b0;
                dataError       <= 1'b0;  
                reset_check     <= 1'b1;  //clear reset
                no_error_counter <= 9'd0;
                state           <= st_seek;
            end
            else if(state == st_seek)begin
                aligned         <= 1'b0;
                dataError       <= 1'b0;  
                if(noError)begin
                    if(no_error_counter >= 9'd300)begin
                        state <= st_locked;
                    end
                    else begin
                        no_error_counter <= no_error_counter + 1;
                        state <= st_seek; //continue
                    end
                end
                else begin
                    state <= st_init; //search next combination
                end
            end
            else if(state == st_locked)begin
                dataError <= ~noError;
                aligned   <= 1'b1;
                if(~noError)begin
                    state <= st_relock;
                    no_error_counter <= 9'd0;
                    error_counter    <= 4'd0;
                end
            end
            else if(state == st_relock)begin
                dataError <= ~noError;
                aligned   <= 1'b1;
                if(noError)begin
                    no_error_counter <= no_error_counter + 1;
                    // error_counter    <= 4'd0;
                    if(no_error_counter >= 9'd100)begin
                        state <= st_locked;
                    end
                end
                else begin
                    error_counter <= error_counter + 1;
                    no_error_counter <= 9'd0;
                    if(error_counter >= 4'd5)begin
                        state <= st_init;    //restart the process.
                    end
                end
            end
        end    
    end
endmodule
