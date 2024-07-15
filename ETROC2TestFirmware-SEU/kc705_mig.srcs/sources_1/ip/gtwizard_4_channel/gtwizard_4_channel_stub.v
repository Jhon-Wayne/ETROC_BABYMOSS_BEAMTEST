// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 11 12:09:06 2024
// Host        : xvezw running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               E:/vivado2018prj/bottom/ETROC2TestFirmware-SEU/kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_stub.v
// Design      : gtwizard_4_channel
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "gtwizard_4_channel,gtwizard_v3_6_10,{protocol_file=Start_from_scratch}" *)
module gtwizard_4_channel(sysclk_in, soft_reset_tx_in, 
  soft_reset_rx_in, dont_reset_on_data_error_in, gt0_tx_fsm_reset_done_out, 
  gt0_rx_fsm_reset_done_out, gt0_data_valid_in, gt1_tx_fsm_reset_done_out, 
  gt1_rx_fsm_reset_done_out, gt1_data_valid_in, gt2_tx_fsm_reset_done_out, 
  gt2_rx_fsm_reset_done_out, gt2_data_valid_in, gt3_tx_fsm_reset_done_out, 
  gt3_rx_fsm_reset_done_out, gt3_data_valid_in, gt0_cpllfbclklost_out, gt0_cplllock_out, 
  gt0_cplllockdetclk_in, gt0_cpllreset_in, gt0_gtnorthrefclk0_in, gt0_gtnorthrefclk1_in, 
  gt0_gtrefclk0_in, gt0_gtrefclk1_in, gt0_gtsouthrefclk0_in, gt0_gtsouthrefclk1_in, 
  gt0_drpaddr_in, gt0_drpclk_in, gt0_drpdi_in, gt0_drpdo_out, gt0_drpen_in, gt0_drprdy_out, 
  gt0_drpwe_in, gt0_dmonitorout_out, gt0_eyescanreset_in, gt0_rxuserrdy_in, 
  gt0_eyescandataerror_out, gt0_eyescantrigger_in, gt0_rxusrclk_in, gt0_rxusrclk2_in, 
  gt0_rxdata_out, gt0_gtxrxp_in, gt0_gtxrxn_in, gt0_rxdfelpmreset_in, gt0_rxmonitorout_out, 
  gt0_rxmonitorsel_in, gt0_rxoutclk_out, gt0_rxoutclkfabric_out, gt0_gtrxreset_in, 
  gt0_rxpmareset_in, gt0_rxresetdone_out, gt0_gttxreset_in, gt0_txuserrdy_in, 
  gt0_txusrclk_in, gt0_txusrclk2_in, gt0_txdata_in, gt0_gtxtxn_out, gt0_gtxtxp_out, 
  gt0_txoutclk_out, gt0_txoutclkfabric_out, gt0_txoutclkpcs_out, gt0_txresetdone_out, 
  gt1_cpllfbclklost_out, gt1_cplllock_out, gt1_cplllockdetclk_in, gt1_cpllreset_in, 
  gt1_gtnorthrefclk0_in, gt1_gtnorthrefclk1_in, gt1_gtrefclk0_in, gt1_gtrefclk1_in, 
  gt1_gtsouthrefclk0_in, gt1_gtsouthrefclk1_in, gt1_drpaddr_in, gt1_drpclk_in, 
  gt1_drpdi_in, gt1_drpdo_out, gt1_drpen_in, gt1_drprdy_out, gt1_drpwe_in, 
  gt1_dmonitorout_out, gt1_eyescanreset_in, gt1_rxuserrdy_in, gt1_eyescandataerror_out, 
  gt1_eyescantrigger_in, gt1_rxusrclk_in, gt1_rxusrclk2_in, gt1_rxdata_out, gt1_gtxrxp_in, 
  gt1_gtxrxn_in, gt1_rxdfelpmreset_in, gt1_rxmonitorout_out, gt1_rxmonitorsel_in, 
  gt1_rxoutclk_out, gt1_rxoutclkfabric_out, gt1_gtrxreset_in, gt1_rxpmareset_in, 
  gt1_rxresetdone_out, gt1_gttxreset_in, gt1_txuserrdy_in, gt1_txusrclk_in, 
  gt1_txusrclk2_in, gt1_txdata_in, gt1_gtxtxn_out, gt1_gtxtxp_out, gt1_txoutclk_out, 
  gt1_txoutclkfabric_out, gt1_txoutclkpcs_out, gt1_txresetdone_out, 
  gt2_cpllfbclklost_out, gt2_cplllock_out, gt2_cplllockdetclk_in, gt2_cpllreset_in, 
  gt2_gtnorthrefclk0_in, gt2_gtnorthrefclk1_in, gt2_gtrefclk0_in, gt2_gtrefclk1_in, 
  gt2_gtsouthrefclk0_in, gt2_gtsouthrefclk1_in, gt2_drpaddr_in, gt2_drpclk_in, 
  gt2_drpdi_in, gt2_drpdo_out, gt2_drpen_in, gt2_drprdy_out, gt2_drpwe_in, 
  gt2_dmonitorout_out, gt2_eyescanreset_in, gt2_rxuserrdy_in, gt2_eyescandataerror_out, 
  gt2_eyescantrigger_in, gt2_rxusrclk_in, gt2_rxusrclk2_in, gt2_rxdata_out, gt2_gtxrxp_in, 
  gt2_gtxrxn_in, gt2_rxdfelpmreset_in, gt2_rxmonitorout_out, gt2_rxmonitorsel_in, 
  gt2_rxoutclk_out, gt2_rxoutclkfabric_out, gt2_gtrxreset_in, gt2_rxpmareset_in, 
  gt2_rxresetdone_out, gt2_gttxreset_in, gt2_txuserrdy_in, gt2_txusrclk_in, 
  gt2_txusrclk2_in, gt2_txdata_in, gt2_gtxtxn_out, gt2_gtxtxp_out, gt2_txoutclk_out, 
  gt2_txoutclkfabric_out, gt2_txoutclkpcs_out, gt2_txresetdone_out, 
  gt3_cpllfbclklost_out, gt3_cplllock_out, gt3_cplllockdetclk_in, gt3_cpllreset_in, 
  gt3_gtnorthrefclk0_in, gt3_gtnorthrefclk1_in, gt3_gtrefclk0_in, gt3_gtrefclk1_in, 
  gt3_gtsouthrefclk0_in, gt3_gtsouthrefclk1_in, gt3_drpaddr_in, gt3_drpclk_in, 
  gt3_drpdi_in, gt3_drpdo_out, gt3_drpen_in, gt3_drprdy_out, gt3_drpwe_in, 
  gt3_dmonitorout_out, gt3_eyescanreset_in, gt3_rxuserrdy_in, gt3_eyescandataerror_out, 
  gt3_eyescantrigger_in, gt3_rxusrclk_in, gt3_rxusrclk2_in, gt3_rxdata_out, gt3_gtxrxp_in, 
  gt3_gtxrxn_in, gt3_rxdfelpmreset_in, gt3_rxmonitorout_out, gt3_rxmonitorsel_in, 
  gt3_rxoutclk_out, gt3_rxoutclkfabric_out, gt3_gtrxreset_in, gt3_rxpmareset_in, 
  gt3_rxresetdone_out, gt3_gttxreset_in, gt3_txuserrdy_in, gt3_txusrclk_in, 
  gt3_txusrclk2_in, gt3_txdata_in, gt3_gtxtxn_out, gt3_gtxtxp_out, gt3_txoutclk_out, 
  gt3_txoutclkfabric_out, gt3_txoutclkpcs_out, gt3_txresetdone_out, gt0_qplloutclk_in, 
  gt0_qplloutrefclk_in)
