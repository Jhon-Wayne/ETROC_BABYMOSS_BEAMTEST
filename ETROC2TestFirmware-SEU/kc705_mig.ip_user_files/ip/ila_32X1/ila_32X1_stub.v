// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 11 12:42:18 2024
// Host        : xvezw running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               e:/vivado2018prj/bottom/ETROC2TestFirmware-SEU/kc705_mig.srcs/sources_1/ip/ila_32X1/ila_32X1_stub.v
// Design      : ila_32X1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2018.3" *)
module ila_32X1(clk, probe0)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[41:0]" */;
  input clk;
  input [41:0]probe0;
endmodule
