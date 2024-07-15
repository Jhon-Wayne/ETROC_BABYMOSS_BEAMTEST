// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Thu Jan 21 15:10:52 2021
// Host        : 13-02625 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Vivado_Project/kc705_ETROC1_Array_Beam_Test_Case2_four_Boards_20210115/kc705_mig.srcs/sources_1/ip/vio_1/vio_1_stub.v
// Design      : vio_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "vio,Vivado 2018.3" *)
module vio_1(clk, probe_in0, probe_in1)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[15:0],probe_in1[1:0]" */;
  input clk;
  input [15:0]probe_in0;
  input [1:0]probe_in1;
endmodule