/* synthesis syn_black_box black_box_pad_pin="sysclk_in,soft_reset_tx_in,soft_reset_rx_in,dont_reset_on_data_error_in,gt0_tx_fsm_reset_done_out,gt0_rx_fsm_reset_done_out,gt0_data_valid_in,gt1_tx_fsm_reset_done_out,gt1_rx_fsm_reset_done_out,gt1_data_valid_in,gt2_tx_fsm_reset_done_out,gt2_rx_fsm_reset_done_out,gt2_data_valid_in,gt3_tx_fsm_reset_done_out,gt3_rx_fsm_reset_done_out,gt3_data_valid_in,gt0_cpllfbclklost_out,gt0_cplllock_out,gt0_cplllockdetclk_in,gt0_cpllreset_in,gt0_gtnorthrefclk0_in,gt0_gtnorthrefclk1_in,gt0_gtrefclk0_in,gt0_gtrefclk1_in,gt0_gtsouthrefclk0_in,gt0_gtsouthrefclk1_in,gt0_drpaddr_in[8:0],gt0_drpclk_in,gt0_drpdi_in[15:0],gt0_drpdo_out[15:0],gt0_drpen_in,gt0_drprdy_out,gt0_drpwe_in,gt0_dmonitorout_out[7:0],gt0_eyescanreset_in,gt0_rxuserrdy_in,gt0_eyescandataerror_out,gt0_eyescantrigger_in,gt0_rxusrclk_in,gt0_rxusrclk2_in,gt0_rxdata_out[31:0],gt0_gtxrxp_in,gt0_gtxrxn_in,gt0_rxdfelpmreset_in,gt0_rxmonitorout_out[6:0],gt0_rxmonitorsel_in[1:0],gt0_rxoutclk_out,gt0_rxoutclkfabric_out,gt0_gtrxreset_in,gt0_rxpmareset_in,gt0_rxresetdone_out,gt0_gttxreset_in,gt0_txuserrdy_in,gt0_txusrclk_in,gt0_txusrclk2_in,gt0_txdata_in[31:0],gt0_gtxtxn_out,gt0_gtxtxp_out,gt0_txoutclk_out,gt0_txoutclkfabric_out,gt0_txoutclkpcs_out,gt0_txresetdone_out,gt1_cpllfbclklost_out,gt1_cplllock_out,gt1_cplllockdetclk_in,gt1_cpllreset_in,gt1_gtnorthrefclk0_in,gt1_gtnorthrefclk1_in,gt1_gtrefclk0_in,gt1_gtrefclk1_in,gt1_gtsouthrefclk0_in,gt1_gtsouthrefclk1_in,gt1_drpaddr_in[8:0],gt1_drpclk_in,gt1_drpdi_in[15:0],gt1_drpdo_out[15:0],gt1_drpen_in,gt1_drprdy_out,gt1_drpwe_in,gt1_dmonitorout_out[7:0],gt1_eyescanreset_in,gt1_rxuserrdy_in,gt1_eyescandataerror_out,gt1_eyescantrigger_in,gt1_rxusrclk_in,gt1_rxusrclk2_in,gt1_rxdata_out[31:0],gt1_gtxrxp_in,gt1_gtxrxn_in,gt1_rxdfelpmreset_in,gt1_rxmonitorout_out[6:0],gt1_rxmonitorsel_in[1:0],gt1_rxoutclk_out,gt1_rxoutclkfabric_out,gt1_gtrxreset_in,gt1_rxpmareset_in,gt1_rxresetdone_out,gt1_gttxreset_in,gt1_txuserrdy_in,gt1_txusrclk_in,gt1_txusrclk2_in,gt1_txdata_in[31:0],gt1_gtxtxn_out,gt1_gtxtxp_out,gt1_txoutclk_out,gt1_txoutclkfabric_out,gt1_txoutclkpcs_out,gt1_txresetdone_out,gt2_cpllfbclklost_out,gt2_cplllock_out,gt2_cplllockdetclk_in,gt2_cpllreset_in,gt2_gtnorthrefclk0_in,gt2_gtnorthrefclk1_in,gt2_gtrefclk0_in,gt2_gtrefclk1_in,gt2_gtsouthrefclk0_in,gt2_gtsouthrefclk1_in,gt2_drpaddr_in[8:0],gt2_drpclk_in,gt2_drpdi_in[15:0],gt2_drpdo_out[15:0],gt2_drpen_in,gt2_drprdy_out,gt2_drpwe_in,gt2_dmonitorout_out[7:0],gt2_eyescanreset_in,gt2_rxuserrdy_in,gt2_eyescandataerror_out,gt2_eyescantrigger_in,gt2_rxusrclk_in,gt2_rxusrclk2_in,gt2_rxdata_out[31:0],gt2_gtxrxp_in,gt2_gtxrxn_in,gt2_rxdfelpmreset_in,gt2_rxmonitorout_out[6:0],gt2_rxmonitorsel_in[1:0],gt2_rxoutclk_out,gt2_rxoutclkfabric_out,gt2_gtrxreset_in,gt2_rxpmareset_in,gt2_rxresetdone_out,gt2_gttxreset_in,gt2_txuserrdy_in,gt2_txusrclk_in,gt2_txusrclk2_in,gt2_txdata_in[31:0],gt2_gtxtxn_out,gt2_gtxtxp_out,gt2_txoutclk_out,gt2_txoutclkfabric_out,gt2_txoutclkpcs_out,gt2_txresetdone_out,gt3_cpllfbclklost_out,gt3_cplllock_out,gt3_cplllockdetclk_in,gt3_cpllreset_in,gt3_gtnorthrefclk0_in,gt3_gtnorthrefclk1_in,gt3_gtrefclk0_in,gt3_gtrefclk1_in,gt3_gtsouthrefclk0_in,gt3_gtsouthrefclk1_in,gt3_drpaddr_in[8:0],gt3_drpclk_in,gt3_drpdi_in[15:0],gt3_drpdo_out[15:0],gt3_drpen_in,gt3_drprdy_out,gt3_drpwe_in,gt3_dmonitorout_out[7:0],gt3_eyescanreset_in,gt3_rxuserrdy_in,gt3_eyescandataerror_out,gt3_eyescantrigger_in,gt3_rxusrclk_in,gt3_rxusrclk2_in,gt3_rxdata_out[31:0],gt3_gtxrxp_in,gt3_gtxrxn_in,gt3_rxdfelpmreset_in,gt3_rxmonitorout_out[6:0],gt3_rxmonitorsel_in[1:0],gt3_rxoutclk_out,gt3_rxoutclkfabric_out,gt3_gtrxreset_in,gt3_rxpmareset_in,gt3_rxresetdone_out,gt3_gttxreset_in,gt3_txuserrdy_in,gt3_txusrclk_in,gt3_txusrclk2_in,gt3_txdata_in[31:0],gt3_gtxtxn_out,gt3_gtxtxp_out,gt3_txoutclk_out,gt3_txoutclkfabric_out,gt3_txoutclkpcs_out,gt3_txresetdone_out,gt0_qplloutclk_in,gt0_qplloutrefclk_in" */;
  input sysclk_in;
  input soft_reset_tx_in;
  input soft_reset_rx_in;
  input dont_reset_on_data_error_in;
  output gt0_tx_fsm_reset_done_out;
  output gt0_rx_fsm_reset_done_out;
  input gt0_data_valid_in;
  output gt1_tx_fsm_reset_done_out;
  output gt1_rx_fsm_reset_done_out;
  input gt1_data_valid_in;
  output gt2_tx_fsm_reset_done_out;
  output gt2_rx_fsm_reset_done_out;
  input gt2_data_valid_in;
  output gt3_tx_fsm_reset_done_out;
  output gt3_rx_fsm_reset_done_out;
  input gt3_data_valid_in;
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  input gt0_cplllockdetclk_in;
  input gt0_cpllreset_in;
  input gt0_gtnorthrefclk0_in;
  input gt0_gtnorthrefclk1_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input gt0_gtsouthrefclk0_in;
  input gt0_gtsouthrefclk1_in;
  input [8:0]gt0_drpaddr_in;
  input gt0_drpclk_in;
  input [15:0]gt0_drpdi_in;
  output [15:0]gt0_drpdo_out;
  input gt0_drpen_in;
  output gt0_drprdy_out;
  input gt0_drpwe_in;
  output [7:0]gt0_dmonitorout_out;
  input gt0_eyescanreset_in;
  input gt0_rxuserrdy_in;
  output gt0_eyescandataerror_out;
  input gt0_eyescantrigger_in;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  output [31:0]gt0_rxdata_out;
  input gt0_gtxrxp_in;
  input gt0_gtxrxn_in;
  input gt0_rxdfelpmreset_in;
  output [6:0]gt0_rxmonitorout_out;
  input [1:0]gt0_rxmonitorsel_in;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  input gt0_gtrxreset_in;
  input gt0_rxpmareset_in;
  output gt0_rxresetdone_out;
  input gt0_gttxreset_in;
  input gt0_txuserrdy_in;
  input gt0_txusrclk_in;
  input gt0_txusrclk2_in;
  input [31:0]gt0_txdata_in;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  output gt0_txresetdone_out;
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  input gt1_cplllockdetclk_in;
  input gt1_cpllreset_in;
  input gt1_gtnorthrefclk0_in;
  input gt1_gtnorthrefclk1_in;
  input gt1_gtrefclk0_in;
  input gt1_gtrefclk1_in;
  input gt1_gtsouthrefclk0_in;
  input gt1_gtsouthrefclk1_in;
  input [8:0]gt1_drpaddr_in;
  input gt1_drpclk_in;
  input [15:0]gt1_drpdi_in;
  output [15:0]gt1_drpdo_out;
  input gt1_drpen_in;
  output gt1_drprdy_out;
  input gt1_drpwe_in;
  output [7:0]gt1_dmonitorout_out;
  input gt1_eyescanreset_in;
  input gt1_rxuserrdy_in;
  output gt1_eyescandataerror_out;
  input gt1_eyescantrigger_in;
  input gt1_rxusrclk_in;
  input gt1_rxusrclk2_in;
  output [31:0]gt1_rxdata_out;
  input gt1_gtxrxp_in;
  input gt1_gtxrxn_in;
  input gt1_rxdfelpmreset_in;
  output [6:0]gt1_rxmonitorout_out;
  input [1:0]gt1_rxmonitorsel_in;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  input gt1_gtrxreset_in;
  input gt1_rxpmareset_in;
  output gt1_rxresetdone_out;
  input gt1_gttxreset_in;
  input gt1_txuserrdy_in;
  input gt1_txusrclk_in;
  input gt1_txusrclk2_in;
  input [31:0]gt1_txdata_in;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  output gt1_txresetdone_out;
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  input gt2_cplllockdetclk_in;
  input gt2_cpllreset_in;
  input gt2_gtnorthrefclk0_in;
  input gt2_gtnorthrefclk1_in;
  input gt2_gtrefclk0_in;
  input gt2_gtrefclk1_in;
  input gt2_gtsouthrefclk0_in;
  input gt2_gtsouthrefclk1_in;
  input [8:0]gt2_drpaddr_in;
  input gt2_drpclk_in;
  input [15:0]gt2_drpdi_in;
  output [15:0]gt2_drpdo_out;
  input gt2_drpen_in;
  output gt2_drprdy_out;
  input gt2_drpwe_in;
  output [7:0]gt2_dmonitorout_out;
  input gt2_eyescanreset_in;
  input gt2_rxuserrdy_in;
  output gt2_eyescandataerror_out;
  input gt2_eyescantrigger_in;
  input gt2_rxusrclk_in;
  input gt2_rxusrclk2_in;
  output [31:0]gt2_rxdata_out;
  input gt2_gtxrxp_in;
  input gt2_gtxrxn_in;
  input gt2_rxdfelpmreset_in;
  output [6:0]gt2_rxmonitorout_out;
  input [1:0]gt2_rxmonitorsel_in;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  input gt2_gtrxreset_in;
  input gt2_rxpmareset_in;
  output gt2_rxresetdone_out;
  input gt2_gttxreset_in;
  input gt2_txuserrdy_in;
  input gt2_txusrclk_in;
  input gt2_txusrclk2_in;
  input [31:0]gt2_txdata_in;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  output gt2_txresetdone_out;
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  input gt3_cplllockdetclk_in;
  input gt3_cpllreset_in;
  input gt3_gtnorthrefclk0_in;
  input gt3_gtnorthrefclk1_in;
  input gt3_gtrefclk0_in;
  input gt3_gtrefclk1_in;
  input gt3_gtsouthrefclk0_in;
  input gt3_gtsouthrefclk1_in;
  input [8:0]gt3_drpaddr_in;
  input gt3_drpclk_in;
  input [15:0]gt3_drpdi_in;
  output [15:0]gt3_drpdo_out;
  input gt3_drpen_in;
  output gt3_drprdy_out;
  input gt3_drpwe_in;
  output [7:0]gt3_dmonitorout_out;
  input gt3_eyescanreset_in;
  input gt3_rxuserrdy_in;
  output gt3_eyescandataerror_out;
  input gt3_eyescantrigger_in;
  input gt3_rxusrclk_in;
  input gt3_rxusrclk2_in;
  output [31:0]gt3_rxdata_out;
  input gt3_gtxrxp_in;
  input gt3_gtxrxn_in;
  input gt3_rxdfelpmreset_in;
  output [6:0]gt3_rxmonitorout_out;
  input [1:0]gt3_rxmonitorsel_in;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  input gt3_gtrxreset_in;
  input gt3_rxpmareset_in;
  output gt3_rxresetdone_out;
  input gt3_gttxreset_in;
  input gt3_txuserrdy_in;
  input gt3_txusrclk_in;
  input gt3_txusrclk2_in;
  input [31:0]gt3_txdata_in;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  output gt3_txresetdone_out;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
endmodule
