`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Monday, February 5, 2024 3:23:40 PM
// Module Name: bitLatch
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////

module majorityVoter (inA, inB, inC, out, tmrErr);
  parameter WIDTH = 1;
  input   [(WIDTH-1):0]   inA, inB, inC;
  output  [(WIDTH-1):0]   out;
  output                  tmrErr;
  reg                     tmrErr;
  assign out = (inA&inB) | (inA&inC) | (inB&inC);
  always @(inA or inB or inC)
  begin
    if (inA!=inB || inA!=inC || inB!=inC)
      tmrErr = 1;
    else
      tmrErr = 0;
  end
endmodule

module bitLatch
(
	input  			         clk,            //320 MHz or 640 MHz
    input                    clk200,        //for delay cell
    input   [3:0]            delay,
	input  			         rstn,          //rest, low active
    input                    auto_mode_asyn,  //from I2C, asynchronouse signal
    input                    falling_edge_latch_asyn,   //from I2C, asynchronouse signal
    input                    din,          //
    output                   dout,
    output                   edge_found,
    output                   align_done,
    output                   align_error,
    output                   latch_edge          //output polarity at auto mode
 );

   wire [4:0] delay_value_input_A;
   wire [4:0] delay_value_input_B;
   wire [4:0] delay_value_input_C;

    assign delay_value_input_A = 5'd16 - {1'b0,delay};
    assign delay_value_input_B = 5'd16;
    assign delay_value_input_C = 5'd16 + {1'b0,delay};
   
  //  (* IODELAY_GROUP = <iodelay_group_name> *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
   wire [4:0] delay_value_out_A;
   wire [4:0] delay_value_out_B;
   wire [4:0] delay_value_out_C;
   reg delay_en_A;
   reg delay_en_B;
   reg delay_en_C;

   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("DATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
   )
   IDELAYE2_A (
      .CNTVALUEOUT(delay_value_out_A), // 5-bit output: Counter value output
      .DATAOUT(dinA),         // 1-bit output: Delayed data output
      .C(clk200),                     // 1-bit input: Clock input
      .CE(delay_en_A),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL('d0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(delay_value_input_A),   // 5-bit input: Counter value input
      .DATAIN(din),           // 1-bit input: Internal delay data input
      .IDATAIN('d0),         // 1-bit input: Data input from the I/O
      .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(delay_en_A),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN('d0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST('d0)            // 1-bit input: Active-high reset tap-delay input
   );

   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("DATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
   )   
   IDELAYE2_B (
      .CNTVALUEOUT(delay_value_out_B), // 5-bit output: Counter value output
      .DATAOUT(dinB),         // 1-bit output: Delayed data output
      .C(clk200),                     // 1-bit input: Clock input
      .CE(delay_en_B),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL('d0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(delay_value_input_B),   // 5-bit input: Counter value input
      .DATAIN(din),           // 1-bit input: Internal delay data input
      .IDATAIN('d0),         // 1-bit input: Data input from the I/O
      .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(delay_en_B),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN('d0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST('d0)            // 1-bit input: Active-high reset tap-delay input
   );

   IDELAYE2 #(
      .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
      .DELAY_SRC("DATAIN"),           // Delay input (IDATAIN, DATAIN)
      .HIGH_PERFORMANCE_MODE("FALSE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
      .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
      .IDELAY_VALUE(0),                // Input delay tap setting (0-31)
      .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
      .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
      .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
   )   
   IDELAYE2_C (
      .CNTVALUEOUT(delay_value_out_C), // 5-bit output: Counter value output
      .DATAOUT(dinC),         // 1-bit output: Delayed data output
      .C(clk200),                     // 1-bit input: Clock input
      .CE(delay_en_C),                   // 1-bit input: Active high enable increment/decrement input
      .CINVCTRL('d0),       // 1-bit input: Dynamic clock inversion input
      .CNTVALUEIN(delay_value_input_C),   // 5-bit input: Counter value input
      .DATAIN(din),           // 1-bit input: Internal delay data input
      .IDATAIN('d0),         // 1-bit input: Data input from the I/O
      .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
      .LD(delay_en_C),                   // 1-bit input: Load IDELAY_VALUE input
      .LDPIPEEN('d0),       // 1-bit input: Enable PIPELINE register to load data input
      .REGRST('d0)            // 1-bit input: Active-high reset tap-delay input
   );

//    reg [1:0] rstn200_reg;
//    always @(posedge clk200)
//    begin
//     rstn200_reg <= {rstn200[0],rstn};    
//    end
//    wire rstn200 = rstn200_reg[1];

   always @(posedge clk200)
   begin
    //  if(~rstn200)begin        
    //  end
        delay_en_A <= (delay_value_out_A != delay_value_input_A); 
        delay_en_B <= (delay_value_out_B != delay_value_input_B); 
        delay_en_C <= (delay_value_out_C != delay_value_input_C); 
   end

wire doutA;
wire doutB;
wire doutC;
bitAligner bitAligner_inst
(
    .clk(clk),
    .rstn(rstn),
    .auto_mode_asyn(auto_mode_asyn),
    .falling_edge_latch_asyn(falling_edge_latch_asyn),
    .dinA(dinA),
    .dinB(dinB),
    .dinC(dinC),
    .doutA(doutA),
    .doutB(doutB),
    .doutC(doutC),
    .edge_found(edge_found),
    .align_done(align_done),
    .align_error(align_error),
    .latch_edge(latch_edge)
);

// module majorityVoter (inA, inB, inC, out, tmrErr);
wire tmrErr;
majorityVoter majorityVoter_inst
(
    .inA(doutA),
    .inB(doutB),
    .inC(doutC),
    .out(dout),
    .tmrErr(tmrErr)
);

endmodule
