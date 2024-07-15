`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Tuesday, December 12, 2023 4:54:43 PM
// Module Name: bitAligner
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////

module edge_detect
(
    input rstn,
    input clr,
    input clk,
    input dinA,
    input dinB,
    input dinC,
    output reg edge_found //found edge
);

    always @(posedge clk)
    begin
        if(~rstn | clr)
            edge_found <= 1'b0;
        else if(~edge_found)
            edge_found <= ~((dinA == dinB) && (dinB == dinC));
    end
endmodule

module transition_found
(
    input rstn,
    input clk,
    input din,       
    output transition     //found transition
);

    reg din_reg;
    always @(posedge clk)
    begin
        if(~rstn)
            din_reg <= 1'b0;  //default no falling edge latch
        else 
            din_reg <= din;
    end

    assign transition = din_reg != din;  

endmodule

module timer
(
    input rstn,
    input clk,
    input start,       
    output reg align_done     //
);

    reg [7:0] count;
    always @(posedge clk)
    begin
        if(~rstn | start)begin
            count <= 8'd0;  //
            align_done  <= 1'b0;
        end
        else if(~align_done)
            count <= count + 1;
            if(count == 8'd255)align_done <= 1'b1; 
    end

endmodule

module align_sm
(
    input rstn,
    input clk,
    input auto_mode,
    input align_done,
    input edge_found,
    output reg latch_edge,     //polarity
    output reg align_error     //error
);

    reg edge_found_dly;
    always @(posedge clk)
    begin
        if(~rstn)begin
            edge_found_dly <= 1'b0;
        end
        else if(auto_mode) begin
            edge_found_dly <= edge_found;
        end
    end

    wire edge_found_rise = edge_found & ~edge_found_dly;
    reg prev_edge_found;
    always @(posedge clk)
    begin
        if(~rstn)begin
            latch_edge <= 1'b0;
            align_error <= 1'b0;
            prev_edge_found <= 1'b0;
        end
        else if(edge_found_rise & auto_mode)begin
            prev_edge_found <= ~align_done;
            latch_edge <= ~latch_edge;
            if(prev_edge_found)begin
                align_error <= 1'b1; //no polarity change anymore.
            end
            else begin
                align_error <= 1'b0;
            end
        end
    end
endmodule

module bitAligner
(
	input  			         clk,            //320 MHz or 640 MHz
	input  			         rstn,          //rest, low active
    input                    auto_mode_asyn,  //from I2C, asynchronouse signal
    input                    falling_edge_latch_asyn,   //from I2C, asynchronouse signal
    input                    dinA,          //
    input                    dinB,          //middle delay
    input                    dinC,
    output reg               doutA,
    output reg               doutB,
    output reg               doutC,
    output                   edge_found,
    output                   align_done,
    output                   align_error,
    output                   latch_edge          //output polarity at auto mode
 );


reg [1:0] auto_mode_reg;
reg [1:0] falling_edge_latch_reg;
always @(posedge clk)
begin
    if(~rstn)begin
        auto_mode_reg <= 2'b00;
        falling_edge_latch_reg <= 2'b00;
    end
    else begin
        auto_mode_reg <= {auto_mode_reg[0],auto_mode_asyn};
        falling_edge_latch_reg <= {falling_edge_latch_reg[0],falling_edge_latch_asyn};
    end
end

wire auto_mode = auto_mode_reg[1];
wire falling_edge_latch = falling_edge_latch_reg[1];

wire i_falling_edge_latch;
assign i_falling_edge_latch = auto_mode ? latch_edge : falling_edge_latch;

reg falling_edge_latch_dataA;
reg falling_edge_latch_dataB;
reg falling_edge_latch_dataC;

always @(negedge clk)
begin
    if(~rstn)begin
        falling_edge_latch_dataA <= 1'b0;
        falling_edge_latch_dataB <= 1'b0;
        falling_edge_latch_dataC <= 1'b0;
    end
    else if(i_falling_edge_latch) begin
        falling_edge_latch_dataA <= dinA;
        falling_edge_latch_dataB <= dinB;
        falling_edge_latch_dataC <= dinC;
    end
end

always @(posedge clk)
begin
    if(~rstn)begin
        doutA <= 1'b0;
        doutB <= 1'b0;
        doutC <= 1'b0;
    end
    else begin
        doutA <= i_falling_edge_latch ? falling_edge_latch_dataA : dinA;
        doutB <= i_falling_edge_latch ? falling_edge_latch_dataB : dinB;
        doutC <= i_falling_edge_latch ? falling_edge_latch_dataC : dinC;
    end
end

wire transition;
transition_found transition_found_inst
(
    .rstn(rstn),
    .clk(clk),
    .din(i_falling_edge_latch),       
    .transition(transition)     //found transition
);

edge_detect edge_detect_inst
(
    .rstn(rstn),
    .clr(transition),
    .clk(clk),
    .dinA(doutA),
    .dinB(doutB),
    .dinC(doutC),
    .edge_found(edge_found)
);

timer timer_inst
(
    .rstn(rstn),
    .clk(clk),
    .start(transition),
    .align_done(align_done)
);


align_sm align_sm_inst
(
    .rstn(rstn),
    .clk(clk),
    .auto_mode(auto_mode),
    .align_done(align_done),
    .edge_found(edge_found),
    .latch_edge(latch_edge),
    .align_error(align_error)
);

endmodule
