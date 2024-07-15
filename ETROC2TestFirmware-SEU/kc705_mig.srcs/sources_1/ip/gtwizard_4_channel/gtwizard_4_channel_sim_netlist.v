// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Jun 11 12:09:06 2024
// Host        : xvezw running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               E:/vivado2018prj/bottom/ETROC2TestFirmware-SEU/kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_sim_netlist.v
// Design      : gtwizard_4_channel
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7k325tffg900-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "gtwizard_4_channel,gtwizard_v3_6_10,{protocol_file=Start_from_scratch}" *) 
(* NotValidForBitStream *)
module gtwizard_4_channel
   (sysclk_in,
    soft_reset_tx_in,
    soft_reset_rx_in,
    dont_reset_on_data_error_in,
    gt0_tx_fsm_reset_done_out,
    gt0_rx_fsm_reset_done_out,
    gt0_data_valid_in,
    gt1_tx_fsm_reset_done_out,
    gt1_rx_fsm_reset_done_out,
    gt1_data_valid_in,
    gt2_tx_fsm_reset_done_out,
    gt2_rx_fsm_reset_done_out,
    gt2_data_valid_in,
    gt3_tx_fsm_reset_done_out,
    gt3_rx_fsm_reset_done_out,
    gt3_data_valid_in,
    gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_cplllockdetclk_in,
    gt0_cpllreset_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_drpaddr_in,
    gt0_drpclk_in,
    gt0_drpdi_in,
    gt0_drpdo_out,
    gt0_drpen_in,
    gt0_drprdy_out,
    gt0_drpwe_in,
    gt0_dmonitorout_out,
    gt0_eyescanreset_in,
    gt0_rxuserrdy_in,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_rxdata_out,
    gt0_gtxrxp_in,
    gt0_gtxrxn_in,
    gt0_rxdfelpmreset_in,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_gtrxreset_in,
    gt0_rxpmareset_in,
    gt0_rxresetdone_out,
    gt0_gttxreset_in,
    gt0_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_txdata_in,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_txresetdone_out,
    gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_cplllockdetclk_in,
    gt1_cpllreset_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_drpaddr_in,
    gt1_drpclk_in,
    gt1_drpdi_in,
    gt1_drpdo_out,
    gt1_drpen_in,
    gt1_drprdy_out,
    gt1_drpwe_in,
    gt1_dmonitorout_out,
    gt1_eyescanreset_in,
    gt1_rxuserrdy_in,
    gt1_eyescandataerror_out,
    gt1_eyescantrigger_in,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_rxdata_out,
    gt1_gtxrxp_in,
    gt1_gtxrxn_in,
    gt1_rxdfelpmreset_in,
    gt1_rxmonitorout_out,
    gt1_rxmonitorsel_in,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_gtrxreset_in,
    gt1_rxpmareset_in,
    gt1_rxresetdone_out,
    gt1_gttxreset_in,
    gt1_txuserrdy_in,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_txdata_in,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_txresetdone_out,
    gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_cplllockdetclk_in,
    gt2_cpllreset_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_drpaddr_in,
    gt2_drpclk_in,
    gt2_drpdi_in,
    gt2_drpdo_out,
    gt2_drpen_in,
    gt2_drprdy_out,
    gt2_drpwe_in,
    gt2_dmonitorout_out,
    gt2_eyescanreset_in,
    gt2_rxuserrdy_in,
    gt2_eyescandataerror_out,
    gt2_eyescantrigger_in,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_rxdata_out,
    gt2_gtxrxp_in,
    gt2_gtxrxn_in,
    gt2_rxdfelpmreset_in,
    gt2_rxmonitorout_out,
    gt2_rxmonitorsel_in,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_gtrxreset_in,
    gt2_rxpmareset_in,
    gt2_rxresetdone_out,
    gt2_gttxreset_in,
    gt2_txuserrdy_in,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_txdata_in,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_txresetdone_out,
    gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_cplllockdetclk_in,
    gt3_cpllreset_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_drpaddr_in,
    gt3_drpclk_in,
    gt3_drpdi_in,
    gt3_drpdo_out,
    gt3_drpen_in,
    gt3_drprdy_out,
    gt3_drpwe_in,
    gt3_dmonitorout_out,
    gt3_eyescanreset_in,
    gt3_rxuserrdy_in,
    gt3_eyescandataerror_out,
    gt3_eyescantrigger_in,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_rxdata_out,
    gt3_gtxrxp_in,
    gt3_gtxrxn_in,
    gt3_rxdfelpmreset_in,
    gt3_rxmonitorout_out,
    gt3_rxmonitorsel_in,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_gtrxreset_in,
    gt3_rxpmareset_in,
    gt3_rxresetdone_out,
    gt3_gttxreset_in,
    gt3_txuserrdy_in,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_txdata_in,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_txresetdone_out,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in);
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

  wire dont_reset_on_data_error_in;
  wire gt0_cpllfbclklost_out;
  wire gt0_cplllock_out;
  wire gt0_cplllockdetclk_in;
  wire gt0_cpllreset_in;
  wire gt0_data_valid_in;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtnorthrefclk0_in;
  wire gt0_gtnorthrefclk1_in;
  wire gt0_gtrefclk0_in;
  wire gt0_gtrefclk1_in;
  wire gt0_gtrxreset_in;
  wire gt0_gtsouthrefclk0_in;
  wire gt0_gtsouthrefclk1_in;
  wire gt0_gttxreset_in;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt0_rx_fsm_reset_done_out;
  wire [31:0]gt0_rxdata_out;
  wire gt0_rxdfelpmreset_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire gt0_rxoutclk_out;
  wire gt0_rxoutclkfabric_out;
  wire gt0_rxpmareset_in;
  wire gt0_rxresetdone_out;
  wire gt0_rxuserrdy_in;
  wire gt0_rxusrclk2_in;
  wire gt0_rxusrclk_in;
  wire gt0_tx_fsm_reset_done_out;
  wire [31:0]gt0_txdata_in;
  wire gt0_txoutclk_out;
  wire gt0_txoutclkfabric_out;
  wire gt0_txoutclkpcs_out;
  wire gt0_txresetdone_out;
  wire gt0_txuserrdy_in;
  wire gt0_txusrclk2_in;
  wire gt0_txusrclk_in;
  wire gt1_cpllfbclklost_out;
  wire gt1_cplllock_out;
  wire gt1_cplllockdetclk_in;
  wire gt1_cpllreset_in;
  wire gt1_data_valid_in;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr_in;
  wire gt1_drpclk_in;
  wire [15:0]gt1_drpdi_in;
  wire [15:0]gt1_drpdo_out;
  wire gt1_drpen_in;
  wire gt1_drprdy_out;
  wire gt1_drpwe_in;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire gt1_gtnorthrefclk0_in;
  wire gt1_gtnorthrefclk1_in;
  wire gt1_gtrefclk0_in;
  wire gt1_gtrefclk1_in;
  wire gt1_gtrxreset_in;
  wire gt1_gtsouthrefclk0_in;
  wire gt1_gtsouthrefclk1_in;
  wire gt1_gttxreset_in;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire gt1_rx_fsm_reset_done_out;
  wire [31:0]gt1_rxdata_out;
  wire gt1_rxdfelpmreset_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire gt1_rxoutclk_out;
  wire gt1_rxoutclkfabric_out;
  wire gt1_rxpmareset_in;
  wire gt1_rxresetdone_out;
  wire gt1_rxuserrdy_in;
  wire gt1_rxusrclk2_in;
  wire gt1_rxusrclk_in;
  wire gt1_tx_fsm_reset_done_out;
  wire [31:0]gt1_txdata_in;
  wire gt1_txoutclk_out;
  wire gt1_txoutclkfabric_out;
  wire gt1_txoutclkpcs_out;
  wire gt1_txresetdone_out;
  wire gt1_txuserrdy_in;
  wire gt1_txusrclk2_in;
  wire gt1_txusrclk_in;
  wire gt2_cpllfbclklost_out;
  wire gt2_cplllock_out;
  wire gt2_cplllockdetclk_in;
  wire gt2_cpllreset_in;
  wire gt2_data_valid_in;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr_in;
  wire gt2_drpclk_in;
  wire [15:0]gt2_drpdi_in;
  wire [15:0]gt2_drpdo_out;
  wire gt2_drpen_in;
  wire gt2_drprdy_out;
  wire gt2_drpwe_in;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire gt2_gtnorthrefclk0_in;
  wire gt2_gtnorthrefclk1_in;
  wire gt2_gtrefclk0_in;
  wire gt2_gtrefclk1_in;
  wire gt2_gtrxreset_in;
  wire gt2_gtsouthrefclk0_in;
  wire gt2_gtsouthrefclk1_in;
  wire gt2_gttxreset_in;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire gt2_rx_fsm_reset_done_out;
  wire [31:0]gt2_rxdata_out;
  wire gt2_rxdfelpmreset_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire gt2_rxoutclk_out;
  wire gt2_rxoutclkfabric_out;
  wire gt2_rxpmareset_in;
  wire gt2_rxresetdone_out;
  wire gt2_rxuserrdy_in;
  wire gt2_rxusrclk2_in;
  wire gt2_rxusrclk_in;
  wire gt2_tx_fsm_reset_done_out;
  wire [31:0]gt2_txdata_in;
  wire gt2_txoutclk_out;
  wire gt2_txoutclkfabric_out;
  wire gt2_txoutclkpcs_out;
  wire gt2_txresetdone_out;
  wire gt2_txuserrdy_in;
  wire gt2_txusrclk2_in;
  wire gt2_txusrclk_in;
  wire gt3_cpllfbclklost_out;
  wire gt3_cplllock_out;
  wire gt3_cplllockdetclk_in;
  wire gt3_cpllreset_in;
  wire gt3_data_valid_in;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr_in;
  wire gt3_drpclk_in;
  wire [15:0]gt3_drpdi_in;
  wire [15:0]gt3_drpdo_out;
  wire gt3_drpen_in;
  wire gt3_drprdy_out;
  wire gt3_drpwe_in;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire gt3_gtnorthrefclk0_in;
  wire gt3_gtnorthrefclk1_in;
  wire gt3_gtrefclk0_in;
  wire gt3_gtrefclk1_in;
  wire gt3_gtrxreset_in;
  wire gt3_gtsouthrefclk0_in;
  wire gt3_gtsouthrefclk1_in;
  wire gt3_gttxreset_in;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire gt3_rx_fsm_reset_done_out;
  wire [31:0]gt3_rxdata_out;
  wire gt3_rxdfelpmreset_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire gt3_rxoutclk_out;
  wire gt3_rxoutclkfabric_out;
  wire gt3_rxpmareset_in;
  wire gt3_rxresetdone_out;
  wire gt3_rxuserrdy_in;
  wire gt3_rxusrclk2_in;
  wire gt3_rxusrclk_in;
  wire gt3_tx_fsm_reset_done_out;
  wire [31:0]gt3_txdata_in;
  wire gt3_txoutclk_out;
  wire gt3_txoutclkfabric_out;
  wire gt3_txoutclkpcs_out;
  wire gt3_txresetdone_out;
  wire gt3_txuserrdy_in;
  wire gt3_txusrclk2_in;
  wire gt3_txusrclk_in;
  wire soft_reset_rx_in;
  wire soft_reset_tx_in;
  wire sysclk_in;

  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* EXAMPLE_SIMULATION = "0" *) 
  (* EXAMPLE_SIM_GTRESET_SPEEDUP = "TRUE" *) 
  (* EXAMPLE_USE_CHIPSCOPE = "0" *) 
  (* RX_CDRLOCK_TIME = "78125.000000" *) 
  (* STABLE_CLOCK_PERIOD = "8" *) 
  (* USE_BUFG = "0" *) 
  (* WAIT_TIME_CDRLOCK = "9766" *) 
  gtwizard_4_channel_gtwizard_4_channel_init inst
       (.dont_reset_on_data_error_in(dont_reset_on_data_error_in),
        .gt0_cpllfbclklost_out(gt0_cpllfbclklost_out),
        .gt0_cplllock_out(gt0_cplllock_out),
        .gt0_cplllockdetclk_in(gt0_cplllockdetclk_in),
        .gt0_cpllreset_in(gt0_cpllreset_in),
        .gt0_data_valid_in(gt0_data_valid_in),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_gtnorthrefclk0_in(gt0_gtnorthrefclk0_in),
        .gt0_gtnorthrefclk1_in(gt0_gtnorthrefclk1_in),
        .gt0_gtrefclk0_in(gt0_gtrefclk0_in),
        .gt0_gtrefclk1_in(gt0_gtrefclk1_in),
        .gt0_gtrxreset_in(gt0_gtrxreset_in),
        .gt0_gtsouthrefclk0_in(gt0_gtsouthrefclk0_in),
        .gt0_gtsouthrefclk1_in(gt0_gtsouthrefclk1_in),
        .gt0_gttxreset_in(gt0_gttxreset_in),
        .gt0_gtxrxn_in(gt0_gtxrxn_in),
        .gt0_gtxrxp_in(gt0_gtxrxp_in),
        .gt0_gtxtxn_out(gt0_gtxtxn_out),
        .gt0_gtxtxp_out(gt0_gtxtxp_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rx_fsm_reset_done_out(gt0_rx_fsm_reset_done_out),
        .gt0_rxdata_out(gt0_rxdata_out),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxoutclk_out(gt0_rxoutclk_out),
        .gt0_rxoutclkfabric_out(gt0_rxoutclkfabric_out),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxuserrdy_in(gt0_rxuserrdy_in),
        .gt0_rxusrclk2_in(gt0_rxusrclk2_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_tx_fsm_reset_done_out(gt0_tx_fsm_reset_done_out),
        .gt0_txdata_in(gt0_txdata_in),
        .gt0_txoutclk_out(gt0_txoutclk_out),
        .gt0_txoutclkfabric_out(gt0_txoutclkfabric_out),
        .gt0_txoutclkpcs_out(gt0_txoutclkpcs_out),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txuserrdy_in(gt0_txuserrdy_in),
        .gt0_txusrclk2_in(gt0_txusrclk2_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_cpllfbclklost_out(gt1_cpllfbclklost_out),
        .gt1_cplllock_out(gt1_cplllock_out),
        .gt1_cplllockdetclk_in(gt1_cplllockdetclk_in),
        .gt1_cpllreset_in(gt1_cpllreset_in),
        .gt1_data_valid_in(gt1_data_valid_in),
        .gt1_dmonitorout_out(gt1_dmonitorout_out),
        .gt1_drpaddr_in(gt1_drpaddr_in),
        .gt1_drpclk_in(gt1_drpclk_in),
        .gt1_drpdi_in(gt1_drpdi_in),
        .gt1_drpdo_out(gt1_drpdo_out),
        .gt1_drpen_in(gt1_drpen_in),
        .gt1_drprdy_out(gt1_drprdy_out),
        .gt1_drpwe_in(gt1_drpwe_in),
        .gt1_eyescandataerror_out(gt1_eyescandataerror_out),
        .gt1_eyescanreset_in(gt1_eyescanreset_in),
        .gt1_eyescantrigger_in(gt1_eyescantrigger_in),
        .gt1_gtnorthrefclk0_in(gt1_gtnorthrefclk0_in),
        .gt1_gtnorthrefclk1_in(gt1_gtnorthrefclk1_in),
        .gt1_gtrefclk0_in(gt1_gtrefclk0_in),
        .gt1_gtrefclk1_in(gt1_gtrefclk1_in),
        .gt1_gtrxreset_in(gt1_gtrxreset_in),
        .gt1_gtsouthrefclk0_in(gt1_gtsouthrefclk0_in),
        .gt1_gtsouthrefclk1_in(gt1_gtsouthrefclk1_in),
        .gt1_gttxreset_in(gt1_gttxreset_in),
        .gt1_gtxrxn_in(gt1_gtxrxn_in),
        .gt1_gtxrxp_in(gt1_gtxrxp_in),
        .gt1_gtxtxn_out(gt1_gtxtxn_out),
        .gt1_gtxtxp_out(gt1_gtxtxp_out),
        .gt1_rx_fsm_reset_done_out(gt1_rx_fsm_reset_done_out),
        .gt1_rxdata_out(gt1_rxdata_out),
        .gt1_rxdfelpmreset_in(gt1_rxdfelpmreset_in),
        .gt1_rxmonitorout_out(gt1_rxmonitorout_out),
        .gt1_rxmonitorsel_in(gt1_rxmonitorsel_in),
        .gt1_rxoutclk_out(gt1_rxoutclk_out),
        .gt1_rxoutclkfabric_out(gt1_rxoutclkfabric_out),
        .gt1_rxpmareset_in(gt1_rxpmareset_in),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxuserrdy_in(gt1_rxuserrdy_in),
        .gt1_rxusrclk2_in(gt1_rxusrclk2_in),
        .gt1_rxusrclk_in(gt1_rxusrclk_in),
        .gt1_tx_fsm_reset_done_out(gt1_tx_fsm_reset_done_out),
        .gt1_txdata_in(gt1_txdata_in),
        .gt1_txoutclk_out(gt1_txoutclk_out),
        .gt1_txoutclkfabric_out(gt1_txoutclkfabric_out),
        .gt1_txoutclkpcs_out(gt1_txoutclkpcs_out),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt1_txuserrdy_in(gt1_txuserrdy_in),
        .gt1_txusrclk2_in(gt1_txusrclk2_in),
        .gt1_txusrclk_in(gt1_txusrclk_in),
        .gt2_cpllfbclklost_out(gt2_cpllfbclklost_out),
        .gt2_cplllock_out(gt2_cplllock_out),
        .gt2_cplllockdetclk_in(gt2_cplllockdetclk_in),
        .gt2_cpllreset_in(gt2_cpllreset_in),
        .gt2_data_valid_in(gt2_data_valid_in),
        .gt2_dmonitorout_out(gt2_dmonitorout_out),
        .gt2_drpaddr_in(gt2_drpaddr_in),
        .gt2_drpclk_in(gt2_drpclk_in),
        .gt2_drpdi_in(gt2_drpdi_in),
        .gt2_drpdo_out(gt2_drpdo_out),
        .gt2_drpen_in(gt2_drpen_in),
        .gt2_drprdy_out(gt2_drprdy_out),
        .gt2_drpwe_in(gt2_drpwe_in),
        .gt2_eyescandataerror_out(gt2_eyescandataerror_out),
        .gt2_eyescanreset_in(gt2_eyescanreset_in),
        .gt2_eyescantrigger_in(gt2_eyescantrigger_in),
        .gt2_gtnorthrefclk0_in(gt2_gtnorthrefclk0_in),
        .gt2_gtnorthrefclk1_in(gt2_gtnorthrefclk1_in),
        .gt2_gtrefclk0_in(gt2_gtrefclk0_in),
        .gt2_gtrefclk1_in(gt2_gtrefclk1_in),
        .gt2_gtrxreset_in(gt2_gtrxreset_in),
        .gt2_gtsouthrefclk0_in(gt2_gtsouthrefclk0_in),
        .gt2_gtsouthrefclk1_in(gt2_gtsouthrefclk1_in),
        .gt2_gttxreset_in(gt2_gttxreset_in),
        .gt2_gtxrxn_in(gt2_gtxrxn_in),
        .gt2_gtxrxp_in(gt2_gtxrxp_in),
        .gt2_gtxtxn_out(gt2_gtxtxn_out),
        .gt2_gtxtxp_out(gt2_gtxtxp_out),
        .gt2_rx_fsm_reset_done_out(gt2_rx_fsm_reset_done_out),
        .gt2_rxdata_out(gt2_rxdata_out),
        .gt2_rxdfelpmreset_in(gt2_rxdfelpmreset_in),
        .gt2_rxmonitorout_out(gt2_rxmonitorout_out),
        .gt2_rxmonitorsel_in(gt2_rxmonitorsel_in),
        .gt2_rxoutclk_out(gt2_rxoutclk_out),
        .gt2_rxoutclkfabric_out(gt2_rxoutclkfabric_out),
        .gt2_rxpmareset_in(gt2_rxpmareset_in),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxuserrdy_in(gt2_rxuserrdy_in),
        .gt2_rxusrclk2_in(gt2_rxusrclk2_in),
        .gt2_rxusrclk_in(gt2_rxusrclk_in),
        .gt2_tx_fsm_reset_done_out(gt2_tx_fsm_reset_done_out),
        .gt2_txdata_in(gt2_txdata_in),
        .gt2_txoutclk_out(gt2_txoutclk_out),
        .gt2_txoutclkfabric_out(gt2_txoutclkfabric_out),
        .gt2_txoutclkpcs_out(gt2_txoutclkpcs_out),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt2_txuserrdy_in(gt2_txuserrdy_in),
        .gt2_txusrclk2_in(gt2_txusrclk2_in),
        .gt2_txusrclk_in(gt2_txusrclk_in),
        .gt3_cpllfbclklost_out(gt3_cpllfbclklost_out),
        .gt3_cplllock_out(gt3_cplllock_out),
        .gt3_cplllockdetclk_in(gt3_cplllockdetclk_in),
        .gt3_cpllreset_in(gt3_cpllreset_in),
        .gt3_data_valid_in(gt3_data_valid_in),
        .gt3_dmonitorout_out(gt3_dmonitorout_out),
        .gt3_drpaddr_in(gt3_drpaddr_in),
        .gt3_drpclk_in(gt3_drpclk_in),
        .gt3_drpdi_in(gt3_drpdi_in),
        .gt3_drpdo_out(gt3_drpdo_out),
        .gt3_drpen_in(gt3_drpen_in),
        .gt3_drprdy_out(gt3_drprdy_out),
        .gt3_drpwe_in(gt3_drpwe_in),
        .gt3_eyescandataerror_out(gt3_eyescandataerror_out),
        .gt3_eyescanreset_in(gt3_eyescanreset_in),
        .gt3_eyescantrigger_in(gt3_eyescantrigger_in),
        .gt3_gtnorthrefclk0_in(gt3_gtnorthrefclk0_in),
        .gt3_gtnorthrefclk1_in(gt3_gtnorthrefclk1_in),
        .gt3_gtrefclk0_in(gt3_gtrefclk0_in),
        .gt3_gtrefclk1_in(gt3_gtrefclk1_in),
        .gt3_gtrxreset_in(gt3_gtrxreset_in),
        .gt3_gtsouthrefclk0_in(gt3_gtsouthrefclk0_in),
        .gt3_gtsouthrefclk1_in(gt3_gtsouthrefclk1_in),
        .gt3_gttxreset_in(gt3_gttxreset_in),
        .gt3_gtxrxn_in(gt3_gtxrxn_in),
        .gt3_gtxrxp_in(gt3_gtxrxp_in),
        .gt3_gtxtxn_out(gt3_gtxtxn_out),
        .gt3_gtxtxp_out(gt3_gtxtxp_out),
        .gt3_rx_fsm_reset_done_out(gt3_rx_fsm_reset_done_out),
        .gt3_rxdata_out(gt3_rxdata_out),
        .gt3_rxdfelpmreset_in(gt3_rxdfelpmreset_in),
        .gt3_rxmonitorout_out(gt3_rxmonitorout_out),
        .gt3_rxmonitorsel_in(gt3_rxmonitorsel_in),
        .gt3_rxoutclk_out(gt3_rxoutclk_out),
        .gt3_rxoutclkfabric_out(gt3_rxoutclkfabric_out),
        .gt3_rxpmareset_in(gt3_rxpmareset_in),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxuserrdy_in(gt3_rxuserrdy_in),
        .gt3_rxusrclk2_in(gt3_rxusrclk2_in),
        .gt3_rxusrclk_in(gt3_rxusrclk_in),
        .gt3_tx_fsm_reset_done_out(gt3_tx_fsm_reset_done_out),
        .gt3_txdata_in(gt3_txdata_in),
        .gt3_txoutclk_out(gt3_txoutclk_out),
        .gt3_txoutclkfabric_out(gt3_txoutclkfabric_out),
        .gt3_txoutclkpcs_out(gt3_txoutclkpcs_out),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt3_txuserrdy_in(gt3_txuserrdy_in),
        .gt3_txusrclk2_in(gt3_txusrclk2_in),
        .gt3_txusrclk_in(gt3_txusrclk_in),
        .soft_reset_rx_in(soft_reset_rx_in),
        .soft_reset_tx_in(soft_reset_tx_in),
        .sysclk_in(sysclk_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_GT" *) 
module gtwizard_4_channel_gtwizard_4_channel_GT
   (gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_cpllrefclklost_i,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_rxresetdone_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_txresetdone_out,
    gt0_drpdo_out,
    gt0_rxdata_out,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    gt0_cplllockdetclk_in,
    gt0_cpllpd_i,
    gt0_cpllreset_i_0,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    SR,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_gttxreset_i,
    gt0_gtxrxn_in,
    gt0_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt0_rxdfelfhold_i,
    gt0_rxdfelpmreset_in,
    gt0_rxpmareset_in,
    gt0_rxuserrdy_i,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_txuserrdy_i,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    gt0_txdata_in,
    gt0_drpaddr_in);
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  output gt0_cpllrefclklost_i;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  output gt0_rxresetdone_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  output gt0_txresetdone_out;
  output [15:0]gt0_drpdo_out;
  output [31:0]gt0_rxdata_out;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  input gt0_cplllockdetclk_in;
  input gt0_cpllpd_i;
  input gt0_cpllreset_i_0;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gt0_gtnorthrefclk0_in;
  input gt0_gtnorthrefclk1_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input [0:0]SR;
  input gt0_gtsouthrefclk0_in;
  input gt0_gtsouthrefclk1_in;
  input gt0_gttxreset_i;
  input gt0_gtxrxn_in;
  input gt0_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt0_rxdfelfhold_i;
  input gt0_rxdfelpmreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxuserrdy_i;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  input gt0_txuserrdy_i;
  input gt0_txusrclk_in;
  input gt0_txusrclk2_in;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [31:0]gt0_txdata_in;
  input [8:0]gt0_drpaddr_in;

  wire [0:0]SR;
  wire gt0_cpllfbclklost_out;
  wire gt0_cplllock_out;
  wire gt0_cplllockdetclk_in;
  wire gt0_cpllpd_i;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_i_0;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtnorthrefclk0_in;
  wire gt0_gtnorthrefclk1_in;
  wire gt0_gtrefclk0_in;
  wire gt0_gtrefclk1_in;
  wire gt0_gtsouthrefclk0_in;
  wire gt0_gtsouthrefclk1_in;
  wire gt0_gttxreset_i;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire [31:0]gt0_rxdata_out;
  wire gt0_rxdfelfhold_i;
  wire gt0_rxdfelpmreset_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire gt0_rxoutclk_out;
  wire gt0_rxoutclkfabric_out;
  wire gt0_rxpmareset_in;
  wire gt0_rxresetdone_out;
  wire gt0_rxuserrdy_i;
  wire gt0_rxusrclk2_in;
  wire gt0_rxusrclk_in;
  wire [31:0]gt0_txdata_in;
  wire gt0_txoutclk_out;
  wire gt0_txoutclkfabric_out;
  wire gt0_txoutclkpcs_out;
  wire gt0_txresetdone_out;
  wire gt0_txuserrdy_i;
  wire gt0_txusrclk2_in;
  wire gt0_txusrclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMMADET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXPRBSERR_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXBUFSTATUS_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("ENCODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(19),
    .CLK_COR_MIN_LAT(15),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(4),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("FALSE"),
    .DEC_PCOMMA_DETECT("FALSE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF40100020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(32),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("FALSE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b010),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(32),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gt0_cpllfbclklost_out),
        .CPLLLOCK(gt0_cplllock_out),
        .CPLLLOCKDETCLK(gt0_cplllockdetclk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(gt0_cpllpd_i),
        .CPLLREFCLKLOST(gt0_cpllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b1,1'b0}),
        .CPLLRESET(gt0_cpllreset_i_0),
        .DMONITOROUT(gt0_dmonitorout_out),
        .DRPADDR(gt0_drpaddr_in),
        .DRPCLK(gt0_drpclk_in),
        .DRPDI(gt0_drpdi_in),
        .DRPDO(gt0_drpdo_out),
        .DRPEN(gt0_drpen_in),
        .DRPRDY(gt0_drprdy_out),
        .DRPWE(gt0_drpwe_in),
        .EYESCANDATAERROR(gt0_eyescandataerror_out),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(gt0_eyescanreset_in),
        .EYESCANTRIGGER(gt0_eyescantrigger_in),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(gt0_gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gt0_gtnorthrefclk1_in),
        .GTREFCLK0(gt0_gtrefclk0_in),
        .GTREFCLK1(gt0_gtrefclk1_in),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(SR),
        .GTSOUTHREFCLK0(gt0_gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gt0_gtsouthrefclk1_in),
        .GTTXRESET(gt0_gttxreset_i),
        .GTXRXN(gt0_gtxrxn_in),
        .GTXRXP(gt0_gtxrxp_in),
        .GTXTXN(gt0_gtxtxn_out),
        .GTXTXP(gt0_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b0),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS(NLW_gtxe2_i_RXBUFSTATUS_UNCONNECTED[2:0]),
        .RXBYTEISALIGNED(NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED),
        .RXBYTEREALIGN(NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA(NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:0]),
        .RXCHARISK(NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:0]),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(NLW_gtxe2_i_RXCOMMADET_UNCONNECTED),
        .RXCOMMADETEN(1'b0),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt0_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(gt0_rxdfelfhold_i),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(gt0_rxdfelfhold_i),
        .RXDFELFOVRDEN(1'b1),
        .RXDFELPMRESET(gt0_rxdfelpmreset_in),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR(NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:0]),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(1'b0),
        .RXMONITOROUT(gt0_rxmonitorout_out),
        .RXMONITORSEL(gt0_rxmonitorsel_in),
        .RXNOTINTABLE(NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:0]),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gt0_rxoutclk_out),
        .RXOUTCLKFABRIC(gt0_rxoutclkfabric_out),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(1'b0),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(gt0_rxpmareset_in),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(NLW_gtxe2_i_RXPRBSERR_UNCONNECTED),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt0_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt0_rxuserrdy_i),
        .RXUSRCLK(gt0_rxusrclk_in),
        .RXUSRCLK2(gt0_rxusrclk2_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b0),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS(NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED[1:0]),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt0_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gt0_txoutclk_out),
        .TXOUTCLKFABRIC(gt0_txoutclkfabric_out),
        .TXOUTCLKPCS(gt0_txoutclkpcs_out),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt0_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt0_txuserrdy_i),
        .TXUSRCLK(gt0_txusrclk_in),
        .TXUSRCLK2(gt0_txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_GT" *) 
module gtwizard_4_channel_gtwizard_4_channel_GT_6
   (gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_cpllrefclklost_i,
    gt1_drprdy_out,
    gt1_eyescandataerror_out,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_rxresetdone_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_txresetdone_out,
    gt1_drpdo_out,
    gt1_rxdata_out,
    gt1_rxmonitorout_out,
    gt1_dmonitorout_out,
    gt1_cplllockdetclk_in,
    gt0_cpllpd_i,
    gt1_cpllreset_i_1,
    gt1_drpclk_in,
    gt1_drpen_in,
    gt1_drpwe_in,
    gt1_eyescanreset_in,
    gt1_eyescantrigger_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    gt1_cpllfbclklost_out_0,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_gttxreset_i,
    gt1_gtxrxn_in,
    gt1_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt1_rxdfelfhold_i,
    gt1_rxdfelpmreset_in,
    gt1_rxpmareset_in,
    gt1_rxuserrdy_i,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_txuserrdy_i,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_drpdi_in,
    gt1_rxmonitorsel_in,
    gt1_txdata_in,
    gt1_drpaddr_in);
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  output gt1_cpllrefclklost_i;
  output gt1_drprdy_out;
  output gt1_eyescandataerror_out;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  output gt1_rxresetdone_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  output gt1_txresetdone_out;
  output [15:0]gt1_drpdo_out;
  output [31:0]gt1_rxdata_out;
  output [6:0]gt1_rxmonitorout_out;
  output [7:0]gt1_dmonitorout_out;
  input gt1_cplllockdetclk_in;
  input gt0_cpllpd_i;
  input gt1_cpllreset_i_1;
  input gt1_drpclk_in;
  input gt1_drpen_in;
  input gt1_drpwe_in;
  input gt1_eyescanreset_in;
  input gt1_eyescantrigger_in;
  input gt1_gtnorthrefclk0_in;
  input gt1_gtnorthrefclk1_in;
  input gt1_gtrefclk0_in;
  input gt1_gtrefclk1_in;
  input [0:0]gt1_cpllfbclklost_out_0;
  input gt1_gtsouthrefclk0_in;
  input gt1_gtsouthrefclk1_in;
  input gt1_gttxreset_i;
  input gt1_gtxrxn_in;
  input gt1_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt1_rxdfelfhold_i;
  input gt1_rxdfelpmreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxuserrdy_i;
  input gt1_rxusrclk_in;
  input gt1_rxusrclk2_in;
  input gt1_txuserrdy_i;
  input gt1_txusrclk_in;
  input gt1_txusrclk2_in;
  input [15:0]gt1_drpdi_in;
  input [1:0]gt1_rxmonitorsel_in;
  input [31:0]gt1_txdata_in;
  input [8:0]gt1_drpaddr_in;

  wire gt0_cpllpd_i;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt1_cpllfbclklost_out;
  wire [0:0]gt1_cpllfbclklost_out_0;
  wire gt1_cplllock_out;
  wire gt1_cplllockdetclk_in;
  wire gt1_cpllrefclklost_i;
  wire gt1_cpllreset_i_1;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr_in;
  wire gt1_drpclk_in;
  wire [15:0]gt1_drpdi_in;
  wire [15:0]gt1_drpdo_out;
  wire gt1_drpen_in;
  wire gt1_drprdy_out;
  wire gt1_drpwe_in;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire gt1_gtnorthrefclk0_in;
  wire gt1_gtnorthrefclk1_in;
  wire gt1_gtrefclk0_in;
  wire gt1_gtrefclk1_in;
  wire gt1_gtsouthrefclk0_in;
  wire gt1_gtsouthrefclk1_in;
  wire gt1_gttxreset_i;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire [31:0]gt1_rxdata_out;
  wire gt1_rxdfelfhold_i;
  wire gt1_rxdfelpmreset_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire gt1_rxoutclk_out;
  wire gt1_rxoutclkfabric_out;
  wire gt1_rxpmareset_in;
  wire gt1_rxresetdone_out;
  wire gt1_rxuserrdy_i;
  wire gt1_rxusrclk2_in;
  wire gt1_rxusrclk_in;
  wire [31:0]gt1_txdata_in;
  wire gt1_txoutclk_out;
  wire gt1_txoutclkfabric_out;
  wire gt1_txoutclkpcs_out;
  wire gt1_txresetdone_out;
  wire gt1_txuserrdy_i;
  wire gt1_txusrclk2_in;
  wire gt1_txusrclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMMADET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXPRBSERR_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXBUFSTATUS_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("ENCODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(19),
    .CLK_COR_MIN_LAT(15),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(4),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("FALSE"),
    .DEC_PCOMMA_DETECT("FALSE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF40100020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(32),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("FALSE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b010),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(32),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gt1_cpllfbclklost_out),
        .CPLLLOCK(gt1_cplllock_out),
        .CPLLLOCKDETCLK(gt1_cplllockdetclk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(gt0_cpllpd_i),
        .CPLLREFCLKLOST(gt1_cpllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b1,1'b0}),
        .CPLLRESET(gt1_cpllreset_i_1),
        .DMONITOROUT(gt1_dmonitorout_out),
        .DRPADDR(gt1_drpaddr_in),
        .DRPCLK(gt1_drpclk_in),
        .DRPDI(gt1_drpdi_in),
        .DRPDO(gt1_drpdo_out),
        .DRPEN(gt1_drpen_in),
        .DRPRDY(gt1_drprdy_out),
        .DRPWE(gt1_drpwe_in),
        .EYESCANDATAERROR(gt1_eyescandataerror_out),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(gt1_eyescanreset_in),
        .EYESCANTRIGGER(gt1_eyescantrigger_in),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(gt1_gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gt1_gtnorthrefclk1_in),
        .GTREFCLK0(gt1_gtrefclk0_in),
        .GTREFCLK1(gt1_gtrefclk1_in),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt1_cpllfbclklost_out_0),
        .GTSOUTHREFCLK0(gt1_gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gt1_gtsouthrefclk1_in),
        .GTTXRESET(gt1_gttxreset_i),
        .GTXRXN(gt1_gtxrxn_in),
        .GTXRXP(gt1_gtxrxp_in),
        .GTXTXN(gt1_gtxtxn_out),
        .GTXTXP(gt1_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b0),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS(NLW_gtxe2_i_RXBUFSTATUS_UNCONNECTED[2:0]),
        .RXBYTEISALIGNED(NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED),
        .RXBYTEREALIGN(NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA(NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:0]),
        .RXCHARISK(NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:0]),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(NLW_gtxe2_i_RXCOMMADET_UNCONNECTED),
        .RXCOMMADETEN(1'b0),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt1_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(gt1_rxdfelfhold_i),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(gt1_rxdfelfhold_i),
        .RXDFELFOVRDEN(1'b1),
        .RXDFELPMRESET(gt1_rxdfelpmreset_in),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR(NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:0]),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(1'b0),
        .RXMONITOROUT(gt1_rxmonitorout_out),
        .RXMONITORSEL(gt1_rxmonitorsel_in),
        .RXNOTINTABLE(NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:0]),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gt1_rxoutclk_out),
        .RXOUTCLKFABRIC(gt1_rxoutclkfabric_out),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(1'b0),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(gt1_rxpmareset_in),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(NLW_gtxe2_i_RXPRBSERR_UNCONNECTED),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt1_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt1_rxuserrdy_i),
        .RXUSRCLK(gt1_rxusrclk_in),
        .RXUSRCLK2(gt1_rxusrclk2_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b0),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS(NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED[1:0]),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt1_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gt1_txoutclk_out),
        .TXOUTCLKFABRIC(gt1_txoutclkfabric_out),
        .TXOUTCLKPCS(gt1_txoutclkpcs_out),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt1_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt1_txuserrdy_i),
        .TXUSRCLK(gt1_txusrclk_in),
        .TXUSRCLK2(gt1_txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_GT" *) 
module gtwizard_4_channel_gtwizard_4_channel_GT_7
   (gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_cpllrefclklost_i,
    gt2_drprdy_out,
    gt2_eyescandataerror_out,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_rxresetdone_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_txresetdone_out,
    gt2_drpdo_out,
    gt2_rxdata_out,
    gt2_rxmonitorout_out,
    gt2_dmonitorout_out,
    gt2_cplllockdetclk_in,
    gt0_cpllpd_i,
    gt2_cpllreset_i_2,
    gt2_drpclk_in,
    gt2_drpen_in,
    gt2_drpwe_in,
    gt2_eyescanreset_in,
    gt2_eyescantrigger_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    gt2_cpllfbclklost_out_0,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_gttxreset_i,
    gt2_gtxrxn_in,
    gt2_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt2_rxdfelfhold_i,
    gt2_rxdfelpmreset_in,
    gt2_rxpmareset_in,
    gt2_rxuserrdy_i,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_txuserrdy_i,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_drpdi_in,
    gt2_rxmonitorsel_in,
    gt2_txdata_in,
    gt2_drpaddr_in);
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  output gt2_cpllrefclklost_i;
  output gt2_drprdy_out;
  output gt2_eyescandataerror_out;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  output gt2_rxresetdone_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  output gt2_txresetdone_out;
  output [15:0]gt2_drpdo_out;
  output [31:0]gt2_rxdata_out;
  output [6:0]gt2_rxmonitorout_out;
  output [7:0]gt2_dmonitorout_out;
  input gt2_cplllockdetclk_in;
  input gt0_cpllpd_i;
  input gt2_cpllreset_i_2;
  input gt2_drpclk_in;
  input gt2_drpen_in;
  input gt2_drpwe_in;
  input gt2_eyescanreset_in;
  input gt2_eyescantrigger_in;
  input gt2_gtnorthrefclk0_in;
  input gt2_gtnorthrefclk1_in;
  input gt2_gtrefclk0_in;
  input gt2_gtrefclk1_in;
  input [0:0]gt2_cpllfbclklost_out_0;
  input gt2_gtsouthrefclk0_in;
  input gt2_gtsouthrefclk1_in;
  input gt2_gttxreset_i;
  input gt2_gtxrxn_in;
  input gt2_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt2_rxdfelfhold_i;
  input gt2_rxdfelpmreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxuserrdy_i;
  input gt2_rxusrclk_in;
  input gt2_rxusrclk2_in;
  input gt2_txuserrdy_i;
  input gt2_txusrclk_in;
  input gt2_txusrclk2_in;
  input [15:0]gt2_drpdi_in;
  input [1:0]gt2_rxmonitorsel_in;
  input [31:0]gt2_txdata_in;
  input [8:0]gt2_drpaddr_in;

  wire gt0_cpllpd_i;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt2_cpllfbclklost_out;
  wire [0:0]gt2_cpllfbclklost_out_0;
  wire gt2_cplllock_out;
  wire gt2_cplllockdetclk_in;
  wire gt2_cpllrefclklost_i;
  wire gt2_cpllreset_i_2;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr_in;
  wire gt2_drpclk_in;
  wire [15:0]gt2_drpdi_in;
  wire [15:0]gt2_drpdo_out;
  wire gt2_drpen_in;
  wire gt2_drprdy_out;
  wire gt2_drpwe_in;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire gt2_gtnorthrefclk0_in;
  wire gt2_gtnorthrefclk1_in;
  wire gt2_gtrefclk0_in;
  wire gt2_gtrefclk1_in;
  wire gt2_gtsouthrefclk0_in;
  wire gt2_gtsouthrefclk1_in;
  wire gt2_gttxreset_i;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [31:0]gt2_rxdata_out;
  wire gt2_rxdfelfhold_i;
  wire gt2_rxdfelpmreset_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire gt2_rxoutclk_out;
  wire gt2_rxoutclkfabric_out;
  wire gt2_rxpmareset_in;
  wire gt2_rxresetdone_out;
  wire gt2_rxuserrdy_i;
  wire gt2_rxusrclk2_in;
  wire gt2_rxusrclk_in;
  wire [31:0]gt2_txdata_in;
  wire gt2_txoutclk_out;
  wire gt2_txoutclkfabric_out;
  wire gt2_txoutclkpcs_out;
  wire gt2_txresetdone_out;
  wire gt2_txuserrdy_i;
  wire gt2_txusrclk2_in;
  wire gt2_txusrclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMMADET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXPRBSERR_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXBUFSTATUS_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("ENCODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(19),
    .CLK_COR_MIN_LAT(15),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(4),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("FALSE"),
    .DEC_PCOMMA_DETECT("FALSE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF40100020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(32),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("FALSE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b010),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(32),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gt2_cpllfbclklost_out),
        .CPLLLOCK(gt2_cplllock_out),
        .CPLLLOCKDETCLK(gt2_cplllockdetclk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(gt0_cpllpd_i),
        .CPLLREFCLKLOST(gt2_cpllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b1,1'b0}),
        .CPLLRESET(gt2_cpllreset_i_2),
        .DMONITOROUT(gt2_dmonitorout_out),
        .DRPADDR(gt2_drpaddr_in),
        .DRPCLK(gt2_drpclk_in),
        .DRPDI(gt2_drpdi_in),
        .DRPDO(gt2_drpdo_out),
        .DRPEN(gt2_drpen_in),
        .DRPRDY(gt2_drprdy_out),
        .DRPWE(gt2_drpwe_in),
        .EYESCANDATAERROR(gt2_eyescandataerror_out),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(gt2_eyescanreset_in),
        .EYESCANTRIGGER(gt2_eyescantrigger_in),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(gt2_gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gt2_gtnorthrefclk1_in),
        .GTREFCLK0(gt2_gtrefclk0_in),
        .GTREFCLK1(gt2_gtrefclk1_in),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt2_cpllfbclklost_out_0),
        .GTSOUTHREFCLK0(gt2_gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gt2_gtsouthrefclk1_in),
        .GTTXRESET(gt2_gttxreset_i),
        .GTXRXN(gt2_gtxrxn_in),
        .GTXRXP(gt2_gtxrxp_in),
        .GTXTXN(gt2_gtxtxn_out),
        .GTXTXP(gt2_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b0),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS(NLW_gtxe2_i_RXBUFSTATUS_UNCONNECTED[2:0]),
        .RXBYTEISALIGNED(NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED),
        .RXBYTEREALIGN(NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA(NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:0]),
        .RXCHARISK(NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:0]),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(NLW_gtxe2_i_RXCOMMADET_UNCONNECTED),
        .RXCOMMADETEN(1'b0),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt2_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(gt2_rxdfelfhold_i),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(gt2_rxdfelfhold_i),
        .RXDFELFOVRDEN(1'b1),
        .RXDFELPMRESET(gt2_rxdfelpmreset_in),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR(NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:0]),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(1'b0),
        .RXMONITOROUT(gt2_rxmonitorout_out),
        .RXMONITORSEL(gt2_rxmonitorsel_in),
        .RXNOTINTABLE(NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:0]),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gt2_rxoutclk_out),
        .RXOUTCLKFABRIC(gt2_rxoutclkfabric_out),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(1'b0),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(gt2_rxpmareset_in),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(NLW_gtxe2_i_RXPRBSERR_UNCONNECTED),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt2_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt2_rxuserrdy_i),
        .RXUSRCLK(gt2_rxusrclk_in),
        .RXUSRCLK2(gt2_rxusrclk2_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b0),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS(NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED[1:0]),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt2_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gt2_txoutclk_out),
        .TXOUTCLKFABRIC(gt2_txoutclkfabric_out),
        .TXOUTCLKPCS(gt2_txoutclkpcs_out),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt2_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt2_txuserrdy_i),
        .TXUSRCLK(gt2_txusrclk_in),
        .TXUSRCLK2(gt2_txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_GT" *) 
module gtwizard_4_channel_gtwizard_4_channel_GT_8
   (gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_cpllrefclklost_i,
    gt3_drprdy_out,
    gt3_eyescandataerror_out,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_rxresetdone_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_txresetdone_out,
    gt3_drpdo_out,
    gt3_rxdata_out,
    gt3_rxmonitorout_out,
    gt3_dmonitorout_out,
    gt3_cplllockdetclk_in,
    gt0_cpllpd_i,
    gt3_cpllreset_i_3,
    gt3_drpclk_in,
    gt3_drpen_in,
    gt3_drpwe_in,
    gt3_eyescanreset_in,
    gt3_eyescantrigger_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    gt3_cpllfbclklost_out_0,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_gttxreset_i,
    gt3_gtxrxn_in,
    gt3_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt3_rxdfelfhold_i,
    gt3_rxdfelpmreset_in,
    gt3_rxpmareset_in,
    gt3_rxuserrdy_i,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_txuserrdy_i,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_drpdi_in,
    gt3_rxmonitorsel_in,
    gt3_txdata_in,
    gt3_drpaddr_in);
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  output gt3_cpllrefclklost_i;
  output gt3_drprdy_out;
  output gt3_eyescandataerror_out;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  output gt3_rxresetdone_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  output gt3_txresetdone_out;
  output [15:0]gt3_drpdo_out;
  output [31:0]gt3_rxdata_out;
  output [6:0]gt3_rxmonitorout_out;
  output [7:0]gt3_dmonitorout_out;
  input gt3_cplllockdetclk_in;
  input gt0_cpllpd_i;
  input gt3_cpllreset_i_3;
  input gt3_drpclk_in;
  input gt3_drpen_in;
  input gt3_drpwe_in;
  input gt3_eyescanreset_in;
  input gt3_eyescantrigger_in;
  input gt3_gtnorthrefclk0_in;
  input gt3_gtnorthrefclk1_in;
  input gt3_gtrefclk0_in;
  input gt3_gtrefclk1_in;
  input [0:0]gt3_cpllfbclklost_out_0;
  input gt3_gtsouthrefclk0_in;
  input gt3_gtsouthrefclk1_in;
  input gt3_gttxreset_i;
  input gt3_gtxrxn_in;
  input gt3_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt3_rxdfelfhold_i;
  input gt3_rxdfelpmreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxuserrdy_i;
  input gt3_rxusrclk_in;
  input gt3_rxusrclk2_in;
  input gt3_txuserrdy_i;
  input gt3_txusrclk_in;
  input gt3_txusrclk2_in;
  input [15:0]gt3_drpdi_in;
  input [1:0]gt3_rxmonitorsel_in;
  input [31:0]gt3_txdata_in;
  input [8:0]gt3_drpaddr_in;

  wire gt0_cpllpd_i;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire gt3_cpllfbclklost_out;
  wire [0:0]gt3_cpllfbclklost_out_0;
  wire gt3_cplllock_out;
  wire gt3_cplllockdetclk_in;
  wire gt3_cpllrefclklost_i;
  wire gt3_cpllreset_i_3;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr_in;
  wire gt3_drpclk_in;
  wire [15:0]gt3_drpdi_in;
  wire [15:0]gt3_drpdo_out;
  wire gt3_drpen_in;
  wire gt3_drprdy_out;
  wire gt3_drpwe_in;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire gt3_gtnorthrefclk0_in;
  wire gt3_gtnorthrefclk1_in;
  wire gt3_gtrefclk0_in;
  wire gt3_gtrefclk1_in;
  wire gt3_gtsouthrefclk0_in;
  wire gt3_gtsouthrefclk1_in;
  wire gt3_gttxreset_i;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [31:0]gt3_rxdata_out;
  wire gt3_rxdfelfhold_i;
  wire gt3_rxdfelpmreset_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire gt3_rxoutclk_out;
  wire gt3_rxoutclkfabric_out;
  wire gt3_rxpmareset_in;
  wire gt3_rxresetdone_out;
  wire gt3_rxuserrdy_i;
  wire gt3_rxusrclk2_in;
  wire gt3_rxusrclk_in;
  wire [31:0]gt3_txdata_in;
  wire gt3_txoutclk_out;
  wire gt3_txoutclkfabric_out;
  wire gt3_txoutclkpcs_out;
  wire gt3_txresetdone_out;
  wire gt3_txuserrdy_i;
  wire gt3_txusrclk2_in;
  wire gt3_txusrclk_in;
  wire NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED;
  wire NLW_gtxe2_i_PHYSTATUS_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED;
  wire NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMMADET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED;
  wire NLW_gtxe2_i_RXDATAVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXELECIDLE_UNCONNECTED;
  wire NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED;
  wire NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED;
  wire NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXPRBSERR_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_RXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_RXRATEDONE_UNCONNECTED;
  wire NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED;
  wire NLW_gtxe2_i_RXVALID_UNCONNECTED;
  wire NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED;
  wire NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENN_UNCONNECTED;
  wire NLW_gtxe2_i_TXQPISENP_UNCONNECTED;
  wire NLW_gtxe2_i_TXRATEDONE_UNCONNECTED;
  wire [15:0]NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXBUFSTATUS_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXCHARISK_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXCHBONDO_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED;
  wire [63:32]NLW_gtxe2_i_RXDATA_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXDISPERR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXHEADER_UNCONNECTED;
  wire [7:0]NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED;
  wire [4:0]NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED;
  wire [2:0]NLW_gtxe2_i_RXSTATUS_UNCONNECTED;
  wire [9:0]NLW_gtxe2_i_TSTOUT_UNCONNECTED;
  wire [1:0]NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  GTXE2_CHANNEL #(
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(1),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .CBCC_DATA_SOURCE_SEL("ENCODED"),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CLK_CORRECT_USE("FALSE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(19),
    .CLK_COR_MIN_LAT(15),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0100000000),
    .CLK_COR_SEQ_1_2(10'b0000000000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0100000000),
    .CLK_COR_SEQ_2_2(10'b0000000000),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("FALSE"),
    .CLK_COR_SEQ_LEN(1),
    .CPLL_CFG(24'hBC07DC),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(4),
    .CPLL_INIT_CFG(24'h00001E),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .DEC_MCOMMA_DETECT("FALSE"),
    .DEC_PCOMMA_DETECT("FALSE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DMONITOR_CFG(24'h000A00),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("TRUE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PMA_CFG(10'b0000000000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER(80'h00000000000000000000),
    .ES_QUAL_MASK(80'h00000000000000000000),
    .ES_SDATA_MASK(80'h00000000000000000000),
    .ES_VERT_OFFSET(9'b000000000),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(3'b000),
    .IS_CPLLLOCKDETCLK_INVERTED(1'b0),
    .IS_DRPCLK_INVERTED(1'b0),
    .IS_GTGREFCLK_INVERTED(1'b0),
    .IS_RXUSRCLK2_INVERTED(1'b0),
    .IS_RXUSRCLK_INVERTED(1'b0),
    .IS_TXPHDLYTSTCLK_INVERTED(1'b0),
    .IS_TXUSRCLK2_INVERTED(1'b0),
    .IS_TXUSRCLK_INVERTED(1'b0),
    .OUTREFCLK_SEL_INV(2'b11),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD_ATTR(48'h000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h3C),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PMA_RSV(32'h00018480),
    .PMA_RSV2(16'h2050),
    .PMA_RSV3(2'b00),
    .PMA_RSV4(32'h00000000),
    .RXBUFRESET_TIME(5'b00001),
    .RXBUF_ADDR_MODE("FAST"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(61),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG(72'h03000023FF40100020),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG(6'b010101),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDLY_CFG(16'h001F),
    .RXDLY_LCFG(9'h030),
    .RXDLY_TAP_CFG(16'h0000),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_HF_CFG(14'b00000011110000),
    .RXLPM_LF_CFG(14'b00000011110000),
    .RXOOB_CFG(7'b0000110),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00001),
    .RXPHDLY_CFG(24'h084020),
    .RXPH_CFG(24'h000000),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RX_BIAS_CFG(12'b000000000100),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_PD(1'b1),
    .RX_CM_SEL(2'b11),
    .RX_CM_TRIM(3'b010),
    .RX_DATA_WIDTH(32),
    .RX_DDI_SEL(6'b000000),
    .RX_DEBUG_CFG(12'b000000000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DFE_GAIN_CFG(23'h020FEA),
    .RX_DFE_H2_CFG(12'b000000000000),
    .RX_DFE_H3_CFG(12'b000001000000),
    .RX_DFE_H4_CFG(11'b00011110000),
    .RX_DFE_H5_CFG(11'b00011100000),
    .RX_DFE_KL_CFG(13'b0000011111110),
    .RX_DFE_KL_CFG2(32'h301148AC),
    .RX_DFE_LPM_CFG(16'h0954),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DFE_UT_CFG(17'b10001111000000000),
    .RX_DFE_VP_CFG(17'b00011111100000011),
    .RX_DFE_XYD_CFG(13'b0000000000000),
    .RX_DISPERR_SEQ_MATCH("FALSE"),
    .RX_INT_DATAWIDTH(1),
    .RX_OS_CFG(13'b0000010000000),
    .RX_SIG_VALID_DLY(10),
    .RX_XCLK_SEL("RXREC"),
    .SAS_MAX_COM(64),
    .SAS_MIN_COM(36),
    .SATA_BURST_SEQ_LEN(4'b0101),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SATA_MAX_BURST(8),
    .SATA_MAX_INIT(21),
    .SATA_MAX_WAKE(7),
    .SATA_MIN_BURST(4),
    .SATA_MIN_INIT(12),
    .SATA_MIN_WAKE(4),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_CPLLREFCLK_SEL(3'b010),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("X"),
    .SIM_VERSION("4.0"),
    .TERM_RCAL_CFG(5'b10000),
    .TERM_RCAL_OVRD(1'b0),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV(32'h00000000),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h001F),
    .TXDLY_LCFG(9'h030),
    .TXDLY_TAP_CFG(16'h0000),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00001),
    .TXPHDLY_CFG(24'h084020),
    .TXPH_CFG(16'h0780),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPMARESET_TIME(5'b00001),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_PD(1'b1),
    .TX_DATA_WIDTH(32),
    .TX_DEEMPH0(5'b00000),
    .TX_DEEMPH1(5'b00000),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_EIDLE_ASSERT_DELAY(3'b110),
    .TX_EIDLE_DEASSERT_DELAY(3'b100),
    .TX_INT_DATAWIDTH(1),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1001110),
    .TX_MARGIN_FULL_1(7'b1001001),
    .TX_MARGIN_FULL_2(7'b1000101),
    .TX_MARGIN_FULL_3(7'b1000010),
    .TX_MARGIN_FULL_4(7'b1000000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000100),
    .TX_MARGIN_LOW_2(7'b1000010),
    .TX_MARGIN_LOW_3(7'b1000000),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PREDRIVER_MODE(1'b0),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h1832),
    .TX_RXDETECT_REF(3'b100),
    .TX_XCLK_SEL("TXOUT"),
    .UCODEER_CLR(1'b0)) 
    gtxe2_i
       (.CFGRESET(1'b0),
        .CLKRSVD({1'b0,1'b0,1'b0,1'b0}),
        .CPLLFBCLKLOST(gt3_cpllfbclklost_out),
        .CPLLLOCK(gt3_cplllock_out),
        .CPLLLOCKDETCLK(gt3_cplllockdetclk_in),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(gt0_cpllpd_i),
        .CPLLREFCLKLOST(gt3_cpllrefclklost_i),
        .CPLLREFCLKSEL({1'b0,1'b1,1'b0}),
        .CPLLRESET(gt3_cpllreset_i_3),
        .DMONITOROUT(gt3_dmonitorout_out),
        .DRPADDR(gt3_drpaddr_in),
        .DRPCLK(gt3_drpclk_in),
        .DRPDI(gt3_drpdi_in),
        .DRPDO(gt3_drpdo_out),
        .DRPEN(gt3_drpen_in),
        .DRPRDY(gt3_drprdy_out),
        .DRPWE(gt3_drpwe_in),
        .EYESCANDATAERROR(gt3_eyescandataerror_out),
        .EYESCANMODE(1'b0),
        .EYESCANRESET(gt3_eyescanreset_in),
        .EYESCANTRIGGER(gt3_eyescantrigger_in),
        .GTGREFCLK(1'b0),
        .GTNORTHREFCLK0(gt3_gtnorthrefclk0_in),
        .GTNORTHREFCLK1(gt3_gtnorthrefclk1_in),
        .GTREFCLK0(gt3_gtrefclk0_in),
        .GTREFCLK1(gt3_gtrefclk1_in),
        .GTREFCLKMONITOR(NLW_gtxe2_i_GTREFCLKMONITOR_UNCONNECTED),
        .GTRESETSEL(1'b0),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(gt3_cpllfbclklost_out_0),
        .GTSOUTHREFCLK0(gt3_gtsouthrefclk0_in),
        .GTSOUTHREFCLK1(gt3_gtsouthrefclk1_in),
        .GTTXRESET(gt3_gttxreset_i),
        .GTXRXN(gt3_gtxrxn_in),
        .GTXRXP(gt3_gtxrxp_in),
        .GTXTXN(gt3_gtxtxn_out),
        .GTXTXP(gt3_gtxtxp_out),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT(NLW_gtxe2_i_PCSRSVDOUT_UNCONNECTED[15:0]),
        .PHYSTATUS(NLW_gtxe2_i_PHYSTATUS_UNCONNECTED),
        .PMARSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PMARSVDIN2({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .QPLLCLK(gt0_qplloutclk_in),
        .QPLLREFCLK(gt0_qplloutrefclk_in),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b0),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS(NLW_gtxe2_i_RXBUFSTATUS_UNCONNECTED[2:0]),
        .RXBYTEISALIGNED(NLW_gtxe2_i_RXBYTEISALIGNED_UNCONNECTED),
        .RXBYTEREALIGN(NLW_gtxe2_i_RXBYTEREALIGN_UNCONNECTED),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(NLW_gtxe2_i_RXCDRLOCK_UNCONNECTED),
        .RXCDROVRDEN(1'b0),
        .RXCDRRESET(1'b0),
        .RXCDRRESETRSV(1'b0),
        .RXCHANBONDSEQ(NLW_gtxe2_i_RXCHANBONDSEQ_UNCONNECTED),
        .RXCHANISALIGNED(NLW_gtxe2_i_RXCHANISALIGNED_UNCONNECTED),
        .RXCHANREALIGN(NLW_gtxe2_i_RXCHANREALIGN_UNCONNECTED),
        .RXCHARISCOMMA(NLW_gtxe2_i_RXCHARISCOMMA_UNCONNECTED[7:0]),
        .RXCHARISK(NLW_gtxe2_i_RXCHARISK_UNCONNECTED[7:0]),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO(NLW_gtxe2_i_RXCHBONDO_UNCONNECTED[4:0]),
        .RXCHBONDSLAVE(1'b0),
        .RXCLKCORCNT(NLW_gtxe2_i_RXCLKCORCNT_UNCONNECTED[1:0]),
        .RXCOMINITDET(NLW_gtxe2_i_RXCOMINITDET_UNCONNECTED),
        .RXCOMMADET(NLW_gtxe2_i_RXCOMMADET_UNCONNECTED),
        .RXCOMMADETEN(1'b0),
        .RXCOMSASDET(NLW_gtxe2_i_RXCOMSASDET_UNCONNECTED),
        .RXCOMWAKEDET(NLW_gtxe2_i_RXCOMWAKEDET_UNCONNECTED),
        .RXDATA({NLW_gtxe2_i_RXDATA_UNCONNECTED[63:32],gt3_rxdata_out}),
        .RXDATAVALID(NLW_gtxe2_i_RXDATAVALID_UNCONNECTED),
        .RXDDIEN(1'b0),
        .RXDFEAGCHOLD(gt3_rxdfelfhold_i),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECM1EN(1'b0),
        .RXDFELFHOLD(gt3_rxdfelfhold_i),
        .RXDFELFOVRDEN(1'b1),
        .RXDFELPMRESET(gt3_rxdfelpmreset_in),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEVSEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDFEXYDHOLD(1'b0),
        .RXDFEXYDOVRDEN(1'b0),
        .RXDISPERR(NLW_gtxe2_i_RXDISPERR_UNCONNECTED[7:0]),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(NLW_gtxe2_i_RXDLYSRESETDONE_UNCONNECTED),
        .RXELECIDLE(NLW_gtxe2_i_RXELECIDLE_UNCONNECTED),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER(NLW_gtxe2_i_RXHEADER_UNCONNECTED[2:0]),
        .RXHEADERVALID(NLW_gtxe2_i_RXHEADERVALID_UNCONNECTED),
        .RXLPMEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(1'b0),
        .RXMONITOROUT(gt3_rxmonitorout_out),
        .RXMONITORSEL(gt3_rxmonitorsel_in),
        .RXNOTINTABLE(NLW_gtxe2_i_RXNOTINTABLE_UNCONNECTED[7:0]),
        .RXOOBRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(gt3_rxoutclk_out),
        .RXOUTCLKFABRIC(gt3_rxoutclkfabric_out),
        .RXOUTCLKPCS(NLW_gtxe2_i_RXOUTCLKPCS_UNCONNECTED),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(1'b0),
        .RXPCSRESET(1'b0),
        .RXPD({1'b0,1'b0}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(NLW_gtxe2_i_RXPHALIGNDONE_UNCONNECTED),
        .RXPHALIGNEN(1'b0),
        .RXPHDLYPD(1'b0),
        .RXPHDLYRESET(1'b0),
        .RXPHMONITOR(NLW_gtxe2_i_RXPHMONITOR_UNCONNECTED[4:0]),
        .RXPHOVRDEN(1'b0),
        .RXPHSLIPMONITOR(NLW_gtxe2_i_RXPHSLIPMONITOR_UNCONNECTED[4:0]),
        .RXPMARESET(gt3_rxpmareset_in),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(NLW_gtxe2_i_RXPRBSERR_UNCONNECTED),
        .RXPRBSSEL({1'b0,1'b0,1'b0}),
        .RXQPIEN(1'b0),
        .RXQPISENN(NLW_gtxe2_i_RXQPISENN_UNCONNECTED),
        .RXQPISENP(NLW_gtxe2_i_RXQPISENP_UNCONNECTED),
        .RXRATE({1'b0,1'b0,1'b0}),
        .RXRATEDONE(NLW_gtxe2_i_RXRATEDONE_UNCONNECTED),
        .RXRESETDONE(gt3_rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSTARTOFSEQ(NLW_gtxe2_i_RXSTARTOFSEQ_UNCONNECTED),
        .RXSTATUS(NLW_gtxe2_i_RXSTATUS_UNCONNECTED[2:0]),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXUSERRDY(gt3_rxuserrdy_i),
        .RXUSRCLK(gt3_rxusrclk_in),
        .RXUSRCLK2(gt3_rxusrclk2_in),
        .RXVALID(NLW_gtxe2_i_RXVALID_UNCONNECTED),
        .SETERRSTATUS(1'b0),
        .TSTIN({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .TSTOUT(NLW_gtxe2_i_TSTOUT_UNCONNECTED[9:0]),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b0),
        .TXBUFDIFFCTRL({1'b1,1'b0,1'b0}),
        .TXBUFSTATUS(NLW_gtxe2_i_TXBUFSTATUS_UNCONNECTED[1:0]),
        .TXCHARDISPMODE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARDISPVAL({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCHARISK({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXCOMFINISH(NLW_gtxe2_i_TXCOMFINISH_UNCONNECTED),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gt3_txdata_in}),
        .TXDEEMPH(1'b0),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b0,1'b0,1'b0}),
        .TXDIFFPD(1'b0),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(NLW_gtxe2_i_TXDLYSRESETDONE_UNCONNECTED),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(1'b0),
        .TXGEARBOXREADY(NLW_gtxe2_i_TXGEARBOXREADY_UNCONNECTED),
        .TXHEADER({1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXOUTCLK(gt3_txoutclk_out),
        .TXOUTCLKFABRIC(gt3_txoutclkfabric_out),
        .TXOUTCLKPCS(gt3_txoutclkpcs_out),
        .TXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .TXPCSRESET(1'b0),
        .TXPD({1'b0,1'b0}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(NLW_gtxe2_i_TXPHALIGNDONE_UNCONNECTED),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b0),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(NLW_gtxe2_i_TXPHINITDONE_UNCONNECTED),
        .TXPHOVRDEN(1'b0),
        .TXPISOPD(1'b0),
        .TXPMARESET(1'b0),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPOSTCURSORINV(1'b0),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSORINV(1'b0),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(NLW_gtxe2_i_TXQPISENN_UNCONNECTED),
        .TXQPISENP(NLW_gtxe2_i_TXQPISENP_UNCONNECTED),
        .TXQPISTRONGPDOWN(1'b0),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(NLW_gtxe2_i_TXRATEDONE_UNCONNECTED),
        .TXRESETDONE(gt3_txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSTARTSEQ(1'b0),
        .TXSWING(1'b0),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(gt3_txuserrdy_i),
        .TXUSRCLK(gt3_txusrclk_in),
        .TXUSRCLK2(gt3_txusrclk2_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_RX_STARTUP_FSM" *) 
module gtwizard_4_channel_gtwizard_4_channel_RX_STARTUP_FSM
   (SR,
    gt0_rx_fsm_reset_done_out,
    gt0_rxuserrdy_i,
    gt0_rxdfelfhold_i,
    sysclk_in,
    gt0_rxusrclk_in,
    soft_reset_rx_in,
    dont_reset_on_data_error_in,
    reset_time_out_reg_0,
    gt0_rxresetdone_out,
    gt0_data_valid_in,
    gt0_cplllock_out);
  output [0:0]SR;
  output gt0_rx_fsm_reset_done_out;
  output gt0_rxuserrdy_i;
  output gt0_rxdfelfhold_i;
  input sysclk_in;
  input gt0_rxusrclk_in;
  input soft_reset_rx_in;
  input dont_reset_on_data_error_in;
  input reset_time_out_reg_0;
  input gt0_rxresetdone_out;
  input gt0_data_valid_in;
  input gt0_cplllock_out;

  wire \FSM_sequential_rx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2__1_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9__2_n_0 ;
  wire RXDFEAGCHOLD_i_1_n_0;
  wire RXUSERRDY_i_1_n_0;
  wire [0:0]SR;
  wire adapt_count;
  wire \adapt_count[0]_i_10_n_0 ;
  wire \adapt_count[0]_i_11_n_0 ;
  wire \adapt_count[0]_i_3_n_0 ;
  wire \adapt_count[0]_i_4_n_0 ;
  wire \adapt_count[0]_i_5_n_0 ;
  wire \adapt_count[0]_i_6_n_0 ;
  wire \adapt_count[0]_i_7_n_0 ;
  wire \adapt_count[0]_i_8_n_0 ;
  wire \adapt_count[0]_i_9_n_0 ;
  wire [31:0]adapt_count_reg;
  wire \adapt_count_reg[0]_i_2_n_0 ;
  wire \adapt_count_reg[0]_i_2_n_1 ;
  wire \adapt_count_reg[0]_i_2_n_2 ;
  wire \adapt_count_reg[0]_i_2_n_3 ;
  wire \adapt_count_reg[0]_i_2_n_4 ;
  wire \adapt_count_reg[0]_i_2_n_5 ;
  wire \adapt_count_reg[0]_i_2_n_6 ;
  wire \adapt_count_reg[0]_i_2_n_7 ;
  wire \adapt_count_reg[12]_i_1_n_0 ;
  wire \adapt_count_reg[12]_i_1_n_1 ;
  wire \adapt_count_reg[12]_i_1_n_2 ;
  wire \adapt_count_reg[12]_i_1_n_3 ;
  wire \adapt_count_reg[12]_i_1_n_4 ;
  wire \adapt_count_reg[12]_i_1_n_5 ;
  wire \adapt_count_reg[12]_i_1_n_6 ;
  wire \adapt_count_reg[12]_i_1_n_7 ;
  wire \adapt_count_reg[16]_i_1_n_0 ;
  wire \adapt_count_reg[16]_i_1_n_1 ;
  wire \adapt_count_reg[16]_i_1_n_2 ;
  wire \adapt_count_reg[16]_i_1_n_3 ;
  wire \adapt_count_reg[16]_i_1_n_4 ;
  wire \adapt_count_reg[16]_i_1_n_5 ;
  wire \adapt_count_reg[16]_i_1_n_6 ;
  wire \adapt_count_reg[16]_i_1_n_7 ;
  wire \adapt_count_reg[20]_i_1_n_0 ;
  wire \adapt_count_reg[20]_i_1_n_1 ;
  wire \adapt_count_reg[20]_i_1_n_2 ;
  wire \adapt_count_reg[20]_i_1_n_3 ;
  wire \adapt_count_reg[20]_i_1_n_4 ;
  wire \adapt_count_reg[20]_i_1_n_5 ;
  wire \adapt_count_reg[20]_i_1_n_6 ;
  wire \adapt_count_reg[20]_i_1_n_7 ;
  wire \adapt_count_reg[24]_i_1_n_0 ;
  wire \adapt_count_reg[24]_i_1_n_1 ;
  wire \adapt_count_reg[24]_i_1_n_2 ;
  wire \adapt_count_reg[24]_i_1_n_3 ;
  wire \adapt_count_reg[24]_i_1_n_4 ;
  wire \adapt_count_reg[24]_i_1_n_5 ;
  wire \adapt_count_reg[24]_i_1_n_6 ;
  wire \adapt_count_reg[24]_i_1_n_7 ;
  wire \adapt_count_reg[28]_i_1_n_1 ;
  wire \adapt_count_reg[28]_i_1_n_2 ;
  wire \adapt_count_reg[28]_i_1_n_3 ;
  wire \adapt_count_reg[28]_i_1_n_4 ;
  wire \adapt_count_reg[28]_i_1_n_5 ;
  wire \adapt_count_reg[28]_i_1_n_6 ;
  wire \adapt_count_reg[28]_i_1_n_7 ;
  wire \adapt_count_reg[4]_i_1_n_0 ;
  wire \adapt_count_reg[4]_i_1_n_1 ;
  wire \adapt_count_reg[4]_i_1_n_2 ;
  wire \adapt_count_reg[4]_i_1_n_3 ;
  wire \adapt_count_reg[4]_i_1_n_4 ;
  wire \adapt_count_reg[4]_i_1_n_5 ;
  wire \adapt_count_reg[4]_i_1_n_6 ;
  wire \adapt_count_reg[4]_i_1_n_7 ;
  wire \adapt_count_reg[8]_i_1_n_0 ;
  wire \adapt_count_reg[8]_i_1_n_1 ;
  wire \adapt_count_reg[8]_i_1_n_2 ;
  wire \adapt_count_reg[8]_i_1_n_3 ;
  wire \adapt_count_reg[8]_i_1_n_4 ;
  wire \adapt_count_reg[8]_i_1_n_5 ;
  wire \adapt_count_reg[8]_i_1_n_6 ;
  wire \adapt_count_reg[8]_i_1_n_7 ;
  wire check_tlock_max_i_1_n_0;
  wire check_tlock_max_reg_n_0;
  wire clear;
  wire data_valid_sync;
  wire dont_reset_on_data_error_in;
  wire gt0_cplllock_out;
  wire gt0_data_valid_in;
  wire gt0_rx_fsm_reset_done_out;
  wire gt0_rxdfelfhold_i;
  wire gt0_rxresetdone_out;
  wire gt0_rxuserrdy_i;
  wire gt0_rxusrclk_in;
  wire gtrxreset_i_i_1_n_0;
  wire init_wait_count;
  wire \init_wait_count[7]_i_3__3_n_0 ;
  wire \init_wait_count[7]_i_4__3_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1__3_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__3_n_0 ;
  wire \mmcm_lock_count[7]_i_4__3_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__3_n_0;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire recclk_mon_count_reset;
  wire reset_time_out_i_3__3_n_0;
  wire reset_time_out_i_4__0_n_0;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3;
  wire [3:0]rx_state;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire soft_reset_rx_in;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_1;
  wire sync_cplllock_n_2;
  wire sync_data_valid_n_1;
  wire sync_data_valid_n_2;
  wire sync_data_valid_n_3;
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire sysclk_in;
  wire time_out_100us_i_1_n_0;
  wire time_out_100us_i_2__0_n_0;
  wire time_out_100us_i_3__0_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1_n_0;
  wire time_out_1us_i_2_n_0;
  wire time_out_1us_i_3__0_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1_n_0;
  wire time_out_2ms_i_2__3_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_adapt_i_1_n_0;
  wire time_out_adapt_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__5_n_0 ;
  wire \time_out_counter[0]_i_4__5_n_0 ;
  wire \time_out_counter[0]_i_5__3_n_0 ;
  wire \time_out_counter[0]_i_6_n_0 ;
  wire \time_out_counter[0]_i_7_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__3_n_0 ;
  wire \time_out_counter_reg[0]_i_2__3_n_1 ;
  wire \time_out_counter_reg[0]_i_2__3_n_2 ;
  wire \time_out_counter_reg[0]_i_2__3_n_3 ;
  wire \time_out_counter_reg[0]_i_2__3_n_4 ;
  wire \time_out_counter_reg[0]_i_2__3_n_5 ;
  wire \time_out_counter_reg[0]_i_2__3_n_6 ;
  wire \time_out_counter_reg[0]_i_2__3_n_7 ;
  wire \time_out_counter_reg[12]_i_1__3_n_0 ;
  wire \time_out_counter_reg[12]_i_1__3_n_1 ;
  wire \time_out_counter_reg[12]_i_1__3_n_2 ;
  wire \time_out_counter_reg[12]_i_1__3_n_3 ;
  wire \time_out_counter_reg[12]_i_1__3_n_4 ;
  wire \time_out_counter_reg[12]_i_1__3_n_5 ;
  wire \time_out_counter_reg[12]_i_1__3_n_6 ;
  wire \time_out_counter_reg[12]_i_1__3_n_7 ;
  wire \time_out_counter_reg[16]_i_1__3_n_3 ;
  wire \time_out_counter_reg[16]_i_1__3_n_6 ;
  wire \time_out_counter_reg[16]_i_1__3_n_7 ;
  wire \time_out_counter_reg[4]_i_1__3_n_0 ;
  wire \time_out_counter_reg[4]_i_1__3_n_1 ;
  wire \time_out_counter_reg[4]_i_1__3_n_2 ;
  wire \time_out_counter_reg[4]_i_1__3_n_3 ;
  wire \time_out_counter_reg[4]_i_1__3_n_4 ;
  wire \time_out_counter_reg[4]_i_1__3_n_5 ;
  wire \time_out_counter_reg[4]_i_1__3_n_6 ;
  wire \time_out_counter_reg[4]_i_1__3_n_7 ;
  wire \time_out_counter_reg[8]_i_1__3_n_0 ;
  wire \time_out_counter_reg[8]_i_1__3_n_1 ;
  wire \time_out_counter_reg[8]_i_1__3_n_2 ;
  wire \time_out_counter_reg[8]_i_1__3_n_3 ;
  wire \time_out_counter_reg[8]_i_1__3_n_4 ;
  wire \time_out_counter_reg[8]_i_1__3_n_5 ;
  wire \time_out_counter_reg[8]_i_1__3_n_6 ;
  wire \time_out_counter_reg[8]_i_1__3_n_7 ;
  wire time_out_wait_bypass_i_1_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max_i_1_n_0;
  wire time_tlock_max_i_2_n_0;
  wire time_tlock_max_i_3_n_0;
  wire time_tlock_max_i_4_n_0;
  wire \wait_bypass_count[0]_i_2_n_0 ;
  wire \wait_bypass_count[0]_i_4_n_0 ;
  wire \wait_bypass_count[0]_i_5_n_0 ;
  wire \wait_bypass_count[0]_i_6_n_0 ;
  wire \wait_bypass_count[0]_i_7_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1_n_7 ;
  wire \wait_time_cnt[0]_i_10__3_n_0 ;
  wire \wait_time_cnt[0]_i_11__3_n_0 ;
  wire \wait_time_cnt[0]_i_1_n_0 ;
  wire \wait_time_cnt[0]_i_2__3_n_0 ;
  wire \wait_time_cnt[0]_i_4__3_n_0 ;
  wire \wait_time_cnt[0]_i_5__3_n_0 ;
  wire \wait_time_cnt[0]_i_6__3_n_0 ;
  wire \wait_time_cnt[0]_i_7__3_n_0 ;
  wire \wait_time_cnt[0]_i_8__3_n_0 ;
  wire \wait_time_cnt[0]_i_9__3_n_0 ;
  wire \wait_time_cnt[12]_i_2__3_n_0 ;
  wire \wait_time_cnt[12]_i_3__3_n_0 ;
  wire \wait_time_cnt[12]_i_4__3_n_0 ;
  wire \wait_time_cnt[12]_i_5__3_n_0 ;
  wire \wait_time_cnt[4]_i_2__3_n_0 ;
  wire \wait_time_cnt[4]_i_3__3_n_0 ;
  wire \wait_time_cnt[4]_i_4__3_n_0 ;
  wire \wait_time_cnt[4]_i_5__3_n_0 ;
  wire \wait_time_cnt[8]_i_2__3_n_0 ;
  wire \wait_time_cnt[8]_i_3__3_n_0 ;
  wire \wait_time_cnt[8]_i_4__3_n_0 ;
  wire \wait_time_cnt[8]_i_5__3_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__3_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__3_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__3_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__3_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__3_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__3_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__3_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__3_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__3_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__3_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__3_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__3_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__3_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__3_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__3_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__3_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__3_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__3_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__3_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__3_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__3_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__3_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__3_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__3_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__3_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__3_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__3_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__3_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__3_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__3_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__3_n_7 ;
  wire [3:3]\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__3_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__3_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__3_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF8000AF00)) 
    \FSM_sequential_rx_state[0]_i_2 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF0040FFFFFFFF)) 
    \FSM_sequential_rx_state[1]_i_2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[0]),
        .O(\FSM_sequential_rx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0103000001030A00)) 
    \FSM_sequential_rx_state[2]_i_1 
       (.I0(rx_state[0]),
        .I1(\FSM_sequential_rx_state[2]_i_2__1_n_0 ),
        .I2(rx_state[3]),
        .I3(rx_state[1]),
        .I4(rx_state[2]),
        .I5(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[2]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_rx_state[2]_i_2__1 
       (.I0(rx_state[0]),
        .I1(time_tlock_max),
        .I2(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[2]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \FSM_sequential_rx_state[3]_i_10 
       (.I0(rx_state[1]),
        .I1(init_wait_done_reg_n_0),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111111)) 
    \FSM_sequential_rx_state[3]_i_4 
       (.I0(\FSM_sequential_rx_state[3]_i_9__2_n_0 ),
        .I1(\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .I2(reset_time_out_reg_n_0),
        .I3(time_tlock_max),
        .I4(rx_state[0]),
        .I5(\FSM_sequential_rx_state[3]_i_10_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \FSM_sequential_rx_state[3]_i_7 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A00008A000000)) 
    \FSM_sequential_rx_state[3]_i_8 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[2]),
        .O(\FSM_sequential_rx_state[3]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \FSM_sequential_rx_state[3]_i_9__2 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_0),
        .I2(rx_state[0]),
        .I3(mmcm_lock_reclocked),
        .O(\FSM_sequential_rx_state[3]_i_9__2_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_4),
        .D(sync_data_valid_n_3),
        .Q(rx_state[0]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_4),
        .D(sync_data_valid_n_2),
        .Q(rx_state[1]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_4),
        .D(\FSM_sequential_rx_state[2]_i_1_n_0 ),
        .Q(rx_state[2]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_4),
        .D(sync_data_valid_n_1),
        .Q(rx_state[3]),
        .R(soft_reset_rx_in));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    RXDFEAGCHOLD_i_1
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(time_out_adapt_reg_n_0),
        .I5(gt0_rxdfelfhold_i),
        .O(RXDFEAGCHOLD_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXDFEAGCHOLD_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(RXDFEAGCHOLD_i_1_n_0),
        .Q(gt0_rxdfelfhold_i),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(gt0_rxuserrdy_i),
        .O(RXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(RXUSERRDY_i_1_n_0),
        .Q(gt0_rxuserrdy_i),
        .R(soft_reset_rx_in));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \adapt_count[0]_i_1 
       (.I0(\adapt_count[0]_i_3_n_0 ),
        .I1(\adapt_count[0]_i_4_n_0 ),
        .I2(\adapt_count[0]_i_5_n_0 ),
        .I3(\adapt_count[0]_i_6_n_0 ),
        .O(adapt_count));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \adapt_count[0]_i_10 
       (.I0(adapt_count_reg[6]),
        .I1(adapt_count_reg[24]),
        .I2(adapt_count_reg[13]),
        .I3(adapt_count_reg[26]),
        .O(\adapt_count[0]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adapt_count[0]_i_11 
       (.I0(adapt_count_reg[1]),
        .I1(adapt_count_reg[10]),
        .I2(adapt_count_reg[31]),
        .I3(adapt_count_reg[11]),
        .O(\adapt_count[0]_i_11_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \adapt_count[0]_i_3 
       (.I0(adapt_count_reg[22]),
        .I1(adapt_count_reg[9]),
        .I2(adapt_count_reg[15]),
        .I3(adapt_count_reg[7]),
        .I4(\adapt_count[0]_i_8_n_0 ),
        .O(\adapt_count[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \adapt_count[0]_i_4 
       (.I0(adapt_count_reg[8]),
        .I1(adapt_count_reg[16]),
        .I2(adapt_count_reg[23]),
        .I3(adapt_count_reg[5]),
        .I4(\adapt_count[0]_i_9_n_0 ),
        .O(\adapt_count[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00000004)) 
    \adapt_count[0]_i_5 
       (.I0(adapt_count_reg[30]),
        .I1(adapt_count_reg[18]),
        .I2(adapt_count_reg[28]),
        .I3(adapt_count_reg[19]),
        .I4(\adapt_count[0]_i_10_n_0 ),
        .O(\adapt_count[0]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \adapt_count[0]_i_6 
       (.I0(adapt_count_reg[14]),
        .I1(adapt_count_reg[3]),
        .I2(adapt_count_reg[29]),
        .I3(adapt_count_reg[17]),
        .I4(\adapt_count[0]_i_11_n_0 ),
        .O(\adapt_count[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adapt_count[0]_i_7 
       (.I0(adapt_count_reg[0]),
        .O(\adapt_count[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \adapt_count[0]_i_8 
       (.I0(adapt_count_reg[21]),
        .I1(adapt_count_reg[20]),
        .I2(adapt_count_reg[27]),
        .I3(adapt_count_reg[12]),
        .O(\adapt_count[0]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adapt_count[0]_i_9 
       (.I0(adapt_count_reg[25]),
        .I1(adapt_count_reg[0]),
        .I2(adapt_count_reg[4]),
        .I3(adapt_count_reg[2]),
        .O(\adapt_count[0]_i_9_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[0] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2_n_7 ),
        .Q(adapt_count_reg[0]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\adapt_count_reg[0]_i_2_n_0 ,\adapt_count_reg[0]_i_2_n_1 ,\adapt_count_reg[0]_i_2_n_2 ,\adapt_count_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\adapt_count_reg[0]_i_2_n_4 ,\adapt_count_reg[0]_i_2_n_5 ,\adapt_count_reg[0]_i_2_n_6 ,\adapt_count_reg[0]_i_2_n_7 }),
        .S({adapt_count_reg[3:1],\adapt_count[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[10] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1_n_5 ),
        .Q(adapt_count_reg[10]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[11] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1_n_4 ),
        .Q(adapt_count_reg[11]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[12] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1_n_7 ),
        .Q(adapt_count_reg[12]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[12]_i_1 
       (.CI(\adapt_count_reg[8]_i_1_n_0 ),
        .CO({\adapt_count_reg[12]_i_1_n_0 ,\adapt_count_reg[12]_i_1_n_1 ,\adapt_count_reg[12]_i_1_n_2 ,\adapt_count_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[12]_i_1_n_4 ,\adapt_count_reg[12]_i_1_n_5 ,\adapt_count_reg[12]_i_1_n_6 ,\adapt_count_reg[12]_i_1_n_7 }),
        .S(adapt_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[13] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1_n_6 ),
        .Q(adapt_count_reg[13]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[14] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1_n_5 ),
        .Q(adapt_count_reg[14]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[15] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1_n_4 ),
        .Q(adapt_count_reg[15]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[16] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1_n_7 ),
        .Q(adapt_count_reg[16]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[16]_i_1 
       (.CI(\adapt_count_reg[12]_i_1_n_0 ),
        .CO({\adapt_count_reg[16]_i_1_n_0 ,\adapt_count_reg[16]_i_1_n_1 ,\adapt_count_reg[16]_i_1_n_2 ,\adapt_count_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[16]_i_1_n_4 ,\adapt_count_reg[16]_i_1_n_5 ,\adapt_count_reg[16]_i_1_n_6 ,\adapt_count_reg[16]_i_1_n_7 }),
        .S(adapt_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[17] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1_n_6 ),
        .Q(adapt_count_reg[17]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[18] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1_n_5 ),
        .Q(adapt_count_reg[18]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[19] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1_n_4 ),
        .Q(adapt_count_reg[19]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[1] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2_n_6 ),
        .Q(adapt_count_reg[1]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[20] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1_n_7 ),
        .Q(adapt_count_reg[20]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[20]_i_1 
       (.CI(\adapt_count_reg[16]_i_1_n_0 ),
        .CO({\adapt_count_reg[20]_i_1_n_0 ,\adapt_count_reg[20]_i_1_n_1 ,\adapt_count_reg[20]_i_1_n_2 ,\adapt_count_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[20]_i_1_n_4 ,\adapt_count_reg[20]_i_1_n_5 ,\adapt_count_reg[20]_i_1_n_6 ,\adapt_count_reg[20]_i_1_n_7 }),
        .S(adapt_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[21] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1_n_6 ),
        .Q(adapt_count_reg[21]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[22] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1_n_5 ),
        .Q(adapt_count_reg[22]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[23] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1_n_4 ),
        .Q(adapt_count_reg[23]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[24] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1_n_7 ),
        .Q(adapt_count_reg[24]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[24]_i_1 
       (.CI(\adapt_count_reg[20]_i_1_n_0 ),
        .CO({\adapt_count_reg[24]_i_1_n_0 ,\adapt_count_reg[24]_i_1_n_1 ,\adapt_count_reg[24]_i_1_n_2 ,\adapt_count_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[24]_i_1_n_4 ,\adapt_count_reg[24]_i_1_n_5 ,\adapt_count_reg[24]_i_1_n_6 ,\adapt_count_reg[24]_i_1_n_7 }),
        .S(adapt_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[25] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1_n_6 ),
        .Q(adapt_count_reg[25]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[26] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1_n_5 ),
        .Q(adapt_count_reg[26]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[27] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1_n_4 ),
        .Q(adapt_count_reg[27]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[28] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1_n_7 ),
        .Q(adapt_count_reg[28]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[28]_i_1 
       (.CI(\adapt_count_reg[24]_i_1_n_0 ),
        .CO({\NLW_adapt_count_reg[28]_i_1_CO_UNCONNECTED [3],\adapt_count_reg[28]_i_1_n_1 ,\adapt_count_reg[28]_i_1_n_2 ,\adapt_count_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[28]_i_1_n_4 ,\adapt_count_reg[28]_i_1_n_5 ,\adapt_count_reg[28]_i_1_n_6 ,\adapt_count_reg[28]_i_1_n_7 }),
        .S(adapt_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[29] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1_n_6 ),
        .Q(adapt_count_reg[29]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[2] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2_n_5 ),
        .Q(adapt_count_reg[2]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[30] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1_n_5 ),
        .Q(adapt_count_reg[30]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[31] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1_n_4 ),
        .Q(adapt_count_reg[31]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[3] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2_n_4 ),
        .Q(adapt_count_reg[3]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[4] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1_n_7 ),
        .Q(adapt_count_reg[4]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[4]_i_1 
       (.CI(\adapt_count_reg[0]_i_2_n_0 ),
        .CO({\adapt_count_reg[4]_i_1_n_0 ,\adapt_count_reg[4]_i_1_n_1 ,\adapt_count_reg[4]_i_1_n_2 ,\adapt_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[4]_i_1_n_4 ,\adapt_count_reg[4]_i_1_n_5 ,\adapt_count_reg[4]_i_1_n_6 ,\adapt_count_reg[4]_i_1_n_7 }),
        .S(adapt_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[5] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1_n_6 ),
        .Q(adapt_count_reg[5]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[6] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1_n_5 ),
        .Q(adapt_count_reg[6]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[7] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1_n_4 ),
        .Q(adapt_count_reg[7]),
        .R(recclk_mon_count_reset));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[8] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1_n_7 ),
        .Q(adapt_count_reg[8]),
        .R(recclk_mon_count_reset));
  CARRY4 \adapt_count_reg[8]_i_1 
       (.CI(\adapt_count_reg[4]_i_1_n_0 ),
        .CO({\adapt_count_reg[8]_i_1_n_0 ,\adapt_count_reg[8]_i_1_n_1 ,\adapt_count_reg[8]_i_1_n_2 ,\adapt_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[8]_i_1_n_4 ,\adapt_count_reg[8]_i_1_n_5 ,\adapt_count_reg[8]_i_1_n_6 ,\adapt_count_reg[8]_i_1_n_7 }),
        .S(adapt_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[9] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1_n_6 ),
        .Q(adapt_count_reg[9]),
        .R(recclk_mon_count_reset));
  FDSE #(
    .INIT(1'b0)) 
    adapt_count_reset_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_2),
        .Q(recclk_mon_count_reset),
        .S(soft_reset_rx_in));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    check_tlock_max_i_1
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(check_tlock_max_i_1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    gtrxreset_i_i_1
       (.I0(rx_state[1]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(SR),
        .O(gtrxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gtrxreset_i_i_1_n_0),
        .Q(SR),
        .R(soft_reset_rx_in));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__3 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__3 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__3 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__3 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__3 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__3 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_1__3 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\init_wait_count[7]_i_4__3_n_0 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \init_wait_count[7]_i_1__3 
       (.I0(\init_wait_count[7]_i_3__3_n_0 ),
        .I1(init_wait_count_reg__0[7]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[5]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[7]_i_2__3 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\init_wait_count[7]_i_4__3_n_0 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \init_wait_count[7]_i_3__3 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[2]),
        .O(\init_wait_count[7]_i_3__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[7]_i_4__3 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .O(\init_wait_count[7]_i_4__3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    init_wait_done_i_1__3
       (.I0(\init_wait_count[7]_i_3__3_n_0 ),
        .I1(init_wait_count_reg__0[7]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[5]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_rx_in),
        .D(init_wait_done_i_1__3_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__3 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__3 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__3 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__3 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__3 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__3 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1__3 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__3_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2__3 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__3_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2__3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__3 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4__3_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4__3 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\mmcm_lock_count[7]_i_4__3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__3_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__3_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__3_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__3_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__3_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__3_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__3_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__3_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2__3
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(mmcm_lock_reclocked_i_2__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h07DC07CC)) 
    reset_time_out_i_3__3
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(reset_time_out_reg_0),
        .O(reset_time_out_i_3__3_n_0));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    reset_time_out_i_4__0
       (.I0(mmcm_lock_reclocked),
        .I1(rx_state[0]),
        .I2(reset_time_out_reg_0),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .I5(rxresetdone_s3),
        .O(reset_time_out_i_4__0_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_1),
        .Q(reset_time_out_reg_n_0),
        .S(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    run_phase_alignment_int_i_1
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_data_valid_n_5),
        .Q(gt0_rx_fsm_reset_done_out),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_41 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_42 sync_cplllock
       (.\FSM_sequential_rx_state_reg[0] (time_out_2ms_reg_n_0),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[3] (sync_cplllock_n_2),
        .Q(rx_state),
        .data_out(data_valid_sync),
        .gt0_cplllock_out(gt0_cplllock_out),
        .recclk_mon_count_reset(recclk_mon_count_reset),
        .reset_time_out_reg(sync_cplllock_n_1),
        .reset_time_out_reg_0(reset_time_out_i_4__0_n_0),
        .reset_time_out_reg_1(reset_time_out_reg_n_0),
        .reset_time_out_reg_2(reset_time_out_i_3__3_n_0),
        .rxresetdone_s3(rxresetdone_s3),
        .sysclk_in(sysclk_in),
        .time_out_2ms_reg(sync_cplllock_n_0));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_43 sync_data_valid
       (.D({sync_data_valid_n_1,sync_data_valid_n_2,sync_data_valid_n_3}),
        .E(sync_data_valid_n_4),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[3]_i_4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\wait_time_cnt[0]_i_2__3_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (sync_cplllock_n_0),
        .\FSM_sequential_rx_state_reg[0]_2 (time_out_100us_reg_n_0),
        .\FSM_sequential_rx_state_reg[0]_3 (\FSM_sequential_rx_state[0]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_4 (\FSM_sequential_rx_state[1]_i_2_n_0 ),
        .\FSM_sequential_rx_state_reg[3] (sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state[3]_i_7_n_0 ),
        .\FSM_sequential_rx_state_reg[3]_1 (\FSM_sequential_rx_state[3]_i_8_n_0 ),
        .Q(rx_state),
        .data_out(data_valid_sync),
        .dont_reset_on_data_error_in(dont_reset_on_data_error_in),
        .gt0_data_valid_in(gt0_data_valid_in),
        .gt0_rx_fsm_reset_done_out(gt0_rx_fsm_reset_done_out),
        .rx_fsm_reset_done_int_reg(reset_time_out_reg_n_0),
        .rx_fsm_reset_done_int_reg_0(time_out_1us_reg_n_0),
        .sysclk_in(sysclk_in),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_44 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7:6]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2__3_n_0),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_45 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .gt0_rxusrclk_in(gt0_rxusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_46 sync_rx_fsm_reset_done_int
       (.data_out(rx_fsm_reset_done_int_s2),
        .gt0_rx_fsm_reset_done_out(gt0_rx_fsm_reset_done_out),
        .gt0_rxusrclk_in(gt0_rxusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_47 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .sysclk_in(sysclk_in));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_100us_i_1
       (.I0(\time_out_counter[0]_i_6_n_0 ),
        .I1(time_out_100us_i_2__0_n_0),
        .I2(time_tlock_max_i_3_n_0),
        .I3(time_out_100us_i_3__0_n_0),
        .I4(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_out_100us_i_2__0
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[2]),
        .O(time_out_100us_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    time_out_100us_i_3__0
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[3]),
        .I5(time_out_counter_reg[1]),
        .O(time_out_100us_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_1us_i_1
       (.I0(time_tlock_max_i_3_n_0),
        .I1(time_out_1us_i_2_n_0),
        .I2(\time_out_counter[0]_i_6_n_0 ),
        .I3(time_out_1us_i_3__0_n_0),
        .I4(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    time_out_1us_i_2
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[12]),
        .O(time_out_1us_i_2_n_0));
  LUT6 #(
    .INIT(64'h0400000000000000)) 
    time_out_1us_i_3__0
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[4]),
        .O(time_out_1us_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_2ms_i_1
       (.I0(\time_out_counter[0]_i_4__5_n_0 ),
        .I1(\time_out_counter[0]_i_3__5_n_0 ),
        .I2(\time_out_counter[0]_i_6_n_0 ),
        .I3(time_out_2ms_i_2__3_n_0),
        .I4(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    time_out_2ms_i_2__3
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[2]),
        .O(time_out_2ms_i_2__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAABA)) 
    time_out_adapt_i_1
       (.I0(time_out_adapt_reg_n_0),
        .I1(\adapt_count[0]_i_6_n_0 ),
        .I2(\adapt_count[0]_i_5_n_0 ),
        .I3(\adapt_count[0]_i_4_n_0 ),
        .I4(\adapt_count[0]_i_3_n_0 ),
        .I5(recclk_mon_count_reset),
        .O(time_out_adapt_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_adapt_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_adapt_i_1_n_0),
        .Q(time_out_adapt_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \time_out_counter[0]_i_1 
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(\time_out_counter[0]_i_3__5_n_0 ),
        .I3(\time_out_counter[0]_i_4__5_n_0 ),
        .I4(\time_out_counter[0]_i_5__3_n_0 ),
        .I5(\time_out_counter[0]_i_6_n_0 ),
        .O(time_out_counter));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \time_out_counter[0]_i_3__5 
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[13]),
        .O(\time_out_counter[0]_i_3__5_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \time_out_counter[0]_i_4__5 
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[14]),
        .O(\time_out_counter[0]_i_4__5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_5__3 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_6 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[10]),
        .O(\time_out_counter[0]_i_6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_7 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__3_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__3 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__3_n_0 ,\time_out_counter_reg[0]_i_2__3_n_1 ,\time_out_counter_reg[0]_i_2__3_n_2 ,\time_out_counter_reg[0]_i_2__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__3_n_4 ,\time_out_counter_reg[0]_i_2__3_n_5 ,\time_out_counter_reg[0]_i_2__3_n_6 ,\time_out_counter_reg[0]_i_2__3_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_7_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__3_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__3_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__3_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__3 
       (.CI(\time_out_counter_reg[8]_i_1__3_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__3_n_0 ,\time_out_counter_reg[12]_i_1__3_n_1 ,\time_out_counter_reg[12]_i_1__3_n_2 ,\time_out_counter_reg[12]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__3_n_4 ,\time_out_counter_reg[12]_i_1__3_n_5 ,\time_out_counter_reg[12]_i_1__3_n_6 ,\time_out_counter_reg[12]_i_1__3_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__3_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__3_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__3_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__3_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__3 
       (.CI(\time_out_counter_reg[12]_i_1__3_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__3_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__3_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__3_n_6 ,\time_out_counter_reg[16]_i_1__3_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__3_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__3_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__3_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__3_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__3_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__3 
       (.CI(\time_out_counter_reg[0]_i_2__3_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__3_n_0 ,\time_out_counter_reg[4]_i_1__3_n_1 ,\time_out_counter_reg[4]_i_1__3_n_2 ,\time_out_counter_reg[4]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__3_n_4 ,\time_out_counter_reg[4]_i_1__3_n_5 ,\time_out_counter_reg[4]_i_1__3_n_6 ,\time_out_counter_reg[4]_i_1__3_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__3_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__3_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__3_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__3_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__3 
       (.CI(\time_out_counter_reg[4]_i_1__3_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__3_n_0 ,\time_out_counter_reg[8]_i_1__3_n_1 ,\time_out_counter_reg[8]_i_1__3_n_2 ,\time_out_counter_reg[8]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__3_n_4 ,\time_out_counter_reg[8]_i_1__3_n_5 ,\time_out_counter_reg[8]_i_1__3_n_6 ,\time_out_counter_reg[8]_i_1__3_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__3_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3),
        .I2(\wait_bypass_count[0]_i_4_n_0 ),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080000)) 
    time_tlock_max_i_1
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_tlock_max_i_2_n_0),
        .I3(time_tlock_max_i_3_n_0),
        .I4(check_tlock_max_reg_n_0),
        .I5(time_tlock_max),
        .O(time_tlock_max_i_1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF777F)) 
    time_tlock_max_i_2
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[4]),
        .I4(time_tlock_max_i_4_n_0),
        .I5(\time_out_counter[0]_i_6_n_0 ),
        .O(time_tlock_max_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_3
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .O(time_tlock_max_i_3_n_0));
  LUT5 #(
    .INIT(32'h00000057)) 
    time_tlock_max_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[3]),
        .O(time_tlock_max_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(clear));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2 
       (.I0(\wait_bypass_count[0]_i_4_n_0 ),
        .I1(rx_fsm_reset_done_int_s3),
        .O(\wait_bypass_count[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \wait_bypass_count[0]_i_4 
       (.I0(\wait_bypass_count[0]_i_6_n_0 ),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[0]),
        .I4(\wait_bypass_count[0]_i_7_n_0 ),
        .O(\wait_bypass_count[0]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \wait_bypass_count[0]_i_6 
       (.I0(wait_bypass_count_reg[3]),
        .I1(wait_bypass_count_reg[5]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[7]),
        .O(\wait_bypass_count[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \wait_bypass_count[0]_i_7 
       (.I0(wait_bypass_count_reg[2]),
        .I1(wait_bypass_count_reg[12]),
        .I2(wait_bypass_count_reg[4]),
        .I3(wait_bypass_count_reg[10]),
        .I4(wait_bypass_count_reg[6]),
        .I5(wait_bypass_count_reg[11]),
        .O(\wait_bypass_count[0]_i_7_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3_n_0 ,\wait_bypass_count_reg[0]_i_3_n_1 ,\wait_bypass_count_reg[0]_i_3_n_2 ,\wait_bypass_count_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3_n_4 ,\wait_bypass_count_reg[0]_i_3_n_5 ,\wait_bypass_count_reg[0]_i_3_n_6 ,\wait_bypass_count_reg[0]_i_3_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[12]_i_1 
       (.CI(\wait_bypass_count_reg[8]_i_1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[4]_i_1 
       (.CI(\wait_bypass_count_reg[0]_i_3_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1_n_0 ,\wait_bypass_count_reg[4]_i_1_n_1 ,\wait_bypass_count_reg[4]_i_1_n_2 ,\wait_bypass_count_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1_n_4 ,\wait_bypass_count_reg[4]_i_1_n_5 ,\wait_bypass_count_reg[4]_i_1_n_6 ,\wait_bypass_count_reg[4]_i_1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(clear));
  CARRY4 \wait_bypass_count_reg[8]_i_1 
       (.CI(\wait_bypass_count_reg[4]_i_1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1_n_0 ,\wait_bypass_count_reg[8]_i_1_n_1 ,\wait_bypass_count_reg[8]_i_1_n_2 ,\wait_bypass_count_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1_n_4 ,\wait_bypass_count_reg[8]_i_1_n_5 ,\wait_bypass_count_reg[8]_i_1_n_6 ,\wait_bypass_count_reg[8]_i_1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(gt0_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(clear));
  LUT3 #(
    .INIT(8'h04)) 
    \wait_time_cnt[0]_i_1 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10__3 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11__3 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2__3 
       (.I0(\wait_time_cnt[0]_i_4__3_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__3_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__3_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__3_n_0 ),
        .O(\wait_time_cnt[0]_i_2__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__3 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[0]_i_4__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5__3 
       (.I0(wait_time_cnt_reg[9]),
        .I1(wait_time_cnt_reg[10]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[0]_i_5__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__3 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[8]),
        .I3(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[0]_i_6__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__3 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[7]),
        .I3(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_7__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__3 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__3 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__3 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__3 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__3 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__3 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__3 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__3 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__3 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__3 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__3 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__3_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__3_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__3 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__3_n_0 ,\wait_time_cnt_reg[0]_i_3__3_n_1 ,\wait_time_cnt_reg[0]_i_3__3_n_2 ,\wait_time_cnt_reg[0]_i_3__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__3_n_4 ,\wait_time_cnt_reg[0]_i_3__3_n_5 ,\wait_time_cnt_reg[0]_i_3__3_n_6 ,\wait_time_cnt_reg[0]_i_3__3_n_7 }),
        .S({\wait_time_cnt[0]_i_8__3_n_0 ,\wait_time_cnt[0]_i_9__3_n_0 ,\wait_time_cnt[0]_i_10__3_n_0 ,\wait_time_cnt[0]_i_11__3_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__3_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__3_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__3_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__3 
       (.CI(\wait_time_cnt_reg[8]_i_1__3_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__3_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__3_n_1 ,\wait_time_cnt_reg[12]_i_1__3_n_2 ,\wait_time_cnt_reg[12]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__3_n_4 ,\wait_time_cnt_reg[12]_i_1__3_n_5 ,\wait_time_cnt_reg[12]_i_1__3_n_6 ,\wait_time_cnt_reg[12]_i_1__3_n_7 }),
        .S({\wait_time_cnt[12]_i_2__3_n_0 ,\wait_time_cnt[12]_i_3__3_n_0 ,\wait_time_cnt[12]_i_4__3_n_0 ,\wait_time_cnt[12]_i_5__3_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__3_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__3_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__3_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__3_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__3_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__3_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__3_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__3 
       (.CI(\wait_time_cnt_reg[0]_i_3__3_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__3_n_0 ,\wait_time_cnt_reg[4]_i_1__3_n_1 ,\wait_time_cnt_reg[4]_i_1__3_n_2 ,\wait_time_cnt_reg[4]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__3_n_4 ,\wait_time_cnt_reg[4]_i_1__3_n_5 ,\wait_time_cnt_reg[4]_i_1__3_n_6 ,\wait_time_cnt_reg[4]_i_1__3_n_7 }),
        .S({\wait_time_cnt[4]_i_2__3_n_0 ,\wait_time_cnt[4]_i_3__3_n_0 ,\wait_time_cnt[4]_i_4__3_n_0 ,\wait_time_cnt[4]_i_5__3_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__3_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__3_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__3_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1_n_0 ));
  FDRE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__3_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__3 
       (.CI(\wait_time_cnt_reg[4]_i_1__3_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__3_n_0 ,\wait_time_cnt_reg[8]_i_1__3_n_1 ,\wait_time_cnt_reg[8]_i_1__3_n_2 ,\wait_time_cnt_reg[8]_i_1__3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__3_n_4 ,\wait_time_cnt_reg[8]_i_1__3_n_5 ,\wait_time_cnt_reg[8]_i_1__3_n_6 ,\wait_time_cnt_reg[8]_i_1__3_n_7 }),
        .S({\wait_time_cnt[8]_i_2__3_n_0 ,\wait_time_cnt[8]_i_3__3_n_0 ,\wait_time_cnt[8]_i_4__3_n_0 ,\wait_time_cnt[8]_i_5__3_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__3_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__3_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1_n_0 ));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_RX_STARTUP_FSM" *) 
module gtwizard_4_channel_gtwizard_4_channel_RX_STARTUP_FSM_0
   (SR,
    gt1_rx_fsm_reset_done_out,
    gt1_rxuserrdy_i,
    gt1_rxdfelfhold_i,
    sysclk_in,
    gt1_rxusrclk_in,
    soft_reset_rx_in,
    reset_time_out_reg_0,
    dont_reset_on_data_error_in,
    gt1_rxresetdone_out,
    gt1_data_valid_in,
    gt1_cplllock_out);
  output [0:0]SR;
  output gt1_rx_fsm_reset_done_out;
  output gt1_rxuserrdy_i;
  output gt1_rxdfelfhold_i;
  input sysclk_in;
  input gt1_rxusrclk_in;
  input soft_reset_rx_in;
  input reset_time_out_reg_0;
  input dont_reset_on_data_error_in;
  input gt1_rxresetdone_out;
  input gt1_data_valid_in;
  input gt1_cplllock_out;

  wire \FSM_sequential_rx_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1__0_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2__2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10__2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_11__0_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4__0_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8__0_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9_n_0 ;
  wire RXDFEAGCHOLD_i_1__0_n_0;
  wire RXUSERRDY_i_1__0_n_0;
  wire [0:0]SR;
  wire adapt_count;
  wire \adapt_count[0]_i_10__0_n_0 ;
  wire \adapt_count[0]_i_11__0_n_0 ;
  wire \adapt_count[0]_i_3__0_n_0 ;
  wire \adapt_count[0]_i_4__0_n_0 ;
  wire \adapt_count[0]_i_5__0_n_0 ;
  wire \adapt_count[0]_i_6__0_n_0 ;
  wire \adapt_count[0]_i_7__0_n_0 ;
  wire \adapt_count[0]_i_8__0_n_0 ;
  wire \adapt_count[0]_i_9__0_n_0 ;
  wire [31:0]adapt_count_reg;
  wire \adapt_count_reg[0]_i_2__0_n_0 ;
  wire \adapt_count_reg[0]_i_2__0_n_1 ;
  wire \adapt_count_reg[0]_i_2__0_n_2 ;
  wire \adapt_count_reg[0]_i_2__0_n_3 ;
  wire \adapt_count_reg[0]_i_2__0_n_4 ;
  wire \adapt_count_reg[0]_i_2__0_n_5 ;
  wire \adapt_count_reg[0]_i_2__0_n_6 ;
  wire \adapt_count_reg[0]_i_2__0_n_7 ;
  wire \adapt_count_reg[12]_i_1__0_n_0 ;
  wire \adapt_count_reg[12]_i_1__0_n_1 ;
  wire \adapt_count_reg[12]_i_1__0_n_2 ;
  wire \adapt_count_reg[12]_i_1__0_n_3 ;
  wire \adapt_count_reg[12]_i_1__0_n_4 ;
  wire \adapt_count_reg[12]_i_1__0_n_5 ;
  wire \adapt_count_reg[12]_i_1__0_n_6 ;
  wire \adapt_count_reg[12]_i_1__0_n_7 ;
  wire \adapt_count_reg[16]_i_1__0_n_0 ;
  wire \adapt_count_reg[16]_i_1__0_n_1 ;
  wire \adapt_count_reg[16]_i_1__0_n_2 ;
  wire \adapt_count_reg[16]_i_1__0_n_3 ;
  wire \adapt_count_reg[16]_i_1__0_n_4 ;
  wire \adapt_count_reg[16]_i_1__0_n_5 ;
  wire \adapt_count_reg[16]_i_1__0_n_6 ;
  wire \adapt_count_reg[16]_i_1__0_n_7 ;
  wire \adapt_count_reg[20]_i_1__0_n_0 ;
  wire \adapt_count_reg[20]_i_1__0_n_1 ;
  wire \adapt_count_reg[20]_i_1__0_n_2 ;
  wire \adapt_count_reg[20]_i_1__0_n_3 ;
  wire \adapt_count_reg[20]_i_1__0_n_4 ;
  wire \adapt_count_reg[20]_i_1__0_n_5 ;
  wire \adapt_count_reg[20]_i_1__0_n_6 ;
  wire \adapt_count_reg[20]_i_1__0_n_7 ;
  wire \adapt_count_reg[24]_i_1__0_n_0 ;
  wire \adapt_count_reg[24]_i_1__0_n_1 ;
  wire \adapt_count_reg[24]_i_1__0_n_2 ;
  wire \adapt_count_reg[24]_i_1__0_n_3 ;
  wire \adapt_count_reg[24]_i_1__0_n_4 ;
  wire \adapt_count_reg[24]_i_1__0_n_5 ;
  wire \adapt_count_reg[24]_i_1__0_n_6 ;
  wire \adapt_count_reg[24]_i_1__0_n_7 ;
  wire \adapt_count_reg[28]_i_1__0_n_1 ;
  wire \adapt_count_reg[28]_i_1__0_n_2 ;
  wire \adapt_count_reg[28]_i_1__0_n_3 ;
  wire \adapt_count_reg[28]_i_1__0_n_4 ;
  wire \adapt_count_reg[28]_i_1__0_n_5 ;
  wire \adapt_count_reg[28]_i_1__0_n_6 ;
  wire \adapt_count_reg[28]_i_1__0_n_7 ;
  wire \adapt_count_reg[4]_i_1__0_n_0 ;
  wire \adapt_count_reg[4]_i_1__0_n_1 ;
  wire \adapt_count_reg[4]_i_1__0_n_2 ;
  wire \adapt_count_reg[4]_i_1__0_n_3 ;
  wire \adapt_count_reg[4]_i_1__0_n_4 ;
  wire \adapt_count_reg[4]_i_1__0_n_5 ;
  wire \adapt_count_reg[4]_i_1__0_n_6 ;
  wire \adapt_count_reg[4]_i_1__0_n_7 ;
  wire \adapt_count_reg[8]_i_1__0_n_0 ;
  wire \adapt_count_reg[8]_i_1__0_n_1 ;
  wire \adapt_count_reg[8]_i_1__0_n_2 ;
  wire \adapt_count_reg[8]_i_1__0_n_3 ;
  wire \adapt_count_reg[8]_i_1__0_n_4 ;
  wire \adapt_count_reg[8]_i_1__0_n_5 ;
  wire \adapt_count_reg[8]_i_1__0_n_6 ;
  wire \adapt_count_reg[8]_i_1__0_n_7 ;
  wire adapt_count_reset_reg_n_0;
  wire check_tlock_max_i_1__0_n_0;
  wire check_tlock_max_reg_n_0;
  wire cplllock_sync;
  wire dont_reset_on_data_error_in;
  wire gt1_cplllock_out;
  wire gt1_data_valid_in;
  wire gt1_rx_fsm_reset_done_out;
  wire gt1_rxdfelfhold_i;
  wire gt1_rxresetdone_out;
  wire gt1_rxuserrdy_i;
  wire gt1_rxusrclk_in;
  wire gtrxreset_i_i_1__0_n_0;
  wire init_wait_count;
  wire \init_wait_count[7]_i_3__4_n_0 ;
  wire \init_wait_count[7]_i_4__4_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1__4_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__4_n_0 ;
  wire \mmcm_lock_count[7]_i_4__4_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__4_n_0;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire reset_time_out_i_2__0_n_0;
  wire reset_time_out_i_4__1_n_0;
  wire reset_time_out_i_5_n_0;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__0_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3_reg_n_0;
  wire [3:0]rx_state;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire soft_reset_rx_in;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_2;
  wire sync_data_valid_n_0;
  wire sync_data_valid_n_1;
  wire sync_data_valid_n_2;
  wire sync_data_valid_n_3;
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire sysclk_in;
  wire time_out_100us_i_1__0_n_0;
  wire time_out_100us_i_2_n_0;
  wire time_out_100us_i_3_n_0;
  wire time_out_100us_i_4_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1__0_n_0;
  wire time_out_1us_i_2__0_n_0;
  wire time_out_1us_i_3_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1__0_n_0;
  wire time_out_2ms_i_2_n_0;
  wire time_out_2ms_i_3_n_0;
  wire time_out_2ms_i_4_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_adapt_i_1__0_n_0;
  wire time_out_adapt_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3_n_0 ;
  wire \time_out_counter[0]_i_4__0_n_0 ;
  wire \time_out_counter[0]_i_5__2_n_0 ;
  wire \time_out_counter[0]_i_6__0_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__4_n_0 ;
  wire \time_out_counter_reg[0]_i_2__4_n_1 ;
  wire \time_out_counter_reg[0]_i_2__4_n_2 ;
  wire \time_out_counter_reg[0]_i_2__4_n_3 ;
  wire \time_out_counter_reg[0]_i_2__4_n_4 ;
  wire \time_out_counter_reg[0]_i_2__4_n_5 ;
  wire \time_out_counter_reg[0]_i_2__4_n_6 ;
  wire \time_out_counter_reg[0]_i_2__4_n_7 ;
  wire \time_out_counter_reg[12]_i_1__4_n_0 ;
  wire \time_out_counter_reg[12]_i_1__4_n_1 ;
  wire \time_out_counter_reg[12]_i_1__4_n_2 ;
  wire \time_out_counter_reg[12]_i_1__4_n_3 ;
  wire \time_out_counter_reg[12]_i_1__4_n_4 ;
  wire \time_out_counter_reg[12]_i_1__4_n_5 ;
  wire \time_out_counter_reg[12]_i_1__4_n_6 ;
  wire \time_out_counter_reg[12]_i_1__4_n_7 ;
  wire \time_out_counter_reg[16]_i_1__4_n_3 ;
  wire \time_out_counter_reg[16]_i_1__4_n_6 ;
  wire \time_out_counter_reg[16]_i_1__4_n_7 ;
  wire \time_out_counter_reg[4]_i_1__4_n_0 ;
  wire \time_out_counter_reg[4]_i_1__4_n_1 ;
  wire \time_out_counter_reg[4]_i_1__4_n_2 ;
  wire \time_out_counter_reg[4]_i_1__4_n_3 ;
  wire \time_out_counter_reg[4]_i_1__4_n_4 ;
  wire \time_out_counter_reg[4]_i_1__4_n_5 ;
  wire \time_out_counter_reg[4]_i_1__4_n_6 ;
  wire \time_out_counter_reg[4]_i_1__4_n_7 ;
  wire \time_out_counter_reg[8]_i_1__4_n_0 ;
  wire \time_out_counter_reg[8]_i_1__4_n_1 ;
  wire \time_out_counter_reg[8]_i_1__4_n_2 ;
  wire \time_out_counter_reg[8]_i_1__4_n_3 ;
  wire \time_out_counter_reg[8]_i_1__4_n_4 ;
  wire \time_out_counter_reg[8]_i_1__4_n_5 ;
  wire \time_out_counter_reg[8]_i_1__4_n_6 ;
  wire \time_out_counter_reg[8]_i_1__4_n_7 ;
  wire time_out_wait_bypass_i_1__0_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max_i_1__0_n_0;
  wire time_tlock_max_i_2__0_n_0;
  wire time_tlock_max_i_3__0_n_0;
  wire time_tlock_max_i_4__0_n_0;
  wire \wait_bypass_count[0]_i_1__0_n_0 ;
  wire \wait_bypass_count[0]_i_2__0_n_0 ;
  wire \wait_bypass_count[0]_i_4__0_n_0 ;
  wire \wait_bypass_count[0]_i_5__0_n_0 ;
  wire \wait_bypass_count[0]_i_6__0_n_0 ;
  wire \wait_bypass_count[0]_i_7__0_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__0_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__0_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__0_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__0_n_7 ;
  wire \wait_time_cnt[0]_i_10__4_n_0 ;
  wire \wait_time_cnt[0]_i_11__4_n_0 ;
  wire \wait_time_cnt[0]_i_1__5_n_0 ;
  wire \wait_time_cnt[0]_i_2__4_n_0 ;
  wire \wait_time_cnt[0]_i_4__4_n_0 ;
  wire \wait_time_cnt[0]_i_5__4_n_0 ;
  wire \wait_time_cnt[0]_i_6__4_n_0 ;
  wire \wait_time_cnt[0]_i_7__4_n_0 ;
  wire \wait_time_cnt[0]_i_8__4_n_0 ;
  wire \wait_time_cnt[0]_i_9__4_n_0 ;
  wire \wait_time_cnt[12]_i_2__4_n_0 ;
  wire \wait_time_cnt[12]_i_3__4_n_0 ;
  wire \wait_time_cnt[12]_i_4__4_n_0 ;
  wire \wait_time_cnt[12]_i_5__4_n_0 ;
  wire \wait_time_cnt[4]_i_2__4_n_0 ;
  wire \wait_time_cnt[4]_i_3__4_n_0 ;
  wire \wait_time_cnt[4]_i_4__4_n_0 ;
  wire \wait_time_cnt[4]_i_5__4_n_0 ;
  wire \wait_time_cnt[8]_i_2__4_n_0 ;
  wire \wait_time_cnt[8]_i_3__4_n_0 ;
  wire \wait_time_cnt[8]_i_4__4_n_0 ;
  wire \wait_time_cnt[8]_i_5__4_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__4_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__4_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__4_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__4_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__4_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__4_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__4_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__4_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__4_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__4_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__4_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__4_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__4_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__4_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__4_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__4_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__4_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__4_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__4_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__4_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__4_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__4_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__4_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__4_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__4_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__4_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__4_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__4_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__4_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__4_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__4_n_7 ;
  wire [3:3]\NLW_adapt_count_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__4_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__4_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__4_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF8000AF00)) 
    \FSM_sequential_rx_state[0]_i_2__0 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF55557555)) 
    \FSM_sequential_rx_state[1]_i_3 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .I5(rx_state[1]),
        .O(\FSM_sequential_rx_state[1]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h00130000001300A0)) 
    \FSM_sequential_rx_state[2]_i_1__0 
       (.I0(rx_state[0]),
        .I1(\FSM_sequential_rx_state[2]_i_2__2_n_0 ),
        .I2(rx_state[1]),
        .I3(rx_state[3]),
        .I4(rx_state[2]),
        .I5(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[2]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_rx_state[2]_i_2__2 
       (.I0(rx_state[0]),
        .I1(time_tlock_max),
        .I2(reset_time_out_reg_n_0),
        .O(\FSM_sequential_rx_state[2]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'hFEAE)) 
    \FSM_sequential_rx_state[3]_i_10__2 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_0),
        .I2(rx_state[0]),
        .I3(mmcm_lock_reclocked),
        .O(\FSM_sequential_rx_state[3]_i_10__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \FSM_sequential_rx_state[3]_i_11__0 
       (.I0(rx_state[1]),
        .I1(init_wait_done_reg_n_0),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_11__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF10111111)) 
    \FSM_sequential_rx_state[3]_i_4__0 
       (.I0(\FSM_sequential_rx_state[3]_i_10__2_n_0 ),
        .I1(\FSM_sequential_rx_state[3]_i_8__0_n_0 ),
        .I2(reset_time_out_reg_n_0),
        .I3(time_tlock_max),
        .I4(rx_state[0]),
        .I5(\FSM_sequential_rx_state[3]_i_11__0_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4__0_n_0 ));
  LUT6 #(
    .INIT(64'hFF1FFFFFFF1FFF1F)) 
    \FSM_sequential_rx_state[3]_i_6 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rxresetdone_s3),
        .I4(reset_time_out_reg_n_0),
        .I5(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h1D)) 
    \FSM_sequential_rx_state[3]_i_8__0 
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .O(\FSM_sequential_rx_state[3]_i_8__0_n_0 ));
  LUT6 #(
    .INIT(64'h8A008A008A000000)) 
    \FSM_sequential_rx_state[3]_i_9 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[1]),
        .I4(rx_state[3]),
        .I5(rx_state[2]),
        .O(\FSM_sequential_rx_state[3]_i_9_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(sync_data_valid_n_2),
        .Q(rx_state[0]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(sync_data_valid_n_1),
        .Q(rx_state[1]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(\FSM_sequential_rx_state[2]_i_1__0_n_0 ),
        .Q(rx_state[2]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(sync_data_valid_n_0),
        .Q(rx_state[3]),
        .R(soft_reset_rx_in));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    RXDFEAGCHOLD_i_1__0
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(time_out_adapt_reg_n_0),
        .I5(gt1_rxdfelfhold_i),
        .O(RXDFEAGCHOLD_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXDFEAGCHOLD_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(RXDFEAGCHOLD_i_1__0_n_0),
        .Q(gt1_rxdfelfhold_i),
        .R(soft_reset_rx_in));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1__0
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(gt1_rxuserrdy_i),
        .O(RXUSERRDY_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(RXUSERRDY_i_1__0_n_0),
        .Q(gt1_rxuserrdy_i),
        .R(soft_reset_rx_in));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \adapt_count[0]_i_10__0 
       (.I0(adapt_count_reg[30]),
        .I1(adapt_count_reg[19]),
        .I2(adapt_count_reg[13]),
        .I3(adapt_count_reg[26]),
        .O(\adapt_count[0]_i_10__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adapt_count[0]_i_11__0 
       (.I0(adapt_count_reg[1]),
        .I1(adapt_count_reg[10]),
        .I2(adapt_count_reg[31]),
        .I3(adapt_count_reg[11]),
        .O(\adapt_count[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \adapt_count[0]_i_1__0 
       (.I0(\adapt_count[0]_i_3__0_n_0 ),
        .I1(\adapt_count[0]_i_4__0_n_0 ),
        .I2(\adapt_count[0]_i_5__0_n_0 ),
        .I3(\adapt_count[0]_i_6__0_n_0 ),
        .O(adapt_count));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \adapt_count[0]_i_3__0 
       (.I0(adapt_count_reg[22]),
        .I1(adapt_count_reg[9]),
        .I2(adapt_count_reg[15]),
        .I3(adapt_count_reg[7]),
        .I4(\adapt_count[0]_i_8__0_n_0 ),
        .O(\adapt_count[0]_i_3__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \adapt_count[0]_i_4__0 
       (.I0(adapt_count_reg[28]),
        .I1(adapt_count_reg[18]),
        .I2(adapt_count_reg[23]),
        .I3(adapt_count_reg[5]),
        .I4(\adapt_count[0]_i_9__0_n_0 ),
        .O(\adapt_count[0]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000040)) 
    \adapt_count[0]_i_5__0 
       (.I0(adapt_count_reg[24]),
        .I1(adapt_count_reg[6]),
        .I2(adapt_count_reg[16]),
        .I3(adapt_count_reg[8]),
        .I4(\adapt_count[0]_i_10__0_n_0 ),
        .O(\adapt_count[0]_i_5__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \adapt_count[0]_i_6__0 
       (.I0(adapt_count_reg[14]),
        .I1(adapt_count_reg[3]),
        .I2(adapt_count_reg[29]),
        .I3(adapt_count_reg[17]),
        .I4(\adapt_count[0]_i_11__0_n_0 ),
        .O(\adapt_count[0]_i_6__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adapt_count[0]_i_7__0 
       (.I0(adapt_count_reg[0]),
        .O(\adapt_count[0]_i_7__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \adapt_count[0]_i_8__0 
       (.I0(adapt_count_reg[21]),
        .I1(adapt_count_reg[20]),
        .I2(adapt_count_reg[27]),
        .I3(adapt_count_reg[12]),
        .O(\adapt_count[0]_i_8__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adapt_count[0]_i_9__0 
       (.I0(adapt_count_reg[25]),
        .I1(adapt_count_reg[0]),
        .I2(adapt_count_reg[4]),
        .I3(adapt_count_reg[2]),
        .O(\adapt_count[0]_i_9__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[0] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__0_n_7 ),
        .Q(adapt_count_reg[0]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\adapt_count_reg[0]_i_2__0_n_0 ,\adapt_count_reg[0]_i_2__0_n_1 ,\adapt_count_reg[0]_i_2__0_n_2 ,\adapt_count_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\adapt_count_reg[0]_i_2__0_n_4 ,\adapt_count_reg[0]_i_2__0_n_5 ,\adapt_count_reg[0]_i_2__0_n_6 ,\adapt_count_reg[0]_i_2__0_n_7 }),
        .S({adapt_count_reg[3:1],\adapt_count[0]_i_7__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[10] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__0_n_5 ),
        .Q(adapt_count_reg[10]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[11] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__0_n_4 ),
        .Q(adapt_count_reg[11]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[12] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__0_n_7 ),
        .Q(adapt_count_reg[12]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[12]_i_1__0 
       (.CI(\adapt_count_reg[8]_i_1__0_n_0 ),
        .CO({\adapt_count_reg[12]_i_1__0_n_0 ,\adapt_count_reg[12]_i_1__0_n_1 ,\adapt_count_reg[12]_i_1__0_n_2 ,\adapt_count_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[12]_i_1__0_n_4 ,\adapt_count_reg[12]_i_1__0_n_5 ,\adapt_count_reg[12]_i_1__0_n_6 ,\adapt_count_reg[12]_i_1__0_n_7 }),
        .S(adapt_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[13] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__0_n_6 ),
        .Q(adapt_count_reg[13]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[14] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__0_n_5 ),
        .Q(adapt_count_reg[14]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[15] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__0_n_4 ),
        .Q(adapt_count_reg[15]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[16] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__0_n_7 ),
        .Q(adapt_count_reg[16]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[16]_i_1__0 
       (.CI(\adapt_count_reg[12]_i_1__0_n_0 ),
        .CO({\adapt_count_reg[16]_i_1__0_n_0 ,\adapt_count_reg[16]_i_1__0_n_1 ,\adapt_count_reg[16]_i_1__0_n_2 ,\adapt_count_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[16]_i_1__0_n_4 ,\adapt_count_reg[16]_i_1__0_n_5 ,\adapt_count_reg[16]_i_1__0_n_6 ,\adapt_count_reg[16]_i_1__0_n_7 }),
        .S(adapt_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[17] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__0_n_6 ),
        .Q(adapt_count_reg[17]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[18] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__0_n_5 ),
        .Q(adapt_count_reg[18]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[19] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__0_n_4 ),
        .Q(adapt_count_reg[19]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[1] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__0_n_6 ),
        .Q(adapt_count_reg[1]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[20] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__0_n_7 ),
        .Q(adapt_count_reg[20]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[20]_i_1__0 
       (.CI(\adapt_count_reg[16]_i_1__0_n_0 ),
        .CO({\adapt_count_reg[20]_i_1__0_n_0 ,\adapt_count_reg[20]_i_1__0_n_1 ,\adapt_count_reg[20]_i_1__0_n_2 ,\adapt_count_reg[20]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[20]_i_1__0_n_4 ,\adapt_count_reg[20]_i_1__0_n_5 ,\adapt_count_reg[20]_i_1__0_n_6 ,\adapt_count_reg[20]_i_1__0_n_7 }),
        .S(adapt_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[21] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__0_n_6 ),
        .Q(adapt_count_reg[21]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[22] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__0_n_5 ),
        .Q(adapt_count_reg[22]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[23] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__0_n_4 ),
        .Q(adapt_count_reg[23]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[24] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__0_n_7 ),
        .Q(adapt_count_reg[24]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[24]_i_1__0 
       (.CI(\adapt_count_reg[20]_i_1__0_n_0 ),
        .CO({\adapt_count_reg[24]_i_1__0_n_0 ,\adapt_count_reg[24]_i_1__0_n_1 ,\adapt_count_reg[24]_i_1__0_n_2 ,\adapt_count_reg[24]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[24]_i_1__0_n_4 ,\adapt_count_reg[24]_i_1__0_n_5 ,\adapt_count_reg[24]_i_1__0_n_6 ,\adapt_count_reg[24]_i_1__0_n_7 }),
        .S(adapt_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[25] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__0_n_6 ),
        .Q(adapt_count_reg[25]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[26] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__0_n_5 ),
        .Q(adapt_count_reg[26]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[27] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__0_n_4 ),
        .Q(adapt_count_reg[27]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[28] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__0_n_7 ),
        .Q(adapt_count_reg[28]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[28]_i_1__0 
       (.CI(\adapt_count_reg[24]_i_1__0_n_0 ),
        .CO({\NLW_adapt_count_reg[28]_i_1__0_CO_UNCONNECTED [3],\adapt_count_reg[28]_i_1__0_n_1 ,\adapt_count_reg[28]_i_1__0_n_2 ,\adapt_count_reg[28]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[28]_i_1__0_n_4 ,\adapt_count_reg[28]_i_1__0_n_5 ,\adapt_count_reg[28]_i_1__0_n_6 ,\adapt_count_reg[28]_i_1__0_n_7 }),
        .S(adapt_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[29] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__0_n_6 ),
        .Q(adapt_count_reg[29]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[2] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__0_n_5 ),
        .Q(adapt_count_reg[2]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[30] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__0_n_5 ),
        .Q(adapt_count_reg[30]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[31] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__0_n_4 ),
        .Q(adapt_count_reg[31]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[3] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__0_n_4 ),
        .Q(adapt_count_reg[3]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[4] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__0_n_7 ),
        .Q(adapt_count_reg[4]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[4]_i_1__0 
       (.CI(\adapt_count_reg[0]_i_2__0_n_0 ),
        .CO({\adapt_count_reg[4]_i_1__0_n_0 ,\adapt_count_reg[4]_i_1__0_n_1 ,\adapt_count_reg[4]_i_1__0_n_2 ,\adapt_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[4]_i_1__0_n_4 ,\adapt_count_reg[4]_i_1__0_n_5 ,\adapt_count_reg[4]_i_1__0_n_6 ,\adapt_count_reg[4]_i_1__0_n_7 }),
        .S(adapt_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[5] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__0_n_6 ),
        .Q(adapt_count_reg[5]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[6] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__0_n_5 ),
        .Q(adapt_count_reg[6]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[7] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__0_n_4 ),
        .Q(adapt_count_reg[7]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[8] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__0_n_7 ),
        .Q(adapt_count_reg[8]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[8]_i_1__0 
       (.CI(\adapt_count_reg[4]_i_1__0_n_0 ),
        .CO({\adapt_count_reg[8]_i_1__0_n_0 ,\adapt_count_reg[8]_i_1__0_n_1 ,\adapt_count_reg[8]_i_1__0_n_2 ,\adapt_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[8]_i_1__0_n_4 ,\adapt_count_reg[8]_i_1__0_n_5 ,\adapt_count_reg[8]_i_1__0_n_6 ,\adapt_count_reg[8]_i_1__0_n_7 }),
        .S(adapt_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[9] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__0_n_6 ),
        .Q(adapt_count_reg[9]),
        .R(adapt_count_reset_reg_n_0));
  FDSE #(
    .INIT(1'b0)) 
    adapt_count_reset_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_2),
        .Q(adapt_count_reset_reg_n_0),
        .S(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    check_tlock_max_i_1__0
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(check_tlock_max_i_1__0_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    gtrxreset_i_i_1__0
       (.I0(rx_state[1]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(SR),
        .O(gtrxreset_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gtrxreset_i_i_1__0_n_0),
        .Q(SR),
        .R(soft_reset_rx_in));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__4 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__4 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__4 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__4 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__4 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__4 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_1__4 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\init_wait_count[7]_i_4__4_n_0 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \init_wait_count[7]_i_1__4 
       (.I0(\init_wait_count[7]_i_3__4_n_0 ),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[4]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[7]_i_2__4 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\init_wait_count[7]_i_4__4_n_0 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \init_wait_count[7]_i_3__4 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[7]),
        .I3(init_wait_count_reg__0[5]),
        .O(\init_wait_count[7]_i_3__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[7]_i_4__4 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .O(\init_wait_count[7]_i_4__4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    init_wait_done_i_1__4
       (.I0(\init_wait_count[7]_i_3__4_n_0 ),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[4]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__4_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_rx_in),
        .D(init_wait_done_i_1__4_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__4 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__4 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__4 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__4 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__4 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__4 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1__4 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__4_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2__4 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__4_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2__4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__4 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4__4_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4__4 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\mmcm_lock_count[7]_i_4__4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__4_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__4_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__4_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__4_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__4_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__4_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__4_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__4_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2__4
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(mmcm_lock_reclocked_i_2__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reset_time_out_i_2__0
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .O(reset_time_out_i_2__0_n_0));
  LUT5 #(
    .INIT(32'h07DC07CC)) 
    reset_time_out_i_4__1
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(reset_time_out_reg_0),
        .O(reset_time_out_i_4__1_n_0));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    reset_time_out_i_5
       (.I0(mmcm_lock_reclocked),
        .I1(rx_state[0]),
        .I2(reset_time_out_reg_0),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .I5(rxresetdone_s3),
        .O(reset_time_out_i_5_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_data_valid_n_4),
        .Q(reset_time_out_reg_n_0),
        .S(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    run_phase_alignment_int_i_1__0
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__0_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_data_valid_n_5),
        .Q(gt1_rx_fsm_reset_done_out),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_31 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_32 sync_cplllock
       (.\FSM_sequential_rx_state_reg[0] (sync_cplllock_n_0),
        .\FSM_sequential_rx_state_reg[0]_0 (time_out_2ms_reg_n_0),
        .\FSM_sequential_rx_state_reg[3] (sync_cplllock_n_2),
        .Q(rx_state),
        .adapt_count_reset_reg(adapt_count_reset_reg_n_0),
        .data_out(cplllock_sync),
        .gt1_cplllock_out(gt1_cplllock_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_33 sync_data_valid
       (.D({sync_data_valid_n_0,sync_data_valid_n_1,sync_data_valid_n_2}),
        .E(sync_data_valid_n_3),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[0]_i_2__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[1]_i_3_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_4__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\wait_time_cnt[0]_i_2__4_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (sync_cplllock_n_0),
        .\FSM_sequential_rx_state_reg[0]_4 (\FSM_sequential_rx_state[3]_i_6_n_0 ),
        .\FSM_sequential_rx_state_reg[1] (time_out_100us_reg_n_0),
        .\FSM_sequential_rx_state_reg[3] (sync_data_valid_n_4),
        .\FSM_sequential_rx_state_reg[3]_0 (sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[3]_1 (\FSM_sequential_rx_state[3]_i_8__0_n_0 ),
        .\FSM_sequential_rx_state_reg[3]_2 (\FSM_sequential_rx_state[3]_i_9_n_0 ),
        .Q(rx_state),
        .data_out(cplllock_sync),
        .dont_reset_on_data_error_in(dont_reset_on_data_error_in),
        .gt1_data_valid_in(gt1_data_valid_in),
        .gt1_rx_fsm_reset_done_out(gt1_rx_fsm_reset_done_out),
        .reset_time_out_reg(reset_time_out_reg_n_0),
        .reset_time_out_reg_0(reset_time_out_i_5_n_0),
        .reset_time_out_reg_1(reset_time_out_i_2__0_n_0),
        .reset_time_out_reg_2(reset_time_out_i_4__1_n_0),
        .rx_fsm_reset_done_int_reg(time_out_1us_reg_n_0),
        .sysclk_in(sysclk_in),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_34 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7:6]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2__4_n_0),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_35 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .gt1_rxusrclk_in(gt1_rxusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_36 sync_rx_fsm_reset_done_int
       (.data_out(rx_fsm_reset_done_int_s2),
        .gt1_rx_fsm_reset_done_out(gt1_rx_fsm_reset_done_out),
        .gt1_rxusrclk_in(gt1_rxusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_37 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .sysclk_in(sysclk_in));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_100us_i_1__0
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_100us_i_3_n_0),
        .I2(time_out_2ms_i_3_n_0),
        .I3(time_out_100us_i_4_n_0),
        .I4(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    time_out_100us_i_2
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[4]),
        .O(time_out_100us_i_2_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    time_out_100us_i_3
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[2]),
        .O(time_out_100us_i_3_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    time_out_100us_i_4
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[7]),
        .O(time_out_100us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1__0_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_1us_i_1__0
       (.I0(time_out_100us_i_2_n_0),
        .I1(time_out_1us_i_2__0_n_0),
        .I2(time_out_2ms_i_3_n_0),
        .I3(time_out_1us_i_3_n_0),
        .I4(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1__0_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    time_out_1us_i_2__0
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[12]),
        .O(time_out_1us_i_2__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    time_out_1us_i_3
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[15]),
        .I5(time_out_counter_reg[14]),
        .O(time_out_1us_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1__0_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF1000)) 
    time_out_2ms_i_1__0
       (.I0(time_out_2ms_i_2_n_0),
        .I1(time_out_2ms_i_3_n_0),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1__0_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF7FFF)) 
    time_out_2ms_i_2
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[7]),
        .I4(\time_out_counter[0]_i_6__0_n_0 ),
        .I5(time_out_2ms_i_4_n_0),
        .O(time_out_2ms_i_2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_3
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[10]),
        .O(time_out_2ms_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_4
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[2]),
        .O(time_out_2ms_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__0_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAABA)) 
    time_out_adapt_i_1__0
       (.I0(time_out_adapt_reg_n_0),
        .I1(\adapt_count[0]_i_6__0_n_0 ),
        .I2(\adapt_count[0]_i_5__0_n_0 ),
        .I3(\adapt_count[0]_i_4__0_n_0 ),
        .I4(\adapt_count[0]_i_3__0_n_0 ),
        .I5(adapt_count_reset_reg_n_0),
        .O(time_out_adapt_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_adapt_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_adapt_i_1__0_n_0),
        .Q(time_out_adapt_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFFFFFF)) 
    \time_out_counter[0]_i_1__0 
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[7]),
        .I4(\time_out_counter[0]_i_3_n_0 ),
        .I5(\time_out_counter[0]_i_4__0_n_0 ),
        .O(time_out_counter));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \time_out_counter[0]_i_3 
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[1]),
        .I4(\time_out_counter[0]_i_6__0_n_0 ),
        .O(\time_out_counter[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \time_out_counter[0]_i_4__0 
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[9]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[17]),
        .O(\time_out_counter[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_5__2 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \time_out_counter[0]_i_6__0 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[13]),
        .O(\time_out_counter[0]_i_6__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__4_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__4 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__4_n_0 ,\time_out_counter_reg[0]_i_2__4_n_1 ,\time_out_counter_reg[0]_i_2__4_n_2 ,\time_out_counter_reg[0]_i_2__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__4_n_4 ,\time_out_counter_reg[0]_i_2__4_n_5 ,\time_out_counter_reg[0]_i_2__4_n_6 ,\time_out_counter_reg[0]_i_2__4_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_5__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__4_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__4_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__4_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__4 
       (.CI(\time_out_counter_reg[8]_i_1__4_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__4_n_0 ,\time_out_counter_reg[12]_i_1__4_n_1 ,\time_out_counter_reg[12]_i_1__4_n_2 ,\time_out_counter_reg[12]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__4_n_4 ,\time_out_counter_reg[12]_i_1__4_n_5 ,\time_out_counter_reg[12]_i_1__4_n_6 ,\time_out_counter_reg[12]_i_1__4_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__4_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__4_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__4_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__4_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__4 
       (.CI(\time_out_counter_reg[12]_i_1__4_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__4_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__4_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__4_n_6 ,\time_out_counter_reg[16]_i_1__4_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__4_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__4_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__4_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__4_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__4_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__4 
       (.CI(\time_out_counter_reg[0]_i_2__4_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__4_n_0 ,\time_out_counter_reg[4]_i_1__4_n_1 ,\time_out_counter_reg[4]_i_1__4_n_2 ,\time_out_counter_reg[4]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__4_n_4 ,\time_out_counter_reg[4]_i_1__4_n_5 ,\time_out_counter_reg[4]_i_1__4_n_6 ,\time_out_counter_reg[4]_i_1__4_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__4_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__4_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__4_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__4_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__4 
       (.CI(\time_out_counter_reg[4]_i_1__4_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__4_n_0 ,\time_out_counter_reg[8]_i_1__4_n_1 ,\time_out_counter_reg[8]_i_1__4_n_2 ,\time_out_counter_reg[8]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__4_n_4 ,\time_out_counter_reg[8]_i_1__4_n_5 ,\time_out_counter_reg[8]_i_1__4_n_6 ,\time_out_counter_reg[8]_i_1__4_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__4_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1__0
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3_reg_n_0),
        .I2(\wait_bypass_count[0]_i_4__0_n_0 ),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1__0_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080000)) 
    time_tlock_max_i_1__0
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_tlock_max_i_2__0_n_0),
        .I3(time_tlock_max_i_3__0_n_0),
        .I4(check_tlock_max_reg_n_0),
        .I5(time_tlock_max),
        .O(time_tlock_max_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF777F)) 
    time_tlock_max_i_2__0
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[4]),
        .I4(time_tlock_max_i_4__0_n_0),
        .I5(time_out_2ms_i_3_n_0),
        .O(time_tlock_max_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_3__0
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .O(time_tlock_max_i_3__0_n_0));
  LUT5 #(
    .INIT(32'h0000001F)) 
    time_tlock_max_i_4__0
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[3]),
        .O(time_tlock_max_i_4__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__0_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__0 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__0 
       (.I0(\wait_bypass_count[0]_i_4__0_n_0 ),
        .I1(rx_fsm_reset_done_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \wait_bypass_count[0]_i_4__0 
       (.I0(\wait_bypass_count[0]_i_6__0_n_0 ),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[0]),
        .I4(\wait_bypass_count[0]_i_7__0_n_0 ),
        .O(\wait_bypass_count[0]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5__0 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \wait_bypass_count[0]_i_6__0 
       (.I0(wait_bypass_count_reg[3]),
        .I1(wait_bypass_count_reg[5]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[7]),
        .O(\wait_bypass_count[0]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \wait_bypass_count[0]_i_7__0 
       (.I0(wait_bypass_count_reg[2]),
        .I1(wait_bypass_count_reg[12]),
        .I2(wait_bypass_count_reg[4]),
        .I3(wait_bypass_count_reg[10]),
        .I4(wait_bypass_count_reg[6]),
        .I5(wait_bypass_count_reg[11]),
        .O(\wait_bypass_count[0]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__0_n_0 ,\wait_bypass_count_reg[0]_i_3__0_n_1 ,\wait_bypass_count_reg[0]_i_3__0_n_2 ,\wait_bypass_count_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__0_n_4 ,\wait_bypass_count_reg[0]_i_3__0_n_5 ,\wait_bypass_count_reg[0]_i_3__0_n_6 ,\wait_bypass_count_reg[0]_i_3__0_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[12]_i_1__0 
       (.CI(\wait_bypass_count_reg[8]_i_1__0_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__0_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__0_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__0_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[4]_i_1__0 
       (.CI(\wait_bypass_count_reg[0]_i_3__0_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__0_n_0 ,\wait_bypass_count_reg[4]_i_1__0_n_1 ,\wait_bypass_count_reg[4]_i_1__0_n_2 ,\wait_bypass_count_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__0_n_4 ,\wait_bypass_count_reg[4]_i_1__0_n_5 ,\wait_bypass_count_reg[4]_i_1__0_n_6 ,\wait_bypass_count_reg[4]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__0_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  CARRY4 \wait_bypass_count_reg[8]_i_1__0 
       (.CI(\wait_bypass_count_reg[4]_i_1__0_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__0_n_0 ,\wait_bypass_count_reg[8]_i_1__0_n_1 ,\wait_bypass_count_reg[8]_i_1__0_n_2 ,\wait_bypass_count_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__0_n_4 ,\wait_bypass_count_reg[8]_i_1__0_n_5 ,\wait_bypass_count_reg[8]_i_1__0_n_6 ,\wait_bypass_count_reg[8]_i_1__0_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(gt1_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__0_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__0_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10__4 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11__4 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11__4_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \wait_time_cnt[0]_i_1__5 
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .O(\wait_time_cnt[0]_i_1__5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2__4 
       (.I0(\wait_time_cnt[0]_i_4__4_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__4_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__4_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__4_n_0 ),
        .O(\wait_time_cnt[0]_i_2__4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__4 
       (.I0(wait_time_cnt_reg[15]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[0]_i_4__4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5__4 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[1]),
        .I3(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__4 
       (.I0(wait_time_cnt_reg[9]),
        .I1(wait_time_cnt_reg[10]),
        .I2(wait_time_cnt_reg[11]),
        .I3(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[0]_i_6__4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__4 
       (.I0(wait_time_cnt_reg[7]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[8]),
        .I3(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_7__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__4 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__4 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__4 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__4 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__4 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__4 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__4 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__4 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__4 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__4 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__4 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__4_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__4_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__4 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__4_n_0 ,\wait_time_cnt_reg[0]_i_3__4_n_1 ,\wait_time_cnt_reg[0]_i_3__4_n_2 ,\wait_time_cnt_reg[0]_i_3__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__4_n_4 ,\wait_time_cnt_reg[0]_i_3__4_n_5 ,\wait_time_cnt_reg[0]_i_3__4_n_6 ,\wait_time_cnt_reg[0]_i_3__4_n_7 }),
        .S({\wait_time_cnt[0]_i_8__4_n_0 ,\wait_time_cnt[0]_i_9__4_n_0 ,\wait_time_cnt[0]_i_10__4_n_0 ,\wait_time_cnt[0]_i_11__4_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__4_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__4_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__4_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__4 
       (.CI(\wait_time_cnt_reg[8]_i_1__4_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__4_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__4_n_1 ,\wait_time_cnt_reg[12]_i_1__4_n_2 ,\wait_time_cnt_reg[12]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__4_n_4 ,\wait_time_cnt_reg[12]_i_1__4_n_5 ,\wait_time_cnt_reg[12]_i_1__4_n_6 ,\wait_time_cnt_reg[12]_i_1__4_n_7 }),
        .S({\wait_time_cnt[12]_i_2__4_n_0 ,\wait_time_cnt[12]_i_3__4_n_0 ,\wait_time_cnt[12]_i_4__4_n_0 ,\wait_time_cnt[12]_i_5__4_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__4_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__4_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__4_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDSE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__4_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__4_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__4_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__4_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__4 
       (.CI(\wait_time_cnt_reg[0]_i_3__4_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__4_n_0 ,\wait_time_cnt_reg[4]_i_1__4_n_1 ,\wait_time_cnt_reg[4]_i_1__4_n_2 ,\wait_time_cnt_reg[4]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__4_n_4 ,\wait_time_cnt_reg[4]_i_1__4_n_5 ,\wait_time_cnt_reg[4]_i_1__4_n_6 ,\wait_time_cnt_reg[4]_i_1__4_n_7 }),
        .S({\wait_time_cnt[4]_i_2__4_n_0 ,\wait_time_cnt[4]_i_3__4_n_0 ,\wait_time_cnt[4]_i_4__4_n_0 ,\wait_time_cnt[4]_i_5__4_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__4_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__4_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__4_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__5_n_0 ));
  FDRE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__4_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__4 
       (.CI(\wait_time_cnt_reg[4]_i_1__4_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__4_n_0 ,\wait_time_cnt_reg[8]_i_1__4_n_1 ,\wait_time_cnt_reg[8]_i_1__4_n_2 ,\wait_time_cnt_reg[8]_i_1__4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__4_n_4 ,\wait_time_cnt_reg[8]_i_1__4_n_5 ,\wait_time_cnt_reg[8]_i_1__4_n_6 ,\wait_time_cnt_reg[8]_i_1__4_n_7 }),
        .S({\wait_time_cnt[8]_i_2__4_n_0 ,\wait_time_cnt[8]_i_3__4_n_0 ,\wait_time_cnt[8]_i_4__4_n_0 ,\wait_time_cnt[8]_i_5__4_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__4_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__4_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1__5_n_0 ));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_RX_STARTUP_FSM" *) 
module gtwizard_4_channel_gtwizard_4_channel_RX_STARTUP_FSM_2
   (SR,
    gt2_rx_fsm_reset_done_out,
    gt2_rxuserrdy_i,
    gt2_rxdfelfhold_i,
    sysclk_in,
    gt2_rxusrclk_in,
    soft_reset_rx_in,
    \FSM_sequential_rx_state_reg[0]_0 ,
    dont_reset_on_data_error_in,
    gt2_rxresetdone_out,
    gt2_data_valid_in,
    gt2_cplllock_out);
  output [0:0]SR;
  output gt2_rx_fsm_reset_done_out;
  output gt2_rxuserrdy_i;
  output gt2_rxdfelfhold_i;
  input sysclk_in;
  input gt2_rxusrclk_in;
  input soft_reset_rx_in;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input dont_reset_on_data_error_in;
  input gt2_rxresetdone_out;
  input gt2_data_valid_in;
  input gt2_cplllock_out;

  wire \FSM_sequential_rx_state[0]_i_2__1_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_3__0_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1__1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10__0_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4__1_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6__0_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8__1_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9__0_n_0 ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire RXDFEAGCHOLD_i_1__1_n_0;
  wire RXUSERRDY_i_1__1_n_0;
  wire [0:0]SR;
  wire adapt_count;
  wire \adapt_count[0]_i_10__1_n_0 ;
  wire \adapt_count[0]_i_11__1_n_0 ;
  wire \adapt_count[0]_i_3__1_n_0 ;
  wire \adapt_count[0]_i_4__1_n_0 ;
  wire \adapt_count[0]_i_5__1_n_0 ;
  wire \adapt_count[0]_i_6__1_n_0 ;
  wire \adapt_count[0]_i_7__1_n_0 ;
  wire \adapt_count[0]_i_8__1_n_0 ;
  wire \adapt_count[0]_i_9__1_n_0 ;
  wire [31:0]adapt_count_reg;
  wire \adapt_count_reg[0]_i_2__1_n_0 ;
  wire \adapt_count_reg[0]_i_2__1_n_1 ;
  wire \adapt_count_reg[0]_i_2__1_n_2 ;
  wire \adapt_count_reg[0]_i_2__1_n_3 ;
  wire \adapt_count_reg[0]_i_2__1_n_4 ;
  wire \adapt_count_reg[0]_i_2__1_n_5 ;
  wire \adapt_count_reg[0]_i_2__1_n_6 ;
  wire \adapt_count_reg[0]_i_2__1_n_7 ;
  wire \adapt_count_reg[12]_i_1__1_n_0 ;
  wire \adapt_count_reg[12]_i_1__1_n_1 ;
  wire \adapt_count_reg[12]_i_1__1_n_2 ;
  wire \adapt_count_reg[12]_i_1__1_n_3 ;
  wire \adapt_count_reg[12]_i_1__1_n_4 ;
  wire \adapt_count_reg[12]_i_1__1_n_5 ;
  wire \adapt_count_reg[12]_i_1__1_n_6 ;
  wire \adapt_count_reg[12]_i_1__1_n_7 ;
  wire \adapt_count_reg[16]_i_1__1_n_0 ;
  wire \adapt_count_reg[16]_i_1__1_n_1 ;
  wire \adapt_count_reg[16]_i_1__1_n_2 ;
  wire \adapt_count_reg[16]_i_1__1_n_3 ;
  wire \adapt_count_reg[16]_i_1__1_n_4 ;
  wire \adapt_count_reg[16]_i_1__1_n_5 ;
  wire \adapt_count_reg[16]_i_1__1_n_6 ;
  wire \adapt_count_reg[16]_i_1__1_n_7 ;
  wire \adapt_count_reg[20]_i_1__1_n_0 ;
  wire \adapt_count_reg[20]_i_1__1_n_1 ;
  wire \adapt_count_reg[20]_i_1__1_n_2 ;
  wire \adapt_count_reg[20]_i_1__1_n_3 ;
  wire \adapt_count_reg[20]_i_1__1_n_4 ;
  wire \adapt_count_reg[20]_i_1__1_n_5 ;
  wire \adapt_count_reg[20]_i_1__1_n_6 ;
  wire \adapt_count_reg[20]_i_1__1_n_7 ;
  wire \adapt_count_reg[24]_i_1__1_n_0 ;
  wire \adapt_count_reg[24]_i_1__1_n_1 ;
  wire \adapt_count_reg[24]_i_1__1_n_2 ;
  wire \adapt_count_reg[24]_i_1__1_n_3 ;
  wire \adapt_count_reg[24]_i_1__1_n_4 ;
  wire \adapt_count_reg[24]_i_1__1_n_5 ;
  wire \adapt_count_reg[24]_i_1__1_n_6 ;
  wire \adapt_count_reg[24]_i_1__1_n_7 ;
  wire \adapt_count_reg[28]_i_1__1_n_1 ;
  wire \adapt_count_reg[28]_i_1__1_n_2 ;
  wire \adapt_count_reg[28]_i_1__1_n_3 ;
  wire \adapt_count_reg[28]_i_1__1_n_4 ;
  wire \adapt_count_reg[28]_i_1__1_n_5 ;
  wire \adapt_count_reg[28]_i_1__1_n_6 ;
  wire \adapt_count_reg[28]_i_1__1_n_7 ;
  wire \adapt_count_reg[4]_i_1__1_n_0 ;
  wire \adapt_count_reg[4]_i_1__1_n_1 ;
  wire \adapt_count_reg[4]_i_1__1_n_2 ;
  wire \adapt_count_reg[4]_i_1__1_n_3 ;
  wire \adapt_count_reg[4]_i_1__1_n_4 ;
  wire \adapt_count_reg[4]_i_1__1_n_5 ;
  wire \adapt_count_reg[4]_i_1__1_n_6 ;
  wire \adapt_count_reg[4]_i_1__1_n_7 ;
  wire \adapt_count_reg[8]_i_1__1_n_0 ;
  wire \adapt_count_reg[8]_i_1__1_n_1 ;
  wire \adapt_count_reg[8]_i_1__1_n_2 ;
  wire \adapt_count_reg[8]_i_1__1_n_3 ;
  wire \adapt_count_reg[8]_i_1__1_n_4 ;
  wire \adapt_count_reg[8]_i_1__1_n_5 ;
  wire \adapt_count_reg[8]_i_1__1_n_6 ;
  wire \adapt_count_reg[8]_i_1__1_n_7 ;
  wire adapt_count_reset_reg_n_0;
  wire check_tlock_max_i_1__1_n_0;
  wire check_tlock_max_reg_n_0;
  wire dont_reset_on_data_error_in;
  wire gt2_cplllock_out;
  wire gt2_data_valid_in;
  wire gt2_rx_fsm_reset_done_out;
  wire gt2_rxdfelfhold_i;
  wire gt2_rxresetdone_out;
  wire gt2_rxuserrdy_i;
  wire gt2_rxusrclk_in;
  wire gtrxreset_i_i_1__1_n_0;
  wire init_wait_count;
  wire \init_wait_count[7]_i_3__5_n_0 ;
  wire \init_wait_count[7]_i_4__5_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1__5_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__5_n_0 ;
  wire \mmcm_lock_count[7]_i_4__5_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__5_n_0;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire reset_time_out_i_3__5_n_0;
  wire reset_time_out_i_5__0_n_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__1_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3_reg_n_0;
  wire [3:0]rx_state;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire soft_reset_rx_in;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_1;
  wire sync_cplllock_n_2;
  wire sync_data_valid_n_0;
  wire sync_data_valid_n_1;
  wire sync_data_valid_n_2;
  wire sync_data_valid_n_3;
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire sysclk_in;
  wire time_out_100us_i_1__1_n_0;
  wire time_out_100us_i_2__1_n_0;
  wire time_out_100us_i_3__1_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1__1_n_0;
  wire time_out_1us_i_2__1_n_0;
  wire time_out_1us_i_3__1_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1__1_n_0;
  wire time_out_2ms_i_2__4_n_0;
  wire time_out_2ms_i_3__2_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_adapt_i_1__1_n_0;
  wire time_out_adapt_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__0_n_0 ;
  wire \time_out_counter[0]_i_4__1_n_0 ;
  wire \time_out_counter[0]_i_5__6_n_0 ;
  wire \time_out_counter[0]_i_6__2_n_0 ;
  wire \time_out_counter[0]_i_7__0_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__5_n_0 ;
  wire \time_out_counter_reg[0]_i_2__5_n_1 ;
  wire \time_out_counter_reg[0]_i_2__5_n_2 ;
  wire \time_out_counter_reg[0]_i_2__5_n_3 ;
  wire \time_out_counter_reg[0]_i_2__5_n_4 ;
  wire \time_out_counter_reg[0]_i_2__5_n_5 ;
  wire \time_out_counter_reg[0]_i_2__5_n_6 ;
  wire \time_out_counter_reg[0]_i_2__5_n_7 ;
  wire \time_out_counter_reg[12]_i_1__5_n_0 ;
  wire \time_out_counter_reg[12]_i_1__5_n_1 ;
  wire \time_out_counter_reg[12]_i_1__5_n_2 ;
  wire \time_out_counter_reg[12]_i_1__5_n_3 ;
  wire \time_out_counter_reg[12]_i_1__5_n_4 ;
  wire \time_out_counter_reg[12]_i_1__5_n_5 ;
  wire \time_out_counter_reg[12]_i_1__5_n_6 ;
  wire \time_out_counter_reg[12]_i_1__5_n_7 ;
  wire \time_out_counter_reg[16]_i_1__5_n_3 ;
  wire \time_out_counter_reg[16]_i_1__5_n_6 ;
  wire \time_out_counter_reg[16]_i_1__5_n_7 ;
  wire \time_out_counter_reg[4]_i_1__5_n_0 ;
  wire \time_out_counter_reg[4]_i_1__5_n_1 ;
  wire \time_out_counter_reg[4]_i_1__5_n_2 ;
  wire \time_out_counter_reg[4]_i_1__5_n_3 ;
  wire \time_out_counter_reg[4]_i_1__5_n_4 ;
  wire \time_out_counter_reg[4]_i_1__5_n_5 ;
  wire \time_out_counter_reg[4]_i_1__5_n_6 ;
  wire \time_out_counter_reg[4]_i_1__5_n_7 ;
  wire \time_out_counter_reg[8]_i_1__5_n_0 ;
  wire \time_out_counter_reg[8]_i_1__5_n_1 ;
  wire \time_out_counter_reg[8]_i_1__5_n_2 ;
  wire \time_out_counter_reg[8]_i_1__5_n_3 ;
  wire \time_out_counter_reg[8]_i_1__5_n_4 ;
  wire \time_out_counter_reg[8]_i_1__5_n_5 ;
  wire \time_out_counter_reg[8]_i_1__5_n_6 ;
  wire \time_out_counter_reg[8]_i_1__5_n_7 ;
  wire time_out_wait_bypass_i_1__1_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max_i_1__1_n_0;
  wire time_tlock_max_i_2__1_n_0;
  wire time_tlock_max_i_3__1_n_0;
  wire time_tlock_max_i_4__1_n_0;
  wire \wait_bypass_count[0]_i_1__1_n_0 ;
  wire \wait_bypass_count[0]_i_2__1_n_0 ;
  wire \wait_bypass_count[0]_i_4__1_n_0 ;
  wire \wait_bypass_count[0]_i_5__1_n_0 ;
  wire \wait_bypass_count[0]_i_6__1_n_0 ;
  wire \wait_bypass_count[0]_i_7__1_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__1_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__1_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__1_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__1_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__1_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__1_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__1_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__1_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__1_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__1_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__1_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__1_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__1_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__1_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__1_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__1_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__1_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__1_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__1_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__1_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__1_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__1_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__1_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__1_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__1_n_7 ;
  wire \wait_time_cnt[0]_i_10__5_n_0 ;
  wire \wait_time_cnt[0]_i_11__5_n_0 ;
  wire \wait_time_cnt[0]_i_1__0_n_0 ;
  wire \wait_time_cnt[0]_i_2__5_n_0 ;
  wire \wait_time_cnt[0]_i_4__5_n_0 ;
  wire \wait_time_cnt[0]_i_5__5_n_0 ;
  wire \wait_time_cnt[0]_i_6__5_n_0 ;
  wire \wait_time_cnt[0]_i_7__5_n_0 ;
  wire \wait_time_cnt[0]_i_8__5_n_0 ;
  wire \wait_time_cnt[0]_i_9__5_n_0 ;
  wire \wait_time_cnt[12]_i_2__5_n_0 ;
  wire \wait_time_cnt[12]_i_3__5_n_0 ;
  wire \wait_time_cnt[12]_i_4__5_n_0 ;
  wire \wait_time_cnt[12]_i_5__5_n_0 ;
  wire \wait_time_cnt[4]_i_2__5_n_0 ;
  wire \wait_time_cnt[4]_i_3__5_n_0 ;
  wire \wait_time_cnt[4]_i_4__5_n_0 ;
  wire \wait_time_cnt[4]_i_5__5_n_0 ;
  wire \wait_time_cnt[8]_i_2__5_n_0 ;
  wire \wait_time_cnt[8]_i_3__5_n_0 ;
  wire \wait_time_cnt[8]_i_4__5_n_0 ;
  wire \wait_time_cnt[8]_i_5__5_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__5_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__5_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__5_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__5_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__5_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__5_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__5_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__5_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__5_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__5_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__5_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__5_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__5_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__5_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__5_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__5_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__5_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__5_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__5_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__5_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__5_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__5_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__5_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__5_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__5_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__5_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__5_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__5_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__5_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__5_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__5_n_7 ;
  wire [3:3]\NLW_adapt_count_reg[28]_i_1__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__5_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__5_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__1_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__5_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF8000AF00)) 
    \FSM_sequential_rx_state[0]_i_2__1 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFFF7555)) 
    \FSM_sequential_rx_state[1]_i_3__0 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[1]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000100005551555)) 
    \FSM_sequential_rx_state[2]_i_1__1 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h27FF272727272727)) 
    \FSM_sequential_rx_state[2]_i_2 
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(reset_time_out_reg_n_0),
        .I4(time_tlock_max),
        .I5(rx_state[0]),
        .O(\FSM_sequential_rx_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \FSM_sequential_rx_state[3]_i_10__0 
       (.I0(rx_state[1]),
        .I1(init_wait_done_reg_n_0),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_10__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00011101)) 
    \FSM_sequential_rx_state[3]_i_4__1 
       (.I0(\FSM_sequential_rx_state[2]_i_2_n_0 ),
        .I1(rx_state[1]),
        .I2(\FSM_sequential_rx_state_reg[0]_0 ),
        .I3(rx_state[0]),
        .I4(mmcm_lock_reclocked),
        .I5(\FSM_sequential_rx_state[3]_i_10__0_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4__1_n_0 ));
  LUT6 #(
    .INIT(64'hFF1FFFFFFF1FFF1F)) 
    \FSM_sequential_rx_state[3]_i_6__0 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rxresetdone_s3),
        .I4(reset_time_out_reg_n_0),
        .I5(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_6__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \FSM_sequential_rx_state[3]_i_8__1 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_8__1_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A00008A000000)) 
    \FSM_sequential_rx_state[3]_i_9__0 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[2]),
        .O(\FSM_sequential_rx_state[3]_i_9__0_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_4),
        .D(sync_data_valid_n_2),
        .Q(rx_state[0]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_4),
        .D(sync_data_valid_n_1),
        .Q(rx_state[1]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_4),
        .D(\FSM_sequential_rx_state[2]_i_1__1_n_0 ),
        .Q(rx_state[2]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_4),
        .D(sync_data_valid_n_0),
        .Q(rx_state[3]),
        .R(soft_reset_rx_in));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    RXDFEAGCHOLD_i_1__1
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(time_out_adapt_reg_n_0),
        .I5(gt2_rxdfelfhold_i),
        .O(RXDFEAGCHOLD_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXDFEAGCHOLD_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(RXDFEAGCHOLD_i_1__1_n_0),
        .Q(gt2_rxdfelfhold_i),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1__1
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(gt2_rxuserrdy_i),
        .O(RXUSERRDY_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(RXUSERRDY_i_1__1_n_0),
        .Q(gt2_rxuserrdy_i),
        .R(soft_reset_rx_in));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \adapt_count[0]_i_10__1 
       (.I0(adapt_count_reg[13]),
        .I1(adapt_count_reg[8]),
        .I2(adapt_count_reg[16]),
        .I3(adapt_count_reg[24]),
        .O(\adapt_count[0]_i_10__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \adapt_count[0]_i_11__1 
       (.I0(adapt_count_reg[17]),
        .I1(adapt_count_reg[11]),
        .I2(adapt_count_reg[29]),
        .I3(adapt_count_reg[14]),
        .O(\adapt_count[0]_i_11__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \adapt_count[0]_i_1__1 
       (.I0(\adapt_count[0]_i_3__1_n_0 ),
        .I1(\adapt_count[0]_i_4__1_n_0 ),
        .I2(\adapt_count[0]_i_5__1_n_0 ),
        .I3(\adapt_count[0]_i_6__1_n_0 ),
        .O(adapt_count));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \adapt_count[0]_i_3__1 
       (.I0(adapt_count_reg[22]),
        .I1(adapt_count_reg[9]),
        .I2(adapt_count_reg[15]),
        .I3(adapt_count_reg[7]),
        .I4(\adapt_count[0]_i_8__1_n_0 ),
        .O(\adapt_count[0]_i_3__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \adapt_count[0]_i_4__1 
       (.I0(adapt_count_reg[26]),
        .I1(adapt_count_reg[19]),
        .I2(adapt_count_reg[23]),
        .I3(adapt_count_reg[5]),
        .I4(\adapt_count[0]_i_9__1_n_0 ),
        .O(\adapt_count[0]_i_4__1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \adapt_count[0]_i_5__1 
       (.I0(adapt_count_reg[10]),
        .I1(adapt_count_reg[31]),
        .I2(adapt_count_reg[6]),
        .I3(adapt_count_reg[1]),
        .I4(\adapt_count[0]_i_10__1_n_0 ),
        .O(\adapt_count[0]_i_5__1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \adapt_count[0]_i_6__1 
       (.I0(adapt_count_reg[30]),
        .I1(adapt_count_reg[18]),
        .I2(adapt_count_reg[3]),
        .I3(adapt_count_reg[28]),
        .I4(\adapt_count[0]_i_11__1_n_0 ),
        .O(\adapt_count[0]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adapt_count[0]_i_7__1 
       (.I0(adapt_count_reg[0]),
        .O(\adapt_count[0]_i_7__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \adapt_count[0]_i_8__1 
       (.I0(adapt_count_reg[21]),
        .I1(adapt_count_reg[20]),
        .I2(adapt_count_reg[27]),
        .I3(adapt_count_reg[12]),
        .O(\adapt_count[0]_i_8__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adapt_count[0]_i_9__1 
       (.I0(adapt_count_reg[25]),
        .I1(adapt_count_reg[0]),
        .I2(adapt_count_reg[4]),
        .I3(adapt_count_reg[2]),
        .O(\adapt_count[0]_i_9__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[0] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__1_n_7 ),
        .Q(adapt_count_reg[0]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\adapt_count_reg[0]_i_2__1_n_0 ,\adapt_count_reg[0]_i_2__1_n_1 ,\adapt_count_reg[0]_i_2__1_n_2 ,\adapt_count_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\adapt_count_reg[0]_i_2__1_n_4 ,\adapt_count_reg[0]_i_2__1_n_5 ,\adapt_count_reg[0]_i_2__1_n_6 ,\adapt_count_reg[0]_i_2__1_n_7 }),
        .S({adapt_count_reg[3:1],\adapt_count[0]_i_7__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[10] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__1_n_5 ),
        .Q(adapt_count_reg[10]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[11] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__1_n_4 ),
        .Q(adapt_count_reg[11]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[12] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__1_n_7 ),
        .Q(adapt_count_reg[12]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[12]_i_1__1 
       (.CI(\adapt_count_reg[8]_i_1__1_n_0 ),
        .CO({\adapt_count_reg[12]_i_1__1_n_0 ,\adapt_count_reg[12]_i_1__1_n_1 ,\adapt_count_reg[12]_i_1__1_n_2 ,\adapt_count_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[12]_i_1__1_n_4 ,\adapt_count_reg[12]_i_1__1_n_5 ,\adapt_count_reg[12]_i_1__1_n_6 ,\adapt_count_reg[12]_i_1__1_n_7 }),
        .S(adapt_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[13] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__1_n_6 ),
        .Q(adapt_count_reg[13]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[14] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__1_n_5 ),
        .Q(adapt_count_reg[14]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[15] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__1_n_4 ),
        .Q(adapt_count_reg[15]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[16] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__1_n_7 ),
        .Q(adapt_count_reg[16]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[16]_i_1__1 
       (.CI(\adapt_count_reg[12]_i_1__1_n_0 ),
        .CO({\adapt_count_reg[16]_i_1__1_n_0 ,\adapt_count_reg[16]_i_1__1_n_1 ,\adapt_count_reg[16]_i_1__1_n_2 ,\adapt_count_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[16]_i_1__1_n_4 ,\adapt_count_reg[16]_i_1__1_n_5 ,\adapt_count_reg[16]_i_1__1_n_6 ,\adapt_count_reg[16]_i_1__1_n_7 }),
        .S(adapt_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[17] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__1_n_6 ),
        .Q(adapt_count_reg[17]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[18] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__1_n_5 ),
        .Q(adapt_count_reg[18]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[19] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__1_n_4 ),
        .Q(adapt_count_reg[19]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[1] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__1_n_6 ),
        .Q(adapt_count_reg[1]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[20] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__1_n_7 ),
        .Q(adapt_count_reg[20]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[20]_i_1__1 
       (.CI(\adapt_count_reg[16]_i_1__1_n_0 ),
        .CO({\adapt_count_reg[20]_i_1__1_n_0 ,\adapt_count_reg[20]_i_1__1_n_1 ,\adapt_count_reg[20]_i_1__1_n_2 ,\adapt_count_reg[20]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[20]_i_1__1_n_4 ,\adapt_count_reg[20]_i_1__1_n_5 ,\adapt_count_reg[20]_i_1__1_n_6 ,\adapt_count_reg[20]_i_1__1_n_7 }),
        .S(adapt_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[21] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__1_n_6 ),
        .Q(adapt_count_reg[21]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[22] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__1_n_5 ),
        .Q(adapt_count_reg[22]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[23] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__1_n_4 ),
        .Q(adapt_count_reg[23]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[24] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__1_n_7 ),
        .Q(adapt_count_reg[24]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[24]_i_1__1 
       (.CI(\adapt_count_reg[20]_i_1__1_n_0 ),
        .CO({\adapt_count_reg[24]_i_1__1_n_0 ,\adapt_count_reg[24]_i_1__1_n_1 ,\adapt_count_reg[24]_i_1__1_n_2 ,\adapt_count_reg[24]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[24]_i_1__1_n_4 ,\adapt_count_reg[24]_i_1__1_n_5 ,\adapt_count_reg[24]_i_1__1_n_6 ,\adapt_count_reg[24]_i_1__1_n_7 }),
        .S(adapt_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[25] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__1_n_6 ),
        .Q(adapt_count_reg[25]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[26] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__1_n_5 ),
        .Q(adapt_count_reg[26]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[27] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__1_n_4 ),
        .Q(adapt_count_reg[27]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[28] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__1_n_7 ),
        .Q(adapt_count_reg[28]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[28]_i_1__1 
       (.CI(\adapt_count_reg[24]_i_1__1_n_0 ),
        .CO({\NLW_adapt_count_reg[28]_i_1__1_CO_UNCONNECTED [3],\adapt_count_reg[28]_i_1__1_n_1 ,\adapt_count_reg[28]_i_1__1_n_2 ,\adapt_count_reg[28]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[28]_i_1__1_n_4 ,\adapt_count_reg[28]_i_1__1_n_5 ,\adapt_count_reg[28]_i_1__1_n_6 ,\adapt_count_reg[28]_i_1__1_n_7 }),
        .S(adapt_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[29] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__1_n_6 ),
        .Q(adapt_count_reg[29]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[2] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__1_n_5 ),
        .Q(adapt_count_reg[2]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[30] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__1_n_5 ),
        .Q(adapt_count_reg[30]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[31] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__1_n_4 ),
        .Q(adapt_count_reg[31]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[3] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__1_n_4 ),
        .Q(adapt_count_reg[3]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[4] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__1_n_7 ),
        .Q(adapt_count_reg[4]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[4]_i_1__1 
       (.CI(\adapt_count_reg[0]_i_2__1_n_0 ),
        .CO({\adapt_count_reg[4]_i_1__1_n_0 ,\adapt_count_reg[4]_i_1__1_n_1 ,\adapt_count_reg[4]_i_1__1_n_2 ,\adapt_count_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[4]_i_1__1_n_4 ,\adapt_count_reg[4]_i_1__1_n_5 ,\adapt_count_reg[4]_i_1__1_n_6 ,\adapt_count_reg[4]_i_1__1_n_7 }),
        .S(adapt_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[5] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__1_n_6 ),
        .Q(adapt_count_reg[5]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[6] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__1_n_5 ),
        .Q(adapt_count_reg[6]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[7] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__1_n_4 ),
        .Q(adapt_count_reg[7]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[8] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__1_n_7 ),
        .Q(adapt_count_reg[8]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[8]_i_1__1 
       (.CI(\adapt_count_reg[4]_i_1__1_n_0 ),
        .CO({\adapt_count_reg[8]_i_1__1_n_0 ,\adapt_count_reg[8]_i_1__1_n_1 ,\adapt_count_reg[8]_i_1__1_n_2 ,\adapt_count_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[8]_i_1__1_n_4 ,\adapt_count_reg[8]_i_1__1_n_5 ,\adapt_count_reg[8]_i_1__1_n_6 ,\adapt_count_reg[8]_i_1__1_n_7 }),
        .S(adapt_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[9] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__1_n_6 ),
        .Q(adapt_count_reg[9]),
        .R(adapt_count_reset_reg_n_0));
  FDSE #(
    .INIT(1'b0)) 
    adapt_count_reset_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_2),
        .Q(adapt_count_reset_reg_n_0),
        .S(soft_reset_rx_in));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    check_tlock_max_i_1__1
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[0]),
        .I3(rx_state[3]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(check_tlock_max_i_1__1_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    gtrxreset_i_i_1__1
       (.I0(rx_state[1]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(SR),
        .O(gtrxreset_i_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gtrxreset_i_i_1__1_n_0),
        .Q(SR),
        .R(soft_reset_rx_in));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__5 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__5 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__5 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__5 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__5 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__5 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_1__5 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\init_wait_count[7]_i_4__5_n_0 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \init_wait_count[7]_i_1__5 
       (.I0(\init_wait_count[7]_i_3__5_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[5]),
        .I4(init_wait_count_reg__0[2]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[7]_i_2__5 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\init_wait_count[7]_i_4__5_n_0 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \init_wait_count[7]_i_3__5 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[7]),
        .I3(init_wait_count_reg__0[4]),
        .O(\init_wait_count[7]_i_3__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[7]_i_4__5 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .O(\init_wait_count[7]_i_4__5_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    init_wait_done_i_1__5
       (.I0(\init_wait_count[7]_i_3__5_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[5]),
        .I4(init_wait_count_reg__0[2]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__5_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_rx_in),
        .D(init_wait_done_i_1__5_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__5 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__5 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__5 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__5 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__5 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__5 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1__5 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__5_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2__5 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__5_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2__5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__5 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4__5_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4__5 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\mmcm_lock_count[7]_i_4__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__5_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__5_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__5_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__5_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__5_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__5_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__5_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__5_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2__5
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(mmcm_lock_reclocked_i_2__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    reset_time_out_i_3__5
       (.I0(mmcm_lock_reclocked),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state_reg[0]_0 ),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .I5(rxresetdone_s3),
        .O(reset_time_out_i_3__5_n_0));
  LUT5 #(
    .INIT(32'h07DC07CC)) 
    reset_time_out_i_5__0
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(reset_time_out_i_5__0_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_1),
        .Q(reset_time_out_reg_n_0),
        .S(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    run_phase_alignment_int_i_1__1
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__1_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_data_valid_n_5),
        .Q(gt2_rx_fsm_reset_done_out),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_21 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_22 sync_cplllock
       (.\FSM_sequential_rx_state_reg[0] (sync_cplllock_n_0),
        .\FSM_sequential_rx_state_reg[0]_0 (time_out_2ms_reg_n_0),
        .\FSM_sequential_rx_state_reg[3] (sync_cplllock_n_1),
        .\FSM_sequential_rx_state_reg[3]_0 (sync_cplllock_n_2),
        .Q(rx_state),
        .adapt_count_reset_reg(adapt_count_reset_reg_n_0),
        .gt2_cplllock_out(gt2_cplllock_out),
        .reset_time_out_reg(reset_time_out_i_3__5_n_0),
        .reset_time_out_reg_0(sync_data_valid_n_3),
        .reset_time_out_reg_1(reset_time_out_i_5__0_n_0),
        .reset_time_out_reg_2(reset_time_out_reg_n_0),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_23 sync_data_valid
       (.D({sync_data_valid_n_0,sync_data_valid_n_1,sync_data_valid_n_2}),
        .E(sync_data_valid_n_4),
        .\FSM_sequential_rx_state_reg[0] (sync_data_valid_n_3),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[0]_i_2__1_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[1]_i_3__0_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\FSM_sequential_rx_state[3]_i_4__1_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (\wait_time_cnt[0]_i_2__5_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_4 (sync_cplllock_n_0),
        .\FSM_sequential_rx_state_reg[0]_5 (\FSM_sequential_rx_state[3]_i_6__0_n_0 ),
        .\FSM_sequential_rx_state_reg[1] (time_out_100us_reg_n_0),
        .\FSM_sequential_rx_state_reg[3] (sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[3]_0 (\FSM_sequential_rx_state[3]_i_8__1_n_0 ),
        .\FSM_sequential_rx_state_reg[3]_1 (\FSM_sequential_rx_state[3]_i_9__0_n_0 ),
        .Q(rx_state),
        .dont_reset_on_data_error_in(dont_reset_on_data_error_in),
        .gt2_data_valid_in(gt2_data_valid_in),
        .gt2_rx_fsm_reset_done_out(gt2_rx_fsm_reset_done_out),
        .rx_fsm_reset_done_int_reg(reset_time_out_reg_n_0),
        .rx_fsm_reset_done_int_reg_0(time_out_1us_reg_n_0),
        .sysclk_in(sysclk_in),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_24 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7:6]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2__5_n_0),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_25 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .gt2_rxusrclk_in(gt2_rxusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_26 sync_rx_fsm_reset_done_int
       (.data_out(rx_fsm_reset_done_int_s2),
        .gt2_rx_fsm_reset_done_out(gt2_rx_fsm_reset_done_out),
        .gt2_rxusrclk_in(gt2_rxusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_27 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .sysclk_in(sysclk_in));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_100us_i_1__1
       (.I0(\time_out_counter[0]_i_4__1_n_0 ),
        .I1(time_out_100us_i_2__1_n_0),
        .I2(time_tlock_max_i_3__1_n_0),
        .I3(time_out_100us_i_3__1_n_0),
        .I4(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    time_out_100us_i_2__1
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[2]),
        .O(time_out_100us_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    time_out_100us_i_3__1
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[7]),
        .O(time_out_100us_i_3__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1__1_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_1us_i_1__1
       (.I0(time_tlock_max_i_3__1_n_0),
        .I1(time_out_1us_i_2__1_n_0),
        .I2(\time_out_counter[0]_i_4__1_n_0 ),
        .I3(time_out_1us_i_3__1_n_0),
        .I4(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1__1_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    time_out_1us_i_2__1
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[12]),
        .O(time_out_1us_i_2__1_n_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    time_out_1us_i_3__1
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[0]),
        .I4(time_out_counter_reg[7]),
        .I5(time_out_counter_reg[2]),
        .O(time_out_1us_i_3__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1__1_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_2ms_i_1__1
       (.I0(\time_out_counter[0]_i_4__1_n_0 ),
        .I1(time_out_2ms_i_2__4_n_0),
        .I2(\time_out_counter[0]_i_6__2_n_0 ),
        .I3(time_out_2ms_i_3__2_n_0),
        .I4(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_2__4
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[1]),
        .O(time_out_2ms_i_2__4_n_0));
  LUT6 #(
    .INIT(64'h0004000000000000)) 
    time_out_2ms_i_3__2
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_out_2ms_i_3__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__1_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAABA)) 
    time_out_adapt_i_1__1
       (.I0(time_out_adapt_reg_n_0),
        .I1(\adapt_count[0]_i_6__1_n_0 ),
        .I2(\adapt_count[0]_i_5__1_n_0 ),
        .I3(\adapt_count[0]_i_4__1_n_0 ),
        .I4(\adapt_count[0]_i_3__1_n_0 ),
        .I5(adapt_count_reset_reg_n_0),
        .O(time_out_adapt_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_adapt_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_adapt_i_1__1_n_0),
        .Q(time_out_adapt_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \time_out_counter[0]_i_1__1 
       (.I0(\time_out_counter[0]_i_3__0_n_0 ),
        .I1(\time_out_counter[0]_i_4__1_n_0 ),
        .I2(\time_out_counter[0]_i_5__6_n_0 ),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[5]),
        .I5(\time_out_counter[0]_i_6__2_n_0 ),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFBFFF)) 
    \time_out_counter[0]_i_3__0 
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[0]),
        .I5(time_out_counter_reg[1]),
        .O(\time_out_counter[0]_i_3__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_4__1 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[10]),
        .O(\time_out_counter[0]_i_4__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \time_out_counter[0]_i_5__6 
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[6]),
        .O(\time_out_counter[0]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \time_out_counter[0]_i_6__2 
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[14]),
        .O(\time_out_counter[0]_i_6__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_7__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_7__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__5_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__5 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__5_n_0 ,\time_out_counter_reg[0]_i_2__5_n_1 ,\time_out_counter_reg[0]_i_2__5_n_2 ,\time_out_counter_reg[0]_i_2__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__5_n_4 ,\time_out_counter_reg[0]_i_2__5_n_5 ,\time_out_counter_reg[0]_i_2__5_n_6 ,\time_out_counter_reg[0]_i_2__5_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_7__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__5_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__5_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__5_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__5 
       (.CI(\time_out_counter_reg[8]_i_1__5_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__5_n_0 ,\time_out_counter_reg[12]_i_1__5_n_1 ,\time_out_counter_reg[12]_i_1__5_n_2 ,\time_out_counter_reg[12]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__5_n_4 ,\time_out_counter_reg[12]_i_1__5_n_5 ,\time_out_counter_reg[12]_i_1__5_n_6 ,\time_out_counter_reg[12]_i_1__5_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__5_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__5_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__5_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__5_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__5 
       (.CI(\time_out_counter_reg[12]_i_1__5_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__5_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__5_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__5_n_6 ,\time_out_counter_reg[16]_i_1__5_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__5_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__5_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__5_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__5_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__5_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__5 
       (.CI(\time_out_counter_reg[0]_i_2__5_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__5_n_0 ,\time_out_counter_reg[4]_i_1__5_n_1 ,\time_out_counter_reg[4]_i_1__5_n_2 ,\time_out_counter_reg[4]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__5_n_4 ,\time_out_counter_reg[4]_i_1__5_n_5 ,\time_out_counter_reg[4]_i_1__5_n_6 ,\time_out_counter_reg[4]_i_1__5_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__5_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__5_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__5_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__5_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__5 
       (.CI(\time_out_counter_reg[4]_i_1__5_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__5_n_0 ,\time_out_counter_reg[8]_i_1__5_n_1 ,\time_out_counter_reg[8]_i_1__5_n_2 ,\time_out_counter_reg[8]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__5_n_4 ,\time_out_counter_reg[8]_i_1__5_n_5 ,\time_out_counter_reg[8]_i_1__5_n_6 ,\time_out_counter_reg[8]_i_1__5_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__5_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1__1
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3_reg_n_0),
        .I2(\wait_bypass_count[0]_i_4__1_n_0 ),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1__1_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080000)) 
    time_tlock_max_i_1__1
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_tlock_max_i_2__1_n_0),
        .I3(time_tlock_max_i_3__1_n_0),
        .I4(check_tlock_max_reg_n_0),
        .I5(time_tlock_max),
        .O(time_tlock_max_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF777F)) 
    time_tlock_max_i_2__1
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[4]),
        .I4(time_tlock_max_i_4__1_n_0),
        .I5(\time_out_counter[0]_i_4__1_n_0 ),
        .O(time_tlock_max_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_3__1
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .O(time_tlock_max_i_3__1_n_0));
  LUT5 #(
    .INIT(32'h0000001F)) 
    time_tlock_max_i_4__1
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[3]),
        .O(time_tlock_max_i_4__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__1_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__1 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__1_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__1 
       (.I0(\wait_bypass_count[0]_i_4__1_n_0 ),
        .I1(rx_fsm_reset_done_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \wait_bypass_count[0]_i_4__1 
       (.I0(\wait_bypass_count[0]_i_6__1_n_0 ),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[0]),
        .I4(\wait_bypass_count[0]_i_7__1_n_0 ),
        .O(\wait_bypass_count[0]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5__1 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \wait_bypass_count[0]_i_6__1 
       (.I0(wait_bypass_count_reg[3]),
        .I1(wait_bypass_count_reg[5]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[7]),
        .O(\wait_bypass_count[0]_i_6__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \wait_bypass_count[0]_i_7__1 
       (.I0(wait_bypass_count_reg[2]),
        .I1(wait_bypass_count_reg[12]),
        .I2(wait_bypass_count_reg[4]),
        .I3(wait_bypass_count_reg[10]),
        .I4(wait_bypass_count_reg[6]),
        .I5(wait_bypass_count_reg[11]),
        .O(\wait_bypass_count[0]_i_7__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__1_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  CARRY4 \wait_bypass_count_reg[0]_i_3__1 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__1_n_0 ,\wait_bypass_count_reg[0]_i_3__1_n_1 ,\wait_bypass_count_reg[0]_i_3__1_n_2 ,\wait_bypass_count_reg[0]_i_3__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__1_n_4 ,\wait_bypass_count_reg[0]_i_3__1_n_5 ,\wait_bypass_count_reg[0]_i_3__1_n_6 ,\wait_bypass_count_reg[0]_i_3__1_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__1_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__1_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__1_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  CARRY4 \wait_bypass_count_reg[12]_i_1__1 
       (.CI(\wait_bypass_count_reg[8]_i_1__1_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__1_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__1_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__1_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__1_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__1_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__1_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__1_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  CARRY4 \wait_bypass_count_reg[4]_i_1__1 
       (.CI(\wait_bypass_count_reg[0]_i_3__1_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__1_n_0 ,\wait_bypass_count_reg[4]_i_1__1_n_1 ,\wait_bypass_count_reg[4]_i_1__1_n_2 ,\wait_bypass_count_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__1_n_4 ,\wait_bypass_count_reg[4]_i_1__1_n_5 ,\wait_bypass_count_reg[4]_i_1__1_n_6 ,\wait_bypass_count_reg[4]_i_1__1_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__1_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__1_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__1_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__1_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  CARRY4 \wait_bypass_count_reg[8]_i_1__1 
       (.CI(\wait_bypass_count_reg[4]_i_1__1_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__1_n_0 ,\wait_bypass_count_reg[8]_i_1__1_n_1 ,\wait_bypass_count_reg[8]_i_1__1_n_2 ,\wait_bypass_count_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__1_n_4 ,\wait_bypass_count_reg[8]_i_1__1_n_5 ,\wait_bypass_count_reg[8]_i_1__1_n_6 ,\wait_bypass_count_reg[8]_i_1__1_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(gt2_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__1_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__1_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10__5 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11__5 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11__5_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \wait_time_cnt[0]_i_1__0 
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[3]),
        .O(\wait_time_cnt[0]_i_1__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2__5 
       (.I0(\wait_time_cnt[0]_i_4__5_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__5_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__5_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__5_n_0 ),
        .O(\wait_time_cnt[0]_i_2__5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__5 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[0]_i_4__5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5__5 
       (.I0(wait_time_cnt_reg[9]),
        .I1(wait_time_cnt_reg[10]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[0]_i_5__5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__5 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[8]),
        .I3(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[0]_i_6__5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__5 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[7]),
        .I3(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_7__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__5 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__5 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__5 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__5 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__5 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__5 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__5 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__5 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__5 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__5 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__5 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__5_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__5_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__5 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__5_n_0 ,\wait_time_cnt_reg[0]_i_3__5_n_1 ,\wait_time_cnt_reg[0]_i_3__5_n_2 ,\wait_time_cnt_reg[0]_i_3__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__5_n_4 ,\wait_time_cnt_reg[0]_i_3__5_n_5 ,\wait_time_cnt_reg[0]_i_3__5_n_6 ,\wait_time_cnt_reg[0]_i_3__5_n_7 }),
        .S({\wait_time_cnt[0]_i_8__5_n_0 ,\wait_time_cnt[0]_i_9__5_n_0 ,\wait_time_cnt[0]_i_10__5_n_0 ,\wait_time_cnt[0]_i_11__5_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__5_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__5_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__5_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__5 
       (.CI(\wait_time_cnt_reg[8]_i_1__5_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__5_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__5_n_1 ,\wait_time_cnt_reg[12]_i_1__5_n_2 ,\wait_time_cnt_reg[12]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__5_n_4 ,\wait_time_cnt_reg[12]_i_1__5_n_5 ,\wait_time_cnt_reg[12]_i_1__5_n_6 ,\wait_time_cnt_reg[12]_i_1__5_n_7 }),
        .S({\wait_time_cnt[12]_i_2__5_n_0 ,\wait_time_cnt[12]_i_3__5_n_0 ,\wait_time_cnt[12]_i_4__5_n_0 ,\wait_time_cnt[12]_i_5__5_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__5_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__5_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__5_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__5_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__5_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__5_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__5_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__5 
       (.CI(\wait_time_cnt_reg[0]_i_3__5_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__5_n_0 ,\wait_time_cnt_reg[4]_i_1__5_n_1 ,\wait_time_cnt_reg[4]_i_1__5_n_2 ,\wait_time_cnt_reg[4]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__5_n_4 ,\wait_time_cnt_reg[4]_i_1__5_n_5 ,\wait_time_cnt_reg[4]_i_1__5_n_6 ,\wait_time_cnt_reg[4]_i_1__5_n_7 }),
        .S({\wait_time_cnt[4]_i_2__5_n_0 ,\wait_time_cnt[4]_i_3__5_n_0 ,\wait_time_cnt[4]_i_4__5_n_0 ,\wait_time_cnt[4]_i_5__5_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__5_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__5_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__5_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__0_n_0 ));
  FDRE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__5_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__5 
       (.CI(\wait_time_cnt_reg[4]_i_1__5_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__5_n_0 ,\wait_time_cnt_reg[8]_i_1__5_n_1 ,\wait_time_cnt_reg[8]_i_1__5_n_2 ,\wait_time_cnt_reg[8]_i_1__5_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__5_n_4 ,\wait_time_cnt_reg[8]_i_1__5_n_5 ,\wait_time_cnt_reg[8]_i_1__5_n_6 ,\wait_time_cnt_reg[8]_i_1__5_n_7 }),
        .S({\wait_time_cnt[8]_i_2__5_n_0 ,\wait_time_cnt[8]_i_3__5_n_0 ,\wait_time_cnt[8]_i_4__5_n_0 ,\wait_time_cnt[8]_i_5__5_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__5_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__5_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1__0_n_0 ));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_RX_STARTUP_FSM" *) 
module gtwizard_4_channel_gtwizard_4_channel_RX_STARTUP_FSM_4
   (SR,
    gt3_rx_fsm_reset_done_out,
    gt3_rxuserrdy_i,
    gt3_rxdfelfhold_i,
    sysclk_in,
    gt3_rxusrclk_in,
    soft_reset_rx_in,
    \FSM_sequential_rx_state_reg[0]_0 ,
    dont_reset_on_data_error_in,
    gt3_rxresetdone_out,
    gt3_data_valid_in,
    gt3_cplllock_out);
  output [0:0]SR;
  output gt3_rx_fsm_reset_done_out;
  output gt3_rxuserrdy_i;
  output gt3_rxdfelfhold_i;
  input sysclk_in;
  input gt3_rxusrclk_in;
  input soft_reset_rx_in;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input dont_reset_on_data_error_in;
  input gt3_rxresetdone_out;
  input gt3_data_valid_in;
  input gt3_cplllock_out;

  wire \FSM_sequential_rx_state[0]_i_2__2_n_0 ;
  wire \FSM_sequential_rx_state[1]_i_3__1_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_1__2_n_0 ;
  wire \FSM_sequential_rx_state[2]_i_2__0_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_10__1_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_4__2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6__1_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_8__2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_9__1_n_0 ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire RXDFEAGCHOLD_i_1__2_n_0;
  wire RXUSERRDY_i_1__2_n_0;
  wire [0:0]SR;
  wire adapt_count;
  wire \adapt_count[0]_i_10__2_n_0 ;
  wire \adapt_count[0]_i_11__2_n_0 ;
  wire \adapt_count[0]_i_3__2_n_0 ;
  wire \adapt_count[0]_i_4__2_n_0 ;
  wire \adapt_count[0]_i_5__2_n_0 ;
  wire \adapt_count[0]_i_6__2_n_0 ;
  wire \adapt_count[0]_i_7__2_n_0 ;
  wire \adapt_count[0]_i_8__2_n_0 ;
  wire \adapt_count[0]_i_9__2_n_0 ;
  wire [31:0]adapt_count_reg;
  wire \adapt_count_reg[0]_i_2__2_n_0 ;
  wire \adapt_count_reg[0]_i_2__2_n_1 ;
  wire \adapt_count_reg[0]_i_2__2_n_2 ;
  wire \adapt_count_reg[0]_i_2__2_n_3 ;
  wire \adapt_count_reg[0]_i_2__2_n_4 ;
  wire \adapt_count_reg[0]_i_2__2_n_5 ;
  wire \adapt_count_reg[0]_i_2__2_n_6 ;
  wire \adapt_count_reg[0]_i_2__2_n_7 ;
  wire \adapt_count_reg[12]_i_1__2_n_0 ;
  wire \adapt_count_reg[12]_i_1__2_n_1 ;
  wire \adapt_count_reg[12]_i_1__2_n_2 ;
  wire \adapt_count_reg[12]_i_1__2_n_3 ;
  wire \adapt_count_reg[12]_i_1__2_n_4 ;
  wire \adapt_count_reg[12]_i_1__2_n_5 ;
  wire \adapt_count_reg[12]_i_1__2_n_6 ;
  wire \adapt_count_reg[12]_i_1__2_n_7 ;
  wire \adapt_count_reg[16]_i_1__2_n_0 ;
  wire \adapt_count_reg[16]_i_1__2_n_1 ;
  wire \adapt_count_reg[16]_i_1__2_n_2 ;
  wire \adapt_count_reg[16]_i_1__2_n_3 ;
  wire \adapt_count_reg[16]_i_1__2_n_4 ;
  wire \adapt_count_reg[16]_i_1__2_n_5 ;
  wire \adapt_count_reg[16]_i_1__2_n_6 ;
  wire \adapt_count_reg[16]_i_1__2_n_7 ;
  wire \adapt_count_reg[20]_i_1__2_n_0 ;
  wire \adapt_count_reg[20]_i_1__2_n_1 ;
  wire \adapt_count_reg[20]_i_1__2_n_2 ;
  wire \adapt_count_reg[20]_i_1__2_n_3 ;
  wire \adapt_count_reg[20]_i_1__2_n_4 ;
  wire \adapt_count_reg[20]_i_1__2_n_5 ;
  wire \adapt_count_reg[20]_i_1__2_n_6 ;
  wire \adapt_count_reg[20]_i_1__2_n_7 ;
  wire \adapt_count_reg[24]_i_1__2_n_0 ;
  wire \adapt_count_reg[24]_i_1__2_n_1 ;
  wire \adapt_count_reg[24]_i_1__2_n_2 ;
  wire \adapt_count_reg[24]_i_1__2_n_3 ;
  wire \adapt_count_reg[24]_i_1__2_n_4 ;
  wire \adapt_count_reg[24]_i_1__2_n_5 ;
  wire \adapt_count_reg[24]_i_1__2_n_6 ;
  wire \adapt_count_reg[24]_i_1__2_n_7 ;
  wire \adapt_count_reg[28]_i_1__2_n_1 ;
  wire \adapt_count_reg[28]_i_1__2_n_2 ;
  wire \adapt_count_reg[28]_i_1__2_n_3 ;
  wire \adapt_count_reg[28]_i_1__2_n_4 ;
  wire \adapt_count_reg[28]_i_1__2_n_5 ;
  wire \adapt_count_reg[28]_i_1__2_n_6 ;
  wire \adapt_count_reg[28]_i_1__2_n_7 ;
  wire \adapt_count_reg[4]_i_1__2_n_0 ;
  wire \adapt_count_reg[4]_i_1__2_n_1 ;
  wire \adapt_count_reg[4]_i_1__2_n_2 ;
  wire \adapt_count_reg[4]_i_1__2_n_3 ;
  wire \adapt_count_reg[4]_i_1__2_n_4 ;
  wire \adapt_count_reg[4]_i_1__2_n_5 ;
  wire \adapt_count_reg[4]_i_1__2_n_6 ;
  wire \adapt_count_reg[4]_i_1__2_n_7 ;
  wire \adapt_count_reg[8]_i_1__2_n_0 ;
  wire \adapt_count_reg[8]_i_1__2_n_1 ;
  wire \adapt_count_reg[8]_i_1__2_n_2 ;
  wire \adapt_count_reg[8]_i_1__2_n_3 ;
  wire \adapt_count_reg[8]_i_1__2_n_4 ;
  wire \adapt_count_reg[8]_i_1__2_n_5 ;
  wire \adapt_count_reg[8]_i_1__2_n_6 ;
  wire \adapt_count_reg[8]_i_1__2_n_7 ;
  wire adapt_count_reset_reg_n_0;
  wire check_tlock_max_i_1__2_n_0;
  wire check_tlock_max_reg_n_0;
  wire cplllock_sync;
  wire dont_reset_on_data_error_in;
  wire gt3_cplllock_out;
  wire gt3_data_valid_in;
  wire gt3_rx_fsm_reset_done_out;
  wire gt3_rxdfelfhold_i;
  wire gt3_rxresetdone_out;
  wire gt3_rxuserrdy_i;
  wire gt3_rxusrclk_in;
  wire gtrxreset_i_i_1__2_n_0;
  wire init_wait_count;
  wire \init_wait_count[7]_i_3__6_n_0 ;
  wire \init_wait_count[7]_i_4__6_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1__6_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__6_n_0 ;
  wire \mmcm_lock_count[7]_i_4__6_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__6_n_0;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire reset_time_out_i_2__1_n_0;
  wire reset_time_out_i_4__2_n_0;
  wire reset_time_out_i_5__1_n_0;
  wire reset_time_out_reg_n_0;
  wire run_phase_alignment_int_i_1__2_n_0;
  wire run_phase_alignment_int_reg_n_0;
  wire run_phase_alignment_int_s2;
  wire run_phase_alignment_int_s3_reg_n_0;
  wire rx_fsm_reset_done_int_s2;
  wire rx_fsm_reset_done_int_s3_reg_n_0;
  wire [3:0]rx_state;
  wire rxresetdone_s2;
  wire rxresetdone_s3;
  wire soft_reset_rx_in;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_2;
  wire sync_data_valid_n_0;
  wire sync_data_valid_n_1;
  wire sync_data_valid_n_2;
  wire sync_data_valid_n_3;
  wire sync_data_valid_n_4;
  wire sync_data_valid_n_5;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire sysclk_in;
  wire time_out_100us_i_1__2_n_0;
  wire time_out_100us_i_2__2_n_0;
  wire time_out_100us_i_3__2_n_0;
  wire time_out_100us_reg_n_0;
  wire time_out_1us_i_1__2_n_0;
  wire time_out_1us_i_2__2_n_0;
  wire time_out_1us_i_3__2_n_0;
  wire time_out_1us_reg_n_0;
  wire time_out_2ms_i_1__2_n_0;
  wire time_out_2ms_i_2__5_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_adapt_i_1__2_n_0;
  wire time_out_adapt_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__6_n_0 ;
  wire \time_out_counter[0]_i_4__6_n_0 ;
  wire \time_out_counter[0]_i_5__4_n_0 ;
  wire \time_out_counter[0]_i_6__1_n_0 ;
  wire \time_out_counter[0]_i_7__1_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__6_n_0 ;
  wire \time_out_counter_reg[0]_i_2__6_n_1 ;
  wire \time_out_counter_reg[0]_i_2__6_n_2 ;
  wire \time_out_counter_reg[0]_i_2__6_n_3 ;
  wire \time_out_counter_reg[0]_i_2__6_n_4 ;
  wire \time_out_counter_reg[0]_i_2__6_n_5 ;
  wire \time_out_counter_reg[0]_i_2__6_n_6 ;
  wire \time_out_counter_reg[0]_i_2__6_n_7 ;
  wire \time_out_counter_reg[12]_i_1__6_n_0 ;
  wire \time_out_counter_reg[12]_i_1__6_n_1 ;
  wire \time_out_counter_reg[12]_i_1__6_n_2 ;
  wire \time_out_counter_reg[12]_i_1__6_n_3 ;
  wire \time_out_counter_reg[12]_i_1__6_n_4 ;
  wire \time_out_counter_reg[12]_i_1__6_n_5 ;
  wire \time_out_counter_reg[12]_i_1__6_n_6 ;
  wire \time_out_counter_reg[12]_i_1__6_n_7 ;
  wire \time_out_counter_reg[16]_i_1__6_n_3 ;
  wire \time_out_counter_reg[16]_i_1__6_n_6 ;
  wire \time_out_counter_reg[16]_i_1__6_n_7 ;
  wire \time_out_counter_reg[4]_i_1__6_n_0 ;
  wire \time_out_counter_reg[4]_i_1__6_n_1 ;
  wire \time_out_counter_reg[4]_i_1__6_n_2 ;
  wire \time_out_counter_reg[4]_i_1__6_n_3 ;
  wire \time_out_counter_reg[4]_i_1__6_n_4 ;
  wire \time_out_counter_reg[4]_i_1__6_n_5 ;
  wire \time_out_counter_reg[4]_i_1__6_n_6 ;
  wire \time_out_counter_reg[4]_i_1__6_n_7 ;
  wire \time_out_counter_reg[8]_i_1__6_n_0 ;
  wire \time_out_counter_reg[8]_i_1__6_n_1 ;
  wire \time_out_counter_reg[8]_i_1__6_n_2 ;
  wire \time_out_counter_reg[8]_i_1__6_n_3 ;
  wire \time_out_counter_reg[8]_i_1__6_n_4 ;
  wire \time_out_counter_reg[8]_i_1__6_n_5 ;
  wire \time_out_counter_reg[8]_i_1__6_n_6 ;
  wire \time_out_counter_reg[8]_i_1__6_n_7 ;
  wire time_out_wait_bypass_i_1__2_n_0;
  wire time_out_wait_bypass_reg_n_0;
  wire time_out_wait_bypass_s2;
  wire time_out_wait_bypass_s3;
  wire time_tlock_max;
  wire time_tlock_max_i_1__2_n_0;
  wire time_tlock_max_i_2__2_n_0;
  wire time_tlock_max_i_3__2_n_0;
  wire time_tlock_max_i_4__2_n_0;
  wire \wait_bypass_count[0]_i_1__2_n_0 ;
  wire \wait_bypass_count[0]_i_2__2_n_0 ;
  wire \wait_bypass_count[0]_i_4__2_n_0 ;
  wire \wait_bypass_count[0]_i_5__2_n_0 ;
  wire \wait_bypass_count[0]_i_6__2_n_0 ;
  wire \wait_bypass_count[0]_i_7__2_n_0 ;
  wire [12:0]wait_bypass_count_reg;
  wire \wait_bypass_count_reg[0]_i_3__2_n_0 ;
  wire \wait_bypass_count_reg[0]_i_3__2_n_1 ;
  wire \wait_bypass_count_reg[0]_i_3__2_n_2 ;
  wire \wait_bypass_count_reg[0]_i_3__2_n_3 ;
  wire \wait_bypass_count_reg[0]_i_3__2_n_4 ;
  wire \wait_bypass_count_reg[0]_i_3__2_n_5 ;
  wire \wait_bypass_count_reg[0]_i_3__2_n_6 ;
  wire \wait_bypass_count_reg[0]_i_3__2_n_7 ;
  wire \wait_bypass_count_reg[12]_i_1__2_n_7 ;
  wire \wait_bypass_count_reg[4]_i_1__2_n_0 ;
  wire \wait_bypass_count_reg[4]_i_1__2_n_1 ;
  wire \wait_bypass_count_reg[4]_i_1__2_n_2 ;
  wire \wait_bypass_count_reg[4]_i_1__2_n_3 ;
  wire \wait_bypass_count_reg[4]_i_1__2_n_4 ;
  wire \wait_bypass_count_reg[4]_i_1__2_n_5 ;
  wire \wait_bypass_count_reg[4]_i_1__2_n_6 ;
  wire \wait_bypass_count_reg[4]_i_1__2_n_7 ;
  wire \wait_bypass_count_reg[8]_i_1__2_n_0 ;
  wire \wait_bypass_count_reg[8]_i_1__2_n_1 ;
  wire \wait_bypass_count_reg[8]_i_1__2_n_2 ;
  wire \wait_bypass_count_reg[8]_i_1__2_n_3 ;
  wire \wait_bypass_count_reg[8]_i_1__2_n_4 ;
  wire \wait_bypass_count_reg[8]_i_1__2_n_5 ;
  wire \wait_bypass_count_reg[8]_i_1__2_n_6 ;
  wire \wait_bypass_count_reg[8]_i_1__2_n_7 ;
  wire \wait_time_cnt[0]_i_10__6_n_0 ;
  wire \wait_time_cnt[0]_i_11__6_n_0 ;
  wire \wait_time_cnt[0]_i_1__6_n_0 ;
  wire \wait_time_cnt[0]_i_2__6_n_0 ;
  wire \wait_time_cnt[0]_i_4__6_n_0 ;
  wire \wait_time_cnt[0]_i_5__6_n_0 ;
  wire \wait_time_cnt[0]_i_6__6_n_0 ;
  wire \wait_time_cnt[0]_i_7__6_n_0 ;
  wire \wait_time_cnt[0]_i_8__6_n_0 ;
  wire \wait_time_cnt[0]_i_9__6_n_0 ;
  wire \wait_time_cnt[12]_i_2__6_n_0 ;
  wire \wait_time_cnt[12]_i_3__6_n_0 ;
  wire \wait_time_cnt[12]_i_4__6_n_0 ;
  wire \wait_time_cnt[12]_i_5__6_n_0 ;
  wire \wait_time_cnt[4]_i_2__6_n_0 ;
  wire \wait_time_cnt[4]_i_3__6_n_0 ;
  wire \wait_time_cnt[4]_i_4__6_n_0 ;
  wire \wait_time_cnt[4]_i_5__6_n_0 ;
  wire \wait_time_cnt[8]_i_2__6_n_0 ;
  wire \wait_time_cnt[8]_i_3__6_n_0 ;
  wire \wait_time_cnt[8]_i_4__6_n_0 ;
  wire \wait_time_cnt[8]_i_5__6_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__6_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__6_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__6_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__6_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__6_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__6_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__6_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__6_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__6_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__6_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__6_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__6_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__6_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__6_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__6_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__6_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__6_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__6_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__6_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__6_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__6_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__6_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__6_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__6_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__6_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__6_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__6_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__6_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__6_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__6_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__6_n_7 ;
  wire [3:3]\NLW_adapt_count_reg[28]_i_1__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__6_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__6_O_UNCONNECTED ;
  wire [3:0]\NLW_wait_bypass_count_reg[12]_i_1__2_CO_UNCONNECTED ;
  wire [3:1]\NLW_wait_bypass_count_reg[12]_i_1__2_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__6_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFFFF8000AF00)) 
    \FSM_sequential_rx_state[0]_i_2__2 
       (.I0(rx_state[1]),
        .I1(reset_time_out_reg_n_0),
        .I2(rx_state[2]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[0]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF5555FFFF7555)) 
    \FSM_sequential_rx_state[1]_i_3__1 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .I5(rx_state[3]),
        .O(\FSM_sequential_rx_state[1]_i_3__1_n_0 ));
  LUT6 #(
    .INIT(64'h0000100005551555)) 
    \FSM_sequential_rx_state[2]_i_1__2 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(\FSM_sequential_rx_state[2]_i_2__0_n_0 ),
        .O(\FSM_sequential_rx_state[2]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h27FF272727272727)) 
    \FSM_sequential_rx_state[2]_i_2__0 
       (.I0(rx_state[3]),
        .I1(rx_state[1]),
        .I2(rx_state[2]),
        .I3(reset_time_out_reg_n_0),
        .I4(time_tlock_max),
        .I5(rx_state[0]),
        .O(\FSM_sequential_rx_state[2]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT5 #(
    .INIT(32'hFFFF0001)) 
    \FSM_sequential_rx_state[3]_i_10__1 
       (.I0(rx_state[1]),
        .I1(init_wait_done_reg_n_0),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_10__1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00011101)) 
    \FSM_sequential_rx_state[3]_i_4__2 
       (.I0(\FSM_sequential_rx_state[2]_i_2__0_n_0 ),
        .I1(rx_state[1]),
        .I2(\FSM_sequential_rx_state_reg[0]_0 ),
        .I3(rx_state[0]),
        .I4(mmcm_lock_reclocked),
        .I5(\FSM_sequential_rx_state[3]_i_10__1_n_0 ),
        .O(\FSM_sequential_rx_state[3]_i_4__2_n_0 ));
  LUT6 #(
    .INIT(64'hFF1FFFFFFF1FFF1F)) 
    \FSM_sequential_rx_state[3]_i_6__1 
       (.I0(rx_state[3]),
        .I1(rx_state[2]),
        .I2(rx_state[1]),
        .I3(rxresetdone_s3),
        .I4(reset_time_out_reg_n_0),
        .I5(time_out_2ms_reg_n_0),
        .O(\FSM_sequential_rx_state[3]_i_6__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT3 #(
    .INIT(8'h35)) 
    \FSM_sequential_rx_state[3]_i_8__2 
       (.I0(rx_state[2]),
        .I1(rx_state[1]),
        .I2(rx_state[3]),
        .O(\FSM_sequential_rx_state[3]_i_8__2_n_0 ));
  LUT6 #(
    .INIT(64'h8A8A00008A000000)) 
    \FSM_sequential_rx_state[3]_i_9__1 
       (.I0(rx_state[0]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_2ms_reg_n_0),
        .I3(rx_state[3]),
        .I4(rx_state[1]),
        .I5(rx_state[2]),
        .O(\FSM_sequential_rx_state[3]_i_9__1_n_0 ));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(sync_data_valid_n_2),
        .Q(rx_state[0]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(sync_data_valid_n_1),
        .Q(rx_state[1]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(\FSM_sequential_rx_state[2]_i_1__2_n_0 ),
        .Q(rx_state[2]),
        .R(soft_reset_rx_in));
  (* FSM_ENCODED_STATES = "RELEASE_PLL_RESET:0011,VERIFY_RECCLK_STABLE:0100,WAIT_FOR_PLL_LOCK:0010,FSM_DONE:1010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,MONITOR_DATA_VALID:1001,WAIT_FOR_RXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_rx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_data_valid_n_3),
        .D(sync_data_valid_n_0),
        .Q(rx_state[3]),
        .R(soft_reset_rx_in));
  LUT6 #(
    .INIT(64'hFFFFFFFF00400000)) 
    RXDFEAGCHOLD_i_1__2
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(time_out_adapt_reg_n_0),
        .I5(gt3_rxdfelfhold_i),
        .O(RXDFEAGCHOLD_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXDFEAGCHOLD_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(RXDFEAGCHOLD_i_1__2_n_0),
        .Q(gt3_rxdfelfhold_i),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    RXUSERRDY_i_1__2
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(gt3_rxuserrdy_i),
        .O(RXUSERRDY_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    RXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(RXUSERRDY_i_1__2_n_0),
        .Q(gt3_rxuserrdy_i),
        .R(soft_reset_rx_in));
  LUT4 #(
    .INIT(16'hFFDF)) 
    \adapt_count[0]_i_10__2 
       (.I0(adapt_count_reg[13]),
        .I1(adapt_count_reg[8]),
        .I2(adapt_count_reg[16]),
        .I3(adapt_count_reg[24]),
        .O(\adapt_count[0]_i_10__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \adapt_count[0]_i_11__2 
       (.I0(adapt_count_reg[17]),
        .I1(adapt_count_reg[11]),
        .I2(adapt_count_reg[29]),
        .I3(adapt_count_reg[14]),
        .O(\adapt_count[0]_i_11__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFEF)) 
    \adapt_count[0]_i_1__2 
       (.I0(\adapt_count[0]_i_3__2_n_0 ),
        .I1(\adapt_count[0]_i_4__2_n_0 ),
        .I2(\adapt_count[0]_i_5__2_n_0 ),
        .I3(\adapt_count[0]_i_6__2_n_0 ),
        .O(adapt_count));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \adapt_count[0]_i_3__2 
       (.I0(adapt_count_reg[22]),
        .I1(adapt_count_reg[9]),
        .I2(adapt_count_reg[15]),
        .I3(adapt_count_reg[7]),
        .I4(\adapt_count[0]_i_8__2_n_0 ),
        .O(\adapt_count[0]_i_3__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFEFF)) 
    \adapt_count[0]_i_4__2 
       (.I0(adapt_count_reg[26]),
        .I1(adapt_count_reg[19]),
        .I2(adapt_count_reg[23]),
        .I3(adapt_count_reg[5]),
        .I4(\adapt_count[0]_i_9__2_n_0 ),
        .O(\adapt_count[0]_i_4__2_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \adapt_count[0]_i_5__2 
       (.I0(adapt_count_reg[10]),
        .I1(adapt_count_reg[31]),
        .I2(adapt_count_reg[6]),
        .I3(adapt_count_reg[1]),
        .I4(\adapt_count[0]_i_10__2_n_0 ),
        .O(\adapt_count[0]_i_5__2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \adapt_count[0]_i_6__2 
       (.I0(adapt_count_reg[30]),
        .I1(adapt_count_reg[18]),
        .I2(adapt_count_reg[3]),
        .I3(adapt_count_reg[28]),
        .I4(\adapt_count[0]_i_11__2_n_0 ),
        .O(\adapt_count[0]_i_6__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \adapt_count[0]_i_7__2 
       (.I0(adapt_count_reg[0]),
        .O(\adapt_count[0]_i_7__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \adapt_count[0]_i_8__2 
       (.I0(adapt_count_reg[21]),
        .I1(adapt_count_reg[20]),
        .I2(adapt_count_reg[27]),
        .I3(adapt_count_reg[12]),
        .O(\adapt_count[0]_i_8__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \adapt_count[0]_i_9__2 
       (.I0(adapt_count_reg[25]),
        .I1(adapt_count_reg[0]),
        .I2(adapt_count_reg[4]),
        .I3(adapt_count_reg[2]),
        .O(\adapt_count[0]_i_9__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[0] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__2_n_7 ),
        .Q(adapt_count_reg[0]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[0]_i_2__2 
       (.CI(1'b0),
        .CO({\adapt_count_reg[0]_i_2__2_n_0 ,\adapt_count_reg[0]_i_2__2_n_1 ,\adapt_count_reg[0]_i_2__2_n_2 ,\adapt_count_reg[0]_i_2__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\adapt_count_reg[0]_i_2__2_n_4 ,\adapt_count_reg[0]_i_2__2_n_5 ,\adapt_count_reg[0]_i_2__2_n_6 ,\adapt_count_reg[0]_i_2__2_n_7 }),
        .S({adapt_count_reg[3:1],\adapt_count[0]_i_7__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[10] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__2_n_5 ),
        .Q(adapt_count_reg[10]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[11] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__2_n_4 ),
        .Q(adapt_count_reg[11]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[12] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__2_n_7 ),
        .Q(adapt_count_reg[12]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[12]_i_1__2 
       (.CI(\adapt_count_reg[8]_i_1__2_n_0 ),
        .CO({\adapt_count_reg[12]_i_1__2_n_0 ,\adapt_count_reg[12]_i_1__2_n_1 ,\adapt_count_reg[12]_i_1__2_n_2 ,\adapt_count_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[12]_i_1__2_n_4 ,\adapt_count_reg[12]_i_1__2_n_5 ,\adapt_count_reg[12]_i_1__2_n_6 ,\adapt_count_reg[12]_i_1__2_n_7 }),
        .S(adapt_count_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[13] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__2_n_6 ),
        .Q(adapt_count_reg[13]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[14] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__2_n_5 ),
        .Q(adapt_count_reg[14]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[15] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[12]_i_1__2_n_4 ),
        .Q(adapt_count_reg[15]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[16] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__2_n_7 ),
        .Q(adapt_count_reg[16]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[16]_i_1__2 
       (.CI(\adapt_count_reg[12]_i_1__2_n_0 ),
        .CO({\adapt_count_reg[16]_i_1__2_n_0 ,\adapt_count_reg[16]_i_1__2_n_1 ,\adapt_count_reg[16]_i_1__2_n_2 ,\adapt_count_reg[16]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[16]_i_1__2_n_4 ,\adapt_count_reg[16]_i_1__2_n_5 ,\adapt_count_reg[16]_i_1__2_n_6 ,\adapt_count_reg[16]_i_1__2_n_7 }),
        .S(adapt_count_reg[19:16]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[17] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__2_n_6 ),
        .Q(adapt_count_reg[17]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[18] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__2_n_5 ),
        .Q(adapt_count_reg[18]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[19] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[16]_i_1__2_n_4 ),
        .Q(adapt_count_reg[19]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[1] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__2_n_6 ),
        .Q(adapt_count_reg[1]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[20] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__2_n_7 ),
        .Q(adapt_count_reg[20]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[20]_i_1__2 
       (.CI(\adapt_count_reg[16]_i_1__2_n_0 ),
        .CO({\adapt_count_reg[20]_i_1__2_n_0 ,\adapt_count_reg[20]_i_1__2_n_1 ,\adapt_count_reg[20]_i_1__2_n_2 ,\adapt_count_reg[20]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[20]_i_1__2_n_4 ,\adapt_count_reg[20]_i_1__2_n_5 ,\adapt_count_reg[20]_i_1__2_n_6 ,\adapt_count_reg[20]_i_1__2_n_7 }),
        .S(adapt_count_reg[23:20]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[21] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__2_n_6 ),
        .Q(adapt_count_reg[21]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[22] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__2_n_5 ),
        .Q(adapt_count_reg[22]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[23] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[20]_i_1__2_n_4 ),
        .Q(adapt_count_reg[23]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[24] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__2_n_7 ),
        .Q(adapt_count_reg[24]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[24]_i_1__2 
       (.CI(\adapt_count_reg[20]_i_1__2_n_0 ),
        .CO({\adapt_count_reg[24]_i_1__2_n_0 ,\adapt_count_reg[24]_i_1__2_n_1 ,\adapt_count_reg[24]_i_1__2_n_2 ,\adapt_count_reg[24]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[24]_i_1__2_n_4 ,\adapt_count_reg[24]_i_1__2_n_5 ,\adapt_count_reg[24]_i_1__2_n_6 ,\adapt_count_reg[24]_i_1__2_n_7 }),
        .S(adapt_count_reg[27:24]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[25] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__2_n_6 ),
        .Q(adapt_count_reg[25]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[26] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__2_n_5 ),
        .Q(adapt_count_reg[26]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[27] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[24]_i_1__2_n_4 ),
        .Q(adapt_count_reg[27]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[28] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__2_n_7 ),
        .Q(adapt_count_reg[28]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[28]_i_1__2 
       (.CI(\adapt_count_reg[24]_i_1__2_n_0 ),
        .CO({\NLW_adapt_count_reg[28]_i_1__2_CO_UNCONNECTED [3],\adapt_count_reg[28]_i_1__2_n_1 ,\adapt_count_reg[28]_i_1__2_n_2 ,\adapt_count_reg[28]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[28]_i_1__2_n_4 ,\adapt_count_reg[28]_i_1__2_n_5 ,\adapt_count_reg[28]_i_1__2_n_6 ,\adapt_count_reg[28]_i_1__2_n_7 }),
        .S(adapt_count_reg[31:28]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[29] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__2_n_6 ),
        .Q(adapt_count_reg[29]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[2] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__2_n_5 ),
        .Q(adapt_count_reg[2]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[30] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__2_n_5 ),
        .Q(adapt_count_reg[30]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[31] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[28]_i_1__2_n_4 ),
        .Q(adapt_count_reg[31]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[3] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[0]_i_2__2_n_4 ),
        .Q(adapt_count_reg[3]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[4] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__2_n_7 ),
        .Q(adapt_count_reg[4]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[4]_i_1__2 
       (.CI(\adapt_count_reg[0]_i_2__2_n_0 ),
        .CO({\adapt_count_reg[4]_i_1__2_n_0 ,\adapt_count_reg[4]_i_1__2_n_1 ,\adapt_count_reg[4]_i_1__2_n_2 ,\adapt_count_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[4]_i_1__2_n_4 ,\adapt_count_reg[4]_i_1__2_n_5 ,\adapt_count_reg[4]_i_1__2_n_6 ,\adapt_count_reg[4]_i_1__2_n_7 }),
        .S(adapt_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[5] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__2_n_6 ),
        .Q(adapt_count_reg[5]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[6] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__2_n_5 ),
        .Q(adapt_count_reg[6]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[7] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[4]_i_1__2_n_4 ),
        .Q(adapt_count_reg[7]),
        .R(adapt_count_reset_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[8] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__2_n_7 ),
        .Q(adapt_count_reg[8]),
        .R(adapt_count_reset_reg_n_0));
  CARRY4 \adapt_count_reg[8]_i_1__2 
       (.CI(\adapt_count_reg[4]_i_1__2_n_0 ),
        .CO({\adapt_count_reg[8]_i_1__2_n_0 ,\adapt_count_reg[8]_i_1__2_n_1 ,\adapt_count_reg[8]_i_1__2_n_2 ,\adapt_count_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\adapt_count_reg[8]_i_1__2_n_4 ,\adapt_count_reg[8]_i_1__2_n_5 ,\adapt_count_reg[8]_i_1__2_n_6 ,\adapt_count_reg[8]_i_1__2_n_7 }),
        .S(adapt_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \adapt_count_reg[9] 
       (.C(sysclk_in),
        .CE(adapt_count),
        .D(\adapt_count_reg[8]_i_1__2_n_6 ),
        .Q(adapt_count_reg[9]),
        .R(adapt_count_reset_reg_n_0));
  FDSE #(
    .INIT(1'b0)) 
    adapt_count_reset_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_2),
        .Q(adapt_count_reset_reg_n_0),
        .S(soft_reset_rx_in));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT5 #(
    .INIT(32'hFFEF0020)) 
    check_tlock_max_i_1__2
       (.I0(rx_state[2]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(rx_state[1]),
        .I4(check_tlock_max_reg_n_0),
        .O(check_tlock_max_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    check_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(check_tlock_max_i_1__2_n_0),
        .Q(check_tlock_max_reg_n_0),
        .R(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFEFF0010)) 
    gtrxreset_i_i_1__2
       (.I0(rx_state[1]),
        .I1(rx_state[3]),
        .I2(rx_state[0]),
        .I3(rx_state[2]),
        .I4(SR),
        .O(gtrxreset_i_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtrxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gtrxreset_i_i_1__2_n_0),
        .Q(SR),
        .R(soft_reset_rx_in));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__6 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__6 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__6 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__6 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__6 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__6 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_1__6 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\init_wait_count[7]_i_4__6_n_0 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \init_wait_count[7]_i_1__6 
       (.I0(\init_wait_count[7]_i_3__6_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[5]),
        .I4(init_wait_count_reg__0[2]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[7]_i_2__6 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\init_wait_count[7]_i_4__6_n_0 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \init_wait_count[7]_i_3__6 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[7]),
        .I3(init_wait_count_reg__0[4]),
        .O(\init_wait_count[7]_i_3__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[7]_i_4__6 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .O(\init_wait_count[7]_i_4__6_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_rx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    init_wait_done_i_1__6
       (.I0(\init_wait_count[7]_i_3__6_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[5]),
        .I4(init_wait_count_reg__0[2]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__6_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_rx_in),
        .D(init_wait_done_i_1__6_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__6 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__6 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__6 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__6 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__6 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__6 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1__6 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__6_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2__6 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__6_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2__6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__6 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4__6_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4__6 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\mmcm_lock_count[7]_i_4__6_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__6_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__6_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__6_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__6_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__6_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__6_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__6_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__6_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2__6
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(mmcm_lock_reclocked_i_2__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'hB)) 
    reset_time_out_i_2__1
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .O(reset_time_out_i_2__1_n_0));
  LUT5 #(
    .INIT(32'h07DC07CC)) 
    reset_time_out_i_4__2
       (.I0(rx_state[1]),
        .I1(rx_state[0]),
        .I2(rx_state[2]),
        .I3(rx_state[3]),
        .I4(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(reset_time_out_i_4__2_n_0));
  LUT6 #(
    .INIT(64'hFF00B8000000B800)) 
    reset_time_out_i_5__1
       (.I0(mmcm_lock_reclocked),
        .I1(rx_state[0]),
        .I2(\FSM_sequential_rx_state_reg[0]_0 ),
        .I3(rx_state[2]),
        .I4(rx_state[1]),
        .I5(rxresetdone_s3),
        .O(reset_time_out_i_5__1_n_0));
  FDSE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_data_valid_n_4),
        .Q(reset_time_out_reg_n_0),
        .S(soft_reset_rx_in));
  LUT5 #(
    .INIT(32'hFFFD0004)) 
    run_phase_alignment_int_i_1__2
       (.I0(rx_state[0]),
        .I1(rx_state[3]),
        .I2(rx_state[1]),
        .I3(rx_state[2]),
        .I4(run_phase_alignment_int_reg_n_0),
        .O(run_phase_alignment_int_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_i_1__2_n_0),
        .Q(run_phase_alignment_int_reg_n_0),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    run_phase_alignment_int_s3_reg
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(run_phase_alignment_int_s2),
        .Q(run_phase_alignment_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_data_valid_n_5),
        .Q(gt3_rx_fsm_reset_done_out),
        .R(soft_reset_rx_in));
  FDRE #(
    .INIT(1'b0)) 
    rx_fsm_reset_done_int_s3_reg
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(rx_fsm_reset_done_int_s2),
        .Q(rx_fsm_reset_done_int_s3_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(rxresetdone_s2),
        .Q(rxresetdone_s3),
        .R(1'b0));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_11 sync_RXRESETDONE
       (.data_out(rxresetdone_s2),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_12 sync_cplllock
       (.\FSM_sequential_rx_state_reg[0] (sync_cplllock_n_0),
        .\FSM_sequential_rx_state_reg[0]_0 (time_out_2ms_reg_n_0),
        .\FSM_sequential_rx_state_reg[3] (sync_cplllock_n_2),
        .Q(rx_state),
        .adapt_count_reset_reg(adapt_count_reset_reg_n_0),
        .data_out(cplllock_sync),
        .gt3_cplllock_out(gt3_cplllock_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_13 sync_data_valid
       (.D({sync_data_valid_n_0,sync_data_valid_n_1,sync_data_valid_n_2}),
        .E(sync_data_valid_n_3),
        .\FSM_sequential_rx_state_reg[0] (\FSM_sequential_rx_state[0]_i_2__2_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_0 (\FSM_sequential_rx_state[1]_i_3__1_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_1 (\FSM_sequential_rx_state[3]_i_4__2_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_2 (\wait_time_cnt[0]_i_2__6_n_0 ),
        .\FSM_sequential_rx_state_reg[0]_3 (sync_cplllock_n_0),
        .\FSM_sequential_rx_state_reg[0]_4 (\FSM_sequential_rx_state[3]_i_6__1_n_0 ),
        .\FSM_sequential_rx_state_reg[1] (time_out_100us_reg_n_0),
        .\FSM_sequential_rx_state_reg[3] (sync_data_valid_n_4),
        .\FSM_sequential_rx_state_reg[3]_0 (sync_data_valid_n_5),
        .\FSM_sequential_rx_state_reg[3]_1 (\FSM_sequential_rx_state[3]_i_8__2_n_0 ),
        .\FSM_sequential_rx_state_reg[3]_2 (\FSM_sequential_rx_state[3]_i_9__1_n_0 ),
        .Q(rx_state),
        .data_out(cplllock_sync),
        .dont_reset_on_data_error_in(dont_reset_on_data_error_in),
        .gt3_data_valid_in(gt3_data_valid_in),
        .gt3_rx_fsm_reset_done_out(gt3_rx_fsm_reset_done_out),
        .reset_time_out_reg(reset_time_out_reg_n_0),
        .reset_time_out_reg_0(reset_time_out_i_5__1_n_0),
        .reset_time_out_reg_1(reset_time_out_i_2__1_n_0),
        .reset_time_out_reg_2(reset_time_out_i_4__2_n_0),
        .rx_fsm_reset_done_int_reg(time_out_1us_reg_n_0),
        .sysclk_in(sysclk_in),
        .time_out_wait_bypass_s3(time_out_wait_bypass_s3));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_14 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7:6]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2__6_n_0),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_15 sync_run_phase_alignment_int
       (.data_in(run_phase_alignment_int_reg_n_0),
        .data_out(run_phase_alignment_int_s2),
        .gt3_rxusrclk_in(gt3_rxusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_16 sync_rx_fsm_reset_done_int
       (.data_out(rx_fsm_reset_done_int_s2),
        .gt3_rx_fsm_reset_done_out(gt3_rx_fsm_reset_done_out),
        .gt3_rxusrclk_in(gt3_rxusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_17 sync_time_out_wait_bypass
       (.data_in(time_out_wait_bypass_reg_n_0),
        .data_out(time_out_wait_bypass_s2),
        .sysclk_in(sysclk_in));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_100us_i_1__2
       (.I0(\time_out_counter[0]_i_6__1_n_0 ),
        .I1(time_out_100us_i_2__2_n_0),
        .I2(time_tlock_max_i_3__2_n_0),
        .I3(time_out_100us_i_3__2_n_0),
        .I4(time_out_100us_reg_n_0),
        .O(time_out_100us_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    time_out_100us_i_2__2
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[2]),
        .O(time_out_100us_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0008000000000000)) 
    time_out_100us_i_3__2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[12]),
        .I5(time_out_counter_reg[7]),
        .O(time_out_100us_i_3__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_100us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_100us_i_1__2_n_0),
        .Q(time_out_100us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_1us_i_1__2
       (.I0(time_tlock_max_i_3__2_n_0),
        .I1(time_out_1us_i_2__2_n_0),
        .I2(\time_out_counter[0]_i_6__1_n_0 ),
        .I3(time_out_1us_i_3__2_n_0),
        .I4(time_out_1us_reg_n_0),
        .O(time_out_1us_i_1__2_n_0));
  LUT4 #(
    .INIT(16'hFFF7)) 
    time_out_1us_i_2__2
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[12]),
        .O(time_out_1us_i_2__2_n_0));
  LUT6 #(
    .INIT(64'h0000080000000000)) 
    time_out_1us_i_3__2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[0]),
        .I4(time_out_counter_reg[7]),
        .I5(time_out_counter_reg[2]),
        .O(time_out_1us_i_3__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_1us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_1us_i_1__2_n_0),
        .Q(time_out_1us_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    time_out_2ms_i_1__2
       (.I0(\time_out_counter[0]_i_4__6_n_0 ),
        .I1(\time_out_counter[0]_i_3__6_n_0 ),
        .I2(\time_out_counter[0]_i_6__1_n_0 ),
        .I3(time_out_2ms_i_2__5_n_0),
        .I4(time_out_2ms_reg_n_0),
        .O(time_out_2ms_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    time_out_2ms_i_2__5
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[3]),
        .I4(time_out_counter_reg[6]),
        .I5(time_out_counter_reg[2]),
        .O(time_out_2ms_i_2__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__2_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAABA)) 
    time_out_adapt_i_1__2
       (.I0(time_out_adapt_reg_n_0),
        .I1(\adapt_count[0]_i_6__2_n_0 ),
        .I2(\adapt_count[0]_i_5__2_n_0 ),
        .I3(\adapt_count[0]_i_4__2_n_0 ),
        .I4(\adapt_count[0]_i_3__2_n_0 ),
        .I5(adapt_count_reset_reg_n_0),
        .O(time_out_adapt_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_adapt_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_adapt_i_1__2_n_0),
        .Q(time_out_adapt_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \time_out_counter[0]_i_1__2 
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[1]),
        .I2(\time_out_counter[0]_i_3__6_n_0 ),
        .I3(\time_out_counter[0]_i_4__6_n_0 ),
        .I4(\time_out_counter[0]_i_5__4_n_0 ),
        .I5(\time_out_counter[0]_i_6__1_n_0 ),
        .O(time_out_counter));
  LUT4 #(
    .INIT(16'hFF7F)) 
    \time_out_counter[0]_i_3__6 
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[4]),
        .I3(time_out_counter_reg[13]),
        .O(\time_out_counter[0]_i_3__6_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \time_out_counter[0]_i_4__6 
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[14]),
        .O(\time_out_counter[0]_i_4__6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_5__4 
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[2]),
        .O(\time_out_counter[0]_i_5__4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \time_out_counter[0]_i_6__1 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[10]),
        .O(\time_out_counter[0]_i_6__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_7__1 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_7__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__6_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__6 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__6_n_0 ,\time_out_counter_reg[0]_i_2__6_n_1 ,\time_out_counter_reg[0]_i_2__6_n_2 ,\time_out_counter_reg[0]_i_2__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__6_n_4 ,\time_out_counter_reg[0]_i_2__6_n_5 ,\time_out_counter_reg[0]_i_2__6_n_6 ,\time_out_counter_reg[0]_i_2__6_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_7__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__6_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__6_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__6_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__6 
       (.CI(\time_out_counter_reg[8]_i_1__6_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__6_n_0 ,\time_out_counter_reg[12]_i_1__6_n_1 ,\time_out_counter_reg[12]_i_1__6_n_2 ,\time_out_counter_reg[12]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__6_n_4 ,\time_out_counter_reg[12]_i_1__6_n_5 ,\time_out_counter_reg[12]_i_1__6_n_6 ,\time_out_counter_reg[12]_i_1__6_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__6_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__6_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__6_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__6_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__6 
       (.CI(\time_out_counter_reg[12]_i_1__6_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__6_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__6_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__6_n_6 ,\time_out_counter_reg[16]_i_1__6_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__6_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__6_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__6_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__6_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__6_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__6 
       (.CI(\time_out_counter_reg[0]_i_2__6_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__6_n_0 ,\time_out_counter_reg[4]_i_1__6_n_1 ,\time_out_counter_reg[4]_i_1__6_n_2 ,\time_out_counter_reg[4]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__6_n_4 ,\time_out_counter_reg[4]_i_1__6_n_5 ,\time_out_counter_reg[4]_i_1__6_n_6 ,\time_out_counter_reg[4]_i_1__6_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__6_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__6_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__6_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__6_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__6 
       (.CI(\time_out_counter_reg[4]_i_1__6_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__6_n_0 ,\time_out_counter_reg[8]_i_1__6_n_1 ,\time_out_counter_reg[8]_i_1__6_n_2 ,\time_out_counter_reg[8]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__6_n_4 ,\time_out_counter_reg[8]_i_1__6_n_5 ,\time_out_counter_reg[8]_i_1__6_n_6 ,\time_out_counter_reg[8]_i_1__6_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__6_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'hAB00)) 
    time_out_wait_bypass_i_1__2
       (.I0(time_out_wait_bypass_reg_n_0),
        .I1(rx_fsm_reset_done_int_s3_reg_n_0),
        .I2(\wait_bypass_count[0]_i_4__2_n_0 ),
        .I3(run_phase_alignment_int_s3_reg_n_0),
        .O(time_out_wait_bypass_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_reg
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_i_1__2_n_0),
        .Q(time_out_wait_bypass_reg_n_0),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_wait_bypass_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_wait_bypass_s2),
        .Q(time_out_wait_bypass_s3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF080000)) 
    time_tlock_max_i_1__2
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[13]),
        .I2(time_tlock_max_i_2__2_n_0),
        .I3(time_tlock_max_i_3__2_n_0),
        .I4(check_tlock_max_reg_n_0),
        .I5(time_tlock_max),
        .O(time_tlock_max_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h00000000FFFF777F)) 
    time_tlock_max_i_2__2
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[4]),
        .I4(time_tlock_max_i_4__2_n_0),
        .I5(\time_out_counter[0]_i_6__1_n_0 ),
        .O(time_tlock_max_i_2__2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_3__2
       (.I0(time_out_counter_reg[15]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .O(time_tlock_max_i_3__2_n_0));
  LUT5 #(
    .INIT(32'h00000057)) 
    time_tlock_max_i_4__2
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[1]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[3]),
        .O(time_tlock_max_i_4__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__2_n_0),
        .Q(time_tlock_max),
        .R(reset_time_out_reg_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_1__2 
       (.I0(run_phase_alignment_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_1__2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \wait_bypass_count[0]_i_2__2 
       (.I0(\wait_bypass_count[0]_i_4__2_n_0 ),
        .I1(rx_fsm_reset_done_int_s3_reg_n_0),
        .O(\wait_bypass_count[0]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'hBFFFFFFF)) 
    \wait_bypass_count[0]_i_4__2 
       (.I0(\wait_bypass_count[0]_i_6__2_n_0 ),
        .I1(wait_bypass_count_reg[1]),
        .I2(wait_bypass_count_reg[8]),
        .I3(wait_bypass_count_reg[0]),
        .I4(\wait_bypass_count[0]_i_7__2_n_0 ),
        .O(\wait_bypass_count[0]_i_4__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_bypass_count[0]_i_5__2 
       (.I0(wait_bypass_count_reg[0]),
        .O(\wait_bypass_count[0]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hEFFF)) 
    \wait_bypass_count[0]_i_6__2 
       (.I0(wait_bypass_count_reg[3]),
        .I1(wait_bypass_count_reg[5]),
        .I2(wait_bypass_count_reg[9]),
        .I3(wait_bypass_count_reg[7]),
        .O(\wait_bypass_count[0]_i_6__2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \wait_bypass_count[0]_i_7__2 
       (.I0(wait_bypass_count_reg[2]),
        .I1(wait_bypass_count_reg[12]),
        .I2(wait_bypass_count_reg[4]),
        .I3(wait_bypass_count_reg[10]),
        .I4(wait_bypass_count_reg[6]),
        .I5(wait_bypass_count_reg[11]),
        .O(\wait_bypass_count[0]_i_7__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[0] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__2_n_7 ),
        .Q(wait_bypass_count_reg[0]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  CARRY4 \wait_bypass_count_reg[0]_i_3__2 
       (.CI(1'b0),
        .CO({\wait_bypass_count_reg[0]_i_3__2_n_0 ,\wait_bypass_count_reg[0]_i_3__2_n_1 ,\wait_bypass_count_reg[0]_i_3__2_n_2 ,\wait_bypass_count_reg[0]_i_3__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\wait_bypass_count_reg[0]_i_3__2_n_4 ,\wait_bypass_count_reg[0]_i_3__2_n_5 ,\wait_bypass_count_reg[0]_i_3__2_n_6 ,\wait_bypass_count_reg[0]_i_3__2_n_7 }),
        .S({wait_bypass_count_reg[3:1],\wait_bypass_count[0]_i_5__2_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[10] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__2_n_5 ),
        .Q(wait_bypass_count_reg[10]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[11] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__2_n_4 ),
        .Q(wait_bypass_count_reg[11]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[12] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[12]_i_1__2_n_7 ),
        .Q(wait_bypass_count_reg[12]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  CARRY4 \wait_bypass_count_reg[12]_i_1__2 
       (.CI(\wait_bypass_count_reg[8]_i_1__2_n_0 ),
        .CO(\NLW_wait_bypass_count_reg[12]_i_1__2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_wait_bypass_count_reg[12]_i_1__2_O_UNCONNECTED [3:1],\wait_bypass_count_reg[12]_i_1__2_n_7 }),
        .S({1'b0,1'b0,1'b0,wait_bypass_count_reg[12]}));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[1] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__2_n_6 ),
        .Q(wait_bypass_count_reg[1]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[2] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__2_n_5 ),
        .Q(wait_bypass_count_reg[2]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[3] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[0]_i_3__2_n_4 ),
        .Q(wait_bypass_count_reg[3]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[4] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__2_n_7 ),
        .Q(wait_bypass_count_reg[4]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  CARRY4 \wait_bypass_count_reg[4]_i_1__2 
       (.CI(\wait_bypass_count_reg[0]_i_3__2_n_0 ),
        .CO({\wait_bypass_count_reg[4]_i_1__2_n_0 ,\wait_bypass_count_reg[4]_i_1__2_n_1 ,\wait_bypass_count_reg[4]_i_1__2_n_2 ,\wait_bypass_count_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[4]_i_1__2_n_4 ,\wait_bypass_count_reg[4]_i_1__2_n_5 ,\wait_bypass_count_reg[4]_i_1__2_n_6 ,\wait_bypass_count_reg[4]_i_1__2_n_7 }),
        .S(wait_bypass_count_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[5] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__2_n_6 ),
        .Q(wait_bypass_count_reg[5]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[6] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__2_n_5 ),
        .Q(wait_bypass_count_reg[6]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[7] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[4]_i_1__2_n_4 ),
        .Q(wait_bypass_count_reg[7]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[8] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__2_n_7 ),
        .Q(wait_bypass_count_reg[8]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  CARRY4 \wait_bypass_count_reg[8]_i_1__2 
       (.CI(\wait_bypass_count_reg[4]_i_1__2_n_0 ),
        .CO({\wait_bypass_count_reg[8]_i_1__2_n_0 ,\wait_bypass_count_reg[8]_i_1__2_n_1 ,\wait_bypass_count_reg[8]_i_1__2_n_2 ,\wait_bypass_count_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\wait_bypass_count_reg[8]_i_1__2_n_4 ,\wait_bypass_count_reg[8]_i_1__2_n_5 ,\wait_bypass_count_reg[8]_i_1__2_n_6 ,\wait_bypass_count_reg[8]_i_1__2_n_7 }),
        .S(wait_bypass_count_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \wait_bypass_count_reg[9] 
       (.C(gt3_rxusrclk_in),
        .CE(\wait_bypass_count[0]_i_2__2_n_0 ),
        .D(\wait_bypass_count_reg[8]_i_1__2_n_6 ),
        .Q(wait_bypass_count_reg[9]),
        .R(\wait_bypass_count[0]_i_1__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10__6 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11__6 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11__6_n_0 ));
  LUT3 #(
    .INIT(8'h04)) 
    \wait_time_cnt[0]_i_1__6 
       (.I0(rx_state[3]),
        .I1(rx_state[0]),
        .I2(rx_state[1]),
        .O(\wait_time_cnt[0]_i_1__6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2__6 
       (.I0(\wait_time_cnt[0]_i_4__6_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__6_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__6_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__6_n_0 ),
        .O(\wait_time_cnt[0]_i_2__6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__6 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[7]),
        .I3(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[0]_i_4__6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5__6 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[11]),
        .I2(wait_time_cnt_reg[9]),
        .I3(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_5__6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__6 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[3]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[0]_i_6__6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__6 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[0]_i_7__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__6 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__6 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__6 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__6 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__6 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__6 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__6 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__6 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__6 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__6 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__6 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__6 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__6 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__6_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__6 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__6_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__6_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__6 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__6_n_0 ,\wait_time_cnt_reg[0]_i_3__6_n_1 ,\wait_time_cnt_reg[0]_i_3__6_n_2 ,\wait_time_cnt_reg[0]_i_3__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__6_n_4 ,\wait_time_cnt_reg[0]_i_3__6_n_5 ,\wait_time_cnt_reg[0]_i_3__6_n_6 ,\wait_time_cnt_reg[0]_i_3__6_n_7 }),
        .S({\wait_time_cnt[0]_i_8__6_n_0 ,\wait_time_cnt[0]_i_9__6_n_0 ,\wait_time_cnt[0]_i_10__6_n_0 ,\wait_time_cnt[0]_i_11__6_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__6_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__6_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__6_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__6 
       (.CI(\wait_time_cnt_reg[8]_i_1__6_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__6_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__6_n_1 ,\wait_time_cnt_reg[12]_i_1__6_n_2 ,\wait_time_cnt_reg[12]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__6_n_4 ,\wait_time_cnt_reg[12]_i_1__6_n_5 ,\wait_time_cnt_reg[12]_i_1__6_n_6 ,\wait_time_cnt_reg[12]_i_1__6_n_7 }),
        .S({\wait_time_cnt[12]_i_2__6_n_0 ,\wait_time_cnt[12]_i_3__6_n_0 ,\wait_time_cnt[12]_i_4__6_n_0 ,\wait_time_cnt[12]_i_5__6_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__6_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__6_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__6_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDSE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__6_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__6_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__6_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__6_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__6 
       (.CI(\wait_time_cnt_reg[0]_i_3__6_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__6_n_0 ,\wait_time_cnt_reg[4]_i_1__6_n_1 ,\wait_time_cnt_reg[4]_i_1__6_n_2 ,\wait_time_cnt_reg[4]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__6_n_4 ,\wait_time_cnt_reg[4]_i_1__6_n_5 ,\wait_time_cnt_reg[4]_i_1__6_n_6 ,\wait_time_cnt_reg[4]_i_1__6_n_7 }),
        .S({\wait_time_cnt[4]_i_2__6_n_0 ,\wait_time_cnt[4]_i_3__6_n_0 ,\wait_time_cnt[4]_i_4__6_n_0 ,\wait_time_cnt[4]_i_5__6_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__6_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__6_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__6_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__6_n_0 ));
  FDRE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__6_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__6 
       (.CI(\wait_time_cnt_reg[4]_i_1__6_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__6_n_0 ,\wait_time_cnt_reg[8]_i_1__6_n_1 ,\wait_time_cnt_reg[8]_i_1__6_n_2 ,\wait_time_cnt_reg[8]_i_1__6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__6_n_4 ,\wait_time_cnt_reg[8]_i_1__6_n_5 ,\wait_time_cnt_reg[8]_i_1__6_n_6 ,\wait_time_cnt_reg[8]_i_1__6_n_7 }),
        .S({\wait_time_cnt[8]_i_2__6_n_0 ,\wait_time_cnt[8]_i_3__6_n_0 ,\wait_time_cnt[8]_i_4__6_n_0 ,\wait_time_cnt[8]_i_5__6_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__6_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__6_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1__6_n_0 ));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_TX_STARTUP_FSM" *) 
module gtwizard_4_channel_gtwizard_4_channel_TX_STARTUP_FSM
   (gt0_gttxreset_i,
    gt0_cpllreset_i,
    gt0_tx_fsm_reset_done_out,
    gt0_txuserrdy_i,
    sysclk_in,
    soft_reset_tx_in,
    gt0_cpllrefclklost_i,
    gt0_txresetdone_out,
    gt0_cplllock_out);
  output gt0_gttxreset_i;
  output gt0_cpllreset_i;
  output gt0_tx_fsm_reset_done_out;
  output gt0_txuserrdy_i;
  input sysclk_in;
  input soft_reset_tx_in;
  input gt0_cpllrefclklost_i;
  input gt0_txresetdone_out;
  input gt0_cplllock_out;

  wire CPLL_RESET_i_1_n_0;
  wire CPLL_RESET_i_2_n_0;
  wire \FSM_sequential_tx_state[0]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4_n_0 ;
  wire TXUSERRDY_i_1_n_0;
  wire gt0_cplllock_out;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_i;
  wire gt0_gttxreset_i;
  wire gt0_tx_fsm_reset_done_out;
  wire gt0_txresetdone_out;
  wire gt0_txuserrdy_i;
  wire gttxreset_i_i_1_n_0;
  wire init_wait_count;
  wire \init_wait_count[7]_i_3_n_0 ;
  wire \init_wait_count[7]_i_4_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2_n_0 ;
  wire \mmcm_lock_count[7]_i_4_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2_n_0;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire pll_reset_asserted_i_1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire reset_time_out;
  wire reset_time_out_i_3_n_0;
  wire sel;
  wire soft_reset_tx_in;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire sysclk_in;
  wire time_out_2ms_i_1__3_n_0;
  wire time_out_2ms_i_2__0_n_0;
  wire time_out_2ms_i_3__0_n_0;
  wire time_out_2ms_i_4__0_n_0;
  wire time_out_2ms_i_5_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1_n_0;
  wire time_out_500us_i_2_n_0;
  wire time_out_500us_i_3_n_0;
  wire time_out_500us_i_4_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__1_n_0 ;
  wire \time_out_counter[0]_i_4__2_n_0 ;
  wire \time_out_counter[0]_i_5_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2_n_0 ;
  wire \time_out_counter_reg[0]_i_2_n_1 ;
  wire \time_out_counter_reg[0]_i_2_n_2 ;
  wire \time_out_counter_reg[0]_i_2_n_3 ;
  wire \time_out_counter_reg[0]_i_2_n_4 ;
  wire \time_out_counter_reg[0]_i_2_n_5 ;
  wire \time_out_counter_reg[0]_i_2_n_6 ;
  wire \time_out_counter_reg[0]_i_2_n_7 ;
  wire \time_out_counter_reg[12]_i_1_n_0 ;
  wire \time_out_counter_reg[12]_i_1_n_1 ;
  wire \time_out_counter_reg[12]_i_1_n_2 ;
  wire \time_out_counter_reg[12]_i_1_n_3 ;
  wire \time_out_counter_reg[12]_i_1_n_4 ;
  wire \time_out_counter_reg[12]_i_1_n_5 ;
  wire \time_out_counter_reg[12]_i_1_n_6 ;
  wire \time_out_counter_reg[12]_i_1_n_7 ;
  wire \time_out_counter_reg[16]_i_1_n_3 ;
  wire \time_out_counter_reg[16]_i_1_n_6 ;
  wire \time_out_counter_reg[16]_i_1_n_7 ;
  wire \time_out_counter_reg[4]_i_1_n_0 ;
  wire \time_out_counter_reg[4]_i_1_n_1 ;
  wire \time_out_counter_reg[4]_i_1_n_2 ;
  wire \time_out_counter_reg[4]_i_1_n_3 ;
  wire \time_out_counter_reg[4]_i_1_n_4 ;
  wire \time_out_counter_reg[4]_i_1_n_5 ;
  wire \time_out_counter_reg[4]_i_1_n_6 ;
  wire \time_out_counter_reg[4]_i_1_n_7 ;
  wire \time_out_counter_reg[8]_i_1_n_0 ;
  wire \time_out_counter_reg[8]_i_1_n_1 ;
  wire \time_out_counter_reg[8]_i_1_n_2 ;
  wire \time_out_counter_reg[8]_i_1_n_3 ;
  wire \time_out_counter_reg[8]_i_1_n_4 ;
  wire \time_out_counter_reg[8]_i_1_n_5 ;
  wire \time_out_counter_reg[8]_i_1_n_6 ;
  wire \time_out_counter_reg[8]_i_1_n_7 ;
  wire time_tlock_max_i_1__3_n_0;
  wire time_tlock_max_i_2__3_n_0;
  wire time_tlock_max_i_3__3_n_0;
  wire time_tlock_max_i_4__3_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1_n_0;
  wire [3:0]tx_state;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_time_cnt[0]_i_10_n_0 ;
  wire \wait_time_cnt[0]_i_11_n_0 ;
  wire \wait_time_cnt[0]_i_1__1_n_0 ;
  wire \wait_time_cnt[0]_i_4_n_0 ;
  wire \wait_time_cnt[0]_i_5_n_0 ;
  wire \wait_time_cnt[0]_i_6_n_0 ;
  wire \wait_time_cnt[0]_i_7_n_0 ;
  wire \wait_time_cnt[0]_i_8_n_0 ;
  wire \wait_time_cnt[0]_i_9_n_0 ;
  wire \wait_time_cnt[12]_i_2_n_0 ;
  wire \wait_time_cnt[12]_i_3_n_0 ;
  wire \wait_time_cnt[12]_i_4_n_0 ;
  wire \wait_time_cnt[12]_i_5_n_0 ;
  wire \wait_time_cnt[4]_i_2_n_0 ;
  wire \wait_time_cnt[4]_i_3_n_0 ;
  wire \wait_time_cnt[4]_i_4_n_0 ;
  wire \wait_time_cnt[4]_i_5_n_0 ;
  wire \wait_time_cnt[8]_i_2_n_0 ;
  wire \wait_time_cnt[8]_i_3_n_0 ;
  wire \wait_time_cnt[8]_i_4_n_0 ;
  wire \wait_time_cnt[8]_i_5_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1_n_7 ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFF1F00000010)) 
    CPLL_RESET_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt0_cpllrefclklost_i),
        .I2(CPLL_RESET_i_2_n_0),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(gt0_cpllreset_i),
        .O(CPLL_RESET_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h2)) 
    CPLL_RESET_i_2
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .O(CPLL_RESET_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(CPLL_RESET_i_1_n_0),
        .Q(gt0_cpllreset_i),
        .R(soft_reset_tx_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF008F8F)) 
    \FSM_sequential_tx_state[0]_i_1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(\FSM_sequential_tx_state[0]_i_2_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[3]),
        .O(\FSM_sequential_tx_state[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h22220030FFFFFFFF)) 
    \FSM_sequential_tx_state[0]_i_2 
       (.I0(time_out_500us_reg_n_0),
        .I1(reset_time_out),
        .I2(time_tlock_max_reg_n_0),
        .I3(mmcm_lock_reclocked),
        .I4(tx_state[1]),
        .I5(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h44544554)) 
    \FSM_sequential_tx_state[1]_i_1 
       (.I0(tx_state[3]),
        .I1(\FSM_sequential_tx_state[1]_i_2_n_0 ),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT5 #(
    .INIT(32'h22222022)) 
    \FSM_sequential_tx_state[1]_i_2 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(time_tlock_max_reg_n_0),
        .I4(reset_time_out),
        .O(\FSM_sequential_tx_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0044104404441444)) 
    \FSM_sequential_tx_state[2]_i_1 
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(\FSM_sequential_tx_state[2]_i_2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_tx_state[2]_i_2 
       (.I0(reset_time_out),
        .I1(time_tlock_max_reg_n_0),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEAAAAAAAAAAAA)) 
    \FSM_sequential_tx_state[3]_i_2 
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(time_out_500us_reg_n_0),
        .I3(reset_time_out),
        .I4(tx_state[0]),
        .I5(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_4 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1_n_0 ),
        .Q(tx_state[0]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[1]_i_1_n_0 ),
        .Q(tx_state[1]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1_n_0 ),
        .Q(tx_state[2]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[3]_i_2_n_0 ),
        .Q(tx_state[3]),
        .R(soft_reset_tx_in));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    TXUSERRDY_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(gt0_txuserrdy_i),
        .O(TXUSERRDY_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1_n_0),
        .Q(gt0_txuserrdy_i),
        .R(soft_reset_tx_in));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    gttxreset_i_i_1
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(gt0_gttxreset_i),
        .O(gttxreset_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1_n_0),
        .Q(gt0_gttxreset_i),
        .R(soft_reset_tx_in));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_1 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\init_wait_count[7]_i_4_n_0 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \init_wait_count[7]_i_1 
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(init_wait_count_reg__0[7]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[5]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[7]_i_2 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\init_wait_count[7]_i_4_n_0 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \init_wait_count[7]_i_3 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[2]),
        .O(\init_wait_count[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[7]_i_4 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .O(\init_wait_count[7]_i_4_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    init_wait_done_i_1
       (.I0(\init_wait_count[7]_i_3_n_0 ),
        .I1(init_wait_count_reg__0[7]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[5]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_tx_in),
        .D(init_wait_done_i_1_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\mmcm_lock_count[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(mmcm_lock_reclocked_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA0BAA)) 
    pll_reset_asserted_i_1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt0_cpllrefclklost_i),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .I5(tx_state[3]),
        .O(pll_reset_asserted_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(soft_reset_tx_in));
  LUT4 #(
    .INIT(16'hB833)) 
    reset_time_out_i_3
       (.I0(txresetdone_s3),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(tx_state[2]),
        .O(reset_time_out_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_1),
        .Q(reset_time_out),
        .R(soft_reset_tx_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_38 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_39 sync_cplllock
       (.E(sync_cplllock_n_0),
        .\FSM_sequential_tx_state_reg[0] (init_wait_done_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_4_n_0 ),
        .\FSM_sequential_tx_state_reg[3] (sync_cplllock_n_1),
        .\FSM_sequential_tx_state_reg[3]_i_3_0 (time_out_500us_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3_1 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3_2 (time_tlock_max_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3_3 (pll_reset_asserted_reg_n_0),
        .Q(tx_state),
        .gt0_cplllock_out(gt0_cplllock_out),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out(reset_time_out),
        .reset_time_out_reg(reset_time_out_i_3_n_0),
        .sel(sel),
        .sysclk_in(sysclk_in),
        .txresetdone_s3(txresetdone_s3));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_40 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7:6]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2_n_0),
        .sysclk_in(sysclk_in));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_out_2ms_i_1__3
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms_i_2__0_n_0),
        .I2(time_out_2ms_i_3__0_n_0),
        .I3(time_out_2ms_i_4__0_n_0),
        .I4(time_out_2ms_i_5_n_0),
        .I5(reset_time_out),
        .O(time_out_2ms_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000008000)) 
    time_out_2ms_i_2__0
       (.I0(time_out_counter_reg[7]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[2]),
        .I5(time_out_counter_reg[13]),
        .O(time_out_2ms_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_3__0
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[0]),
        .O(time_out_2ms_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_2ms_i_4__0
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[4]),
        .O(time_out_2ms_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_5
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[10]),
        .O(time_out_2ms_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__3_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_out_500us_i_1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2_n_0),
        .I2(time_out_500us_i_3_n_0),
        .I3(time_out_500us_i_4_n_0),
        .I4(time_out_2ms_i_3__0_n_0),
        .I5(reset_time_out),
        .O(time_out_500us_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    time_out_500us_i_2
       (.I0(time_out_counter_reg[10]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[16]),
        .I4(time_out_counter_reg[9]),
        .I5(time_out_counter_reg[8]),
        .O(time_out_500us_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_out_500us_i_3
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[7]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[11]),
        .O(time_out_500us_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_500us_i_4
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[12]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[4]),
        .O(time_out_500us_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFEFFF)) 
    \time_out_counter[0]_i_1__3 
       (.I0(\time_out_counter[0]_i_3__1_n_0 ),
        .I1(\time_out_counter[0]_i_4__2_n_0 ),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[2]),
        .I5(time_out_counter_reg[13]),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    \time_out_counter[0]_i_3__1 
       (.I0(time_out_2ms_i_5_n_0),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[4]),
        .I5(time_out_2ms_i_3__0_n_0),
        .O(\time_out_counter[0]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \time_out_counter[0]_i_4__2 
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[7]),
        .O(\time_out_counter[0]_i_4__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_5 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[0]_i_2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2_n_0 ,\time_out_counter_reg[0]_i_2_n_1 ,\time_out_counter_reg[0]_i_2_n_2 ,\time_out_counter_reg[0]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2_n_4 ,\time_out_counter_reg[0]_i_2_n_5 ,\time_out_counter_reg[0]_i_2_n_6 ,\time_out_counter_reg[0]_i_2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_5_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[12]_i_1 
       (.CI(\time_out_counter_reg[8]_i_1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1_n_0 ,\time_out_counter_reg[12]_i_1_n_1 ,\time_out_counter_reg[12]_i_1_n_2 ,\time_out_counter_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1_n_4 ,\time_out_counter_reg[12]_i_1_n_5 ,\time_out_counter_reg[12]_i_1_n_6 ,\time_out_counter_reg[12]_i_1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[16]_i_1 
       (.CI(\time_out_counter_reg[12]_i_1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1_n_6 ,\time_out_counter_reg[16]_i_1_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[4]_i_1 
       (.CI(\time_out_counter_reg[0]_i_2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1_n_0 ,\time_out_counter_reg[4]_i_1_n_1 ,\time_out_counter_reg[4]_i_1_n_2 ,\time_out_counter_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1_n_4 ,\time_out_counter_reg[4]_i_1_n_5 ,\time_out_counter_reg[4]_i_1_n_6 ,\time_out_counter_reg[4]_i_1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out));
  CARRY4 \time_out_counter_reg[8]_i_1 
       (.CI(\time_out_counter_reg[4]_i_1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1_n_0 ,\time_out_counter_reg[8]_i_1_n_1 ,\time_out_counter_reg[8]_i_1_n_2 ,\time_out_counter_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1_n_4 ,\time_out_counter_reg[8]_i_1_n_5 ,\time_out_counter_reg[8]_i_1_n_6 ,\time_out_counter_reg[8]_i_1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_tlock_max_i_1__3
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2__3_n_0),
        .I2(time_tlock_max_i_3__3_n_0),
        .I3(time_tlock_max_i_4__3_n_0),
        .I4(time_out_2ms_i_5_n_0),
        .I5(reset_time_out),
        .O(time_tlock_max_i_1__3_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    time_tlock_max_i_2__3
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[1]),
        .I5(time_out_counter_reg[3]),
        .O(time_tlock_max_i_2__3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_tlock_max_i_3__3
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[2]),
        .O(time_tlock_max_i_3__3_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_4__3
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[15]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[0]),
        .O(time_tlock_max_i_4__3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__3_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    tx_fsm_reset_done_int_i_1
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .I4(gt0_tx_fsm_reset_done_out),
        .O(tx_fsm_reset_done_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1_n_0),
        .Q(gt0_tx_fsm_reset_done_out),
        .R(soft_reset_tx_in));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \wait_time_cnt[0]_i_1__1 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .O(\wait_time_cnt[0]_i_1__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2 
       (.I0(\wait_time_cnt[0]_i_4_n_0 ),
        .I1(\wait_time_cnt[0]_i_5_n_0 ),
        .I2(\wait_time_cnt[0]_i_6_n_0 ),
        .I3(\wait_time_cnt[0]_i_7_n_0 ),
        .O(sel));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[0]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[11]),
        .I2(wait_time_cnt_reg[9]),
        .I3(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[2]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_6_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[4]),
        .I3(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[0]_i_7_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3_n_0 ,\wait_time_cnt_reg[0]_i_3_n_1 ,\wait_time_cnt_reg[0]_i_3_n_2 ,\wait_time_cnt_reg[0]_i_3_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3_n_4 ,\wait_time_cnt_reg[0]_i_3_n_5 ,\wait_time_cnt_reg[0]_i_3_n_6 ,\wait_time_cnt_reg[0]_i_3_n_7 }),
        .S({\wait_time_cnt[0]_i_8_n_0 ,\wait_time_cnt[0]_i_9_n_0 ,\wait_time_cnt[0]_i_10_n_0 ,\wait_time_cnt[0]_i_11_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1 
       (.CI(\wait_time_cnt_reg[8]_i_1_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1_n_1 ,\wait_time_cnt_reg[12]_i_1_n_2 ,\wait_time_cnt_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1_n_4 ,\wait_time_cnt_reg[12]_i_1_n_5 ,\wait_time_cnt_reg[12]_i_1_n_6 ,\wait_time_cnt_reg[12]_i_1_n_7 }),
        .S({\wait_time_cnt[12]_i_2_n_0 ,\wait_time_cnt[12]_i_3_n_0 ,\wait_time_cnt[12]_i_4_n_0 ,\wait_time_cnt[12]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[12]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDSE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[0]_i_3_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1 
       (.CI(\wait_time_cnt_reg[0]_i_3_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1_n_0 ,\wait_time_cnt_reg[4]_i_1_n_1 ,\wait_time_cnt_reg[4]_i_1_n_2 ,\wait_time_cnt_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1_n_4 ,\wait_time_cnt_reg[4]_i_1_n_5 ,\wait_time_cnt_reg[4]_i_1_n_6 ,\wait_time_cnt_reg[4]_i_1_n_7 }),
        .S({\wait_time_cnt[4]_i_2_n_0 ,\wait_time_cnt[4]_i_3_n_0 ,\wait_time_cnt[4]_i_4_n_0 ,\wait_time_cnt[4]_i_5_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[4]_i_1_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__1_n_0 ));
  FDRE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1 
       (.CI(\wait_time_cnt_reg[4]_i_1_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1_n_0 ,\wait_time_cnt_reg[8]_i_1_n_1 ,\wait_time_cnt_reg[8]_i_1_n_2 ,\wait_time_cnt_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1_n_4 ,\wait_time_cnt_reg[8]_i_1_n_5 ,\wait_time_cnt_reg[8]_i_1_n_6 ,\wait_time_cnt_reg[8]_i_1_n_7 }),
        .S({\wait_time_cnt[8]_i_2_n_0 ,\wait_time_cnt[8]_i_3_n_0 ,\wait_time_cnt[8]_i_4_n_0 ,\wait_time_cnt[8]_i_5_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(sel),
        .D(\wait_time_cnt_reg[8]_i_1_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1__1_n_0 ));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_TX_STARTUP_FSM" *) 
module gtwizard_4_channel_gtwizard_4_channel_TX_STARTUP_FSM_1
   (gt1_gttxreset_i,
    gt1_cpllreset_i,
    gt1_tx_fsm_reset_done_out,
    gt1_txuserrdy_i,
    sysclk_in,
    soft_reset_tx_in,
    gt1_cpllrefclklost_i,
    gt1_txresetdone_out,
    gt1_cplllock_out);
  output gt1_gttxreset_i;
  output gt1_cpllreset_i;
  output gt1_tx_fsm_reset_done_out;
  output gt1_txuserrdy_i;
  input sysclk_in;
  input soft_reset_tx_in;
  input gt1_cpllrefclklost_i;
  input gt1_txresetdone_out;
  input gt1_cplllock_out;

  wire CPLL_RESET_i_1__0_n_0;
  wire CPLL_RESET_i_2__0_n_0;
  wire \FSM_sequential_tx_state[0]_i_1__0_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2__0_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1__0_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1__0_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2__0_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2__0_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4__0_n_0 ;
  wire TXUSERRDY_i_1__0_n_0;
  wire gt1_cplllock_out;
  wire gt1_cpllrefclklost_i;
  wire gt1_cpllreset_i;
  wire gt1_gttxreset_i;
  wire gt1_tx_fsm_reset_done_out;
  wire gt1_txresetdone_out;
  wire gt1_txuserrdy_i;
  wire gttxreset_i_i_1__0_n_0;
  wire init_wait_count;
  wire \init_wait_count[7]_i_3__0_n_0 ;
  wire \init_wait_count[7]_i_4__0_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1__0_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__0_n_0 ;
  wire \mmcm_lock_count[7]_i_4__0_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__0_n_0;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire pll_reset_asserted_i_1__0_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire reset_time_out_i_3__0_n_0;
  wire reset_time_out_reg_n_0;
  wire soft_reset_tx_in;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire sysclk_in;
  wire time_out_2ms;
  wire time_out_2ms_i_1__4_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1__0_n_0;
  wire time_out_500us_i_2__0_n_0;
  wire time_out_500us_i_3__0_n_0;
  wire time_out_500us_i_4__0_n_0;
  wire time_out_500us_i_5_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_4_n_0 ;
  wire \time_out_counter[0]_i_5__5_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__0_n_0 ;
  wire \time_out_counter_reg[0]_i_2__0_n_1 ;
  wire \time_out_counter_reg[0]_i_2__0_n_2 ;
  wire \time_out_counter_reg[0]_i_2__0_n_3 ;
  wire \time_out_counter_reg[0]_i_2__0_n_4 ;
  wire \time_out_counter_reg[0]_i_2__0_n_5 ;
  wire \time_out_counter_reg[0]_i_2__0_n_6 ;
  wire \time_out_counter_reg[0]_i_2__0_n_7 ;
  wire \time_out_counter_reg[12]_i_1__0_n_0 ;
  wire \time_out_counter_reg[12]_i_1__0_n_1 ;
  wire \time_out_counter_reg[12]_i_1__0_n_2 ;
  wire \time_out_counter_reg[12]_i_1__0_n_3 ;
  wire \time_out_counter_reg[12]_i_1__0_n_4 ;
  wire \time_out_counter_reg[12]_i_1__0_n_5 ;
  wire \time_out_counter_reg[12]_i_1__0_n_6 ;
  wire \time_out_counter_reg[12]_i_1__0_n_7 ;
  wire \time_out_counter_reg[16]_i_1__0_n_3 ;
  wire \time_out_counter_reg[16]_i_1__0_n_6 ;
  wire \time_out_counter_reg[16]_i_1__0_n_7 ;
  wire \time_out_counter_reg[4]_i_1__0_n_0 ;
  wire \time_out_counter_reg[4]_i_1__0_n_1 ;
  wire \time_out_counter_reg[4]_i_1__0_n_2 ;
  wire \time_out_counter_reg[4]_i_1__0_n_3 ;
  wire \time_out_counter_reg[4]_i_1__0_n_4 ;
  wire \time_out_counter_reg[4]_i_1__0_n_5 ;
  wire \time_out_counter_reg[4]_i_1__0_n_6 ;
  wire \time_out_counter_reg[4]_i_1__0_n_7 ;
  wire \time_out_counter_reg[8]_i_1__0_n_0 ;
  wire \time_out_counter_reg[8]_i_1__0_n_1 ;
  wire \time_out_counter_reg[8]_i_1__0_n_2 ;
  wire \time_out_counter_reg[8]_i_1__0_n_3 ;
  wire \time_out_counter_reg[8]_i_1__0_n_4 ;
  wire \time_out_counter_reg[8]_i_1__0_n_5 ;
  wire \time_out_counter_reg[8]_i_1__0_n_6 ;
  wire \time_out_counter_reg[8]_i_1__0_n_7 ;
  wire time_tlock_max_i_1__4_n_0;
  wire time_tlock_max_i_2__4_n_0;
  wire time_tlock_max_i_3__4_n_0;
  wire time_tlock_max_i_4__4_n_0;
  wire time_tlock_max_i_5_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1__0_n_0;
  wire [3:0]tx_state;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_time_cnt[0]_i_10__0_n_0 ;
  wire \wait_time_cnt[0]_i_11__0_n_0 ;
  wire \wait_time_cnt[0]_i_1__2_n_0 ;
  wire \wait_time_cnt[0]_i_2__0_n_0 ;
  wire \wait_time_cnt[0]_i_4__0_n_0 ;
  wire \wait_time_cnt[0]_i_5__0_n_0 ;
  wire \wait_time_cnt[0]_i_6__0_n_0 ;
  wire \wait_time_cnt[0]_i_7__0_n_0 ;
  wire \wait_time_cnt[0]_i_8__0_n_0 ;
  wire \wait_time_cnt[0]_i_9__0_n_0 ;
  wire \wait_time_cnt[12]_i_2__0_n_0 ;
  wire \wait_time_cnt[12]_i_3__0_n_0 ;
  wire \wait_time_cnt[12]_i_4__0_n_0 ;
  wire \wait_time_cnt[12]_i_5__0_n_0 ;
  wire \wait_time_cnt[4]_i_2__0_n_0 ;
  wire \wait_time_cnt[4]_i_3__0_n_0 ;
  wire \wait_time_cnt[4]_i_4__0_n_0 ;
  wire \wait_time_cnt[4]_i_5__0_n_0 ;
  wire \wait_time_cnt[8]_i_2__0_n_0 ;
  wire \wait_time_cnt[8]_i_3__0_n_0 ;
  wire \wait_time_cnt[8]_i_4__0_n_0 ;
  wire \wait_time_cnt[8]_i_5__0_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__0_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__0_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__0_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__0_n_7 ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFF1F00000010)) 
    CPLL_RESET_i_1__0
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt1_cpllrefclklost_i),
        .I2(CPLL_RESET_i_2__0_n_0),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(gt1_cpllreset_i),
        .O(CPLL_RESET_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    CPLL_RESET_i_2__0
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .O(CPLL_RESET_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(CPLL_RESET_i_1__0_n_0),
        .Q(gt1_cpllreset_i),
        .R(soft_reset_tx_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF008F8F)) 
    \FSM_sequential_tx_state[0]_i_1__0 
       (.I0(time_out_2ms_reg_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(\FSM_sequential_tx_state[0]_i_2__0_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[3]),
        .O(\FSM_sequential_tx_state[0]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h22220030FFFFFFFF)) 
    \FSM_sequential_tx_state[0]_i_2__0 
       (.I0(time_out_500us_reg_n_0),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max_reg_n_0),
        .I3(mmcm_lock_reclocked),
        .I4(tx_state[1]),
        .I5(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'h44544554)) 
    \FSM_sequential_tx_state[1]_i_1__0 
       (.I0(tx_state[3]),
        .I1(\FSM_sequential_tx_state[1]_i_2__0_n_0 ),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT5 #(
    .INIT(32'h22222022)) 
    \FSM_sequential_tx_state[1]_i_2__0 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(time_tlock_max_reg_n_0),
        .I4(reset_time_out_reg_n_0),
        .O(\FSM_sequential_tx_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'h0044104404441444)) 
    \FSM_sequential_tx_state[2]_i_1__0 
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(\FSM_sequential_tx_state[2]_i_2__0_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_tx_state[2]_i_2__0 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max_reg_n_0),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEAAAAAAAAAAAA)) 
    \FSM_sequential_tx_state[3]_i_2__0 
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(time_out_500us_reg_n_0),
        .I3(reset_time_out_reg_n_0),
        .I4(tx_state[0]),
        .I5(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_4__0 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_4__0_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1__0_n_0 ),
        .Q(tx_state[0]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[1]_i_1__0_n_0 ),
        .Q(tx_state[1]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1__0_n_0 ),
        .Q(tx_state[2]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[3]_i_2__0_n_0 ),
        .Q(tx_state[3]),
        .R(soft_reset_tx_in));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    TXUSERRDY_i_1__0
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(gt1_txuserrdy_i),
        .O(TXUSERRDY_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1__0_n_0),
        .Q(gt1_txuserrdy_i),
        .R(soft_reset_tx_in));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    gttxreset_i_i_1__0
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(gt1_gttxreset_i),
        .O(gttxreset_i_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1__0_n_0),
        .Q(gt1_gttxreset_i),
        .R(soft_reset_tx_in));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__0 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__0 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__0 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__0 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__0 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_1__0 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\init_wait_count[7]_i_4__0_n_0 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \init_wait_count[7]_i_1__0 
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg__0[7]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[5]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[7]_i_2__0 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\init_wait_count[7]_i_4__0_n_0 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \init_wait_count[7]_i_3__0 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[4]),
        .I3(init_wait_count_reg__0[2]),
        .O(\init_wait_count[7]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[7]_i_4__0 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .O(\init_wait_count[7]_i_4__0_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    init_wait_done_i_1__0
       (.I0(\init_wait_count[7]_i_3__0_n_0 ),
        .I1(init_wait_count_reg__0[7]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[5]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_tx_in),
        .D(init_wait_done_i_1__0_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2__0 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__0 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4__0 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\mmcm_lock_count[7]_i_4__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__0_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mmcm_lock_reclocked_i_2__0
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__0_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(mmcm_lock_reclocked_i_2__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA0BAA)) 
    pll_reset_asserted_i_1__0
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt1_cpllrefclklost_i),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .I5(tx_state[3]),
        .O(pll_reset_asserted_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1__0_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(soft_reset_tx_in));
  LUT4 #(
    .INIT(16'hB833)) 
    reset_time_out_i_3__0
       (.I0(txresetdone_s3),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(tx_state[2]),
        .O(reset_time_out_i_3__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_1),
        .Q(reset_time_out_reg_n_0),
        .R(soft_reset_tx_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_28 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_29 sync_cplllock
       (.E(sync_cplllock_n_0),
        .\FSM_sequential_tx_state_reg[0] (init_wait_done_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_4__0_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\wait_time_cnt[0]_i_2__0_n_0 ),
        .\FSM_sequential_tx_state_reg[3] (sync_cplllock_n_1),
        .\FSM_sequential_tx_state_reg[3]_i_3__0_0 (time_out_500us_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3__0_1 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3__0_2 (time_tlock_max_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3__0_3 (pll_reset_asserted_reg_n_0),
        .Q(tx_state),
        .gt1_cplllock_out(gt1_cplllock_out),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out_reg(reset_time_out_i_3__0_n_0),
        .reset_time_out_reg_0(reset_time_out_reg_n_0),
        .sysclk_in(sysclk_in),
        .txresetdone_s3(txresetdone_s3));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_30 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2__0_n_0),
        .sysclk_in(sysclk_in));
  LUT3 #(
    .INIT(8'h0E)) 
    time_out_2ms_i_1__4
       (.I0(time_out_2ms_reg_n_0),
        .I1(time_out_2ms),
        .I2(reset_time_out_reg_n_0),
        .O(time_out_2ms_i_1__4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__4_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_out_500us_i_1__0
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2__0_n_0),
        .I2(time_out_500us_i_3__0_n_0),
        .I3(time_out_500us_i_4__0_n_0),
        .I4(time_out_500us_i_5_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(time_out_500us_i_1__0_n_0));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    time_out_500us_i_2__0
       (.I0(time_out_counter_reg[3]),
        .I1(time_out_counter_reg[1]),
        .I2(time_out_counter_reg[0]),
        .I3(time_out_counter_reg[6]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[17]),
        .O(time_out_500us_i_2__0_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_500us_i_3__0
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[4]),
        .O(time_out_500us_i_3__0_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    time_out_500us_i_4__0
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[15]),
        .O(time_out_500us_i_4__0_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_out_500us_i_5
       (.I0(time_out_counter_reg[12]),
        .I1(time_out_counter_reg[11]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[7]),
        .O(time_out_500us_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1__0_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_1__4 
       (.I0(time_out_2ms),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'h0000000000020000)) 
    \time_out_counter[0]_i_3__2 
       (.I0(time_tlock_max_i_2__4_n_0),
        .I1(time_tlock_max_i_3__4_n_0),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[16]),
        .I5(\time_out_counter[0]_i_5__5_n_0 ),
        .O(time_out_2ms));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_4 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFEFFFFFFFFFFFFFF)) 
    \time_out_counter[0]_i_5__5 
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[5]),
        .I3(time_out_counter_reg[17]),
        .I4(time_out_counter_reg[15]),
        .I5(time_out_counter_reg[14]),
        .O(\time_out_counter[0]_i_5__5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__0 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__0_n_0 ,\time_out_counter_reg[0]_i_2__0_n_1 ,\time_out_counter_reg[0]_i_2__0_n_2 ,\time_out_counter_reg[0]_i_2__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__0_n_4 ,\time_out_counter_reg[0]_i_2__0_n_5 ,\time_out_counter_reg[0]_i_2__0_n_6 ,\time_out_counter_reg[0]_i_2__0_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_4_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__0 
       (.CI(\time_out_counter_reg[8]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__0_n_0 ,\time_out_counter_reg[12]_i_1__0_n_1 ,\time_out_counter_reg[12]_i_1__0_n_2 ,\time_out_counter_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__0_n_4 ,\time_out_counter_reg[12]_i_1__0_n_5 ,\time_out_counter_reg[12]_i_1__0_n_6 ,\time_out_counter_reg[12]_i_1__0_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__0 
       (.CI(\time_out_counter_reg[12]_i_1__0_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__0_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__0_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__0_n_6 ,\time_out_counter_reg[16]_i_1__0_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__0_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__0 
       (.CI(\time_out_counter_reg[0]_i_2__0_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__0_n_0 ,\time_out_counter_reg[4]_i_1__0_n_1 ,\time_out_counter_reg[4]_i_1__0_n_2 ,\time_out_counter_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__0_n_4 ,\time_out_counter_reg[4]_i_1__0_n_5 ,\time_out_counter_reg[4]_i_1__0_n_6 ,\time_out_counter_reg[4]_i_1__0_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__0_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__0 
       (.CI(\time_out_counter_reg[4]_i_1__0_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__0_n_0 ,\time_out_counter_reg[8]_i_1__0_n_1 ,\time_out_counter_reg[8]_i_1__0_n_2 ,\time_out_counter_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__0_n_4 ,\time_out_counter_reg[8]_i_1__0_n_5 ,\time_out_counter_reg[8]_i_1__0_n_6 ,\time_out_counter_reg[8]_i_1__0_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__0_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_tlock_max_i_1__4
       (.I0(time_tlock_max_reg_n_0),
        .I1(time_tlock_max_i_2__4_n_0),
        .I2(time_tlock_max_i_3__4_n_0),
        .I3(time_tlock_max_i_4__4_n_0),
        .I4(time_tlock_max_i_5_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(time_tlock_max_i_1__4_n_0));
  LUT5 #(
    .INIT(32'h00010000)) 
    time_tlock_max_i_2__4
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[4]),
        .O(time_tlock_max_i_2__4_n_0));
  LUT4 #(
    .INIT(16'hEFFF)) 
    time_tlock_max_i_3__4
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[12]),
        .O(time_tlock_max_i_3__4_n_0));
  LUT3 #(
    .INIT(8'hFB)) 
    time_tlock_max_i_4__4
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[14]),
        .O(time_tlock_max_i_4__4_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    time_tlock_max_i_5
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_tlock_max_i_5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__4_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    tx_fsm_reset_done_int_i_1__0
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .I4(gt1_tx_fsm_reset_done_out),
        .O(tx_fsm_reset_done_int_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1__0_n_0),
        .Q(gt1_tx_fsm_reset_done_out),
        .R(soft_reset_tx_in));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10__0 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11__0 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11__0_n_0 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \wait_time_cnt[0]_i_1__2 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .O(\wait_time_cnt[0]_i_1__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2__0 
       (.I0(\wait_time_cnt[0]_i_4__0_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__0_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__0_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__0_n_0 ),
        .O(\wait_time_cnt[0]_i_2__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__0 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[6]),
        .I3(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5__0 
       (.I0(wait_time_cnt_reg[14]),
        .I1(wait_time_cnt_reg[12]),
        .I2(wait_time_cnt_reg[11]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_5__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__0 
       (.I0(wait_time_cnt_reg[7]),
        .I1(wait_time_cnt_reg[4]),
        .I2(wait_time_cnt_reg[10]),
        .I3(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[0]_i_6__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__0 
       (.I0(wait_time_cnt_reg[15]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[8]),
        .I3(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[0]_i_7__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__0 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__0 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__0 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__0 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__0 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__0 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__0 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__0 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__0 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__0 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__0 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__0 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__0 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__0 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__0_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__0 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__0_n_0 ,\wait_time_cnt_reg[0]_i_3__0_n_1 ,\wait_time_cnt_reg[0]_i_3__0_n_2 ,\wait_time_cnt_reg[0]_i_3__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__0_n_4 ,\wait_time_cnt_reg[0]_i_3__0_n_5 ,\wait_time_cnt_reg[0]_i_3__0_n_6 ,\wait_time_cnt_reg[0]_i_3__0_n_7 }),
        .S({\wait_time_cnt[0]_i_8__0_n_0 ,\wait_time_cnt[0]_i_9__0_n_0 ,\wait_time_cnt[0]_i_10__0_n_0 ,\wait_time_cnt[0]_i_11__0_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__0 
       (.CI(\wait_time_cnt_reg[8]_i_1__0_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__0_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__0_n_1 ,\wait_time_cnt_reg[12]_i_1__0_n_2 ,\wait_time_cnt_reg[12]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__0_n_4 ,\wait_time_cnt_reg[12]_i_1__0_n_5 ,\wait_time_cnt_reg[12]_i_1__0_n_6 ,\wait_time_cnt_reg[12]_i_1__0_n_7 }),
        .S({\wait_time_cnt[12]_i_2__0_n_0 ,\wait_time_cnt[12]_i_3__0_n_0 ,\wait_time_cnt[12]_i_4__0_n_0 ,\wait_time_cnt[12]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDSE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__0_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__0 
       (.CI(\wait_time_cnt_reg[0]_i_3__0_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__0_n_0 ,\wait_time_cnt_reg[4]_i_1__0_n_1 ,\wait_time_cnt_reg[4]_i_1__0_n_2 ,\wait_time_cnt_reg[4]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__0_n_4 ,\wait_time_cnt_reg[4]_i_1__0_n_5 ,\wait_time_cnt_reg[4]_i_1__0_n_6 ,\wait_time_cnt_reg[4]_i_1__0_n_7 }),
        .S({\wait_time_cnt[4]_i_2__0_n_0 ,\wait_time_cnt[4]_i_3__0_n_0 ,\wait_time_cnt[4]_i_4__0_n_0 ,\wait_time_cnt[4]_i_5__0_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__0_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__2_n_0 ));
  FDRE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__0 
       (.CI(\wait_time_cnt_reg[4]_i_1__0_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__0_n_0 ,\wait_time_cnt_reg[8]_i_1__0_n_1 ,\wait_time_cnt_reg[8]_i_1__0_n_2 ,\wait_time_cnt_reg[8]_i_1__0_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__0_n_4 ,\wait_time_cnt_reg[8]_i_1__0_n_5 ,\wait_time_cnt_reg[8]_i_1__0_n_6 ,\wait_time_cnt_reg[8]_i_1__0_n_7 }),
        .S({\wait_time_cnt[8]_i_2__0_n_0 ,\wait_time_cnt[8]_i_3__0_n_0 ,\wait_time_cnt[8]_i_4__0_n_0 ,\wait_time_cnt[8]_i_5__0_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__0_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__0_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1__2_n_0 ));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_TX_STARTUP_FSM" *) 
module gtwizard_4_channel_gtwizard_4_channel_TX_STARTUP_FSM_3
   (gt2_gttxreset_i,
    gt2_cpllreset_i,
    gt2_tx_fsm_reset_done_out,
    gt2_txuserrdy_i,
    sysclk_in,
    soft_reset_tx_in,
    gt2_cpllrefclklost_i,
    gt2_txresetdone_out,
    gt2_cplllock_out);
  output gt2_gttxreset_i;
  output gt2_cpllreset_i;
  output gt2_tx_fsm_reset_done_out;
  output gt2_txuserrdy_i;
  input sysclk_in;
  input soft_reset_tx_in;
  input gt2_cpllrefclklost_i;
  input gt2_txresetdone_out;
  input gt2_cplllock_out;

  wire CPLL_RESET_i_1__1_n_0;
  wire CPLL_RESET_i_2__1_n_0;
  wire \FSM_sequential_tx_state[0]_i_1__1_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2__1_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1__1_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_2__1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1__1_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2__1_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2__1_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4__1_n_0 ;
  wire TXUSERRDY_i_1__1_n_0;
  wire gt2_cplllock_out;
  wire gt2_cpllrefclklost_i;
  wire gt2_cpllreset_i;
  wire gt2_gttxreset_i;
  wire gt2_tx_fsm_reset_done_out;
  wire gt2_txresetdone_out;
  wire gt2_txuserrdy_i;
  wire gttxreset_i_i_1__1_n_0;
  wire init_wait_count;
  wire \init_wait_count[7]_i_3__1_n_0 ;
  wire \init_wait_count[7]_i_4__1_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1__1_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__1_n_0 ;
  wire \mmcm_lock_count[7]_i_4__1_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__1_n_0;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire pll_reset_asserted_i_1__1_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire reset_time_out_i_3__1_n_0;
  wire reset_time_out_reg_n_0;
  wire soft_reset_tx_in;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire sysclk_in;
  wire time_out_2ms_i_1__5_n_0;
  wire time_out_2ms_i_2__1_n_0;
  wire time_out_2ms_i_3__1_n_0;
  wire time_out_2ms_i_4__1_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1__1_n_0;
  wire time_out_500us_i_2__1_n_0;
  wire time_out_500us_i_3__1_n_0;
  wire time_out_500us_i_4__1_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__3_n_0 ;
  wire \time_out_counter[0]_i_4__3_n_0 ;
  wire \time_out_counter[0]_i_5__0_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__1_n_0 ;
  wire \time_out_counter_reg[0]_i_2__1_n_1 ;
  wire \time_out_counter_reg[0]_i_2__1_n_2 ;
  wire \time_out_counter_reg[0]_i_2__1_n_3 ;
  wire \time_out_counter_reg[0]_i_2__1_n_4 ;
  wire \time_out_counter_reg[0]_i_2__1_n_5 ;
  wire \time_out_counter_reg[0]_i_2__1_n_6 ;
  wire \time_out_counter_reg[0]_i_2__1_n_7 ;
  wire \time_out_counter_reg[12]_i_1__1_n_0 ;
  wire \time_out_counter_reg[12]_i_1__1_n_1 ;
  wire \time_out_counter_reg[12]_i_1__1_n_2 ;
  wire \time_out_counter_reg[12]_i_1__1_n_3 ;
  wire \time_out_counter_reg[12]_i_1__1_n_4 ;
  wire \time_out_counter_reg[12]_i_1__1_n_5 ;
  wire \time_out_counter_reg[12]_i_1__1_n_6 ;
  wire \time_out_counter_reg[12]_i_1__1_n_7 ;
  wire \time_out_counter_reg[16]_i_1__1_n_3 ;
  wire \time_out_counter_reg[16]_i_1__1_n_6 ;
  wire \time_out_counter_reg[16]_i_1__1_n_7 ;
  wire \time_out_counter_reg[4]_i_1__1_n_0 ;
  wire \time_out_counter_reg[4]_i_1__1_n_1 ;
  wire \time_out_counter_reg[4]_i_1__1_n_2 ;
  wire \time_out_counter_reg[4]_i_1__1_n_3 ;
  wire \time_out_counter_reg[4]_i_1__1_n_4 ;
  wire \time_out_counter_reg[4]_i_1__1_n_5 ;
  wire \time_out_counter_reg[4]_i_1__1_n_6 ;
  wire \time_out_counter_reg[4]_i_1__1_n_7 ;
  wire \time_out_counter_reg[8]_i_1__1_n_0 ;
  wire \time_out_counter_reg[8]_i_1__1_n_1 ;
  wire \time_out_counter_reg[8]_i_1__1_n_2 ;
  wire \time_out_counter_reg[8]_i_1__1_n_3 ;
  wire \time_out_counter_reg[8]_i_1__1_n_4 ;
  wire \time_out_counter_reg[8]_i_1__1_n_5 ;
  wire \time_out_counter_reg[8]_i_1__1_n_6 ;
  wire \time_out_counter_reg[8]_i_1__1_n_7 ;
  wire time_tlock_max_i_1__5_n_0;
  wire time_tlock_max_i_2__5_n_0;
  wire time_tlock_max_i_3__5_n_0;
  wire time_tlock_max_i_4__5_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1__1_n_0;
  wire [3:0]tx_state;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_time_cnt[0]_i_10__1_n_0 ;
  wire \wait_time_cnt[0]_i_11__1_n_0 ;
  wire \wait_time_cnt[0]_i_1__3_n_0 ;
  wire \wait_time_cnt[0]_i_2__1_n_0 ;
  wire \wait_time_cnt[0]_i_4__1_n_0 ;
  wire \wait_time_cnt[0]_i_5__1_n_0 ;
  wire \wait_time_cnt[0]_i_6__1_n_0 ;
  wire \wait_time_cnt[0]_i_7__1_n_0 ;
  wire \wait_time_cnt[0]_i_8__1_n_0 ;
  wire \wait_time_cnt[0]_i_9__1_n_0 ;
  wire \wait_time_cnt[12]_i_2__1_n_0 ;
  wire \wait_time_cnt[12]_i_3__1_n_0 ;
  wire \wait_time_cnt[12]_i_4__1_n_0 ;
  wire \wait_time_cnt[12]_i_5__1_n_0 ;
  wire \wait_time_cnt[4]_i_2__1_n_0 ;
  wire \wait_time_cnt[4]_i_3__1_n_0 ;
  wire \wait_time_cnt[4]_i_4__1_n_0 ;
  wire \wait_time_cnt[4]_i_5__1_n_0 ;
  wire \wait_time_cnt[8]_i_2__1_n_0 ;
  wire \wait_time_cnt[8]_i_3__1_n_0 ;
  wire \wait_time_cnt[8]_i_4__1_n_0 ;
  wire \wait_time_cnt[8]_i_5__1_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__1_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__1_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__1_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__1_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__1_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__1_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__1_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__1_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__1_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__1_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__1_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__1_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__1_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__1_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__1_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__1_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__1_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__1_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__1_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__1_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__1_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__1_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__1_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__1_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__1_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__1_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__1_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__1_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__1_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__1_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__1_n_7 ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__1_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__1_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__1_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFF1F00000010)) 
    CPLL_RESET_i_1__1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt2_cpllrefclklost_i),
        .I2(CPLL_RESET_i_2__1_n_0),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(gt2_cpllreset_i),
        .O(CPLL_RESET_i_1__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT2 #(
    .INIT(4'h2)) 
    CPLL_RESET_i_2__1
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .O(CPLL_RESET_i_2__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(CPLL_RESET_i_1__1_n_0),
        .Q(gt2_cpllreset_i),
        .R(soft_reset_tx_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF008F8F)) 
    \FSM_sequential_tx_state[0]_i_1__1 
       (.I0(time_out_2ms_reg_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(\FSM_sequential_tx_state[0]_i_2__1_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[3]),
        .O(\FSM_sequential_tx_state[0]_i_1__1_n_0 ));
  LUT6 #(
    .INIT(64'h22220030FFFFFFFF)) 
    \FSM_sequential_tx_state[0]_i_2__1 
       (.I0(time_out_500us_reg_n_0),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max_reg_n_0),
        .I3(mmcm_lock_reclocked),
        .I4(tx_state[1]),
        .I5(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_2__1_n_0 ));
  LUT5 #(
    .INIT(32'h44544554)) 
    \FSM_sequential_tx_state[1]_i_1__1 
       (.I0(tx_state[3]),
        .I1(\FSM_sequential_tx_state[1]_i_2__1_n_0 ),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[1]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h22222022)) 
    \FSM_sequential_tx_state[1]_i_2__1 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(time_tlock_max_reg_n_0),
        .I4(reset_time_out_reg_n_0),
        .O(\FSM_sequential_tx_state[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'h0044104404441444)) 
    \FSM_sequential_tx_state[2]_i_1__1 
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(time_out_2ms_reg_n_0),
        .I5(\FSM_sequential_tx_state[2]_i_2__1_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_tx_state[2]_i_2__1 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max_reg_n_0),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hEEAEAAAAAAAAAAAA)) 
    \FSM_sequential_tx_state[3]_i_2__1 
       (.I0(tx_state[3]),
        .I1(tx_state[1]),
        .I2(time_out_500us_reg_n_0),
        .I3(reset_time_out_reg_n_0),
        .I4(tx_state[0]),
        .I5(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_4__1 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_4__1_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1__1_n_0 ),
        .Q(tx_state[0]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[1]_i_1__1_n_0 ),
        .Q(tx_state[1]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1__1_n_0 ),
        .Q(tx_state[2]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[3]_i_2__1_n_0 ),
        .Q(tx_state[3]),
        .R(soft_reset_tx_in));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    TXUSERRDY_i_1__1
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(gt2_txuserrdy_i),
        .O(TXUSERRDY_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1__1_n_0),
        .Q(gt2_txuserrdy_i),
        .R(soft_reset_tx_in));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    gttxreset_i_i_1__1
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(gt2_gttxreset_i),
        .O(gttxreset_i_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1__1_n_0),
        .Q(gt2_gttxreset_i),
        .R(soft_reset_tx_in));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__1 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__1 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__1 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__1 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__1 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__1 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_1__1 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\init_wait_count[7]_i_4__1_n_0 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \init_wait_count[7]_i_1__1 
       (.I0(\init_wait_count[7]_i_3__1_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[5]),
        .I4(init_wait_count_reg__0[2]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[7]_i_2__1 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\init_wait_count[7]_i_4__1_n_0 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFFF7)) 
    \init_wait_count[7]_i_3__1 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[7]),
        .I3(init_wait_count_reg__0[4]),
        .O(\init_wait_count[7]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[7]_i_4__1 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .O(\init_wait_count[7]_i_4__1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00000001)) 
    init_wait_done_i_1__1
       (.I0(\init_wait_count[7]_i_3__1_n_0 ),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[5]),
        .I4(init_wait_count_reg__0[2]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_tx_in),
        .D(init_wait_done_i_1__1_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__1 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__1 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__1 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__1 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__1 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1__1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__1_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2__1 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__1_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__1 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4__1_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4__1 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\mmcm_lock_count[7]_i_4__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__1_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__1_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__1_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__1_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__1_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__1_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__1_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__1_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    mmcm_lock_reclocked_i_2__1
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(mmcm_lock_reclocked_i_2__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA0BAA)) 
    pll_reset_asserted_i_1__1
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt2_cpllrefclklost_i),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .I5(tx_state[3]),
        .O(pll_reset_asserted_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1__1_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(soft_reset_tx_in));
  LUT4 #(
    .INIT(16'hB833)) 
    reset_time_out_i_3__1
       (.I0(txresetdone_s3),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(tx_state[2]),
        .O(reset_time_out_i_3__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_1),
        .Q(reset_time_out_reg_n_0),
        .R(soft_reset_tx_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_18 sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_19 sync_cplllock
       (.E(sync_cplllock_n_0),
        .\FSM_sequential_tx_state_reg[0] (init_wait_done_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_4__1_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\wait_time_cnt[0]_i_2__1_n_0 ),
        .\FSM_sequential_tx_state_reg[3] (sync_cplllock_n_1),
        .\FSM_sequential_tx_state_reg[3]_i_3__1_0 (time_out_500us_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3__1_1 (time_out_2ms_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3__1_2 (time_tlock_max_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3__1_3 (pll_reset_asserted_reg_n_0),
        .Q(tx_state),
        .gt2_cplllock_out(gt2_cplllock_out),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out_reg(reset_time_out_i_3__1_n_0),
        .reset_time_out_reg_0(reset_time_out_reg_n_0),
        .sysclk_in(sysclk_in),
        .txresetdone_s3(txresetdone_s3));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_20 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7:6]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2__1_n_0),
        .sysclk_in(sysclk_in));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_out_2ms_i_1__5
       (.I0(time_out_2ms_reg_n_0),
        .I1(\time_out_counter[0]_i_4__3_n_0 ),
        .I2(time_out_2ms_i_2__1_n_0),
        .I3(time_out_2ms_i_3__1_n_0),
        .I4(time_out_2ms_i_4__1_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(time_out_2ms_i_1__5_n_0));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT4 #(
    .INIT(16'hFFEF)) 
    time_out_2ms_i_2__1
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[13]),
        .I2(time_out_counter_reg[17]),
        .I3(time_out_counter_reg[2]),
        .O(time_out_2ms_i_2__1_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    time_out_2ms_i_3__1
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[15]),
        .O(time_out_2ms_i_3__1_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_2ms_i_4__1
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[0]),
        .O(time_out_2ms_i_4__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__5_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_out_500us_i_1__1
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2__1_n_0),
        .I2(time_out_500us_i_3__1_n_0),
        .I3(time_out_500us_i_4__1_n_0),
        .I4(time_out_2ms_i_4__1_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(time_out_500us_i_1__1_n_0));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    time_out_500us_i_2__1
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[13]),
        .I4(time_out_counter_reg[17]),
        .I5(time_out_counter_reg[16]),
        .O(time_out_500us_i_2__1_n_0));
  LUT4 #(
    .INIT(16'hFF7F)) 
    time_out_500us_i_3__1
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[2]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[7]),
        .O(time_out_500us_i_3__1_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_out_500us_i_4__1
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[10]),
        .I3(time_out_counter_reg[11]),
        .O(time_out_500us_i_4__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1__1_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \time_out_counter[0]_i_1__5 
       (.I0(time_out_counter_reg[0]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[3]),
        .I3(time_out_counter_reg[1]),
        .I4(\time_out_counter[0]_i_3__3_n_0 ),
        .I5(\time_out_counter[0]_i_4__3_n_0 ),
        .O(time_out_counter));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    \time_out_counter[0]_i_3__3 
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[5]),
        .I4(time_out_2ms_i_3__1_n_0),
        .O(\time_out_counter[0]_i_3__3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000001000)) 
    \time_out_counter[0]_i_4__3 
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[8]),
        .I2(time_out_counter_reg[12]),
        .I3(time_out_counter_reg[7]),
        .I4(time_out_counter_reg[10]),
        .I5(time_out_counter_reg[11]),
        .O(\time_out_counter[0]_i_4__3_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_5__0 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_5__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__1_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__1 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__1_n_0 ,\time_out_counter_reg[0]_i_2__1_n_1 ,\time_out_counter_reg[0]_i_2__1_n_2 ,\time_out_counter_reg[0]_i_2__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__1_n_4 ,\time_out_counter_reg[0]_i_2__1_n_5 ,\time_out_counter_reg[0]_i_2__1_n_6 ,\time_out_counter_reg[0]_i_2__1_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_5__0_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__1_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__1_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__1_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__1 
       (.CI(\time_out_counter_reg[8]_i_1__1_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__1_n_0 ,\time_out_counter_reg[12]_i_1__1_n_1 ,\time_out_counter_reg[12]_i_1__1_n_2 ,\time_out_counter_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__1_n_4 ,\time_out_counter_reg[12]_i_1__1_n_5 ,\time_out_counter_reg[12]_i_1__1_n_6 ,\time_out_counter_reg[12]_i_1__1_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__1_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__1_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__1_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__1_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__1 
       (.CI(\time_out_counter_reg[12]_i_1__1_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__1_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__1_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__1_n_6 ,\time_out_counter_reg[16]_i_1__1_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__1_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__1_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__1_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__1_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__1_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__1 
       (.CI(\time_out_counter_reg[0]_i_2__1_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__1_n_0 ,\time_out_counter_reg[4]_i_1__1_n_1 ,\time_out_counter_reg[4]_i_1__1_n_2 ,\time_out_counter_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__1_n_4 ,\time_out_counter_reg[4]_i_1__1_n_5 ,\time_out_counter_reg[4]_i_1__1_n_6 ,\time_out_counter_reg[4]_i_1__1_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__1_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__1_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__1_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__1_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__1 
       (.CI(\time_out_counter_reg[4]_i_1__1_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__1_n_0 ,\time_out_counter_reg[8]_i_1__1_n_1 ,\time_out_counter_reg[8]_i_1__1_n_2 ,\time_out_counter_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__1_n_4 ,\time_out_counter_reg[8]_i_1__1_n_5 ,\time_out_counter_reg[8]_i_1__1_n_6 ,\time_out_counter_reg[8]_i_1__1_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__1_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_tlock_max_i_1__5
       (.I0(time_tlock_max_reg_n_0),
        .I1(\time_out_counter[0]_i_4__3_n_0 ),
        .I2(time_tlock_max_i_2__5_n_0),
        .I3(time_tlock_max_i_3__5_n_0),
        .I4(time_tlock_max_i_4__5_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(time_tlock_max_i_1__5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_tlock_max_i_2__5
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[5]),
        .I2(time_out_counter_reg[6]),
        .I3(time_out_counter_reg[15]),
        .O(time_tlock_max_i_2__5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_tlock_max_i_3__5
       (.I0(time_out_counter_reg[1]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[16]),
        .I3(time_out_counter_reg[17]),
        .O(time_tlock_max_i_3__5_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_tlock_max_i_4__5
       (.I0(time_out_counter_reg[13]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[14]),
        .O(time_tlock_max_i_4__5_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__5_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    tx_fsm_reset_done_int_i_1__1
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .I4(gt2_tx_fsm_reset_done_out),
        .O(tx_fsm_reset_done_int_i_1__1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1__1_n_0),
        .Q(gt2_tx_fsm_reset_done_out),
        .R(soft_reset_tx_in));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10__1 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11__1 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11__1_n_0 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \wait_time_cnt[0]_i_1__3 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .O(\wait_time_cnt[0]_i_1__3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2__1 
       (.I0(\wait_time_cnt[0]_i_4__1_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__1_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__1_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__1_n_0 ),
        .O(\wait_time_cnt[0]_i_2__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__1 
       (.I0(wait_time_cnt_reg[12]),
        .I1(wait_time_cnt_reg[13]),
        .I2(wait_time_cnt_reg[15]),
        .I3(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[0]_i_4__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5__1 
       (.I0(wait_time_cnt_reg[8]),
        .I1(wait_time_cnt_reg[11]),
        .I2(wait_time_cnt_reg[9]),
        .I3(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[0]_i_5__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__1 
       (.I0(wait_time_cnt_reg[0]),
        .I1(wait_time_cnt_reg[1]),
        .I2(wait_time_cnt_reg[2]),
        .I3(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_6__1_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__1 
       (.I0(wait_time_cnt_reg[4]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[6]),
        .I3(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[0]_i_7__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__1 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__1 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__1 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__1 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__1 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__1 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__1 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__1 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__1 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__1 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__1 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__1 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__1 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__1 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__1_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__1_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__1 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__1_n_0 ,\wait_time_cnt_reg[0]_i_3__1_n_1 ,\wait_time_cnt_reg[0]_i_3__1_n_2 ,\wait_time_cnt_reg[0]_i_3__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__1_n_4 ,\wait_time_cnt_reg[0]_i_3__1_n_5 ,\wait_time_cnt_reg[0]_i_3__1_n_6 ,\wait_time_cnt_reg[0]_i_3__1_n_7 }),
        .S({\wait_time_cnt[0]_i_8__1_n_0 ,\wait_time_cnt[0]_i_9__1_n_0 ,\wait_time_cnt[0]_i_10__1_n_0 ,\wait_time_cnt[0]_i_11__1_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__1_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__1_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__1_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__1 
       (.CI(\wait_time_cnt_reg[8]_i_1__1_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__1_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__1_n_1 ,\wait_time_cnt_reg[12]_i_1__1_n_2 ,\wait_time_cnt_reg[12]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__1_n_4 ,\wait_time_cnt_reg[12]_i_1__1_n_5 ,\wait_time_cnt_reg[12]_i_1__1_n_6 ,\wait_time_cnt_reg[12]_i_1__1_n_7 }),
        .S({\wait_time_cnt[12]_i_2__1_n_0 ,\wait_time_cnt[12]_i_3__1_n_0 ,\wait_time_cnt[12]_i_4__1_n_0 ,\wait_time_cnt[12]_i_5__1_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__1_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__1_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__1_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDSE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__1_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__1_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__1_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__1_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__1 
       (.CI(\wait_time_cnt_reg[0]_i_3__1_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__1_n_0 ,\wait_time_cnt_reg[4]_i_1__1_n_1 ,\wait_time_cnt_reg[4]_i_1__1_n_2 ,\wait_time_cnt_reg[4]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__1_n_4 ,\wait_time_cnt_reg[4]_i_1__1_n_5 ,\wait_time_cnt_reg[4]_i_1__1_n_6 ,\wait_time_cnt_reg[4]_i_1__1_n_7 }),
        .S({\wait_time_cnt[4]_i_2__1_n_0 ,\wait_time_cnt[4]_i_3__1_n_0 ,\wait_time_cnt[4]_i_4__1_n_0 ,\wait_time_cnt[4]_i_5__1_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__1_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__1_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__1_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__3_n_0 ));
  FDRE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__1_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__1 
       (.CI(\wait_time_cnt_reg[4]_i_1__1_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__1_n_0 ,\wait_time_cnt_reg[8]_i_1__1_n_1 ,\wait_time_cnt_reg[8]_i_1__1_n_2 ,\wait_time_cnt_reg[8]_i_1__1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__1_n_4 ,\wait_time_cnt_reg[8]_i_1__1_n_5 ,\wait_time_cnt_reg[8]_i_1__1_n_6 ,\wait_time_cnt_reg[8]_i_1__1_n_7 }),
        .S({\wait_time_cnt[8]_i_2__1_n_0 ,\wait_time_cnt[8]_i_3__1_n_0 ,\wait_time_cnt[8]_i_4__1_n_0 ,\wait_time_cnt[8]_i_5__1_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__1_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__1_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1__3_n_0 ));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_TX_STARTUP_FSM" *) 
module gtwizard_4_channel_gtwizard_4_channel_TX_STARTUP_FSM_5
   (gt3_gttxreset_i,
    gt3_cpllreset_i,
    gt3_tx_fsm_reset_done_out,
    gt3_txuserrdy_i,
    sysclk_in,
    soft_reset_tx_in,
    gt3_cpllrefclklost_i,
    gt3_txresetdone_out,
    gt3_cplllock_out);
  output gt3_gttxreset_i;
  output gt3_cpllreset_i;
  output gt3_tx_fsm_reset_done_out;
  output gt3_txuserrdy_i;
  input sysclk_in;
  input soft_reset_tx_in;
  input gt3_cpllrefclklost_i;
  input gt3_txresetdone_out;
  input gt3_cplllock_out;

  wire CPLL_RESET_i_1__2_n_0;
  wire CPLL_RESET_i_2__2_n_0;
  wire \FSM_sequential_tx_state[0]_i_1__2_n_0 ;
  wire \FSM_sequential_tx_state[0]_i_2__2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_1__2_n_0 ;
  wire \FSM_sequential_tx_state[1]_i_2__2_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_1__2_n_0 ;
  wire \FSM_sequential_tx_state[2]_i_2__2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_2__2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_4__2_n_0 ;
  wire TXUSERRDY_i_1__2_n_0;
  wire gt3_cplllock_out;
  wire gt3_cpllrefclklost_i;
  wire gt3_cpllreset_i;
  wire gt3_gttxreset_i;
  wire gt3_tx_fsm_reset_done_out;
  wire gt3_txresetdone_out;
  wire gt3_txuserrdy_i;
  wire gttxreset_i_i_1__2_n_0;
  wire init_wait_count;
  wire \init_wait_count[7]_i_3__2_n_0 ;
  wire \init_wait_count[7]_i_4__2_n_0 ;
  wire [7:0]init_wait_count_reg__0;
  wire init_wait_done_i_1__2_n_0;
  wire init_wait_done_reg_n_0;
  wire \mmcm_lock_count[7]_i_2__2_n_0 ;
  wire \mmcm_lock_count[7]_i_4__2_n_0 ;
  wire [7:0]mmcm_lock_count_reg__0;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_i_2__2_n_0;
  wire [7:0]p_0_in;
  wire [7:0]p_0_in__0;
  wire pll_reset_asserted_i_1__2_n_0;
  wire pll_reset_asserted_reg_n_0;
  wire reset_time_out_i_3__2_n_0;
  wire reset_time_out_reg_n_0;
  wire soft_reset_tx_in;
  wire sync_cplllock_n_0;
  wire sync_cplllock_n_1;
  wire sync_mmcm_lock_reclocked_n_0;
  wire sync_mmcm_lock_reclocked_n_1;
  wire sysclk_in;
  wire time_out_2ms_i_1__6_n_0;
  wire time_out_2ms_i_2__2_n_0;
  wire time_out_2ms_reg_n_0;
  wire time_out_500us_i_1__2_n_0;
  wire time_out_500us_i_2__2_n_0;
  wire time_out_500us_i_3__2_n_0;
  wire time_out_500us_i_4__2_n_0;
  wire time_out_500us_i_5__0_n_0;
  wire time_out_500us_reg_n_0;
  wire time_out_counter;
  wire \time_out_counter[0]_i_3__4_n_0 ;
  wire \time_out_counter[0]_i_4__4_n_0 ;
  wire \time_out_counter[0]_i_5__1_n_0 ;
  wire [17:0]time_out_counter_reg;
  wire \time_out_counter_reg[0]_i_2__2_n_0 ;
  wire \time_out_counter_reg[0]_i_2__2_n_1 ;
  wire \time_out_counter_reg[0]_i_2__2_n_2 ;
  wire \time_out_counter_reg[0]_i_2__2_n_3 ;
  wire \time_out_counter_reg[0]_i_2__2_n_4 ;
  wire \time_out_counter_reg[0]_i_2__2_n_5 ;
  wire \time_out_counter_reg[0]_i_2__2_n_6 ;
  wire \time_out_counter_reg[0]_i_2__2_n_7 ;
  wire \time_out_counter_reg[12]_i_1__2_n_0 ;
  wire \time_out_counter_reg[12]_i_1__2_n_1 ;
  wire \time_out_counter_reg[12]_i_1__2_n_2 ;
  wire \time_out_counter_reg[12]_i_1__2_n_3 ;
  wire \time_out_counter_reg[12]_i_1__2_n_4 ;
  wire \time_out_counter_reg[12]_i_1__2_n_5 ;
  wire \time_out_counter_reg[12]_i_1__2_n_6 ;
  wire \time_out_counter_reg[12]_i_1__2_n_7 ;
  wire \time_out_counter_reg[16]_i_1__2_n_3 ;
  wire \time_out_counter_reg[16]_i_1__2_n_6 ;
  wire \time_out_counter_reg[16]_i_1__2_n_7 ;
  wire \time_out_counter_reg[4]_i_1__2_n_0 ;
  wire \time_out_counter_reg[4]_i_1__2_n_1 ;
  wire \time_out_counter_reg[4]_i_1__2_n_2 ;
  wire \time_out_counter_reg[4]_i_1__2_n_3 ;
  wire \time_out_counter_reg[4]_i_1__2_n_4 ;
  wire \time_out_counter_reg[4]_i_1__2_n_5 ;
  wire \time_out_counter_reg[4]_i_1__2_n_6 ;
  wire \time_out_counter_reg[4]_i_1__2_n_7 ;
  wire \time_out_counter_reg[8]_i_1__2_n_0 ;
  wire \time_out_counter_reg[8]_i_1__2_n_1 ;
  wire \time_out_counter_reg[8]_i_1__2_n_2 ;
  wire \time_out_counter_reg[8]_i_1__2_n_3 ;
  wire \time_out_counter_reg[8]_i_1__2_n_4 ;
  wire \time_out_counter_reg[8]_i_1__2_n_5 ;
  wire \time_out_counter_reg[8]_i_1__2_n_6 ;
  wire \time_out_counter_reg[8]_i_1__2_n_7 ;
  wire time_tlock_max_i_1__6_n_0;
  wire time_tlock_max_i_2__6_n_0;
  wire time_tlock_max_i_3__6_n_0;
  wire time_tlock_max_reg_n_0;
  wire tx_fsm_reset_done_int_i_1__2_n_0;
  wire [3:0]tx_state;
  wire txresetdone_s2;
  wire txresetdone_s3;
  wire \wait_time_cnt[0]_i_10__2_n_0 ;
  wire \wait_time_cnt[0]_i_11__2_n_0 ;
  wire \wait_time_cnt[0]_i_1__4_n_0 ;
  wire \wait_time_cnt[0]_i_2__2_n_0 ;
  wire \wait_time_cnt[0]_i_4__2_n_0 ;
  wire \wait_time_cnt[0]_i_5__2_n_0 ;
  wire \wait_time_cnt[0]_i_6__2_n_0 ;
  wire \wait_time_cnt[0]_i_7__2_n_0 ;
  wire \wait_time_cnt[0]_i_8__2_n_0 ;
  wire \wait_time_cnt[0]_i_9__2_n_0 ;
  wire \wait_time_cnt[12]_i_2__2_n_0 ;
  wire \wait_time_cnt[12]_i_3__2_n_0 ;
  wire \wait_time_cnt[12]_i_4__2_n_0 ;
  wire \wait_time_cnt[12]_i_5__2_n_0 ;
  wire \wait_time_cnt[4]_i_2__2_n_0 ;
  wire \wait_time_cnt[4]_i_3__2_n_0 ;
  wire \wait_time_cnt[4]_i_4__2_n_0 ;
  wire \wait_time_cnt[4]_i_5__2_n_0 ;
  wire \wait_time_cnt[8]_i_2__2_n_0 ;
  wire \wait_time_cnt[8]_i_3__2_n_0 ;
  wire \wait_time_cnt[8]_i_4__2_n_0 ;
  wire \wait_time_cnt[8]_i_5__2_n_0 ;
  wire [15:0]wait_time_cnt_reg;
  wire \wait_time_cnt_reg[0]_i_3__2_n_0 ;
  wire \wait_time_cnt_reg[0]_i_3__2_n_1 ;
  wire \wait_time_cnt_reg[0]_i_3__2_n_2 ;
  wire \wait_time_cnt_reg[0]_i_3__2_n_3 ;
  wire \wait_time_cnt_reg[0]_i_3__2_n_4 ;
  wire \wait_time_cnt_reg[0]_i_3__2_n_5 ;
  wire \wait_time_cnt_reg[0]_i_3__2_n_6 ;
  wire \wait_time_cnt_reg[0]_i_3__2_n_7 ;
  wire \wait_time_cnt_reg[12]_i_1__2_n_1 ;
  wire \wait_time_cnt_reg[12]_i_1__2_n_2 ;
  wire \wait_time_cnt_reg[12]_i_1__2_n_3 ;
  wire \wait_time_cnt_reg[12]_i_1__2_n_4 ;
  wire \wait_time_cnt_reg[12]_i_1__2_n_5 ;
  wire \wait_time_cnt_reg[12]_i_1__2_n_6 ;
  wire \wait_time_cnt_reg[12]_i_1__2_n_7 ;
  wire \wait_time_cnt_reg[4]_i_1__2_n_0 ;
  wire \wait_time_cnt_reg[4]_i_1__2_n_1 ;
  wire \wait_time_cnt_reg[4]_i_1__2_n_2 ;
  wire \wait_time_cnt_reg[4]_i_1__2_n_3 ;
  wire \wait_time_cnt_reg[4]_i_1__2_n_4 ;
  wire \wait_time_cnt_reg[4]_i_1__2_n_5 ;
  wire \wait_time_cnt_reg[4]_i_1__2_n_6 ;
  wire \wait_time_cnt_reg[4]_i_1__2_n_7 ;
  wire \wait_time_cnt_reg[8]_i_1__2_n_0 ;
  wire \wait_time_cnt_reg[8]_i_1__2_n_1 ;
  wire \wait_time_cnt_reg[8]_i_1__2_n_2 ;
  wire \wait_time_cnt_reg[8]_i_1__2_n_3 ;
  wire \wait_time_cnt_reg[8]_i_1__2_n_4 ;
  wire \wait_time_cnt_reg[8]_i_1__2_n_5 ;
  wire \wait_time_cnt_reg[8]_i_1__2_n_6 ;
  wire \wait_time_cnt_reg[8]_i_1__2_n_7 ;
  wire [3:1]\NLW_time_out_counter_reg[16]_i_1__2_CO_UNCONNECTED ;
  wire [3:2]\NLW_time_out_counter_reg[16]_i_1__2_O_UNCONNECTED ;
  wire [3:3]\NLW_wait_time_cnt_reg[12]_i_1__2_CO_UNCONNECTED ;

  LUT6 #(
    .INIT(64'hFFFFFF1F00000010)) 
    CPLL_RESET_i_1__2
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt3_cpllrefclklost_i),
        .I2(CPLL_RESET_i_2__2_n_0),
        .I3(tx_state[2]),
        .I4(tx_state[1]),
        .I5(gt3_cpllreset_i),
        .O(CPLL_RESET_i_1__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT2 #(
    .INIT(4'h2)) 
    CPLL_RESET_i_2__2
       (.I0(tx_state[0]),
        .I1(tx_state[3]),
        .O(CPLL_RESET_i_2__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    CPLL_RESET_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(CPLL_RESET_i_1__2_n_0),
        .Q(gt3_cpllreset_i),
        .R(soft_reset_tx_in));
  LUT6 #(
    .INIT(64'hFFFFFFFFFF008F8F)) 
    \FSM_sequential_tx_state[0]_i_1__2 
       (.I0(time_out_2ms_reg_n_0),
        .I1(tx_state[1]),
        .I2(tx_state[0]),
        .I3(\FSM_sequential_tx_state[0]_i_2__2_n_0 ),
        .I4(tx_state[2]),
        .I5(tx_state[3]),
        .O(\FSM_sequential_tx_state[0]_i_1__2_n_0 ));
  LUT6 #(
    .INIT(64'h22220030FFFFFFFF)) 
    \FSM_sequential_tx_state[0]_i_2__2 
       (.I0(time_out_500us_reg_n_0),
        .I1(reset_time_out_reg_n_0),
        .I2(time_tlock_max_reg_n_0),
        .I3(mmcm_lock_reclocked),
        .I4(tx_state[1]),
        .I5(tx_state[0]),
        .O(\FSM_sequential_tx_state[0]_i_2__2_n_0 ));
  LUT5 #(
    .INIT(32'h44544554)) 
    \FSM_sequential_tx_state[1]_i_1__2 
       (.I0(tx_state[3]),
        .I1(\FSM_sequential_tx_state[1]_i_2__2_n_0 ),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .O(\FSM_sequential_tx_state[1]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT5 #(
    .INIT(32'h22222022)) 
    \FSM_sequential_tx_state[1]_i_2__2 
       (.I0(tx_state[0]),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(time_tlock_max_reg_n_0),
        .I4(reset_time_out_reg_n_0),
        .O(\FSM_sequential_tx_state[1]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'h0100505001505050)) 
    \FSM_sequential_tx_state[2]_i_1__2 
       (.I0(tx_state[3]),
        .I1(time_out_2ms_reg_n_0),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(tx_state[0]),
        .I5(\FSM_sequential_tx_state[2]_i_2__2_n_0 ),
        .O(\FSM_sequential_tx_state[2]_i_1__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \FSM_sequential_tx_state[2]_i_2__2 
       (.I0(reset_time_out_reg_n_0),
        .I1(time_tlock_max_reg_n_0),
        .I2(mmcm_lock_reclocked),
        .O(\FSM_sequential_tx_state[2]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hEFAAAAAAAAAAAAAA)) 
    \FSM_sequential_tx_state[3]_i_2__2 
       (.I0(tx_state[3]),
        .I1(reset_time_out_reg_n_0),
        .I2(time_out_500us_reg_n_0),
        .I3(tx_state[0]),
        .I4(tx_state[1]),
        .I5(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_tx_state[3]_i_4__2 
       (.I0(tx_state[1]),
        .I1(tx_state[2]),
        .O(\FSM_sequential_tx_state[3]_i_4__2_n_0 ));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[0] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[0]_i_1__2_n_0 ),
        .Q(tx_state[0]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[1] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[1]_i_1__2_n_0 ),
        .Q(tx_state[1]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[2] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[2]_i_1__2_n_0 ),
        .Q(tx_state[2]),
        .R(soft_reset_tx_in));
  (* FSM_ENCODED_STATES = "WAIT_FOR_TXOUTCLK:0100,RELEASE_PLL_RESET:0011,WAIT_FOR_PLL_LOCK:0010,ASSERT_ALL_RESETS:0001,INIT:0000,WAIT_RESET_DONE:0111,RESET_FSM_DONE:1001,WAIT_FOR_TXUSRCLK:0110,DO_PHASE_ALIGNMENT:1000,RELEASE_MMCM_RESET:0101" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_tx_state_reg[3] 
       (.C(sysclk_in),
        .CE(sync_cplllock_n_0),
        .D(\FSM_sequential_tx_state[3]_i_2__2_n_0 ),
        .Q(tx_state[3]),
        .R(soft_reset_tx_in));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT5 #(
    .INIT(32'hFFFB4000)) 
    TXUSERRDY_i_1__2
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .I4(gt3_txuserrdy_i),
        .O(TXUSERRDY_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    TXUSERRDY_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(TXUSERRDY_i_1__2_n_0),
        .Q(gt3_txuserrdy_i),
        .R(soft_reset_tx_in));
  LUT5 #(
    .INIT(32'hFFFB0002)) 
    gttxreset_i_i_1__2
       (.I0(tx_state[0]),
        .I1(tx_state[2]),
        .I2(tx_state[3]),
        .I3(tx_state[1]),
        .I4(gt3_gttxreset_i),
        .O(gttxreset_i_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gttxreset_i_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gttxreset_i_i_1__2_n_0),
        .Q(gt3_gttxreset_i),
        .R(soft_reset_tx_in));
  LUT1 #(
    .INIT(2'h1)) 
    \init_wait_count[0]_i_1__2 
       (.I0(init_wait_count_reg__0[0]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \init_wait_count[1]_i_1__2 
       (.I0(init_wait_count_reg__0[0]),
        .I1(init_wait_count_reg__0[1]),
        .O(p_0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \init_wait_count[2]_i_1__2 
       (.I0(init_wait_count_reg__0[2]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[1]),
        .O(p_0_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \init_wait_count[3]_i_1__2 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[3]),
        .O(p_0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[4]_i_1__2 
       (.I0(init_wait_count_reg__0[4]),
        .I1(init_wait_count_reg__0[1]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[2]),
        .I4(init_wait_count_reg__0[3]),
        .O(p_0_in[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \init_wait_count[5]_i_1__2 
       (.I0(init_wait_count_reg__0[5]),
        .I1(init_wait_count_reg__0[3]),
        .I2(init_wait_count_reg__0[2]),
        .I3(init_wait_count_reg__0[0]),
        .I4(init_wait_count_reg__0[1]),
        .I5(init_wait_count_reg__0[4]),
        .O(p_0_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h6AAA)) 
    \init_wait_count[6]_i_1__2 
       (.I0(init_wait_count_reg__0[6]),
        .I1(init_wait_count_reg__0[4]),
        .I2(\init_wait_count[7]_i_4__2_n_0 ),
        .I3(init_wait_count_reg__0[5]),
        .O(p_0_in[6]));
  LUT5 #(
    .INIT(32'hFFFFEFFF)) 
    \init_wait_count[7]_i_1__2 
       (.I0(\init_wait_count[7]_i_3__2_n_0 ),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[4]),
        .O(init_wait_count));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \init_wait_count[7]_i_2__2 
       (.I0(init_wait_count_reg__0[7]),
        .I1(init_wait_count_reg__0[5]),
        .I2(\init_wait_count[7]_i_4__2_n_0 ),
        .I3(init_wait_count_reg__0[4]),
        .I4(init_wait_count_reg__0[6]),
        .O(p_0_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \init_wait_count[7]_i_3__2 
       (.I0(init_wait_count_reg__0[1]),
        .I1(init_wait_count_reg__0[0]),
        .I2(init_wait_count_reg__0[7]),
        .I3(init_wait_count_reg__0[5]),
        .O(\init_wait_count[7]_i_3__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \init_wait_count[7]_i_4__2 
       (.I0(init_wait_count_reg__0[3]),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[0]),
        .I3(init_wait_count_reg__0[1]),
        .O(\init_wait_count[7]_i_4__2_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[0] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[0]),
        .Q(init_wait_count_reg__0[0]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[1] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[1]),
        .Q(init_wait_count_reg__0[1]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[2] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[2]),
        .Q(init_wait_count_reg__0[2]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[3] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[3]),
        .Q(init_wait_count_reg__0[3]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[4] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[4]),
        .Q(init_wait_count_reg__0[4]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[5] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[5]),
        .Q(init_wait_count_reg__0[5]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[6] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[6]),
        .Q(init_wait_count_reg__0[6]));
  FDCE #(
    .INIT(1'b0)) 
    \init_wait_count_reg[7] 
       (.C(sysclk_in),
        .CE(init_wait_count),
        .CLR(soft_reset_tx_in),
        .D(p_0_in[7]),
        .Q(init_wait_count_reg__0[7]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00001000)) 
    init_wait_done_i_1__2
       (.I0(\init_wait_count[7]_i_3__2_n_0 ),
        .I1(init_wait_count_reg__0[2]),
        .I2(init_wait_count_reg__0[3]),
        .I3(init_wait_count_reg__0[6]),
        .I4(init_wait_count_reg__0[4]),
        .I5(init_wait_done_reg_n_0),
        .O(init_wait_done_i_1__2_n_0));
  FDCE #(
    .INIT(1'b0)) 
    init_wait_done_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .CLR(soft_reset_tx_in),
        .D(init_wait_done_i_1__2_n_0),
        .Q(init_wait_done_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[0]_i_1__2 
       (.I0(mmcm_lock_count_reg__0[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \mmcm_lock_count[1]_i_1__2 
       (.I0(mmcm_lock_count_reg__0[0]),
        .I1(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT3 #(
    .INIT(8'h6A)) 
    \mmcm_lock_count[2]_i_1__2 
       (.I0(mmcm_lock_count_reg__0[2]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[1]),
        .O(p_0_in__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \mmcm_lock_count[3]_i_1__2 
       (.I0(mmcm_lock_count_reg__0[1]),
        .I1(mmcm_lock_count_reg__0[0]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[4]_i_1__2 
       (.I0(mmcm_lock_count_reg__0[4]),
        .I1(mmcm_lock_count_reg__0[1]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[2]),
        .I4(mmcm_lock_count_reg__0[3]),
        .O(p_0_in__0[4]));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \mmcm_lock_count[5]_i_1__2 
       (.I0(mmcm_lock_count_reg__0[5]),
        .I1(mmcm_lock_count_reg__0[3]),
        .I2(mmcm_lock_count_reg__0[2]),
        .I3(mmcm_lock_count_reg__0[0]),
        .I4(mmcm_lock_count_reg__0[1]),
        .I5(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[5]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \mmcm_lock_count[6]_i_1__2 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4__2_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .O(p_0_in__0[6]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \mmcm_lock_count[7]_i_2__2 
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__2_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .I4(mmcm_lock_count_reg__0[7]),
        .O(\mmcm_lock_count[7]_i_2__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \mmcm_lock_count[7]_i_3__2 
       (.I0(mmcm_lock_count_reg__0[7]),
        .I1(mmcm_lock_count_reg__0[5]),
        .I2(\mmcm_lock_count[7]_i_4__2_n_0 ),
        .I3(mmcm_lock_count_reg__0[4]),
        .I4(mmcm_lock_count_reg__0[6]),
        .O(p_0_in__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \mmcm_lock_count[7]_i_4__2 
       (.I0(mmcm_lock_count_reg__0[3]),
        .I1(mmcm_lock_count_reg__0[2]),
        .I2(mmcm_lock_count_reg__0[0]),
        .I3(mmcm_lock_count_reg__0[1]),
        .O(\mmcm_lock_count[7]_i_4__2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[0] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__2_n_0 ),
        .D(p_0_in__0[0]),
        .Q(mmcm_lock_count_reg__0[0]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[1] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__2_n_0 ),
        .D(p_0_in__0[1]),
        .Q(mmcm_lock_count_reg__0[1]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[2] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__2_n_0 ),
        .D(p_0_in__0[2]),
        .Q(mmcm_lock_count_reg__0[2]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[3] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__2_n_0 ),
        .D(p_0_in__0[3]),
        .Q(mmcm_lock_count_reg__0[3]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[4] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__2_n_0 ),
        .D(p_0_in__0[4]),
        .Q(mmcm_lock_count_reg__0[4]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[5] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__2_n_0 ),
        .D(p_0_in__0[5]),
        .Q(mmcm_lock_count_reg__0[5]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[6] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__2_n_0 ),
        .D(p_0_in__0[6]),
        .Q(mmcm_lock_count_reg__0[6]),
        .R(sync_mmcm_lock_reclocked_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \mmcm_lock_count_reg[7] 
       (.C(sysclk_in),
        .CE(\mmcm_lock_count[7]_i_2__2_n_0 ),
        .D(p_0_in__0[7]),
        .Q(mmcm_lock_count_reg__0[7]),
        .R(sync_mmcm_lock_reclocked_n_0));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    mmcm_lock_reclocked_i_2__2
       (.I0(mmcm_lock_count_reg__0[6]),
        .I1(mmcm_lock_count_reg__0[4]),
        .I2(\mmcm_lock_count[7]_i_4__2_n_0 ),
        .I3(mmcm_lock_count_reg__0[5]),
        .O(mmcm_lock_reclocked_i_2__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mmcm_lock_reclocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_mmcm_lock_reclocked_n_1),
        .Q(mmcm_lock_reclocked),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAA0BAA)) 
    pll_reset_asserted_i_1__2
       (.I0(pll_reset_asserted_reg_n_0),
        .I1(gt3_cpllrefclklost_i),
        .I2(tx_state[1]),
        .I3(tx_state[0]),
        .I4(tx_state[2]),
        .I5(tx_state[3]),
        .O(pll_reset_asserted_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    pll_reset_asserted_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(pll_reset_asserted_i_1__2_n_0),
        .Q(pll_reset_asserted_reg_n_0),
        .R(soft_reset_tx_in));
  LUT4 #(
    .INIT(16'hB833)) 
    reset_time_out_i_3__2
       (.I0(txresetdone_s3),
        .I1(tx_state[1]),
        .I2(mmcm_lock_reclocked),
        .I3(tx_state[2]),
        .O(reset_time_out_i_3__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    reset_time_out_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(sync_cplllock_n_1),
        .Q(reset_time_out_reg_n_0),
        .R(soft_reset_tx_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block sync_TXRESETDONE
       (.data_out(txresetdone_s2),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_9 sync_cplllock
       (.E(sync_cplllock_n_0),
        .\FSM_sequential_tx_state_reg[0] (init_wait_done_reg_n_0),
        .\FSM_sequential_tx_state_reg[0]_0 (\FSM_sequential_tx_state[3]_i_4__2_n_0 ),
        .\FSM_sequential_tx_state_reg[0]_1 (\wait_time_cnt[0]_i_2__2_n_0 ),
        .\FSM_sequential_tx_state_reg[3] (sync_cplllock_n_1),
        .\FSM_sequential_tx_state_reg[3]_i_3__2_0 (time_tlock_max_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3__2_1 (pll_reset_asserted_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3__2_2 (time_out_500us_reg_n_0),
        .\FSM_sequential_tx_state_reg[3]_i_3__2_3 (time_out_2ms_reg_n_0),
        .Q(tx_state),
        .gt3_cplllock_out(gt3_cplllock_out),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .reset_time_out_reg(reset_time_out_i_3__2_n_0),
        .reset_time_out_reg_0(reset_time_out_reg_n_0),
        .sysclk_in(sysclk_in),
        .txresetdone_s3(txresetdone_s3));
  gtwizard_4_channel_gtwizard_4_channel_sync_block_10 sync_mmcm_lock_reclocked
       (.Q(mmcm_lock_count_reg__0[7]),
        .SR(sync_mmcm_lock_reclocked_n_0),
        .mmcm_lock_reclocked(mmcm_lock_reclocked),
        .mmcm_lock_reclocked_reg(sync_mmcm_lock_reclocked_n_1),
        .mmcm_lock_reclocked_reg_0(mmcm_lock_reclocked_i_2__2_n_0),
        .sysclk_in(sysclk_in));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_out_2ms_i_1__6
       (.I0(time_out_2ms_reg_n_0),
        .I1(\time_out_counter[0]_i_4__4_n_0 ),
        .I2(time_out_2ms_i_2__2_n_0),
        .I3(reset_time_out_reg_n_0),
        .O(time_out_2ms_i_1__6_n_0));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    time_out_2ms_i_2__2
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[4]),
        .I4(\time_out_counter[0]_i_3__4_n_0 ),
        .O(time_out_2ms_i_2__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_2ms_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_2ms_i_1__6_n_0),
        .Q(time_out_2ms_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00000000AAAAAAAE)) 
    time_out_500us_i_1__2
       (.I0(time_out_500us_reg_n_0),
        .I1(time_out_500us_i_2__2_n_0),
        .I2(time_out_500us_i_3__2_n_0),
        .I3(time_out_500us_i_4__2_n_0),
        .I4(time_out_500us_i_5__0_n_0),
        .I5(reset_time_out_reg_n_0),
        .O(time_out_500us_i_1__2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000400)) 
    time_out_500us_i_2__2
       (.I0(time_out_counter_reg[6]),
        .I1(time_out_counter_reg[14]),
        .I2(time_out_counter_reg[11]),
        .I3(time_out_counter_reg[12]),
        .I4(time_out_counter_reg[16]),
        .I5(time_out_counter_reg[17]),
        .O(time_out_500us_i_2__2_n_0));
  LUT4 #(
    .INIT(16'hFFDF)) 
    time_out_500us_i_3__2
       (.I0(time_out_counter_reg[5]),
        .I1(time_out_counter_reg[4]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[7]),
        .O(time_out_500us_i_3__2_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    time_out_500us_i_4__2
       (.I0(time_out_counter_reg[2]),
        .I1(time_out_counter_reg[0]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[10]),
        .O(time_out_500us_i_4__2_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    time_out_500us_i_5__0
       (.I0(time_out_counter_reg[9]),
        .I1(time_out_counter_reg[3]),
        .I2(time_out_counter_reg[8]),
        .I3(time_out_counter_reg[1]),
        .O(time_out_500us_i_5__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_out_500us_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_out_500us_i_1__2_n_0),
        .Q(time_out_500us_reg_n_0),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFF7FFFFFFFFFF)) 
    \time_out_counter[0]_i_1__6 
       (.I0(time_out_counter_reg[17]),
        .I1(time_out_counter_reg[16]),
        .I2(time_out_counter_reg[2]),
        .I3(time_out_counter_reg[4]),
        .I4(\time_out_counter[0]_i_3__4_n_0 ),
        .I5(\time_out_counter[0]_i_4__4_n_0 ),
        .O(time_out_counter));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFDFF)) 
    \time_out_counter[0]_i_3__4 
       (.I0(time_out_counter_reg[14]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[13]),
        .I3(time_out_counter_reg[15]),
        .I4(time_out_counter_reg[0]),
        .I5(time_out_counter_reg[5]),
        .O(\time_out_counter[0]_i_3__4_n_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    \time_out_counter[0]_i_4__4 
       (.I0(time_out_500us_i_5__0_n_0),
        .I1(time_out_counter_reg[10]),
        .I2(time_out_counter_reg[7]),
        .I3(time_out_counter_reg[11]),
        .I4(time_out_counter_reg[12]),
        .O(\time_out_counter[0]_i_4__4_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \time_out_counter[0]_i_5__1 
       (.I0(time_out_counter_reg[0]),
        .O(\time_out_counter[0]_i_5__1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[0] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__2_n_7 ),
        .Q(time_out_counter_reg[0]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[0]_i_2__2 
       (.CI(1'b0),
        .CO({\time_out_counter_reg[0]_i_2__2_n_0 ,\time_out_counter_reg[0]_i_2__2_n_1 ,\time_out_counter_reg[0]_i_2__2_n_2 ,\time_out_counter_reg[0]_i_2__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\time_out_counter_reg[0]_i_2__2_n_4 ,\time_out_counter_reg[0]_i_2__2_n_5 ,\time_out_counter_reg[0]_i_2__2_n_6 ,\time_out_counter_reg[0]_i_2__2_n_7 }),
        .S({time_out_counter_reg[3:1],\time_out_counter[0]_i_5__1_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[10] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__2_n_5 ),
        .Q(time_out_counter_reg[10]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[11] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__2_n_4 ),
        .Q(time_out_counter_reg[11]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[12] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__2_n_7 ),
        .Q(time_out_counter_reg[12]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[12]_i_1__2 
       (.CI(\time_out_counter_reg[8]_i_1__2_n_0 ),
        .CO({\time_out_counter_reg[12]_i_1__2_n_0 ,\time_out_counter_reg[12]_i_1__2_n_1 ,\time_out_counter_reg[12]_i_1__2_n_2 ,\time_out_counter_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[12]_i_1__2_n_4 ,\time_out_counter_reg[12]_i_1__2_n_5 ,\time_out_counter_reg[12]_i_1__2_n_6 ,\time_out_counter_reg[12]_i_1__2_n_7 }),
        .S(time_out_counter_reg[15:12]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[13] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__2_n_6 ),
        .Q(time_out_counter_reg[13]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[14] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__2_n_5 ),
        .Q(time_out_counter_reg[14]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[15] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[12]_i_1__2_n_4 ),
        .Q(time_out_counter_reg[15]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[16] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__2_n_7 ),
        .Q(time_out_counter_reg[16]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[16]_i_1__2 
       (.CI(\time_out_counter_reg[12]_i_1__2_n_0 ),
        .CO({\NLW_time_out_counter_reg[16]_i_1__2_CO_UNCONNECTED [3:1],\time_out_counter_reg[16]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_time_out_counter_reg[16]_i_1__2_O_UNCONNECTED [3:2],\time_out_counter_reg[16]_i_1__2_n_6 ,\time_out_counter_reg[16]_i_1__2_n_7 }),
        .S({1'b0,1'b0,time_out_counter_reg[17:16]}));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[17] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[16]_i_1__2_n_6 ),
        .Q(time_out_counter_reg[17]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[1] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__2_n_6 ),
        .Q(time_out_counter_reg[1]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[2] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__2_n_5 ),
        .Q(time_out_counter_reg[2]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[3] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[0]_i_2__2_n_4 ),
        .Q(time_out_counter_reg[3]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[4] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__2_n_7 ),
        .Q(time_out_counter_reg[4]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[4]_i_1__2 
       (.CI(\time_out_counter_reg[0]_i_2__2_n_0 ),
        .CO({\time_out_counter_reg[4]_i_1__2_n_0 ,\time_out_counter_reg[4]_i_1__2_n_1 ,\time_out_counter_reg[4]_i_1__2_n_2 ,\time_out_counter_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[4]_i_1__2_n_4 ,\time_out_counter_reg[4]_i_1__2_n_5 ,\time_out_counter_reg[4]_i_1__2_n_6 ,\time_out_counter_reg[4]_i_1__2_n_7 }),
        .S(time_out_counter_reg[7:4]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[5] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__2_n_6 ),
        .Q(time_out_counter_reg[5]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[6] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__2_n_5 ),
        .Q(time_out_counter_reg[6]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[7] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[4]_i_1__2_n_4 ),
        .Q(time_out_counter_reg[7]),
        .R(reset_time_out_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[8] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__2_n_7 ),
        .Q(time_out_counter_reg[8]),
        .R(reset_time_out_reg_n_0));
  CARRY4 \time_out_counter_reg[8]_i_1__2 
       (.CI(\time_out_counter_reg[4]_i_1__2_n_0 ),
        .CO({\time_out_counter_reg[8]_i_1__2_n_0 ,\time_out_counter_reg[8]_i_1__2_n_1 ,\time_out_counter_reg[8]_i_1__2_n_2 ,\time_out_counter_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\time_out_counter_reg[8]_i_1__2_n_4 ,\time_out_counter_reg[8]_i_1__2_n_5 ,\time_out_counter_reg[8]_i_1__2_n_6 ,\time_out_counter_reg[8]_i_1__2_n_7 }),
        .S(time_out_counter_reg[11:8]));
  FDRE #(
    .INIT(1'b0)) 
    \time_out_counter_reg[9] 
       (.C(sysclk_in),
        .CE(time_out_counter),
        .D(\time_out_counter_reg[8]_i_1__2_n_6 ),
        .Q(time_out_counter_reg[9]),
        .R(reset_time_out_reg_n_0));
  LUT4 #(
    .INIT(16'h00AE)) 
    time_tlock_max_i_1__6
       (.I0(time_tlock_max_reg_n_0),
        .I1(\time_out_counter[0]_i_4__4_n_0 ),
        .I2(time_tlock_max_i_2__6_n_0),
        .I3(reset_time_out_reg_n_0),
        .O(time_tlock_max_i_1__6_n_0));
  LUT5 #(
    .INIT(32'hFFFFF7FF)) 
    time_tlock_max_i_2__6
       (.I0(time_out_counter_reg[4]),
        .I1(time_out_counter_reg[6]),
        .I2(time_out_counter_reg[15]),
        .I3(time_out_counter_reg[13]),
        .I4(time_tlock_max_i_3__6_n_0),
        .O(time_tlock_max_i_2__6_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    time_tlock_max_i_3__6
       (.I0(time_out_counter_reg[16]),
        .I1(time_out_counter_reg[17]),
        .I2(time_out_counter_reg[14]),
        .I3(time_out_counter_reg[2]),
        .I4(time_out_counter_reg[0]),
        .I5(time_out_counter_reg[5]),
        .O(time_tlock_max_i_3__6_n_0));
  FDRE #(
    .INIT(1'b0)) 
    time_tlock_max_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(time_tlock_max_i_1__6_n_0),
        .Q(time_tlock_max_reg_n_0),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'hFFFF0020)) 
    tx_fsm_reset_done_int_i_1__2
       (.I0(tx_state[3]),
        .I1(tx_state[2]),
        .I2(tx_state[0]),
        .I3(tx_state[1]),
        .I4(gt3_tx_fsm_reset_done_out),
        .O(tx_fsm_reset_done_int_i_1__2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    tx_fsm_reset_done_int_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(tx_fsm_reset_done_int_i_1__2_n_0),
        .Q(gt3_tx_fsm_reset_done_out),
        .R(soft_reset_tx_in));
  FDRE #(
    .INIT(1'b0)) 
    txresetdone_s3_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(txresetdone_s2),
        .Q(txresetdone_s3),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_10__2 
       (.I0(wait_time_cnt_reg[1]),
        .O(\wait_time_cnt[0]_i_10__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_11__2 
       (.I0(wait_time_cnt_reg[0]),
        .O(\wait_time_cnt[0]_i_11__2_n_0 ));
  LUT4 #(
    .INIT(16'h0444)) 
    \wait_time_cnt[0]_i_1__4 
       (.I0(tx_state[3]),
        .I1(tx_state[0]),
        .I2(tx_state[2]),
        .I3(tx_state[1]),
        .O(\wait_time_cnt[0]_i_1__4_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_2__2 
       (.I0(\wait_time_cnt[0]_i_4__2_n_0 ),
        .I1(\wait_time_cnt[0]_i_5__2_n_0 ),
        .I2(\wait_time_cnt[0]_i_6__2_n_0 ),
        .I3(\wait_time_cnt[0]_i_7__2_n_0 ),
        .O(\wait_time_cnt[0]_i_2__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_4__2 
       (.I0(wait_time_cnt_reg[1]),
        .I1(wait_time_cnt_reg[4]),
        .I2(wait_time_cnt_reg[12]),
        .I3(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[0]_i_4__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_5__2 
       (.I0(wait_time_cnt_reg[15]),
        .I1(wait_time_cnt_reg[10]),
        .I2(wait_time_cnt_reg[14]),
        .I3(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[0]_i_5__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_6__2 
       (.I0(wait_time_cnt_reg[6]),
        .I1(wait_time_cnt_reg[7]),
        .I2(wait_time_cnt_reg[9]),
        .I3(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_6__2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_time_cnt[0]_i_7__2 
       (.I0(wait_time_cnt_reg[3]),
        .I1(wait_time_cnt_reg[5]),
        .I2(wait_time_cnt_reg[0]),
        .I3(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[0]_i_7__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_8__2 
       (.I0(wait_time_cnt_reg[3]),
        .O(\wait_time_cnt[0]_i_8__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[0]_i_9__2 
       (.I0(wait_time_cnt_reg[2]),
        .O(\wait_time_cnt[0]_i_9__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_2__2 
       (.I0(wait_time_cnt_reg[15]),
        .O(\wait_time_cnt[12]_i_2__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_3__2 
       (.I0(wait_time_cnt_reg[14]),
        .O(\wait_time_cnt[12]_i_3__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_4__2 
       (.I0(wait_time_cnt_reg[13]),
        .O(\wait_time_cnt[12]_i_4__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[12]_i_5__2 
       (.I0(wait_time_cnt_reg[12]),
        .O(\wait_time_cnt[12]_i_5__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_2__2 
       (.I0(wait_time_cnt_reg[7]),
        .O(\wait_time_cnt[4]_i_2__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_3__2 
       (.I0(wait_time_cnt_reg[6]),
        .O(\wait_time_cnt[4]_i_3__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_4__2 
       (.I0(wait_time_cnt_reg[5]),
        .O(\wait_time_cnt[4]_i_4__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[4]_i_5__2 
       (.I0(wait_time_cnt_reg[4]),
        .O(\wait_time_cnt[4]_i_5__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_2__2 
       (.I0(wait_time_cnt_reg[11]),
        .O(\wait_time_cnt[8]_i_2__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_3__2 
       (.I0(wait_time_cnt_reg[10]),
        .O(\wait_time_cnt[8]_i_3__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_4__2 
       (.I0(wait_time_cnt_reg[9]),
        .O(\wait_time_cnt[8]_i_4__2_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \wait_time_cnt[8]_i_5__2 
       (.I0(wait_time_cnt_reg[8]),
        .O(\wait_time_cnt[8]_i_5__2_n_0 ));
  FDRE \wait_time_cnt_reg[0] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__2_n_7 ),
        .Q(wait_time_cnt_reg[0]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  CARRY4 \wait_time_cnt_reg[0]_i_3__2 
       (.CI(1'b0),
        .CO({\wait_time_cnt_reg[0]_i_3__2_n_0 ,\wait_time_cnt_reg[0]_i_3__2_n_1 ,\wait_time_cnt_reg[0]_i_3__2_n_2 ,\wait_time_cnt_reg[0]_i_3__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[0]_i_3__2_n_4 ,\wait_time_cnt_reg[0]_i_3__2_n_5 ,\wait_time_cnt_reg[0]_i_3__2_n_6 ,\wait_time_cnt_reg[0]_i_3__2_n_7 }),
        .S({\wait_time_cnt[0]_i_8__2_n_0 ,\wait_time_cnt[0]_i_9__2_n_0 ,\wait_time_cnt[0]_i_10__2_n_0 ,\wait_time_cnt[0]_i_11__2_n_0 }));
  FDSE \wait_time_cnt_reg[10] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__2_n_5 ),
        .Q(wait_time_cnt_reg[10]),
        .S(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDRE \wait_time_cnt_reg[11] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__2_n_4 ),
        .Q(wait_time_cnt_reg[11]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDRE \wait_time_cnt_reg[12] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__2_n_7 ),
        .Q(wait_time_cnt_reg[12]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  CARRY4 \wait_time_cnt_reg[12]_i_1__2 
       (.CI(\wait_time_cnt_reg[8]_i_1__2_n_0 ),
        .CO({\NLW_wait_time_cnt_reg[12]_i_1__2_CO_UNCONNECTED [3],\wait_time_cnt_reg[12]_i_1__2_n_1 ,\wait_time_cnt_reg[12]_i_1__2_n_2 ,\wait_time_cnt_reg[12]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[12]_i_1__2_n_4 ,\wait_time_cnt_reg[12]_i_1__2_n_5 ,\wait_time_cnt_reg[12]_i_1__2_n_6 ,\wait_time_cnt_reg[12]_i_1__2_n_7 }),
        .S({\wait_time_cnt[12]_i_2__2_n_0 ,\wait_time_cnt[12]_i_3__2_n_0 ,\wait_time_cnt[12]_i_4__2_n_0 ,\wait_time_cnt[12]_i_5__2_n_0 }));
  FDRE \wait_time_cnt_reg[13] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__2_n_6 ),
        .Q(wait_time_cnt_reg[13]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDRE \wait_time_cnt_reg[14] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__2_n_5 ),
        .Q(wait_time_cnt_reg[14]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDRE \wait_time_cnt_reg[15] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[12]_i_1__2_n_4 ),
        .Q(wait_time_cnt_reg[15]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDSE \wait_time_cnt_reg[1] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__2_n_6 ),
        .Q(wait_time_cnt_reg[1]),
        .S(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDRE \wait_time_cnt_reg[2] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__2_n_5 ),
        .Q(wait_time_cnt_reg[2]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDRE \wait_time_cnt_reg[3] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[0]_i_3__2_n_4 ),
        .Q(wait_time_cnt_reg[3]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDRE \wait_time_cnt_reg[4] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__2_n_7 ),
        .Q(wait_time_cnt_reg[4]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  CARRY4 \wait_time_cnt_reg[4]_i_1__2 
       (.CI(\wait_time_cnt_reg[0]_i_3__2_n_0 ),
        .CO({\wait_time_cnt_reg[4]_i_1__2_n_0 ,\wait_time_cnt_reg[4]_i_1__2_n_1 ,\wait_time_cnt_reg[4]_i_1__2_n_2 ,\wait_time_cnt_reg[4]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[4]_i_1__2_n_4 ,\wait_time_cnt_reg[4]_i_1__2_n_5 ,\wait_time_cnt_reg[4]_i_1__2_n_6 ,\wait_time_cnt_reg[4]_i_1__2_n_7 }),
        .S({\wait_time_cnt[4]_i_2__2_n_0 ,\wait_time_cnt[4]_i_3__2_n_0 ,\wait_time_cnt[4]_i_4__2_n_0 ,\wait_time_cnt[4]_i_5__2_n_0 }));
  FDSE \wait_time_cnt_reg[5] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__2_n_6 ),
        .Q(wait_time_cnt_reg[5]),
        .S(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDSE \wait_time_cnt_reg[6] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__2_n_5 ),
        .Q(wait_time_cnt_reg[6]),
        .S(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDSE \wait_time_cnt_reg[7] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[4]_i_1__2_n_4 ),
        .Q(wait_time_cnt_reg[7]),
        .S(\wait_time_cnt[0]_i_1__4_n_0 ));
  FDRE \wait_time_cnt_reg[8] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__2_n_7 ),
        .Q(wait_time_cnt_reg[8]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
  CARRY4 \wait_time_cnt_reg[8]_i_1__2 
       (.CI(\wait_time_cnt_reg[4]_i_1__2_n_0 ),
        .CO({\wait_time_cnt_reg[8]_i_1__2_n_0 ,\wait_time_cnt_reg[8]_i_1__2_n_1 ,\wait_time_cnt_reg[8]_i_1__2_n_2 ,\wait_time_cnt_reg[8]_i_1__2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b1,1'b1,1'b1,1'b1}),
        .O({\wait_time_cnt_reg[8]_i_1__2_n_4 ,\wait_time_cnt_reg[8]_i_1__2_n_5 ,\wait_time_cnt_reg[8]_i_1__2_n_6 ,\wait_time_cnt_reg[8]_i_1__2_n_7 }),
        .S({\wait_time_cnt[8]_i_2__2_n_0 ,\wait_time_cnt[8]_i_3__2_n_0 ,\wait_time_cnt[8]_i_4__2_n_0 ,\wait_time_cnt[8]_i_5__2_n_0 }));
  FDRE \wait_time_cnt_reg[9] 
       (.C(sysclk_in),
        .CE(\wait_time_cnt[0]_i_2__2_n_0 ),
        .D(\wait_time_cnt_reg[8]_i_1__2_n_6 ),
        .Q(wait_time_cnt_reg[9]),
        .R(\wait_time_cnt[0]_i_1__4_n_0 ));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_cpll_railing" *) 
module gtwizard_4_channel_gtwizard_4_channel_cpll_railing
   (gt0_cpllpd_i,
    gt0_cpllreset_i_0,
    gt1_cpllreset_i_1,
    gt2_cpllreset_i_2,
    gt3_cpllreset_i_3,
    gt0_gtrefclk1_in,
    gt0_cpllreset_i,
    gt1_cpllreset_i,
    gt2_cpllreset_i,
    gt3_cpllreset_i);
  output gt0_cpllpd_i;
  output gt0_cpllreset_i_0;
  output gt1_cpllreset_i_1;
  output gt2_cpllreset_i_2;
  output gt3_cpllreset_i_3;
  input gt0_gtrefclk1_in;
  input gt0_cpllreset_i;
  input gt1_cpllreset_i;
  input gt2_cpllreset_i;
  input gt3_cpllreset_i;

  wire cpll_reset0_i;
  wire \cpllpd_wait_reg[31]_srl32_n_1 ;
  wire \cpllpd_wait_reg[63]_srl32_n_1 ;
  wire \cpllpd_wait_reg[94]_srl31_n_0 ;
  wire \cpllreset_wait_reg[126]_srl31_n_0 ;
  wire \cpllreset_wait_reg[31]_srl32_n_1 ;
  wire \cpllreset_wait_reg[63]_srl32_n_1 ;
  wire \cpllreset_wait_reg[95]_srl32_n_1 ;
  wire gt0_cpllpd_i;
  wire gt0_cpllreset_i;
  wire gt0_cpllreset_i_0;
  wire gt0_gtrefclk1_in;
  wire gt1_cpllreset_i;
  wire gt1_cpllreset_i_1;
  wire gt2_cpllreset_i;
  wire gt2_cpllreset_i_2;
  wire gt3_cpllreset_i;
  wire gt3_cpllreset_i_3;
  wire refclk_buf_n_0;
  wire \NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ;
  wire \NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ;

  (* srl_bus_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllpd_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(refclk_buf_n_0),
        .D(1'b0),
        .Q(\NLW_cpllpd_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllpd_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'hFFFFFFFF)) 
    \cpllpd_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(refclk_buf_n_0),
        .D(\cpllpd_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllpd_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllpd_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllpd_wait_reg " *) 
  (* srl_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllpd_wait_reg[94]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h7FFFFFFF)) 
    \cpllpd_wait_reg[94]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(refclk_buf_n_0),
        .D(\cpllpd_wait_reg[63]_srl32_n_1 ),
        .Q(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q31(\NLW_cpllpd_wait_reg[94]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b1)) 
    \cpllpd_wait_reg[95] 
       (.C(refclk_buf_n_0),
        .CE(1'b1),
        .D(\cpllpd_wait_reg[94]_srl31_n_0 ),
        .Q(gt0_cpllpd_i),
        .R(1'b0));
  (* srl_bus_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllreset_wait_reg[126]_srl31 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[126]_srl31 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b0}),
        .CE(1'b1),
        .CLK(refclk_buf_n_0),
        .D(\cpllreset_wait_reg[95]_srl32_n_1 ),
        .Q(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q31(\NLW_cpllreset_wait_reg[126]_srl31_Q31_UNCONNECTED ));
  (* equivalent_register_removal = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \cpllreset_wait_reg[127] 
       (.C(refclk_buf_n_0),
        .CE(1'b1),
        .D(\cpllreset_wait_reg[126]_srl31_n_0 ),
        .Q(cpll_reset0_i),
        .R(1'b0));
  (* srl_bus_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllreset_wait_reg[31]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h000000FF)) 
    \cpllreset_wait_reg[31]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(refclk_buf_n_0),
        .D(1'b0),
        .Q(\NLW_cpllreset_wait_reg[31]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[31]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllreset_wait_reg[63]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[63]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(refclk_buf_n_0),
        .D(\cpllreset_wait_reg[31]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[63]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[63]_srl32_n_1 ));
  (* srl_bus_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllreset_wait_reg " *) 
  (* srl_name = "inst/\gtwizard_4_channel_i/cpll_railing0_i/cpllreset_wait_reg[95]_srl32 " *) 
  SRLC32E #(
    .INIT(32'h00000000)) 
    \cpllreset_wait_reg[95]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(1'b1),
        .CLK(refclk_buf_n_0),
        .D(\cpllreset_wait_reg[63]_srl32_n_1 ),
        .Q(\NLW_cpllreset_wait_reg[95]_srl32_Q_UNCONNECTED ),
        .Q31(\cpllreset_wait_reg[95]_srl32_n_1 ));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_1
       (.I0(cpll_reset0_i),
        .I1(gt0_cpllreset_i),
        .O(gt0_cpllreset_i_0));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_1__0
       (.I0(cpll_reset0_i),
        .I1(gt1_cpllreset_i),
        .O(gt1_cpllreset_i_1));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_1__1
       (.I0(cpll_reset0_i),
        .I1(gt2_cpllreset_i),
        .O(gt2_cpllreset_i_2));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gtxe2_i_i_1__2
       (.I0(cpll_reset0_i),
        .I1(gt3_cpllreset_i),
        .O(gt3_cpllreset_i_3));
  (* BOX_TYPE = "PRIMITIVE" *) 
  BUFH refclk_buf
       (.I(gt0_gtrefclk1_in),
        .O(refclk_buf_n_0));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) (* EXAMPLE_SIM_GTRESET_SPEEDUP = "TRUE" *) 
(* EXAMPLE_USE_CHIPSCOPE = "0" *) (* ORIG_REF_NAME = "gtwizard_4_channel_init" *) (* RX_CDRLOCK_TIME = "78125.000000" *) 
(* STABLE_CLOCK_PERIOD = "8" *) (* USE_BUFG = "0" *) (* WAIT_TIME_CDRLOCK = "9766" *) 
module gtwizard_4_channel_gtwizard_4_channel_init
   (sysclk_in,
    soft_reset_tx_in,
    soft_reset_rx_in,
    dont_reset_on_data_error_in,
    gt0_tx_fsm_reset_done_out,
    gt0_rx_fsm_reset_done_out,
    gt0_data_valid_in,
    gt1_tx_fsm_reset_done_out,
    gt1_rx_fsm_reset_done_out,
    gt1_data_valid_in,
    gt2_tx_fsm_reset_done_out,
    gt2_rx_fsm_reset_done_out,
    gt2_data_valid_in,
    gt3_tx_fsm_reset_done_out,
    gt3_rx_fsm_reset_done_out,
    gt3_data_valid_in,
    gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_cplllockdetclk_in,
    gt0_cpllreset_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_drpaddr_in,
    gt0_drpclk_in,
    gt0_drpdi_in,
    gt0_drpdo_out,
    gt0_drpen_in,
    gt0_drprdy_out,
    gt0_drpwe_in,
    gt0_dmonitorout_out,
    gt0_eyescanreset_in,
    gt0_rxuserrdy_in,
    gt0_eyescandataerror_out,
    gt0_eyescantrigger_in,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_rxdata_out,
    gt0_gtxrxp_in,
    gt0_gtxrxn_in,
    gt0_rxdfelpmreset_in,
    gt0_rxmonitorout_out,
    gt0_rxmonitorsel_in,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_gtrxreset_in,
    gt0_rxpmareset_in,
    gt0_rxresetdone_out,
    gt0_gttxreset_in,
    gt0_txuserrdy_in,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_txdata_in,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_txresetdone_out,
    gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_cplllockdetclk_in,
    gt1_cpllreset_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_drpaddr_in,
    gt1_drpclk_in,
    gt1_drpdi_in,
    gt1_drpdo_out,
    gt1_drpen_in,
    gt1_drprdy_out,
    gt1_drpwe_in,
    gt1_dmonitorout_out,
    gt1_eyescanreset_in,
    gt1_rxuserrdy_in,
    gt1_eyescandataerror_out,
    gt1_eyescantrigger_in,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_rxdata_out,
    gt1_gtxrxp_in,
    gt1_gtxrxn_in,
    gt1_rxdfelpmreset_in,
    gt1_rxmonitorout_out,
    gt1_rxmonitorsel_in,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_gtrxreset_in,
    gt1_rxpmareset_in,
    gt1_rxresetdone_out,
    gt1_gttxreset_in,
    gt1_txuserrdy_in,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_txdata_in,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_txresetdone_out,
    gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_cplllockdetclk_in,
    gt2_cpllreset_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_drpaddr_in,
    gt2_drpclk_in,
    gt2_drpdi_in,
    gt2_drpdo_out,
    gt2_drpen_in,
    gt2_drprdy_out,
    gt2_drpwe_in,
    gt2_dmonitorout_out,
    gt2_eyescanreset_in,
    gt2_rxuserrdy_in,
    gt2_eyescandataerror_out,
    gt2_eyescantrigger_in,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_rxdata_out,
    gt2_gtxrxp_in,
    gt2_gtxrxn_in,
    gt2_rxdfelpmreset_in,
    gt2_rxmonitorout_out,
    gt2_rxmonitorsel_in,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_gtrxreset_in,
    gt2_rxpmareset_in,
    gt2_rxresetdone_out,
    gt2_gttxreset_in,
    gt2_txuserrdy_in,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_txdata_in,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_txresetdone_out,
    gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_cplllockdetclk_in,
    gt3_cpllreset_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_drpaddr_in,
    gt3_drpclk_in,
    gt3_drpdi_in,
    gt3_drpdo_out,
    gt3_drpen_in,
    gt3_drprdy_out,
    gt3_drpwe_in,
    gt3_dmonitorout_out,
    gt3_eyescanreset_in,
    gt3_rxuserrdy_in,
    gt3_eyescandataerror_out,
    gt3_eyescantrigger_in,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_rxdata_out,
    gt3_gtxrxp_in,
    gt3_gtxrxn_in,
    gt3_rxdfelpmreset_in,
    gt3_rxmonitorout_out,
    gt3_rxmonitorsel_in,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_gtrxreset_in,
    gt3_rxpmareset_in,
    gt3_rxresetdone_out,
    gt3_gttxreset_in,
    gt3_txuserrdy_in,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_txdata_in,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_txresetdone_out,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in);
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

  wire [31:1]data0;
  wire dont_reset_on_data_error_in;
  wire gt0_cpllfbclklost_out;
  wire gt0_cplllock_out;
  wire gt0_cplllockdetclk_in;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_i;
  wire gt0_data_valid_in;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtnorthrefclk0_in;
  wire gt0_gtnorthrefclk1_in;
  wire gt0_gtrefclk0_in;
  wire gt0_gtrefclk1_in;
  wire gt0_gtrxreset_i;
  wire gt0_gtsouthrefclk0_in;
  wire gt0_gtsouthrefclk1_in;
  wire gt0_gttxreset_i;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire [31:1]gt0_rx_cdrlock_counter;
  wire \gt0_rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_5_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt0_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[31]_i_6_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[31]_i_6_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt0_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt0_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt0_rx_cdrlocked_i_1_n_0;
  wire gt0_rx_cdrlocked_reg_n_0;
  wire gt0_rx_fsm_reset_done_out;
  wire [31:0]gt0_rxdata_out;
  wire gt0_rxdfelfhold_i;
  wire gt0_rxdfelpmreset_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire gt0_rxoutclk_out;
  wire gt0_rxoutclkfabric_out;
  wire gt0_rxpmareset_in;
  wire gt0_rxresetdone_out;
  wire gt0_rxuserrdy_i;
  wire gt0_rxusrclk2_in;
  wire gt0_rxusrclk_in;
  wire gt0_tx_fsm_reset_done_out;
  wire [31:0]gt0_txdata_in;
  wire gt0_txoutclk_out;
  wire gt0_txoutclkfabric_out;
  wire gt0_txoutclkpcs_out;
  wire gt0_txresetdone_out;
  wire gt0_txuserrdy_i;
  wire gt0_txusrclk2_in;
  wire gt0_txusrclk_in;
  wire gt1_cpllfbclklost_out;
  wire gt1_cplllock_out;
  wire gt1_cplllockdetclk_in;
  wire gt1_cpllrefclklost_i;
  wire gt1_cpllreset_i;
  wire gt1_data_valid_in;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr_in;
  wire gt1_drpclk_in;
  wire [15:0]gt1_drpdi_in;
  wire [15:0]gt1_drpdo_out;
  wire gt1_drpen_in;
  wire gt1_drprdy_out;
  wire gt1_drpwe_in;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire gt1_gtnorthrefclk0_in;
  wire gt1_gtnorthrefclk1_in;
  wire gt1_gtrefclk0_in;
  wire gt1_gtrefclk1_in;
  wire gt1_gtrxreset_i;
  wire gt1_gtsouthrefclk0_in;
  wire gt1_gtsouthrefclk1_in;
  wire gt1_gttxreset_i;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire [31:1]gt1_rx_cdrlock_counter;
  wire \gt1_rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_5_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt1_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt1_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt1_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt1_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt1_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt1_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt1_rx_cdrlock_counter_reg[31]_i_6_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[31]_i_6_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[31]_i_6_n_5 ;
  wire \gt1_rx_cdrlock_counter_reg[31]_i_6_n_6 ;
  wire \gt1_rx_cdrlock_counter_reg[31]_i_6_n_7 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt1_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt1_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt1_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt1_rx_cdrlocked_i_1_n_0;
  wire gt1_rx_cdrlocked_reg_n_0;
  wire gt1_rx_fsm_reset_done_out;
  wire [31:0]gt1_rxdata_out;
  wire gt1_rxdfelfhold_i;
  wire gt1_rxdfelpmreset_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire gt1_rxoutclk_out;
  wire gt1_rxoutclkfabric_out;
  wire gt1_rxpmareset_in;
  wire gt1_rxresetdone_out;
  wire gt1_rxuserrdy_i;
  wire gt1_rxusrclk2_in;
  wire gt1_rxusrclk_in;
  wire gt1_tx_fsm_reset_done_out;
  wire [31:0]gt1_txdata_in;
  wire gt1_txoutclk_out;
  wire gt1_txoutclkfabric_out;
  wire gt1_txoutclkpcs_out;
  wire gt1_txresetdone_out;
  wire gt1_txuserrdy_i;
  wire gt1_txusrclk2_in;
  wire gt1_txusrclk_in;
  wire gt2_cpllfbclklost_out;
  wire gt2_cplllock_out;
  wire gt2_cplllockdetclk_in;
  wire gt2_cpllrefclklost_i;
  wire gt2_cpllreset_i;
  wire gt2_data_valid_in;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr_in;
  wire gt2_drpclk_in;
  wire [15:0]gt2_drpdi_in;
  wire [15:0]gt2_drpdo_out;
  wire gt2_drpen_in;
  wire gt2_drprdy_out;
  wire gt2_drpwe_in;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire gt2_gtnorthrefclk0_in;
  wire gt2_gtnorthrefclk1_in;
  wire gt2_gtrefclk0_in;
  wire gt2_gtrefclk1_in;
  wire gt2_gtrxreset_i;
  wire gt2_gtsouthrefclk0_in;
  wire gt2_gtsouthrefclk1_in;
  wire gt2_gttxreset_i;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [31:1]gt2_rx_cdrlock_counter;
  wire \gt2_rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_5_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt2_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_6_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_6_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_6_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_6_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[31]_i_6_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt2_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt2_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt2_rx_cdrlocked_i_1_n_0;
  wire gt2_rx_cdrlocked_reg_n_0;
  wire gt2_rx_fsm_reset_done_out;
  wire [31:0]gt2_rxdata_out;
  wire gt2_rxdfelfhold_i;
  wire gt2_rxdfelpmreset_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire gt2_rxoutclk_out;
  wire gt2_rxoutclkfabric_out;
  wire gt2_rxpmareset_in;
  wire gt2_rxresetdone_out;
  wire gt2_rxuserrdy_i;
  wire gt2_rxusrclk2_in;
  wire gt2_rxusrclk_in;
  wire gt2_tx_fsm_reset_done_out;
  wire [31:0]gt2_txdata_in;
  wire gt2_txoutclk_out;
  wire gt2_txoutclkfabric_out;
  wire gt2_txoutclkpcs_out;
  wire gt2_txresetdone_out;
  wire gt2_txuserrdy_i;
  wire gt2_txusrclk2_in;
  wire gt2_txusrclk_in;
  wire gt3_cpllfbclklost_out;
  wire gt3_cplllock_out;
  wire gt3_cplllockdetclk_in;
  wire gt3_cpllrefclklost_i;
  wire gt3_cpllreset_i;
  wire gt3_data_valid_in;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr_in;
  wire gt3_drpclk_in;
  wire [15:0]gt3_drpdi_in;
  wire [15:0]gt3_drpdo_out;
  wire gt3_drpen_in;
  wire gt3_drprdy_out;
  wire gt3_drpwe_in;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire gt3_gtnorthrefclk0_in;
  wire gt3_gtnorthrefclk1_in;
  wire gt3_gtrefclk0_in;
  wire gt3_gtrefclk1_in;
  wire gt3_gtrxreset_i;
  wire gt3_gtsouthrefclk0_in;
  wire gt3_gtsouthrefclk1_in;
  wire gt3_gttxreset_i;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [31:1]gt3_rx_cdrlock_counter;
  wire \gt3_rx_cdrlock_counter[0]_i_1_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_10_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_3_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_4_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_5_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_7_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_8_n_0 ;
  wire \gt3_rx_cdrlock_counter[31]_i_9_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[12]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[16]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[20]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[24]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[28]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_6_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_6_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_6_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_6_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[31]_i_6_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[4]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_0 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_1 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_2 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_3 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_4 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_5 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_6 ;
  wire \gt3_rx_cdrlock_counter_reg[8]_i_2_n_7 ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[0] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[10] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[11] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[12] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[13] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[14] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[15] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[16] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[17] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[18] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[19] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[1] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[20] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[21] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[22] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[23] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[24] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[25] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[26] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[27] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[28] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[29] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[2] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[30] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[31] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[3] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[4] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[5] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[6] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[7] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[8] ;
  wire \gt3_rx_cdrlock_counter_reg_n_0_[9] ;
  wire gt3_rx_cdrlocked_i_1_n_0;
  wire gt3_rx_cdrlocked_reg_n_0;
  wire gt3_rx_fsm_reset_done_out;
  wire [31:0]gt3_rxdata_out;
  wire gt3_rxdfelfhold_i;
  wire gt3_rxdfelpmreset_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire gt3_rxoutclk_out;
  wire gt3_rxoutclkfabric_out;
  wire gt3_rxpmareset_in;
  wire gt3_rxresetdone_out;
  wire gt3_rxuserrdy_i;
  wire gt3_rxusrclk2_in;
  wire gt3_rxusrclk_in;
  wire gt3_tx_fsm_reset_done_out;
  wire [31:0]gt3_txdata_in;
  wire gt3_txoutclk_out;
  wire gt3_txoutclkfabric_out;
  wire gt3_txoutclkpcs_out;
  wire gt3_txresetdone_out;
  wire gt3_txuserrdy_i;
  wire gt3_txusrclk2_in;
  wire gt3_txusrclk_in;
  wire soft_reset_rx_in;
  wire soft_reset_tx_in;
  wire sysclk_in;
  wire [3:2]\NLW_gt0_rx_cdrlock_counter_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt0_rx_cdrlock_counter_reg[31]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_gt1_rx_cdrlock_counter_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt1_rx_cdrlock_counter_reg[31]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_gt2_rx_cdrlock_counter_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt2_rx_cdrlock_counter_reg[31]_i_6_O_UNCONNECTED ;
  wire [3:2]\NLW_gt3_rx_cdrlock_counter_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_gt3_rx_cdrlock_counter_reg[31]_i_6_O_UNCONNECTED ;

  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \gt0_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[10]_i_1 
       (.I0(data0[10]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt0_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[11]),
        .O(gt0_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[12]),
        .O(gt0_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[13]_i_1 
       (.I0(data0[13]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt0_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[14]),
        .O(gt0_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[15]),
        .O(gt0_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[16]),
        .O(gt0_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[17]),
        .O(gt0_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[18]),
        .O(gt0_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[19]),
        .O(gt0_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[1]_i_1 
       (.I0(data0[1]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt0_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[20]),
        .O(gt0_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[21]),
        .O(gt0_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[22]),
        .O(gt0_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[23]),
        .O(gt0_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[24]),
        .O(gt0_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[25]),
        .O(gt0_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[26]),
        .O(gt0_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[27]),
        .O(gt0_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[28]),
        .O(gt0_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[29]),
        .O(gt0_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[2]_i_1 
       (.I0(data0[2]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt0_rx_cdrlock_counter[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[30]),
        .O(gt0_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[31]),
        .O(gt0_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt0_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[13] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[12] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[15] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[14] ),
        .O(\gt0_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[18] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[19] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[16] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[17] ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[26] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[27] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[24] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[25] ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_8_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \gt0_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[3] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[2] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[1] ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_9_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \gt0_rx_cdrlock_counter[31]_i_5 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[11] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[10] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[8] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[9] ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[21] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[20] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[23] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[22] ),
        .O(\gt0_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt0_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[29] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[28] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[30] ),
        .O(\gt0_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt0_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt0_rx_cdrlock_counter_reg_n_0_[5] ),
        .I1(\gt0_rx_cdrlock_counter_reg_n_0_[4] ),
        .I2(\gt0_rx_cdrlock_counter_reg_n_0_[7] ),
        .I3(\gt0_rx_cdrlock_counter_reg_n_0_[6] ),
        .O(\gt0_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[3]),
        .O(gt0_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[4]),
        .O(gt0_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[5]_i_1 
       (.I0(data0[5]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt0_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[6]),
        .O(gt0_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[7]),
        .O(gt0_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt0_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(data0[8]),
        .O(gt0_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt0_rx_cdrlock_counter[9]_i_1 
       (.I0(data0[9]),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt0_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(\gt0_rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[10]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[11]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[12]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt0_gtrxreset_i));
  CARRY4 \gt0_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[12] ,\gt0_rx_cdrlock_counter_reg_n_0_[11] ,\gt0_rx_cdrlock_counter_reg_n_0_[10] ,\gt0_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[13]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[14]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[15]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[16]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt0_gtrxreset_i));
  CARRY4 \gt0_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[16] ,\gt0_rx_cdrlock_counter_reg_n_0_[15] ,\gt0_rx_cdrlock_counter_reg_n_0_[14] ,\gt0_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[17]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[18]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[19]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[1]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[20]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt0_gtrxreset_i));
  CARRY4 \gt0_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[20] ,\gt0_rx_cdrlock_counter_reg_n_0_[19] ,\gt0_rx_cdrlock_counter_reg_n_0_[18] ,\gt0_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[21]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[22]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[23]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[24]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt0_gtrxreset_i));
  CARRY4 \gt0_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[24] ,\gt0_rx_cdrlock_counter_reg_n_0_[23] ,\gt0_rx_cdrlock_counter_reg_n_0_[22] ,\gt0_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[25]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[26]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[27]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[28]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt0_gtrxreset_i));
  CARRY4 \gt0_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[28] ,\gt0_rx_cdrlock_counter_reg_n_0_[27] ,\gt0_rx_cdrlock_counter_reg_n_0_[26] ,\gt0_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[29]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[2]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[30]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[31]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt0_gtrxreset_i));
  CARRY4 \gt0_rx_cdrlock_counter_reg[31]_i_6 
       (.CI(\gt0_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt0_rx_cdrlock_counter_reg[31]_i_6_CO_UNCONNECTED [3:2],\gt0_rx_cdrlock_counter_reg[31]_i_6_n_2 ,\gt0_rx_cdrlock_counter_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt0_rx_cdrlock_counter_reg[31]_i_6_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\gt0_rx_cdrlock_counter_reg_n_0_[31] ,\gt0_rx_cdrlock_counter_reg_n_0_[30] ,\gt0_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[3]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[4]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt0_gtrxreset_i));
  CARRY4 \gt0_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt0_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt0_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[4] ,\gt0_rx_cdrlock_counter_reg_n_0_[3] ,\gt0_rx_cdrlock_counter_reg_n_0_[2] ,\gt0_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[5]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[6]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[7]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt0_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[8]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt0_gtrxreset_i));
  CARRY4 \gt0_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt0_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt0_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt0_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\gt0_rx_cdrlock_counter_reg_n_0_[8] ,\gt0_rx_cdrlock_counter_reg_n_0_[7] ,\gt0_rx_cdrlock_counter_reg_n_0_[6] ,\gt0_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt0_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlock_counter[9]),
        .Q(\gt0_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt0_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt0_rx_cdrlocked_i_1
       (.I0(gt0_rx_cdrlocked_reg_n_0),
        .I1(\gt0_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt0_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt0_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt0_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt0_rx_cdrlocked_i_1_n_0));
  FDRE gt0_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rx_cdrlocked_i_1_n_0),
        .Q(gt0_rx_cdrlocked_reg_n_0),
        .R(gt0_gtrxreset_i));
  gtwizard_4_channel_gtwizard_4_channel_RX_STARTUP_FSM gt0_rxresetfsm_i
       (.SR(gt0_gtrxreset_i),
        .dont_reset_on_data_error_in(dont_reset_on_data_error_in),
        .gt0_cplllock_out(gt0_cplllock_out),
        .gt0_data_valid_in(gt0_data_valid_in),
        .gt0_rx_fsm_reset_done_out(gt0_rx_fsm_reset_done_out),
        .gt0_rxdfelfhold_i(gt0_rxdfelfhold_i),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .reset_time_out_reg_0(gt0_rx_cdrlocked_reg_n_0),
        .soft_reset_rx_in(soft_reset_rx_in),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_TX_STARTUP_FSM gt0_txresetfsm_i
       (.gt0_cplllock_out(gt0_cplllock_out),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_cpllreset_i(gt0_cpllreset_i),
        .gt0_gttxreset_i(gt0_gttxreset_i),
        .gt0_tx_fsm_reset_done_out(gt0_tx_fsm_reset_done_out),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .soft_reset_tx_in(soft_reset_tx_in),
        .sysclk_in(sysclk_in));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \gt1_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(\gt1_rx_cdrlock_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt1_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt1_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt1_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt1_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt1_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt1_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt1_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt1_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt1_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt1_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt1_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt1_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt1_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt1_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt1_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt1_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt1_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt1_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt1_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt1_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[31]_i_6_n_7 ),
        .O(gt1_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt1_rx_cdrlock_counter[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[31]_i_6_n_6 ),
        .O(gt1_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[31]_i_6_n_5 ),
        .O(gt1_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt1_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[13] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[12] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[15] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[14] ),
        .O(\gt1_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt1_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[18] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[19] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[16] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[17] ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt1_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[26] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[27] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[24] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[25] ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_8_n_0 ),
        .O(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \gt1_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[3] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[2] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[1] ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_9_n_0 ),
        .O(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \gt1_rx_cdrlock_counter[31]_i_5 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[11] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[10] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[8] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[9] ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt1_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[21] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[20] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[23] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[22] ),
        .O(\gt1_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt1_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[29] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[28] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[30] ),
        .O(\gt1_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt1_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt1_rx_cdrlock_counter_reg_n_0_[5] ),
        .I1(\gt1_rx_cdrlock_counter_reg_n_0_[4] ),
        .I2(\gt1_rx_cdrlock_counter_reg_n_0_[7] ),
        .I3(\gt1_rx_cdrlock_counter_reg_n_0_[6] ),
        .O(\gt1_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt1_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt1_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt1_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .O(gt1_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .O(gt1_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt1_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt1_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt1_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt1_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt1_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt1_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(\gt1_rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[10]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[11]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[12]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt1_gtrxreset_i));
  CARRY4 \gt1_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt1_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt1_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt1_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt1_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[12] ,\gt1_rx_cdrlock_counter_reg_n_0_[11] ,\gt1_rx_cdrlock_counter_reg_n_0_[10] ,\gt1_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[13]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[14]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[15]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[16]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt1_gtrxreset_i));
  CARRY4 \gt1_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt1_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt1_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt1_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt1_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[16] ,\gt1_rx_cdrlock_counter_reg_n_0_[15] ,\gt1_rx_cdrlock_counter_reg_n_0_[14] ,\gt1_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[17]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[18]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[19]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[1]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[20]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt1_gtrxreset_i));
  CARRY4 \gt1_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt1_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt1_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt1_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt1_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[20] ,\gt1_rx_cdrlock_counter_reg_n_0_[19] ,\gt1_rx_cdrlock_counter_reg_n_0_[18] ,\gt1_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[21]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[22]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[23]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[24]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt1_gtrxreset_i));
  CARRY4 \gt1_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt1_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt1_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt1_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt1_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[24] ,\gt1_rx_cdrlock_counter_reg_n_0_[23] ,\gt1_rx_cdrlock_counter_reg_n_0_[22] ,\gt1_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[25]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[26]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[27]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[28]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt1_gtrxreset_i));
  CARRY4 \gt1_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt1_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt1_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt1_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt1_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[28] ,\gt1_rx_cdrlock_counter_reg_n_0_[27] ,\gt1_rx_cdrlock_counter_reg_n_0_[26] ,\gt1_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[29]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[2]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[30]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[31]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt1_gtrxreset_i));
  CARRY4 \gt1_rx_cdrlock_counter_reg[31]_i_6 
       (.CI(\gt1_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt1_rx_cdrlock_counter_reg[31]_i_6_CO_UNCONNECTED [3:2],\gt1_rx_cdrlock_counter_reg[31]_i_6_n_2 ,\gt1_rx_cdrlock_counter_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt1_rx_cdrlock_counter_reg[31]_i_6_O_UNCONNECTED [3],\gt1_rx_cdrlock_counter_reg[31]_i_6_n_5 ,\gt1_rx_cdrlock_counter_reg[31]_i_6_n_6 ,\gt1_rx_cdrlock_counter_reg[31]_i_6_n_7 }),
        .S({1'b0,\gt1_rx_cdrlock_counter_reg_n_0_[31] ,\gt1_rx_cdrlock_counter_reg_n_0_[30] ,\gt1_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[3]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[4]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt1_gtrxreset_i));
  CARRY4 \gt1_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt1_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt1_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt1_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt1_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt1_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt1_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[4] ,\gt1_rx_cdrlock_counter_reg_n_0_[3] ,\gt1_rx_cdrlock_counter_reg_n_0_[2] ,\gt1_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[5]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[6]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[7]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt1_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[8]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt1_gtrxreset_i));
  CARRY4 \gt1_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt1_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt1_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt1_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt1_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt1_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt1_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt1_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt1_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt1_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt1_rx_cdrlock_counter_reg_n_0_[8] ,\gt1_rx_cdrlock_counter_reg_n_0_[7] ,\gt1_rx_cdrlock_counter_reg_n_0_[6] ,\gt1_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt1_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlock_counter[9]),
        .Q(\gt1_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt1_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt1_rx_cdrlocked_i_1
       (.I0(gt1_rx_cdrlocked_reg_n_0),
        .I1(\gt1_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt1_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt1_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt1_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt1_rx_cdrlocked_i_1_n_0));
  FDRE gt1_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rx_cdrlocked_i_1_n_0),
        .Q(gt1_rx_cdrlocked_reg_n_0),
        .R(gt1_gtrxreset_i));
  gtwizard_4_channel_gtwizard_4_channel_RX_STARTUP_FSM_0 gt1_rxresetfsm_i
       (.SR(gt1_gtrxreset_i),
        .dont_reset_on_data_error_in(dont_reset_on_data_error_in),
        .gt1_cplllock_out(gt1_cplllock_out),
        .gt1_data_valid_in(gt1_data_valid_in),
        .gt1_rx_fsm_reset_done_out(gt1_rx_fsm_reset_done_out),
        .gt1_rxdfelfhold_i(gt1_rxdfelfhold_i),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxuserrdy_i(gt1_rxuserrdy_i),
        .gt1_rxusrclk_in(gt1_rxusrclk_in),
        .reset_time_out_reg_0(gt1_rx_cdrlocked_reg_n_0),
        .soft_reset_rx_in(soft_reset_rx_in),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_TX_STARTUP_FSM_1 gt1_txresetfsm_i
       (.gt1_cplllock_out(gt1_cplllock_out),
        .gt1_cpllrefclklost_i(gt1_cpllrefclklost_i),
        .gt1_cpllreset_i(gt1_cpllreset_i),
        .gt1_gttxreset_i(gt1_gttxreset_i),
        .gt1_tx_fsm_reset_done_out(gt1_tx_fsm_reset_done_out),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt1_txuserrdy_i(gt1_txuserrdy_i),
        .soft_reset_tx_in(soft_reset_tx_in),
        .sysclk_in(sysclk_in));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \gt2_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(\gt2_rx_cdrlock_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt2_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt2_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt2_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt2_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt2_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt2_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[31]_i_6_n_7 ),
        .O(gt2_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt2_rx_cdrlock_counter[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[31]_i_6_n_6 ),
        .O(gt2_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[31]_i_6_n_5 ),
        .O(gt2_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt2_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[13] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[12] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[15] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[14] ),
        .O(\gt2_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt2_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[18] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[19] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[16] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[17] ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt2_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[26] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[27] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[24] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[25] ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_8_n_0 ),
        .O(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \gt2_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[3] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[2] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[1] ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_9_n_0 ),
        .O(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \gt2_rx_cdrlock_counter[31]_i_5 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[11] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[10] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[8] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[9] ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt2_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[21] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[20] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[23] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[22] ),
        .O(\gt2_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt2_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[29] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[28] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[30] ),
        .O(\gt2_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt2_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt2_rx_cdrlock_counter_reg_n_0_[5] ),
        .I1(\gt2_rx_cdrlock_counter_reg_n_0_[4] ),
        .I2(\gt2_rx_cdrlock_counter_reg_n_0_[7] ),
        .I3(\gt2_rx_cdrlock_counter_reg_n_0_[6] ),
        .O(\gt2_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt2_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .O(gt2_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .O(gt2_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt2_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt2_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt2_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt2_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(\gt2_rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[10]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[11]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[12]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt2_gtrxreset_i));
  CARRY4 \gt2_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[12] ,\gt2_rx_cdrlock_counter_reg_n_0_[11] ,\gt2_rx_cdrlock_counter_reg_n_0_[10] ,\gt2_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[13]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[14]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[15]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[16]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt2_gtrxreset_i));
  CARRY4 \gt2_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[16] ,\gt2_rx_cdrlock_counter_reg_n_0_[15] ,\gt2_rx_cdrlock_counter_reg_n_0_[14] ,\gt2_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[17]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[18]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[19]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[1]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[20]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt2_gtrxreset_i));
  CARRY4 \gt2_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[20] ,\gt2_rx_cdrlock_counter_reg_n_0_[19] ,\gt2_rx_cdrlock_counter_reg_n_0_[18] ,\gt2_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[21]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[22]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[23]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[24]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt2_gtrxreset_i));
  CARRY4 \gt2_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[24] ,\gt2_rx_cdrlock_counter_reg_n_0_[23] ,\gt2_rx_cdrlock_counter_reg_n_0_[22] ,\gt2_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[25]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[26]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[27]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[28]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt2_gtrxreset_i));
  CARRY4 \gt2_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[28] ,\gt2_rx_cdrlock_counter_reg_n_0_[27] ,\gt2_rx_cdrlock_counter_reg_n_0_[26] ,\gt2_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[29]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[2]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[30]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[31]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt2_gtrxreset_i));
  CARRY4 \gt2_rx_cdrlock_counter_reg[31]_i_6 
       (.CI(\gt2_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt2_rx_cdrlock_counter_reg[31]_i_6_CO_UNCONNECTED [3:2],\gt2_rx_cdrlock_counter_reg[31]_i_6_n_2 ,\gt2_rx_cdrlock_counter_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt2_rx_cdrlock_counter_reg[31]_i_6_O_UNCONNECTED [3],\gt2_rx_cdrlock_counter_reg[31]_i_6_n_5 ,\gt2_rx_cdrlock_counter_reg[31]_i_6_n_6 ,\gt2_rx_cdrlock_counter_reg[31]_i_6_n_7 }),
        .S({1'b0,\gt2_rx_cdrlock_counter_reg_n_0_[31] ,\gt2_rx_cdrlock_counter_reg_n_0_[30] ,\gt2_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[3]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[4]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt2_gtrxreset_i));
  CARRY4 \gt2_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt2_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt2_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[4] ,\gt2_rx_cdrlock_counter_reg_n_0_[3] ,\gt2_rx_cdrlock_counter_reg_n_0_[2] ,\gt2_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[5]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[6]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[7]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt2_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[8]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt2_gtrxreset_i));
  CARRY4 \gt2_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt2_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt2_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt2_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt2_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt2_rx_cdrlock_counter_reg_n_0_[8] ,\gt2_rx_cdrlock_counter_reg_n_0_[7] ,\gt2_rx_cdrlock_counter_reg_n_0_[6] ,\gt2_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt2_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlock_counter[9]),
        .Q(\gt2_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt2_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt2_rx_cdrlocked_i_1
       (.I0(gt2_rx_cdrlocked_reg_n_0),
        .I1(\gt2_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt2_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt2_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt2_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt2_rx_cdrlocked_i_1_n_0));
  FDRE gt2_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rx_cdrlocked_i_1_n_0),
        .Q(gt2_rx_cdrlocked_reg_n_0),
        .R(gt2_gtrxreset_i));
  gtwizard_4_channel_gtwizard_4_channel_RX_STARTUP_FSM_2 gt2_rxresetfsm_i
       (.\FSM_sequential_rx_state_reg[0]_0 (gt2_rx_cdrlocked_reg_n_0),
        .SR(gt2_gtrxreset_i),
        .dont_reset_on_data_error_in(dont_reset_on_data_error_in),
        .gt2_cplllock_out(gt2_cplllock_out),
        .gt2_data_valid_in(gt2_data_valid_in),
        .gt2_rx_fsm_reset_done_out(gt2_rx_fsm_reset_done_out),
        .gt2_rxdfelfhold_i(gt2_rxdfelfhold_i),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxuserrdy_i(gt2_rxuserrdy_i),
        .gt2_rxusrclk_in(gt2_rxusrclk_in),
        .soft_reset_rx_in(soft_reset_rx_in),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_TX_STARTUP_FSM_3 gt2_txresetfsm_i
       (.gt2_cplllock_out(gt2_cplllock_out),
        .gt2_cpllrefclklost_i(gt2_cpllrefclklost_i),
        .gt2_cpllreset_i(gt2_cpllreset_i),
        .gt2_gttxreset_i(gt2_gttxreset_i),
        .gt2_tx_fsm_reset_done_out(gt2_tx_fsm_reset_done_out),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt2_txuserrdy_i(gt2_txuserrdy_i),
        .soft_reset_tx_in(soft_reset_tx_in),
        .sysclk_in(sysclk_in));
  LUT5 #(
    .INIT(32'h0000FFFE)) 
    \gt3_rx_cdrlock_counter[0]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .O(\gt3_rx_cdrlock_counter[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[10]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_6 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt3_rx_cdrlock_counter[10]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[11]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[11]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[12]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[12]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[13]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_7 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt3_rx_cdrlock_counter[13]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[14]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[14]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[15]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[15]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[16]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[16]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[17]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_7 ),
        .O(gt3_rx_cdrlock_counter[17]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[18]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[18]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[19]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[19]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[1]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_7 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt3_rx_cdrlock_counter[1]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[20]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[20]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[21]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_7 ),
        .O(gt3_rx_cdrlock_counter[21]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[22]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[22]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[23]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[23]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[24]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[24]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[25]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_7 ),
        .O(gt3_rx_cdrlock_counter[25]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[26]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[26]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[27]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[27]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[28]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[28]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[29]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[31]_i_6_n_7 ),
        .O(gt3_rx_cdrlock_counter[29]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[2]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_6 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt3_rx_cdrlock_counter[2]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[30]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[31]_i_6_n_6 ),
        .O(gt3_rx_cdrlock_counter[30]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[31]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[31]_i_6_n_5 ),
        .O(gt3_rx_cdrlock_counter[31]));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt3_rx_cdrlock_counter[31]_i_10 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[13] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[12] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[15] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[14] ),
        .O(\gt3_rx_cdrlock_counter[31]_i_10_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt3_rx_cdrlock_counter[31]_i_2 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[18] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[19] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[16] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[17] ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_7_n_0 ),
        .O(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gt3_rx_cdrlock_counter[31]_i_3 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[26] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[27] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[24] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[25] ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_8_n_0 ),
        .O(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \gt3_rx_cdrlock_counter[31]_i_4 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[3] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[2] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[1] ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_9_n_0 ),
        .O(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFBFF)) 
    \gt3_rx_cdrlock_counter[31]_i_5 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[11] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[10] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[8] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[9] ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_10_n_0 ),
        .O(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt3_rx_cdrlock_counter[31]_i_7 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[21] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[20] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[23] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[22] ),
        .O(\gt3_rx_cdrlock_counter[31]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gt3_rx_cdrlock_counter[31]_i_8 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[29] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[28] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[31] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[30] ),
        .O(\gt3_rx_cdrlock_counter[31]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \gt3_rx_cdrlock_counter[31]_i_9 
       (.I0(\gt3_rx_cdrlock_counter_reg_n_0_[5] ),
        .I1(\gt3_rx_cdrlock_counter_reg_n_0_[4] ),
        .I2(\gt3_rx_cdrlock_counter_reg_n_0_[7] ),
        .I3(\gt3_rx_cdrlock_counter_reg_n_0_[6] ),
        .O(\gt3_rx_cdrlock_counter[31]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[3]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[3]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[4]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[4]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[5]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_7 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt3_rx_cdrlock_counter[5]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[6]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_6 ),
        .O(gt3_rx_cdrlock_counter[6]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[7]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_5 ),
        .O(gt3_rx_cdrlock_counter[7]));
  LUT5 #(
    .INIT(32'hFFFE0000)) 
    \gt3_rx_cdrlock_counter[8]_i_1 
       (.I0(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .I4(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_4 ),
        .O(gt3_rx_cdrlock_counter[8]));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    \gt3_rx_cdrlock_counter[9]_i_1 
       (.I0(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_7 ),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt3_rx_cdrlock_counter[9]));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[0] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(\gt3_rx_cdrlock_counter[0]_i_1_n_0 ),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[10] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[10]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[10] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[11] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[11]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[11] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[12] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[12]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[12] ),
        .R(gt3_gtrxreset_i));
  CARRY4 \gt3_rx_cdrlock_counter_reg[12]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[8]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[12]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[12]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[12]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[12] ,\gt3_rx_cdrlock_counter_reg_n_0_[11] ,\gt3_rx_cdrlock_counter_reg_n_0_[10] ,\gt3_rx_cdrlock_counter_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[13] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[13]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[13] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[14] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[14]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[14] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[15] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[15]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[15] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[16] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[16]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[16] ),
        .R(gt3_gtrxreset_i));
  CARRY4 \gt3_rx_cdrlock_counter_reg[16]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[12]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[16]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[16]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[16]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[16] ,\gt3_rx_cdrlock_counter_reg_n_0_[15] ,\gt3_rx_cdrlock_counter_reg_n_0_[14] ,\gt3_rx_cdrlock_counter_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[17] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[17]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[17] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[18] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[18]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[18] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[19] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[19]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[19] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[1] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[1]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[1] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[20] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[20]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[20] ),
        .R(gt3_gtrxreset_i));
  CARRY4 \gt3_rx_cdrlock_counter_reg[20]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[16]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[20]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[20]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[20]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[20] ,\gt3_rx_cdrlock_counter_reg_n_0_[19] ,\gt3_rx_cdrlock_counter_reg_n_0_[18] ,\gt3_rx_cdrlock_counter_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[21] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[21]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[21] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[22] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[22]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[22] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[23] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[23]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[23] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[24] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[24]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[24] ),
        .R(gt3_gtrxreset_i));
  CARRY4 \gt3_rx_cdrlock_counter_reg[24]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[20]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[24]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[24]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[24]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[24] ,\gt3_rx_cdrlock_counter_reg_n_0_[23] ,\gt3_rx_cdrlock_counter_reg_n_0_[22] ,\gt3_rx_cdrlock_counter_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[25] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[25]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[25] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[26] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[26]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[26] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[27] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[27]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[27] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[28] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[28]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[28] ),
        .R(gt3_gtrxreset_i));
  CARRY4 \gt3_rx_cdrlock_counter_reg[28]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[24]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[28]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[28]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[28]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[28] ,\gt3_rx_cdrlock_counter_reg_n_0_[27] ,\gt3_rx_cdrlock_counter_reg_n_0_[26] ,\gt3_rx_cdrlock_counter_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[29] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[29]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[29] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[2] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[2]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[2] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[30] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[30]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[30] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[31] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[31]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[31] ),
        .R(gt3_gtrxreset_i));
  CARRY4 \gt3_rx_cdrlock_counter_reg[31]_i_6 
       (.CI(\gt3_rx_cdrlock_counter_reg[28]_i_2_n_0 ),
        .CO({\NLW_gt3_rx_cdrlock_counter_reg[31]_i_6_CO_UNCONNECTED [3:2],\gt3_rx_cdrlock_counter_reg[31]_i_6_n_2 ,\gt3_rx_cdrlock_counter_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gt3_rx_cdrlock_counter_reg[31]_i_6_O_UNCONNECTED [3],\gt3_rx_cdrlock_counter_reg[31]_i_6_n_5 ,\gt3_rx_cdrlock_counter_reg[31]_i_6_n_6 ,\gt3_rx_cdrlock_counter_reg[31]_i_6_n_7 }),
        .S({1'b0,\gt3_rx_cdrlock_counter_reg_n_0_[31] ,\gt3_rx_cdrlock_counter_reg_n_0_[30] ,\gt3_rx_cdrlock_counter_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[3] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[3]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[3] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[4] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[4]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[4] ),
        .R(gt3_gtrxreset_i));
  CARRY4 \gt3_rx_cdrlock_counter_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\gt3_rx_cdrlock_counter_reg[4]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_3 }),
        .CYINIT(\gt3_rx_cdrlock_counter_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[4]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[4]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[4] ,\gt3_rx_cdrlock_counter_reg_n_0_[3] ,\gt3_rx_cdrlock_counter_reg_n_0_[2] ,\gt3_rx_cdrlock_counter_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[5] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[5]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[5] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[6] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[6]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[6] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[7] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[7]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[7] ),
        .R(gt3_gtrxreset_i));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[8] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[8]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[8] ),
        .R(gt3_gtrxreset_i));
  CARRY4 \gt3_rx_cdrlock_counter_reg[8]_i_2 
       (.CI(\gt3_rx_cdrlock_counter_reg[4]_i_2_n_0 ),
        .CO({\gt3_rx_cdrlock_counter_reg[8]_i_2_n_0 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_1 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_2 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\gt3_rx_cdrlock_counter_reg[8]_i_2_n_4 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_5 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_6 ,\gt3_rx_cdrlock_counter_reg[8]_i_2_n_7 }),
        .S({\gt3_rx_cdrlock_counter_reg_n_0_[8] ,\gt3_rx_cdrlock_counter_reg_n_0_[7] ,\gt3_rx_cdrlock_counter_reg_n_0_[6] ,\gt3_rx_cdrlock_counter_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \gt3_rx_cdrlock_counter_reg[9] 
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlock_counter[9]),
        .Q(\gt3_rx_cdrlock_counter_reg_n_0_[9] ),
        .R(gt3_gtrxreset_i));
  LUT5 #(
    .INIT(32'hAAAAAAAB)) 
    gt3_rx_cdrlocked_i_1
       (.I0(gt3_rx_cdrlocked_reg_n_0),
        .I1(\gt3_rx_cdrlock_counter[31]_i_2_n_0 ),
        .I2(\gt3_rx_cdrlock_counter[31]_i_3_n_0 ),
        .I3(\gt3_rx_cdrlock_counter[31]_i_4_n_0 ),
        .I4(\gt3_rx_cdrlock_counter[31]_i_5_n_0 ),
        .O(gt3_rx_cdrlocked_i_1_n_0));
  FDRE gt3_rx_cdrlocked_reg
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rx_cdrlocked_i_1_n_0),
        .Q(gt3_rx_cdrlocked_reg_n_0),
        .R(gt3_gtrxreset_i));
  gtwizard_4_channel_gtwizard_4_channel_RX_STARTUP_FSM_4 gt3_rxresetfsm_i
       (.\FSM_sequential_rx_state_reg[0]_0 (gt3_rx_cdrlocked_reg_n_0),
        .SR(gt3_gtrxreset_i),
        .dont_reset_on_data_error_in(dont_reset_on_data_error_in),
        .gt3_cplllock_out(gt3_cplllock_out),
        .gt3_data_valid_in(gt3_data_valid_in),
        .gt3_rx_fsm_reset_done_out(gt3_rx_fsm_reset_done_out),
        .gt3_rxdfelfhold_i(gt3_rxdfelfhold_i),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxuserrdy_i(gt3_rxuserrdy_i),
        .gt3_rxusrclk_in(gt3_rxusrclk_in),
        .soft_reset_rx_in(soft_reset_rx_in),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_TX_STARTUP_FSM_5 gt3_txresetfsm_i
       (.gt3_cplllock_out(gt3_cplllock_out),
        .gt3_cpllrefclklost_i(gt3_cpllrefclklost_i),
        .gt3_cpllreset_i(gt3_cpllreset_i),
        .gt3_gttxreset_i(gt3_gttxreset_i),
        .gt3_tx_fsm_reset_done_out(gt3_tx_fsm_reset_done_out),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt3_txuserrdy_i(gt3_txuserrdy_i),
        .soft_reset_tx_in(soft_reset_tx_in),
        .sysclk_in(sysclk_in));
  gtwizard_4_channel_gtwizard_4_channel_multi_gt gtwizard_4_channel_i
       (.SR(gt0_gtrxreset_i),
        .gt0_cpllfbclklost_out(gt0_cpllfbclklost_out),
        .gt0_cplllock_out(gt0_cplllock_out),
        .gt0_cplllockdetclk_in(gt0_cplllockdetclk_in),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_cpllreset_i(gt0_cpllreset_i),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_gtnorthrefclk0_in(gt0_gtnorthrefclk0_in),
        .gt0_gtnorthrefclk1_in(gt0_gtnorthrefclk1_in),
        .gt0_gtrefclk0_in(gt0_gtrefclk0_in),
        .gt0_gtrefclk1_in(gt0_gtrefclk1_in),
        .gt0_gtsouthrefclk0_in(gt0_gtsouthrefclk0_in),
        .gt0_gtsouthrefclk1_in(gt0_gtsouthrefclk1_in),
        .gt0_gttxreset_i(gt0_gttxreset_i),
        .gt0_gtxrxn_in(gt0_gtxrxn_in),
        .gt0_gtxrxp_in(gt0_gtxrxp_in),
        .gt0_gtxtxn_out(gt0_gtxtxn_out),
        .gt0_gtxtxp_out(gt0_gtxtxp_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rxdata_out(gt0_rxdata_out),
        .gt0_rxdfelfhold_i(gt0_rxdfelfhold_i),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxoutclk_out(gt0_rxoutclk_out),
        .gt0_rxoutclkfabric_out(gt0_rxoutclkfabric_out),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .gt0_rxusrclk2_in(gt0_rxusrclk2_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txdata_in(gt0_txdata_in),
        .gt0_txoutclk_out(gt0_txoutclk_out),
        .gt0_txoutclkfabric_out(gt0_txoutclkfabric_out),
        .gt0_txoutclkpcs_out(gt0_txoutclkpcs_out),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .gt0_txusrclk2_in(gt0_txusrclk2_in),
        .gt0_txusrclk_in(gt0_txusrclk_in),
        .gt1_cpllfbclklost_out(gt1_cpllfbclklost_out),
        .gt1_cpllfbclklost_out_0(gt1_gtrxreset_i),
        .gt1_cplllock_out(gt1_cplllock_out),
        .gt1_cplllockdetclk_in(gt1_cplllockdetclk_in),
        .gt1_cpllrefclklost_i(gt1_cpllrefclklost_i),
        .gt1_cpllreset_i(gt1_cpllreset_i),
        .gt1_dmonitorout_out(gt1_dmonitorout_out),
        .gt1_drpaddr_in(gt1_drpaddr_in),
        .gt1_drpclk_in(gt1_drpclk_in),
        .gt1_drpdi_in(gt1_drpdi_in),
        .gt1_drpdo_out(gt1_drpdo_out),
        .gt1_drpen_in(gt1_drpen_in),
        .gt1_drprdy_out(gt1_drprdy_out),
        .gt1_drpwe_in(gt1_drpwe_in),
        .gt1_eyescandataerror_out(gt1_eyescandataerror_out),
        .gt1_eyescanreset_in(gt1_eyescanreset_in),
        .gt1_eyescantrigger_in(gt1_eyescantrigger_in),
        .gt1_gtnorthrefclk0_in(gt1_gtnorthrefclk0_in),
        .gt1_gtnorthrefclk1_in(gt1_gtnorthrefclk1_in),
        .gt1_gtrefclk0_in(gt1_gtrefclk0_in),
        .gt1_gtrefclk1_in(gt1_gtrefclk1_in),
        .gt1_gtsouthrefclk0_in(gt1_gtsouthrefclk0_in),
        .gt1_gtsouthrefclk1_in(gt1_gtsouthrefclk1_in),
        .gt1_gttxreset_i(gt1_gttxreset_i),
        .gt1_gtxrxn_in(gt1_gtxrxn_in),
        .gt1_gtxrxp_in(gt1_gtxrxp_in),
        .gt1_gtxtxn_out(gt1_gtxtxn_out),
        .gt1_gtxtxp_out(gt1_gtxtxp_out),
        .gt1_rxdata_out(gt1_rxdata_out),
        .gt1_rxdfelfhold_i(gt1_rxdfelfhold_i),
        .gt1_rxdfelpmreset_in(gt1_rxdfelpmreset_in),
        .gt1_rxmonitorout_out(gt1_rxmonitorout_out),
        .gt1_rxmonitorsel_in(gt1_rxmonitorsel_in),
        .gt1_rxoutclk_out(gt1_rxoutclk_out),
        .gt1_rxoutclkfabric_out(gt1_rxoutclkfabric_out),
        .gt1_rxpmareset_in(gt1_rxpmareset_in),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxuserrdy_i(gt1_rxuserrdy_i),
        .gt1_rxusrclk2_in(gt1_rxusrclk2_in),
        .gt1_rxusrclk_in(gt1_rxusrclk_in),
        .gt1_txdata_in(gt1_txdata_in),
        .gt1_txoutclk_out(gt1_txoutclk_out),
        .gt1_txoutclkfabric_out(gt1_txoutclkfabric_out),
        .gt1_txoutclkpcs_out(gt1_txoutclkpcs_out),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt1_txuserrdy_i(gt1_txuserrdy_i),
        .gt1_txusrclk2_in(gt1_txusrclk2_in),
        .gt1_txusrclk_in(gt1_txusrclk_in),
        .gt2_cpllfbclklost_out(gt2_cpllfbclklost_out),
        .gt2_cpllfbclklost_out_0(gt2_gtrxreset_i),
        .gt2_cplllock_out(gt2_cplllock_out),
        .gt2_cplllockdetclk_in(gt2_cplllockdetclk_in),
        .gt2_cpllrefclklost_i(gt2_cpllrefclklost_i),
        .gt2_cpllreset_i(gt2_cpllreset_i),
        .gt2_dmonitorout_out(gt2_dmonitorout_out),
        .gt2_drpaddr_in(gt2_drpaddr_in),
        .gt2_drpclk_in(gt2_drpclk_in),
        .gt2_drpdi_in(gt2_drpdi_in),
        .gt2_drpdo_out(gt2_drpdo_out),
        .gt2_drpen_in(gt2_drpen_in),
        .gt2_drprdy_out(gt2_drprdy_out),
        .gt2_drpwe_in(gt2_drpwe_in),
        .gt2_eyescandataerror_out(gt2_eyescandataerror_out),
        .gt2_eyescanreset_in(gt2_eyescanreset_in),
        .gt2_eyescantrigger_in(gt2_eyescantrigger_in),
        .gt2_gtnorthrefclk0_in(gt2_gtnorthrefclk0_in),
        .gt2_gtnorthrefclk1_in(gt2_gtnorthrefclk1_in),
        .gt2_gtrefclk0_in(gt2_gtrefclk0_in),
        .gt2_gtrefclk1_in(gt2_gtrefclk1_in),
        .gt2_gtsouthrefclk0_in(gt2_gtsouthrefclk0_in),
        .gt2_gtsouthrefclk1_in(gt2_gtsouthrefclk1_in),
        .gt2_gttxreset_i(gt2_gttxreset_i),
        .gt2_gtxrxn_in(gt2_gtxrxn_in),
        .gt2_gtxrxp_in(gt2_gtxrxp_in),
        .gt2_gtxtxn_out(gt2_gtxtxn_out),
        .gt2_gtxtxp_out(gt2_gtxtxp_out),
        .gt2_rxdata_out(gt2_rxdata_out),
        .gt2_rxdfelfhold_i(gt2_rxdfelfhold_i),
        .gt2_rxdfelpmreset_in(gt2_rxdfelpmreset_in),
        .gt2_rxmonitorout_out(gt2_rxmonitorout_out),
        .gt2_rxmonitorsel_in(gt2_rxmonitorsel_in),
        .gt2_rxoutclk_out(gt2_rxoutclk_out),
        .gt2_rxoutclkfabric_out(gt2_rxoutclkfabric_out),
        .gt2_rxpmareset_in(gt2_rxpmareset_in),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxuserrdy_i(gt2_rxuserrdy_i),
        .gt2_rxusrclk2_in(gt2_rxusrclk2_in),
        .gt2_rxusrclk_in(gt2_rxusrclk_in),
        .gt2_txdata_in(gt2_txdata_in),
        .gt2_txoutclk_out(gt2_txoutclk_out),
        .gt2_txoutclkfabric_out(gt2_txoutclkfabric_out),
        .gt2_txoutclkpcs_out(gt2_txoutclkpcs_out),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt2_txuserrdy_i(gt2_txuserrdy_i),
        .gt2_txusrclk2_in(gt2_txusrclk2_in),
        .gt2_txusrclk_in(gt2_txusrclk_in),
        .gt3_cpllfbclklost_out(gt3_cpllfbclklost_out),
        .gt3_cpllfbclklost_out_0(gt3_gtrxreset_i),
        .gt3_cplllock_out(gt3_cplllock_out),
        .gt3_cplllockdetclk_in(gt3_cplllockdetclk_in),
        .gt3_cpllrefclklost_i(gt3_cpllrefclklost_i),
        .gt3_cpllreset_i(gt3_cpllreset_i),
        .gt3_dmonitorout_out(gt3_dmonitorout_out),
        .gt3_drpaddr_in(gt3_drpaddr_in),
        .gt3_drpclk_in(gt3_drpclk_in),
        .gt3_drpdi_in(gt3_drpdi_in),
        .gt3_drpdo_out(gt3_drpdo_out),
        .gt3_drpen_in(gt3_drpen_in),
        .gt3_drprdy_out(gt3_drprdy_out),
        .gt3_drpwe_in(gt3_drpwe_in),
        .gt3_eyescandataerror_out(gt3_eyescandataerror_out),
        .gt3_eyescanreset_in(gt3_eyescanreset_in),
        .gt3_eyescantrigger_in(gt3_eyescantrigger_in),
        .gt3_gtnorthrefclk0_in(gt3_gtnorthrefclk0_in),
        .gt3_gtnorthrefclk1_in(gt3_gtnorthrefclk1_in),
        .gt3_gtrefclk0_in(gt3_gtrefclk0_in),
        .gt3_gtrefclk1_in(gt3_gtrefclk1_in),
        .gt3_gtsouthrefclk0_in(gt3_gtsouthrefclk0_in),
        .gt3_gtsouthrefclk1_in(gt3_gtsouthrefclk1_in),
        .gt3_gttxreset_i(gt3_gttxreset_i),
        .gt3_gtxrxn_in(gt3_gtxrxn_in),
        .gt3_gtxrxp_in(gt3_gtxrxp_in),
        .gt3_gtxtxn_out(gt3_gtxtxn_out),
        .gt3_gtxtxp_out(gt3_gtxtxp_out),
        .gt3_rxdata_out(gt3_rxdata_out),
        .gt3_rxdfelfhold_i(gt3_rxdfelfhold_i),
        .gt3_rxdfelpmreset_in(gt3_rxdfelpmreset_in),
        .gt3_rxmonitorout_out(gt3_rxmonitorout_out),
        .gt3_rxmonitorsel_in(gt3_rxmonitorsel_in),
        .gt3_rxoutclk_out(gt3_rxoutclk_out),
        .gt3_rxoutclkfabric_out(gt3_rxoutclkfabric_out),
        .gt3_rxpmareset_in(gt3_rxpmareset_in),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxuserrdy_i(gt3_rxuserrdy_i),
        .gt3_rxusrclk2_in(gt3_rxusrclk2_in),
        .gt3_rxusrclk_in(gt3_rxusrclk_in),
        .gt3_txdata_in(gt3_txdata_in),
        .gt3_txoutclk_out(gt3_txoutclk_out),
        .gt3_txoutclkfabric_out(gt3_txoutclkfabric_out),
        .gt3_txoutclkpcs_out(gt3_txoutclkpcs_out),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt3_txuserrdy_i(gt3_txuserrdy_i),
        .gt3_txusrclk2_in(gt3_txusrclk2_in),
        .gt3_txusrclk_in(gt3_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_multi_gt" *) 
module gtwizard_4_channel_gtwizard_4_channel_multi_gt
   (gt0_cpllfbclklost_out,
    gt0_cplllock_out,
    gt0_cpllrefclklost_i,
    gt0_drprdy_out,
    gt0_eyescandataerror_out,
    gt0_gtxtxn_out,
    gt0_gtxtxp_out,
    gt0_rxoutclk_out,
    gt0_rxoutclkfabric_out,
    gt0_rxresetdone_out,
    gt0_txoutclk_out,
    gt0_txoutclkfabric_out,
    gt0_txoutclkpcs_out,
    gt0_txresetdone_out,
    gt0_drpdo_out,
    gt0_rxdata_out,
    gt0_rxmonitorout_out,
    gt0_dmonitorout_out,
    gt1_cpllfbclklost_out,
    gt1_cplllock_out,
    gt1_cpllrefclklost_i,
    gt1_drprdy_out,
    gt1_eyescandataerror_out,
    gt1_gtxtxn_out,
    gt1_gtxtxp_out,
    gt1_rxoutclk_out,
    gt1_rxoutclkfabric_out,
    gt1_rxresetdone_out,
    gt1_txoutclk_out,
    gt1_txoutclkfabric_out,
    gt1_txoutclkpcs_out,
    gt1_txresetdone_out,
    gt1_drpdo_out,
    gt1_rxdata_out,
    gt1_rxmonitorout_out,
    gt1_dmonitorout_out,
    gt2_cpllfbclklost_out,
    gt2_cplllock_out,
    gt2_cpllrefclklost_i,
    gt2_drprdy_out,
    gt2_eyescandataerror_out,
    gt2_gtxtxn_out,
    gt2_gtxtxp_out,
    gt2_rxoutclk_out,
    gt2_rxoutclkfabric_out,
    gt2_rxresetdone_out,
    gt2_txoutclk_out,
    gt2_txoutclkfabric_out,
    gt2_txoutclkpcs_out,
    gt2_txresetdone_out,
    gt2_drpdo_out,
    gt2_rxdata_out,
    gt2_rxmonitorout_out,
    gt2_dmonitorout_out,
    gt3_cpllfbclklost_out,
    gt3_cplllock_out,
    gt3_cpllrefclklost_i,
    gt3_drprdy_out,
    gt3_eyescandataerror_out,
    gt3_gtxtxn_out,
    gt3_gtxtxp_out,
    gt3_rxoutclk_out,
    gt3_rxoutclkfabric_out,
    gt3_rxresetdone_out,
    gt3_txoutclk_out,
    gt3_txoutclkfabric_out,
    gt3_txoutclkpcs_out,
    gt3_txresetdone_out,
    gt3_drpdo_out,
    gt3_rxdata_out,
    gt3_rxmonitorout_out,
    gt3_dmonitorout_out,
    gt0_cplllockdetclk_in,
    gt0_drpclk_in,
    gt0_drpen_in,
    gt0_drpwe_in,
    gt0_eyescanreset_in,
    gt0_eyescantrigger_in,
    gt0_gtnorthrefclk0_in,
    gt0_gtnorthrefclk1_in,
    gt0_gtrefclk0_in,
    gt0_gtrefclk1_in,
    SR,
    gt0_gtsouthrefclk0_in,
    gt0_gtsouthrefclk1_in,
    gt0_gttxreset_i,
    gt0_gtxrxn_in,
    gt0_gtxrxp_in,
    gt0_qplloutclk_in,
    gt0_qplloutrefclk_in,
    gt0_rxdfelfhold_i,
    gt0_rxdfelpmreset_in,
    gt0_rxpmareset_in,
    gt0_rxuserrdy_i,
    gt0_rxusrclk_in,
    gt0_rxusrclk2_in,
    gt0_txuserrdy_i,
    gt0_txusrclk_in,
    gt0_txusrclk2_in,
    gt0_drpdi_in,
    gt0_rxmonitorsel_in,
    gt0_txdata_in,
    gt0_drpaddr_in,
    gt1_cplllockdetclk_in,
    gt1_drpclk_in,
    gt1_drpen_in,
    gt1_drpwe_in,
    gt1_eyescanreset_in,
    gt1_eyescantrigger_in,
    gt1_gtnorthrefclk0_in,
    gt1_gtnorthrefclk1_in,
    gt1_gtrefclk0_in,
    gt1_gtrefclk1_in,
    gt1_cpllfbclklost_out_0,
    gt1_gtsouthrefclk0_in,
    gt1_gtsouthrefclk1_in,
    gt1_gttxreset_i,
    gt1_gtxrxn_in,
    gt1_gtxrxp_in,
    gt1_rxdfelfhold_i,
    gt1_rxdfelpmreset_in,
    gt1_rxpmareset_in,
    gt1_rxuserrdy_i,
    gt1_rxusrclk_in,
    gt1_rxusrclk2_in,
    gt1_txuserrdy_i,
    gt1_txusrclk_in,
    gt1_txusrclk2_in,
    gt1_drpdi_in,
    gt1_rxmonitorsel_in,
    gt1_txdata_in,
    gt1_drpaddr_in,
    gt2_cplllockdetclk_in,
    gt2_drpclk_in,
    gt2_drpen_in,
    gt2_drpwe_in,
    gt2_eyescanreset_in,
    gt2_eyescantrigger_in,
    gt2_gtnorthrefclk0_in,
    gt2_gtnorthrefclk1_in,
    gt2_gtrefclk0_in,
    gt2_gtrefclk1_in,
    gt2_cpllfbclklost_out_0,
    gt2_gtsouthrefclk0_in,
    gt2_gtsouthrefclk1_in,
    gt2_gttxreset_i,
    gt2_gtxrxn_in,
    gt2_gtxrxp_in,
    gt2_rxdfelfhold_i,
    gt2_rxdfelpmreset_in,
    gt2_rxpmareset_in,
    gt2_rxuserrdy_i,
    gt2_rxusrclk_in,
    gt2_rxusrclk2_in,
    gt2_txuserrdy_i,
    gt2_txusrclk_in,
    gt2_txusrclk2_in,
    gt2_drpdi_in,
    gt2_rxmonitorsel_in,
    gt2_txdata_in,
    gt2_drpaddr_in,
    gt3_cplllockdetclk_in,
    gt3_drpclk_in,
    gt3_drpen_in,
    gt3_drpwe_in,
    gt3_eyescanreset_in,
    gt3_eyescantrigger_in,
    gt3_gtnorthrefclk0_in,
    gt3_gtnorthrefclk1_in,
    gt3_gtrefclk0_in,
    gt3_gtrefclk1_in,
    gt3_cpllfbclklost_out_0,
    gt3_gtsouthrefclk0_in,
    gt3_gtsouthrefclk1_in,
    gt3_gttxreset_i,
    gt3_gtxrxn_in,
    gt3_gtxrxp_in,
    gt3_rxdfelfhold_i,
    gt3_rxdfelpmreset_in,
    gt3_rxpmareset_in,
    gt3_rxuserrdy_i,
    gt3_rxusrclk_in,
    gt3_rxusrclk2_in,
    gt3_txuserrdy_i,
    gt3_txusrclk_in,
    gt3_txusrclk2_in,
    gt3_drpdi_in,
    gt3_rxmonitorsel_in,
    gt3_txdata_in,
    gt3_drpaddr_in,
    gt0_cpllreset_i,
    gt1_cpllreset_i,
    gt2_cpllreset_i,
    gt3_cpllreset_i);
  output gt0_cpllfbclklost_out;
  output gt0_cplllock_out;
  output gt0_cpllrefclklost_i;
  output gt0_drprdy_out;
  output gt0_eyescandataerror_out;
  output gt0_gtxtxn_out;
  output gt0_gtxtxp_out;
  output gt0_rxoutclk_out;
  output gt0_rxoutclkfabric_out;
  output gt0_rxresetdone_out;
  output gt0_txoutclk_out;
  output gt0_txoutclkfabric_out;
  output gt0_txoutclkpcs_out;
  output gt0_txresetdone_out;
  output [15:0]gt0_drpdo_out;
  output [31:0]gt0_rxdata_out;
  output [6:0]gt0_rxmonitorout_out;
  output [7:0]gt0_dmonitorout_out;
  output gt1_cpllfbclklost_out;
  output gt1_cplllock_out;
  output gt1_cpllrefclklost_i;
  output gt1_drprdy_out;
  output gt1_eyescandataerror_out;
  output gt1_gtxtxn_out;
  output gt1_gtxtxp_out;
  output gt1_rxoutclk_out;
  output gt1_rxoutclkfabric_out;
  output gt1_rxresetdone_out;
  output gt1_txoutclk_out;
  output gt1_txoutclkfabric_out;
  output gt1_txoutclkpcs_out;
  output gt1_txresetdone_out;
  output [15:0]gt1_drpdo_out;
  output [31:0]gt1_rxdata_out;
  output [6:0]gt1_rxmonitorout_out;
  output [7:0]gt1_dmonitorout_out;
  output gt2_cpllfbclklost_out;
  output gt2_cplllock_out;
  output gt2_cpllrefclklost_i;
  output gt2_drprdy_out;
  output gt2_eyescandataerror_out;
  output gt2_gtxtxn_out;
  output gt2_gtxtxp_out;
  output gt2_rxoutclk_out;
  output gt2_rxoutclkfabric_out;
  output gt2_rxresetdone_out;
  output gt2_txoutclk_out;
  output gt2_txoutclkfabric_out;
  output gt2_txoutclkpcs_out;
  output gt2_txresetdone_out;
  output [15:0]gt2_drpdo_out;
  output [31:0]gt2_rxdata_out;
  output [6:0]gt2_rxmonitorout_out;
  output [7:0]gt2_dmonitorout_out;
  output gt3_cpllfbclklost_out;
  output gt3_cplllock_out;
  output gt3_cpllrefclklost_i;
  output gt3_drprdy_out;
  output gt3_eyescandataerror_out;
  output gt3_gtxtxn_out;
  output gt3_gtxtxp_out;
  output gt3_rxoutclk_out;
  output gt3_rxoutclkfabric_out;
  output gt3_rxresetdone_out;
  output gt3_txoutclk_out;
  output gt3_txoutclkfabric_out;
  output gt3_txoutclkpcs_out;
  output gt3_txresetdone_out;
  output [15:0]gt3_drpdo_out;
  output [31:0]gt3_rxdata_out;
  output [6:0]gt3_rxmonitorout_out;
  output [7:0]gt3_dmonitorout_out;
  input gt0_cplllockdetclk_in;
  input gt0_drpclk_in;
  input gt0_drpen_in;
  input gt0_drpwe_in;
  input gt0_eyescanreset_in;
  input gt0_eyescantrigger_in;
  input gt0_gtnorthrefclk0_in;
  input gt0_gtnorthrefclk1_in;
  input gt0_gtrefclk0_in;
  input gt0_gtrefclk1_in;
  input [0:0]SR;
  input gt0_gtsouthrefclk0_in;
  input gt0_gtsouthrefclk1_in;
  input gt0_gttxreset_i;
  input gt0_gtxrxn_in;
  input gt0_gtxrxp_in;
  input gt0_qplloutclk_in;
  input gt0_qplloutrefclk_in;
  input gt0_rxdfelfhold_i;
  input gt0_rxdfelpmreset_in;
  input gt0_rxpmareset_in;
  input gt0_rxuserrdy_i;
  input gt0_rxusrclk_in;
  input gt0_rxusrclk2_in;
  input gt0_txuserrdy_i;
  input gt0_txusrclk_in;
  input gt0_txusrclk2_in;
  input [15:0]gt0_drpdi_in;
  input [1:0]gt0_rxmonitorsel_in;
  input [31:0]gt0_txdata_in;
  input [8:0]gt0_drpaddr_in;
  input gt1_cplllockdetclk_in;
  input gt1_drpclk_in;
  input gt1_drpen_in;
  input gt1_drpwe_in;
  input gt1_eyescanreset_in;
  input gt1_eyescantrigger_in;
  input gt1_gtnorthrefclk0_in;
  input gt1_gtnorthrefclk1_in;
  input gt1_gtrefclk0_in;
  input gt1_gtrefclk1_in;
  input [0:0]gt1_cpllfbclklost_out_0;
  input gt1_gtsouthrefclk0_in;
  input gt1_gtsouthrefclk1_in;
  input gt1_gttxreset_i;
  input gt1_gtxrxn_in;
  input gt1_gtxrxp_in;
  input gt1_rxdfelfhold_i;
  input gt1_rxdfelpmreset_in;
  input gt1_rxpmareset_in;
  input gt1_rxuserrdy_i;
  input gt1_rxusrclk_in;
  input gt1_rxusrclk2_in;
  input gt1_txuserrdy_i;
  input gt1_txusrclk_in;
  input gt1_txusrclk2_in;
  input [15:0]gt1_drpdi_in;
  input [1:0]gt1_rxmonitorsel_in;
  input [31:0]gt1_txdata_in;
  input [8:0]gt1_drpaddr_in;
  input gt2_cplllockdetclk_in;
  input gt2_drpclk_in;
  input gt2_drpen_in;
  input gt2_drpwe_in;
  input gt2_eyescanreset_in;
  input gt2_eyescantrigger_in;
  input gt2_gtnorthrefclk0_in;
  input gt2_gtnorthrefclk1_in;
  input gt2_gtrefclk0_in;
  input gt2_gtrefclk1_in;
  input [0:0]gt2_cpllfbclklost_out_0;
  input gt2_gtsouthrefclk0_in;
  input gt2_gtsouthrefclk1_in;
  input gt2_gttxreset_i;
  input gt2_gtxrxn_in;
  input gt2_gtxrxp_in;
  input gt2_rxdfelfhold_i;
  input gt2_rxdfelpmreset_in;
  input gt2_rxpmareset_in;
  input gt2_rxuserrdy_i;
  input gt2_rxusrclk_in;
  input gt2_rxusrclk2_in;
  input gt2_txuserrdy_i;
  input gt2_txusrclk_in;
  input gt2_txusrclk2_in;
  input [15:0]gt2_drpdi_in;
  input [1:0]gt2_rxmonitorsel_in;
  input [31:0]gt2_txdata_in;
  input [8:0]gt2_drpaddr_in;
  input gt3_cplllockdetclk_in;
  input gt3_drpclk_in;
  input gt3_drpen_in;
  input gt3_drpwe_in;
  input gt3_eyescanreset_in;
  input gt3_eyescantrigger_in;
  input gt3_gtnorthrefclk0_in;
  input gt3_gtnorthrefclk1_in;
  input gt3_gtrefclk0_in;
  input gt3_gtrefclk1_in;
  input [0:0]gt3_cpllfbclklost_out_0;
  input gt3_gtsouthrefclk0_in;
  input gt3_gtsouthrefclk1_in;
  input gt3_gttxreset_i;
  input gt3_gtxrxn_in;
  input gt3_gtxrxp_in;
  input gt3_rxdfelfhold_i;
  input gt3_rxdfelpmreset_in;
  input gt3_rxpmareset_in;
  input gt3_rxuserrdy_i;
  input gt3_rxusrclk_in;
  input gt3_rxusrclk2_in;
  input gt3_txuserrdy_i;
  input gt3_txusrclk_in;
  input gt3_txusrclk2_in;
  input [15:0]gt3_drpdi_in;
  input [1:0]gt3_rxmonitorsel_in;
  input [31:0]gt3_txdata_in;
  input [8:0]gt3_drpaddr_in;
  input gt0_cpllreset_i;
  input gt1_cpllreset_i;
  input gt2_cpllreset_i;
  input gt3_cpllreset_i;

  wire [0:0]SR;
  wire gt0_cpllfbclklost_out;
  wire gt0_cplllock_out;
  wire gt0_cplllockdetclk_in;
  wire gt0_cpllpd_i;
  wire gt0_cpllrefclklost_i;
  wire gt0_cpllreset_i;
  wire gt0_cpllreset_i_0;
  wire [7:0]gt0_dmonitorout_out;
  wire [8:0]gt0_drpaddr_in;
  wire gt0_drpclk_in;
  wire [15:0]gt0_drpdi_in;
  wire [15:0]gt0_drpdo_out;
  wire gt0_drpen_in;
  wire gt0_drprdy_out;
  wire gt0_drpwe_in;
  wire gt0_eyescandataerror_out;
  wire gt0_eyescanreset_in;
  wire gt0_eyescantrigger_in;
  wire gt0_gtnorthrefclk0_in;
  wire gt0_gtnorthrefclk1_in;
  wire gt0_gtrefclk0_in;
  wire gt0_gtrefclk1_in;
  wire gt0_gtsouthrefclk0_in;
  wire gt0_gtsouthrefclk1_in;
  wire gt0_gttxreset_i;
  wire gt0_gtxrxn_in;
  wire gt0_gtxrxp_in;
  wire gt0_gtxtxn_out;
  wire gt0_gtxtxp_out;
  wire gt0_qplloutclk_in;
  wire gt0_qplloutrefclk_in;
  wire [31:0]gt0_rxdata_out;
  wire gt0_rxdfelfhold_i;
  wire gt0_rxdfelpmreset_in;
  wire [6:0]gt0_rxmonitorout_out;
  wire [1:0]gt0_rxmonitorsel_in;
  wire gt0_rxoutclk_out;
  wire gt0_rxoutclkfabric_out;
  wire gt0_rxpmareset_in;
  wire gt0_rxresetdone_out;
  wire gt0_rxuserrdy_i;
  wire gt0_rxusrclk2_in;
  wire gt0_rxusrclk_in;
  wire [31:0]gt0_txdata_in;
  wire gt0_txoutclk_out;
  wire gt0_txoutclkfabric_out;
  wire gt0_txoutclkpcs_out;
  wire gt0_txresetdone_out;
  wire gt0_txuserrdy_i;
  wire gt0_txusrclk2_in;
  wire gt0_txusrclk_in;
  wire gt1_cpllfbclklost_out;
  wire [0:0]gt1_cpllfbclklost_out_0;
  wire gt1_cplllock_out;
  wire gt1_cplllockdetclk_in;
  wire gt1_cpllrefclklost_i;
  wire gt1_cpllreset_i;
  wire gt1_cpllreset_i_1;
  wire [7:0]gt1_dmonitorout_out;
  wire [8:0]gt1_drpaddr_in;
  wire gt1_drpclk_in;
  wire [15:0]gt1_drpdi_in;
  wire [15:0]gt1_drpdo_out;
  wire gt1_drpen_in;
  wire gt1_drprdy_out;
  wire gt1_drpwe_in;
  wire gt1_eyescandataerror_out;
  wire gt1_eyescanreset_in;
  wire gt1_eyescantrigger_in;
  wire gt1_gtnorthrefclk0_in;
  wire gt1_gtnorthrefclk1_in;
  wire gt1_gtrefclk0_in;
  wire gt1_gtrefclk1_in;
  wire gt1_gtsouthrefclk0_in;
  wire gt1_gtsouthrefclk1_in;
  wire gt1_gttxreset_i;
  wire gt1_gtxrxn_in;
  wire gt1_gtxrxp_in;
  wire gt1_gtxtxn_out;
  wire gt1_gtxtxp_out;
  wire [31:0]gt1_rxdata_out;
  wire gt1_rxdfelfhold_i;
  wire gt1_rxdfelpmreset_in;
  wire [6:0]gt1_rxmonitorout_out;
  wire [1:0]gt1_rxmonitorsel_in;
  wire gt1_rxoutclk_out;
  wire gt1_rxoutclkfabric_out;
  wire gt1_rxpmareset_in;
  wire gt1_rxresetdone_out;
  wire gt1_rxuserrdy_i;
  wire gt1_rxusrclk2_in;
  wire gt1_rxusrclk_in;
  wire [31:0]gt1_txdata_in;
  wire gt1_txoutclk_out;
  wire gt1_txoutclkfabric_out;
  wire gt1_txoutclkpcs_out;
  wire gt1_txresetdone_out;
  wire gt1_txuserrdy_i;
  wire gt1_txusrclk2_in;
  wire gt1_txusrclk_in;
  wire gt2_cpllfbclklost_out;
  wire [0:0]gt2_cpllfbclklost_out_0;
  wire gt2_cplllock_out;
  wire gt2_cplllockdetclk_in;
  wire gt2_cpllrefclklost_i;
  wire gt2_cpllreset_i;
  wire gt2_cpllreset_i_2;
  wire [7:0]gt2_dmonitorout_out;
  wire [8:0]gt2_drpaddr_in;
  wire gt2_drpclk_in;
  wire [15:0]gt2_drpdi_in;
  wire [15:0]gt2_drpdo_out;
  wire gt2_drpen_in;
  wire gt2_drprdy_out;
  wire gt2_drpwe_in;
  wire gt2_eyescandataerror_out;
  wire gt2_eyescanreset_in;
  wire gt2_eyescantrigger_in;
  wire gt2_gtnorthrefclk0_in;
  wire gt2_gtnorthrefclk1_in;
  wire gt2_gtrefclk0_in;
  wire gt2_gtrefclk1_in;
  wire gt2_gtsouthrefclk0_in;
  wire gt2_gtsouthrefclk1_in;
  wire gt2_gttxreset_i;
  wire gt2_gtxrxn_in;
  wire gt2_gtxrxp_in;
  wire gt2_gtxtxn_out;
  wire gt2_gtxtxp_out;
  wire [31:0]gt2_rxdata_out;
  wire gt2_rxdfelfhold_i;
  wire gt2_rxdfelpmreset_in;
  wire [6:0]gt2_rxmonitorout_out;
  wire [1:0]gt2_rxmonitorsel_in;
  wire gt2_rxoutclk_out;
  wire gt2_rxoutclkfabric_out;
  wire gt2_rxpmareset_in;
  wire gt2_rxresetdone_out;
  wire gt2_rxuserrdy_i;
  wire gt2_rxusrclk2_in;
  wire gt2_rxusrclk_in;
  wire [31:0]gt2_txdata_in;
  wire gt2_txoutclk_out;
  wire gt2_txoutclkfabric_out;
  wire gt2_txoutclkpcs_out;
  wire gt2_txresetdone_out;
  wire gt2_txuserrdy_i;
  wire gt2_txusrclk2_in;
  wire gt2_txusrclk_in;
  wire gt3_cpllfbclklost_out;
  wire [0:0]gt3_cpllfbclklost_out_0;
  wire gt3_cplllock_out;
  wire gt3_cplllockdetclk_in;
  wire gt3_cpllrefclklost_i;
  wire gt3_cpllreset_i;
  wire gt3_cpllreset_i_3;
  wire [7:0]gt3_dmonitorout_out;
  wire [8:0]gt3_drpaddr_in;
  wire gt3_drpclk_in;
  wire [15:0]gt3_drpdi_in;
  wire [15:0]gt3_drpdo_out;
  wire gt3_drpen_in;
  wire gt3_drprdy_out;
  wire gt3_drpwe_in;
  wire gt3_eyescandataerror_out;
  wire gt3_eyescanreset_in;
  wire gt3_eyescantrigger_in;
  wire gt3_gtnorthrefclk0_in;
  wire gt3_gtnorthrefclk1_in;
  wire gt3_gtrefclk0_in;
  wire gt3_gtrefclk1_in;
  wire gt3_gtsouthrefclk0_in;
  wire gt3_gtsouthrefclk1_in;
  wire gt3_gttxreset_i;
  wire gt3_gtxrxn_in;
  wire gt3_gtxrxp_in;
  wire gt3_gtxtxn_out;
  wire gt3_gtxtxp_out;
  wire [31:0]gt3_rxdata_out;
  wire gt3_rxdfelfhold_i;
  wire gt3_rxdfelpmreset_in;
  wire [6:0]gt3_rxmonitorout_out;
  wire [1:0]gt3_rxmonitorsel_in;
  wire gt3_rxoutclk_out;
  wire gt3_rxoutclkfabric_out;
  wire gt3_rxpmareset_in;
  wire gt3_rxresetdone_out;
  wire gt3_rxuserrdy_i;
  wire gt3_rxusrclk2_in;
  wire gt3_rxusrclk_in;
  wire [31:0]gt3_txdata_in;
  wire gt3_txoutclk_out;
  wire gt3_txoutclkfabric_out;
  wire gt3_txoutclkpcs_out;
  wire gt3_txresetdone_out;
  wire gt3_txuserrdy_i;
  wire gt3_txusrclk2_in;
  wire gt3_txusrclk_in;

  gtwizard_4_channel_gtwizard_4_channel_cpll_railing cpll_railing0_i
       (.gt0_cpllpd_i(gt0_cpllpd_i),
        .gt0_cpllreset_i(gt0_cpllreset_i),
        .gt0_cpllreset_i_0(gt0_cpllreset_i_0),
        .gt0_gtrefclk1_in(gt0_gtrefclk1_in),
        .gt1_cpllreset_i(gt1_cpllreset_i),
        .gt1_cpllreset_i_1(gt1_cpllreset_i_1),
        .gt2_cpllreset_i(gt2_cpllreset_i),
        .gt2_cpllreset_i_2(gt2_cpllreset_i_2),
        .gt3_cpllreset_i(gt3_cpllreset_i),
        .gt3_cpllreset_i_3(gt3_cpllreset_i_3));
  gtwizard_4_channel_gtwizard_4_channel_GT gt0_gtwizard_4_channel_i
       (.SR(SR),
        .gt0_cpllfbclklost_out(gt0_cpllfbclklost_out),
        .gt0_cplllock_out(gt0_cplllock_out),
        .gt0_cplllockdetclk_in(gt0_cplllockdetclk_in),
        .gt0_cpllpd_i(gt0_cpllpd_i),
        .gt0_cpllrefclklost_i(gt0_cpllrefclklost_i),
        .gt0_cpllreset_i_0(gt0_cpllreset_i_0),
        .gt0_dmonitorout_out(gt0_dmonitorout_out),
        .gt0_drpaddr_in(gt0_drpaddr_in),
        .gt0_drpclk_in(gt0_drpclk_in),
        .gt0_drpdi_in(gt0_drpdi_in),
        .gt0_drpdo_out(gt0_drpdo_out),
        .gt0_drpen_in(gt0_drpen_in),
        .gt0_drprdy_out(gt0_drprdy_out),
        .gt0_drpwe_in(gt0_drpwe_in),
        .gt0_eyescandataerror_out(gt0_eyescandataerror_out),
        .gt0_eyescanreset_in(gt0_eyescanreset_in),
        .gt0_eyescantrigger_in(gt0_eyescantrigger_in),
        .gt0_gtnorthrefclk0_in(gt0_gtnorthrefclk0_in),
        .gt0_gtnorthrefclk1_in(gt0_gtnorthrefclk1_in),
        .gt0_gtrefclk0_in(gt0_gtrefclk0_in),
        .gt0_gtrefclk1_in(gt0_gtrefclk1_in),
        .gt0_gtsouthrefclk0_in(gt0_gtsouthrefclk0_in),
        .gt0_gtsouthrefclk1_in(gt0_gtsouthrefclk1_in),
        .gt0_gttxreset_i(gt0_gttxreset_i),
        .gt0_gtxrxn_in(gt0_gtxrxn_in),
        .gt0_gtxrxp_in(gt0_gtxrxp_in),
        .gt0_gtxtxn_out(gt0_gtxtxn_out),
        .gt0_gtxtxp_out(gt0_gtxtxp_out),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt0_rxdata_out(gt0_rxdata_out),
        .gt0_rxdfelfhold_i(gt0_rxdfelfhold_i),
        .gt0_rxdfelpmreset_in(gt0_rxdfelpmreset_in),
        .gt0_rxmonitorout_out(gt0_rxmonitorout_out),
        .gt0_rxmonitorsel_in(gt0_rxmonitorsel_in),
        .gt0_rxoutclk_out(gt0_rxoutclk_out),
        .gt0_rxoutclkfabric_out(gt0_rxoutclkfabric_out),
        .gt0_rxpmareset_in(gt0_rxpmareset_in),
        .gt0_rxresetdone_out(gt0_rxresetdone_out),
        .gt0_rxuserrdy_i(gt0_rxuserrdy_i),
        .gt0_rxusrclk2_in(gt0_rxusrclk2_in),
        .gt0_rxusrclk_in(gt0_rxusrclk_in),
        .gt0_txdata_in(gt0_txdata_in),
        .gt0_txoutclk_out(gt0_txoutclk_out),
        .gt0_txoutclkfabric_out(gt0_txoutclkfabric_out),
        .gt0_txoutclkpcs_out(gt0_txoutclkpcs_out),
        .gt0_txresetdone_out(gt0_txresetdone_out),
        .gt0_txuserrdy_i(gt0_txuserrdy_i),
        .gt0_txusrclk2_in(gt0_txusrclk2_in),
        .gt0_txusrclk_in(gt0_txusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_GT_6 gt1_gtwizard_4_channel_i
       (.gt0_cpllpd_i(gt0_cpllpd_i),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt1_cpllfbclklost_out(gt1_cpllfbclklost_out),
        .gt1_cpllfbclklost_out_0(gt1_cpllfbclklost_out_0),
        .gt1_cplllock_out(gt1_cplllock_out),
        .gt1_cplllockdetclk_in(gt1_cplllockdetclk_in),
        .gt1_cpllrefclklost_i(gt1_cpllrefclklost_i),
        .gt1_cpllreset_i_1(gt1_cpllreset_i_1),
        .gt1_dmonitorout_out(gt1_dmonitorout_out),
        .gt1_drpaddr_in(gt1_drpaddr_in),
        .gt1_drpclk_in(gt1_drpclk_in),
        .gt1_drpdi_in(gt1_drpdi_in),
        .gt1_drpdo_out(gt1_drpdo_out),
        .gt1_drpen_in(gt1_drpen_in),
        .gt1_drprdy_out(gt1_drprdy_out),
        .gt1_drpwe_in(gt1_drpwe_in),
        .gt1_eyescandataerror_out(gt1_eyescandataerror_out),
        .gt1_eyescanreset_in(gt1_eyescanreset_in),
        .gt1_eyescantrigger_in(gt1_eyescantrigger_in),
        .gt1_gtnorthrefclk0_in(gt1_gtnorthrefclk0_in),
        .gt1_gtnorthrefclk1_in(gt1_gtnorthrefclk1_in),
        .gt1_gtrefclk0_in(gt1_gtrefclk0_in),
        .gt1_gtrefclk1_in(gt1_gtrefclk1_in),
        .gt1_gtsouthrefclk0_in(gt1_gtsouthrefclk0_in),
        .gt1_gtsouthrefclk1_in(gt1_gtsouthrefclk1_in),
        .gt1_gttxreset_i(gt1_gttxreset_i),
        .gt1_gtxrxn_in(gt1_gtxrxn_in),
        .gt1_gtxrxp_in(gt1_gtxrxp_in),
        .gt1_gtxtxn_out(gt1_gtxtxn_out),
        .gt1_gtxtxp_out(gt1_gtxtxp_out),
        .gt1_rxdata_out(gt1_rxdata_out),
        .gt1_rxdfelfhold_i(gt1_rxdfelfhold_i),
        .gt1_rxdfelpmreset_in(gt1_rxdfelpmreset_in),
        .gt1_rxmonitorout_out(gt1_rxmonitorout_out),
        .gt1_rxmonitorsel_in(gt1_rxmonitorsel_in),
        .gt1_rxoutclk_out(gt1_rxoutclk_out),
        .gt1_rxoutclkfabric_out(gt1_rxoutclkfabric_out),
        .gt1_rxpmareset_in(gt1_rxpmareset_in),
        .gt1_rxresetdone_out(gt1_rxresetdone_out),
        .gt1_rxuserrdy_i(gt1_rxuserrdy_i),
        .gt1_rxusrclk2_in(gt1_rxusrclk2_in),
        .gt1_rxusrclk_in(gt1_rxusrclk_in),
        .gt1_txdata_in(gt1_txdata_in),
        .gt1_txoutclk_out(gt1_txoutclk_out),
        .gt1_txoutclkfabric_out(gt1_txoutclkfabric_out),
        .gt1_txoutclkpcs_out(gt1_txoutclkpcs_out),
        .gt1_txresetdone_out(gt1_txresetdone_out),
        .gt1_txuserrdy_i(gt1_txuserrdy_i),
        .gt1_txusrclk2_in(gt1_txusrclk2_in),
        .gt1_txusrclk_in(gt1_txusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_GT_7 gt2_gtwizard_4_channel_i
       (.gt0_cpllpd_i(gt0_cpllpd_i),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt2_cpllfbclklost_out(gt2_cpllfbclklost_out),
        .gt2_cpllfbclklost_out_0(gt2_cpllfbclklost_out_0),
        .gt2_cplllock_out(gt2_cplllock_out),
        .gt2_cplllockdetclk_in(gt2_cplllockdetclk_in),
        .gt2_cpllrefclklost_i(gt2_cpllrefclklost_i),
        .gt2_cpllreset_i_2(gt2_cpllreset_i_2),
        .gt2_dmonitorout_out(gt2_dmonitorout_out),
        .gt2_drpaddr_in(gt2_drpaddr_in),
        .gt2_drpclk_in(gt2_drpclk_in),
        .gt2_drpdi_in(gt2_drpdi_in),
        .gt2_drpdo_out(gt2_drpdo_out),
        .gt2_drpen_in(gt2_drpen_in),
        .gt2_drprdy_out(gt2_drprdy_out),
        .gt2_drpwe_in(gt2_drpwe_in),
        .gt2_eyescandataerror_out(gt2_eyescandataerror_out),
        .gt2_eyescanreset_in(gt2_eyescanreset_in),
        .gt2_eyescantrigger_in(gt2_eyescantrigger_in),
        .gt2_gtnorthrefclk0_in(gt2_gtnorthrefclk0_in),
        .gt2_gtnorthrefclk1_in(gt2_gtnorthrefclk1_in),
        .gt2_gtrefclk0_in(gt2_gtrefclk0_in),
        .gt2_gtrefclk1_in(gt2_gtrefclk1_in),
        .gt2_gtsouthrefclk0_in(gt2_gtsouthrefclk0_in),
        .gt2_gtsouthrefclk1_in(gt2_gtsouthrefclk1_in),
        .gt2_gttxreset_i(gt2_gttxreset_i),
        .gt2_gtxrxn_in(gt2_gtxrxn_in),
        .gt2_gtxrxp_in(gt2_gtxrxp_in),
        .gt2_gtxtxn_out(gt2_gtxtxn_out),
        .gt2_gtxtxp_out(gt2_gtxtxp_out),
        .gt2_rxdata_out(gt2_rxdata_out),
        .gt2_rxdfelfhold_i(gt2_rxdfelfhold_i),
        .gt2_rxdfelpmreset_in(gt2_rxdfelpmreset_in),
        .gt2_rxmonitorout_out(gt2_rxmonitorout_out),
        .gt2_rxmonitorsel_in(gt2_rxmonitorsel_in),
        .gt2_rxoutclk_out(gt2_rxoutclk_out),
        .gt2_rxoutclkfabric_out(gt2_rxoutclkfabric_out),
        .gt2_rxpmareset_in(gt2_rxpmareset_in),
        .gt2_rxresetdone_out(gt2_rxresetdone_out),
        .gt2_rxuserrdy_i(gt2_rxuserrdy_i),
        .gt2_rxusrclk2_in(gt2_rxusrclk2_in),
        .gt2_rxusrclk_in(gt2_rxusrclk_in),
        .gt2_txdata_in(gt2_txdata_in),
        .gt2_txoutclk_out(gt2_txoutclk_out),
        .gt2_txoutclkfabric_out(gt2_txoutclkfabric_out),
        .gt2_txoutclkpcs_out(gt2_txoutclkpcs_out),
        .gt2_txresetdone_out(gt2_txresetdone_out),
        .gt2_txuserrdy_i(gt2_txuserrdy_i),
        .gt2_txusrclk2_in(gt2_txusrclk2_in),
        .gt2_txusrclk_in(gt2_txusrclk_in));
  gtwizard_4_channel_gtwizard_4_channel_GT_8 gt3_gtwizard_4_channel_i
       (.gt0_cpllpd_i(gt0_cpllpd_i),
        .gt0_qplloutclk_in(gt0_qplloutclk_in),
        .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in),
        .gt3_cpllfbclklost_out(gt3_cpllfbclklost_out),
        .gt3_cpllfbclklost_out_0(gt3_cpllfbclklost_out_0),
        .gt3_cplllock_out(gt3_cplllock_out),
        .gt3_cplllockdetclk_in(gt3_cplllockdetclk_in),
        .gt3_cpllrefclklost_i(gt3_cpllrefclklost_i),
        .gt3_cpllreset_i_3(gt3_cpllreset_i_3),
        .gt3_dmonitorout_out(gt3_dmonitorout_out),
        .gt3_drpaddr_in(gt3_drpaddr_in),
        .gt3_drpclk_in(gt3_drpclk_in),
        .gt3_drpdi_in(gt3_drpdi_in),
        .gt3_drpdo_out(gt3_drpdo_out),
        .gt3_drpen_in(gt3_drpen_in),
        .gt3_drprdy_out(gt3_drprdy_out),
        .gt3_drpwe_in(gt3_drpwe_in),
        .gt3_eyescandataerror_out(gt3_eyescandataerror_out),
        .gt3_eyescanreset_in(gt3_eyescanreset_in),
        .gt3_eyescantrigger_in(gt3_eyescantrigger_in),
        .gt3_gtnorthrefclk0_in(gt3_gtnorthrefclk0_in),
        .gt3_gtnorthrefclk1_in(gt3_gtnorthrefclk1_in),
        .gt3_gtrefclk0_in(gt3_gtrefclk0_in),
        .gt3_gtrefclk1_in(gt3_gtrefclk1_in),
        .gt3_gtsouthrefclk0_in(gt3_gtsouthrefclk0_in),
        .gt3_gtsouthrefclk1_in(gt3_gtsouthrefclk1_in),
        .gt3_gttxreset_i(gt3_gttxreset_i),
        .gt3_gtxrxn_in(gt3_gtxrxn_in),
        .gt3_gtxrxp_in(gt3_gtxrxp_in),
        .gt3_gtxtxn_out(gt3_gtxtxn_out),
        .gt3_gtxtxp_out(gt3_gtxtxp_out),
        .gt3_rxdata_out(gt3_rxdata_out),
        .gt3_rxdfelfhold_i(gt3_rxdfelfhold_i),
        .gt3_rxdfelpmreset_in(gt3_rxdfelpmreset_in),
        .gt3_rxmonitorout_out(gt3_rxmonitorout_out),
        .gt3_rxmonitorsel_in(gt3_rxmonitorsel_in),
        .gt3_rxoutclk_out(gt3_rxoutclk_out),
        .gt3_rxoutclkfabric_out(gt3_rxoutclkfabric_out),
        .gt3_rxpmareset_in(gt3_rxpmareset_in),
        .gt3_rxresetdone_out(gt3_rxresetdone_out),
        .gt3_rxuserrdy_i(gt3_rxuserrdy_i),
        .gt3_rxusrclk2_in(gt3_rxusrclk2_in),
        .gt3_rxusrclk_in(gt3_rxusrclk_in),
        .gt3_txdata_in(gt3_txdata_in),
        .gt3_txoutclk_out(gt3_txoutclk_out),
        .gt3_txoutclkfabric_out(gt3_txoutclkfabric_out),
        .gt3_txoutclkpcs_out(gt3_txoutclkpcs_out),
        .gt3_txresetdone_out(gt3_txresetdone_out),
        .gt3_txuserrdy_i(gt3_txuserrdy_i),
        .gt3_txusrclk2_in(gt3_txusrclk2_in),
        .gt3_txusrclk_in(gt3_txusrclk_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block
   (data_out,
    gt3_txresetdone_out,
    sysclk_in);
  output data_out;
  input gt3_txresetdone_out;
  input sysclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt3_txresetdone_out;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_txresetdone_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_10
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    mmcm_lock_reclocked_reg_0,
    sysclk_in);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [0:0]Q;
  input mmcm_lock_reclocked_reg_0;
  input sysclk_in;

  wire [0:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__2 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    mmcm_lock_reclocked_i_1__2
       (.I0(mmcm_lock_reclocked),
        .I1(Q),
        .I2(mmcm_lock_reclocked_reg_0),
        .I3(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_11
   (data_out,
    gt3_rxresetdone_out,
    sysclk_in);
  output data_out;
  input gt3_rxresetdone_out;
  input sysclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt3_rxresetdone_out;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_rxresetdone_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_12
   (\FSM_sequential_rx_state_reg[0] ,
    data_out,
    \FSM_sequential_rx_state_reg[3] ,
    Q,
    \FSM_sequential_rx_state_reg[0]_0 ,
    adapt_count_reset_reg,
    gt3_cplllock_out,
    sysclk_in);
  output \FSM_sequential_rx_state_reg[0] ;
  output data_out;
  output \FSM_sequential_rx_state_reg[3] ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input adapt_count_reset_reg;
  input gt3_cplllock_out;
  input sysclk_in;

  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire [3:0]Q;
  wire adapt_count_reset_reg;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt3_cplllock_out;
  wire sysclk_in;

  LUT6 #(
    .INIT(64'h5500550055005700)) 
    \FSM_sequential_rx_state[3]_i_5__2 
       (.I0(Q[0]),
        .I1(\FSM_sequential_rx_state_reg[0]_0 ),
        .I2(data_out),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_rx_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00000404)) 
    adapt_count_reset_i_1__2
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(data_out),
        .I4(Q[2]),
        .I5(adapt_count_reset_reg),
        .O(\FSM_sequential_rx_state_reg[3] ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_cplllock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_13
   (D,
    E,
    \FSM_sequential_rx_state_reg[3] ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    Q,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    reset_time_out_reg,
    rx_fsm_reset_done_int_reg,
    \FSM_sequential_rx_state_reg[0]_1 ,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    \FSM_sequential_rx_state_reg[0]_4 ,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[3]_1 ,
    \FSM_sequential_rx_state_reg[3]_2 ,
    data_out,
    reset_time_out_reg_0,
    dont_reset_on_data_error_in,
    \FSM_sequential_rx_state_reg[1] ,
    reset_time_out_reg_1,
    reset_time_out_reg_2,
    gt3_rx_fsm_reset_done_out,
    gt3_data_valid_in,
    sysclk_in);
  output [2:0]D;
  output [0:0]E;
  output \FSM_sequential_rx_state_reg[3] ;
  output \FSM_sequential_rx_state_reg[3]_0 ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input reset_time_out_reg;
  input rx_fsm_reset_done_int_reg;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input \FSM_sequential_rx_state_reg[0]_4 ;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[3]_1 ;
  input \FSM_sequential_rx_state_reg[3]_2 ;
  input data_out;
  input reset_time_out_reg_0;
  input dont_reset_on_data_error_in;
  input \FSM_sequential_rx_state_reg[1] ;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;
  input gt3_rx_fsm_reset_done_out;
  input gt3_data_valid_in;
  input sysclk_in;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[1]_i_2__2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3__2_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7__2_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[0]_4 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_1 ;
  wire \FSM_sequential_rx_state_reg[3]_2 ;
  wire [3:0]Q;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire dont_reset_on_data_error_in;
  wire gt3_data_valid_in;
  wire gt3_rx_fsm_reset_done_out;
  wire reset_time_out_i_3__6_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3__2_n_0;
  wire rx_fsm_reset_done_int_i_4__1_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire sysclk_in;
  wire time_out_wait_bypass_s3;

  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_sequential_rx_state[0]_i_1__1 
       (.I0(\FSM_sequential_rx_state[1]_i_2__2_n_0 ),
        .I1(Q[3]),
        .I2(\FSM_sequential_rx_state_reg[0] ),
        .I3(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \FSM_sequential_rx_state[1]_i_1__1 
       (.I0(\FSM_sequential_rx_state[1]_i_2__2_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFB000000000000)) 
    \FSM_sequential_rx_state[1]_i_2__2 
       (.I0(reset_time_out_reg),
        .I1(\FSM_sequential_rx_state_reg[1] ),
        .I2(dont_reset_on_data_error_in),
        .I3(data_valid_sync),
        .I4(Q[0]),
        .I5(\FSM_sequential_rx_state_reg[3]_1 ),
        .O(\FSM_sequential_rx_state[1]_i_2__2_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAABAAAB)) 
    \FSM_sequential_rx_state[3]_i_1__2 
       (.I0(\FSM_sequential_rx_state[3]_i_3__2_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[0]_1 ),
        .I2(\FSM_sequential_rx_state_reg[0]_2 ),
        .I3(Q[0]),
        .I4(\FSM_sequential_rx_state_reg[0]_3 ),
        .I5(\FSM_sequential_rx_state_reg[0]_4 ),
        .O(E));
  LUT6 #(
    .INIT(64'hABFFFFFFABFF0000)) 
    \FSM_sequential_rx_state[3]_i_2__2 
       (.I0(\FSM_sequential_rx_state[3]_i_7__2_n_0 ),
        .I1(time_out_wait_bypass_s3),
        .I2(Q[0]),
        .I3(\FSM_sequential_rx_state_reg[3]_1 ),
        .I4(Q[3]),
        .I5(\FSM_sequential_rx_state_reg[3]_2 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0CC4)) 
    \FSM_sequential_rx_state[3]_i_3__2 
       (.I0(\FSM_sequential_rx_state[3]_i_7__2_n_0 ),
        .I1(Q[3]),
        .I2(data_valid_sync),
        .I3(Q[1]),
        .O(\FSM_sequential_rx_state[3]_i_3__2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \FSM_sequential_rx_state[3]_i_7__2 
       (.I0(Q[0]),
        .I1(data_valid_sync),
        .I2(dont_reset_on_data_error_in),
        .I3(\FSM_sequential_rx_state_reg[1] ),
        .I4(reset_time_out_reg),
        .O(\FSM_sequential_rx_state[3]_i_7__2_n_0 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_data_valid_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FDFFFF00FD0000)) 
    reset_time_out_i_1__6
       (.I0(Q[3]),
        .I1(data_valid_sync),
        .I2(reset_time_out_reg_1),
        .I3(reset_time_out_i_3__6_n_0),
        .I4(reset_time_out_reg_2),
        .I5(reset_time_out_reg),
        .O(\FSM_sequential_rx_state_reg[3] ));
  LUT6 #(
    .INIT(64'h888888880000FF0C)) 
    reset_time_out_i_3__6
       (.I0(data_valid_sync),
        .I1(Q[1]),
        .I2(data_out),
        .I3(Q[2]),
        .I4(reset_time_out_reg_0),
        .I5(Q[3]),
        .O(reset_time_out_i_3__6_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    rx_fsm_reset_done_int_i_1__2
       (.I0(rx_fsm_reset_done_int),
        .I1(rx_fsm_reset_done_int_i_3__2_n_0),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(gt3_rx_fsm_reset_done_out),
        .O(\FSM_sequential_rx_state_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    rx_fsm_reset_done_int_i_2__2
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(rx_fsm_reset_done_int_reg),
        .I3(reset_time_out_reg),
        .I4(data_valid_sync),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h0F400FF00F4000F0)) 
    rx_fsm_reset_done_int_i_3__2
       (.I0(reset_time_out_reg),
        .I1(rx_fsm_reset_done_int_reg),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(data_valid_sync),
        .I5(rx_fsm_reset_done_int_i_4__1_n_0),
        .O(rx_fsm_reset_done_int_i_3__2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    rx_fsm_reset_done_int_i_4__1
       (.I0(reset_time_out_reg),
        .I1(\FSM_sequential_rx_state_reg[1] ),
        .I2(dont_reset_on_data_error_in),
        .I3(data_valid_sync),
        .O(rx_fsm_reset_done_int_i_4__1_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_14
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    mmcm_lock_reclocked_reg_0,
    sysclk_in);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input mmcm_lock_reclocked_reg_0;
  input sysclk_in;

  wire [1:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__6 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1__6
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(mmcm_lock_reclocked_reg_0),
        .I3(Q[0]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_15
   (data_out,
    data_in,
    gt3_rxusrclk_in);
  output data_out;
  input data_in;
  input gt3_rxusrclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt3_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_16
   (data_out,
    gt3_rx_fsm_reset_done_out,
    gt3_rxusrclk_in);
  output data_out;
  input gt3_rx_fsm_reset_done_out;
  input gt3_rxusrclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt3_rx_fsm_reset_done_out;
  wire gt3_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(gt3_rx_fsm_reset_done_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt3_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_17
   (data_out,
    data_in,
    sysclk_in);
  output data_out;
  input data_in;
  input sysclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_18
   (data_out,
    gt2_txresetdone_out,
    sysclk_in);
  output data_out;
  input gt2_txresetdone_out;
  input sysclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt2_txresetdone_out;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_txresetdone_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_19
   (E,
    \FSM_sequential_tx_state_reg[3] ,
    reset_time_out_reg,
    Q,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    txresetdone_s3,
    reset_time_out_reg_0,
    \FSM_sequential_tx_state_reg[3]_i_3__1_0 ,
    \FSM_sequential_tx_state_reg[3]_i_3__1_1 ,
    mmcm_lock_reclocked,
    \FSM_sequential_tx_state_reg[3]_i_3__1_2 ,
    \FSM_sequential_tx_state_reg[3]_i_3__1_3 ,
    gt2_cplllock_out,
    sysclk_in);
  output [0:0]E;
  output \FSM_sequential_tx_state_reg[3] ;
  input reset_time_out_reg;
  input [3:0]Q;
  input \FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input txresetdone_s3;
  input reset_time_out_reg_0;
  input \FSM_sequential_tx_state_reg[3]_i_3__1_0 ;
  input \FSM_sequential_tx_state_reg[3]_i_3__1_1 ;
  input mmcm_lock_reclocked;
  input \FSM_sequential_tx_state_reg[3]_i_3__1_2 ;
  input \FSM_sequential_tx_state_reg[3]_i_3__1_3 ;
  input gt2_cplllock_out;
  input sysclk_in;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_5__1_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6__1_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[3] ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__1_0 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__1_1 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__1_2 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__1_3 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__1_n_0 ;
  wire [3:0]Q;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt2_cplllock_out;
  wire mmcm_lock_reclocked;
  wire reset_time_out;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire sysclk_in;
  wire txresetdone_s3;

  LUT6 #(
    .INIT(64'h3300744433007477)) 
    \FSM_sequential_tx_state[3]_i_1__1 
       (.I0(\FSM_sequential_tx_state_reg[3]_i_3__1_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_tx_state_reg[0] ),
        .I3(\FSM_sequential_tx_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(\FSM_sequential_tx_state_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'h45FF450045FF45FF)) 
    \FSM_sequential_tx_state[3]_i_5__1 
       (.I0(mmcm_lock_reclocked),
        .I1(reset_time_out_reg_0),
        .I2(\FSM_sequential_tx_state_reg[3]_i_3__1_2 ),
        .I3(Q[2]),
        .I4(cplllock_sync),
        .I5(\FSM_sequential_tx_state_reg[3]_i_3__1_3 ),
        .O(\FSM_sequential_tx_state[3]_i_5__1_n_0 ));
  LUT6 #(
    .INIT(64'h45004500450045FF)) 
    \FSM_sequential_tx_state[3]_i_6__1 
       (.I0(txresetdone_s3),
        .I1(reset_time_out_reg_0),
        .I2(\FSM_sequential_tx_state_reg[3]_i_3__1_0 ),
        .I3(Q[2]),
        .I4(cplllock_sync),
        .I5(\FSM_sequential_tx_state_reg[3]_i_3__1_1 ),
        .O(\FSM_sequential_tx_state[3]_i_6__1_n_0 ));
  MUXF7 \FSM_sequential_tx_state_reg[3]_i_3__1 
       (.I0(\FSM_sequential_tx_state[3]_i_5__1_n_0 ),
        .I1(\FSM_sequential_tx_state[3]_i_6__1_n_0 ),
        .O(\FSM_sequential_tx_state_reg[3]_i_3__1_n_0 ),
        .S(Q[1]));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_cplllock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFEFEFAA202020AA)) 
    reset_time_out_i_1__1
       (.I0(reset_time_out),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(reset_time_out_reg_0),
        .O(\FSM_sequential_tx_state_reg[3] ));
  LUT5 #(
    .INIT(32'h08BF08BB)) 
    reset_time_out_i_2__4
       (.I0(reset_time_out_reg),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cplllock_sync),
        .O(reset_time_out));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_20
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    mmcm_lock_reclocked_reg_0,
    sysclk_in);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input mmcm_lock_reclocked_reg_0;
  input sysclk_in;

  wire [1:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__1 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1__1
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(mmcm_lock_reclocked_reg_0),
        .I3(Q[0]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_21
   (data_out,
    gt2_rxresetdone_out,
    sysclk_in);
  output data_out;
  input gt2_rxresetdone_out;
  input sysclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt2_rxresetdone_out;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_rxresetdone_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_22
   (\FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[3] ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    Q,
    \FSM_sequential_rx_state_reg[0]_0 ,
    reset_time_out_reg,
    reset_time_out_reg_0,
    reset_time_out_reg_1,
    reset_time_out_reg_2,
    adapt_count_reset_reg,
    gt2_cplllock_out,
    sysclk_in);
  output \FSM_sequential_rx_state_reg[0] ;
  output \FSM_sequential_rx_state_reg[3] ;
  output \FSM_sequential_rx_state_reg[3]_0 ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input reset_time_out_reg;
  input reset_time_out_reg_0;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;
  input adapt_count_reset_reg;
  input gt2_cplllock_out;
  input sysclk_in;

  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire [3:0]Q;
  wire adapt_count_reset_reg;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt2_cplllock_out;
  wire reset_time_out_i_2__6_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire sysclk_in;

  LUT6 #(
    .INIT(64'h5500550055005700)) 
    \FSM_sequential_rx_state[3]_i_5__1 
       (.I0(Q[0]),
        .I1(\FSM_sequential_rx_state_reg[0]_0 ),
        .I2(cplllock_sync),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_rx_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00000404)) 
    adapt_count_reset_i_1__1
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cplllock_sync),
        .I4(Q[2]),
        .I5(adapt_count_reset_reg),
        .O(\FSM_sequential_rx_state_reg[3]_0 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_cplllock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFF0DFFFFFF0D0000)) 
    reset_time_out_i_1__5
       (.I0(reset_time_out_i_2__6_n_0),
        .I1(reset_time_out_reg),
        .I2(Q[3]),
        .I3(reset_time_out_reg_0),
        .I4(reset_time_out_reg_1),
        .I5(reset_time_out_reg_2),
        .O(\FSM_sequential_rx_state_reg[3] ));
  LUT3 #(
    .INIT(8'hBA)) 
    reset_time_out_i_2__6
       (.I0(Q[2]),
        .I1(cplllock_sync),
        .I2(Q[1]),
        .O(reset_time_out_i_2__6_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_23
   (D,
    \FSM_sequential_rx_state_reg[0] ,
    E,
    \FSM_sequential_rx_state_reg[3] ,
    Q,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    rx_fsm_reset_done_int_reg,
    rx_fsm_reset_done_int_reg_0,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    \FSM_sequential_rx_state_reg[0]_4 ,
    \FSM_sequential_rx_state_reg[0]_5 ,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[3]_0 ,
    \FSM_sequential_rx_state_reg[3]_1 ,
    dont_reset_on_data_error_in,
    \FSM_sequential_rx_state_reg[1] ,
    gt2_rx_fsm_reset_done_out,
    gt2_data_valid_in,
    sysclk_in);
  output [2:0]D;
  output \FSM_sequential_rx_state_reg[0] ;
  output [0:0]E;
  output \FSM_sequential_rx_state_reg[3] ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input rx_fsm_reset_done_int_reg;
  input rx_fsm_reset_done_int_reg_0;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input \FSM_sequential_rx_state_reg[0]_4 ;
  input \FSM_sequential_rx_state_reg[0]_5 ;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input \FSM_sequential_rx_state_reg[3]_1 ;
  input dont_reset_on_data_error_in;
  input \FSM_sequential_rx_state_reg[1] ;
  input gt2_rx_fsm_reset_done_out;
  input gt2_data_valid_in;
  input sysclk_in;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[1]_i_2__1_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3__1_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7__1_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[0]_4 ;
  wire \FSM_sequential_rx_state_reg[0]_5 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_1 ;
  wire [3:0]Q;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire dont_reset_on_data_error_in;
  wire gt2_data_valid_in;
  wire gt2_rx_fsm_reset_done_out;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3__1_n_0;
  wire rx_fsm_reset_done_int_i_4__0_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire sysclk_in;
  wire time_out_wait_bypass_s3;

  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_sequential_rx_state[0]_i_1__0 
       (.I0(\FSM_sequential_rx_state[1]_i_2__1_n_0 ),
        .I1(Q[3]),
        .I2(\FSM_sequential_rx_state_reg[0]_0 ),
        .I3(\FSM_sequential_rx_state_reg[0]_1 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \FSM_sequential_rx_state[1]_i_1__0 
       (.I0(\FSM_sequential_rx_state[1]_i_2__1_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_rx_state_reg[0]_1 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFB000000000000)) 
    \FSM_sequential_rx_state[1]_i_2__1 
       (.I0(rx_fsm_reset_done_int_reg),
        .I1(\FSM_sequential_rx_state_reg[1] ),
        .I2(dont_reset_on_data_error_in),
        .I3(data_valid_sync),
        .I4(Q[0]),
        .I5(\FSM_sequential_rx_state_reg[3]_0 ),
        .O(\FSM_sequential_rx_state[1]_i_2__1_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAABAAAB)) 
    \FSM_sequential_rx_state[3]_i_1__1 
       (.I0(\FSM_sequential_rx_state[3]_i_3__1_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[0]_2 ),
        .I2(\FSM_sequential_rx_state_reg[0]_3 ),
        .I3(Q[0]),
        .I4(\FSM_sequential_rx_state_reg[0]_4 ),
        .I5(\FSM_sequential_rx_state_reg[0]_5 ),
        .O(E));
  LUT6 #(
    .INIT(64'hABFFFFFFABFF0000)) 
    \FSM_sequential_rx_state[3]_i_2__1 
       (.I0(\FSM_sequential_rx_state[3]_i_7__1_n_0 ),
        .I1(time_out_wait_bypass_s3),
        .I2(Q[0]),
        .I3(\FSM_sequential_rx_state_reg[3]_0 ),
        .I4(Q[3]),
        .I5(\FSM_sequential_rx_state_reg[3]_1 ),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h0CC4)) 
    \FSM_sequential_rx_state[3]_i_3__1 
       (.I0(\FSM_sequential_rx_state[3]_i_7__1_n_0 ),
        .I1(Q[3]),
        .I2(data_valid_sync),
        .I3(Q[1]),
        .O(\FSM_sequential_rx_state[3]_i_3__1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \FSM_sequential_rx_state[3]_i_7__1 
       (.I0(Q[0]),
        .I1(data_valid_sync),
        .I2(dont_reset_on_data_error_in),
        .I3(\FSM_sequential_rx_state_reg[1] ),
        .I4(rx_fsm_reset_done_int_reg),
        .O(\FSM_sequential_rx_state[3]_i_7__1_n_0 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt2_data_valid_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT4 #(
    .INIT(16'h30D0)) 
    reset_time_out_i_4
       (.I0(Q[0]),
        .I1(data_valid_sync),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\FSM_sequential_rx_state_reg[0] ));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    rx_fsm_reset_done_int_i_1__1
       (.I0(rx_fsm_reset_done_int),
        .I1(rx_fsm_reset_done_int_i_3__1_n_0),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(gt2_rx_fsm_reset_done_out),
        .O(\FSM_sequential_rx_state_reg[3] ));
  LUT5 #(
    .INIT(32'h00100000)) 
    rx_fsm_reset_done_int_i_2__1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(rx_fsm_reset_done_int_reg_0),
        .I3(rx_fsm_reset_done_int_reg),
        .I4(data_valid_sync),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h00004F4FFFF00000)) 
    rx_fsm_reset_done_int_i_3__1
       (.I0(rx_fsm_reset_done_int_reg),
        .I1(rx_fsm_reset_done_int_reg_0),
        .I2(data_valid_sync),
        .I3(rx_fsm_reset_done_int_i_4__0_n_0),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(rx_fsm_reset_done_int_i_3__1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    rx_fsm_reset_done_int_i_4__0
       (.I0(rx_fsm_reset_done_int_reg),
        .I1(\FSM_sequential_rx_state_reg[1] ),
        .I2(dont_reset_on_data_error_in),
        .I3(data_valid_sync),
        .O(rx_fsm_reset_done_int_i_4__0_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_24
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    mmcm_lock_reclocked_reg_0,
    sysclk_in);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input mmcm_lock_reclocked_reg_0;
  input sysclk_in;

  wire [1:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__5 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1__5
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(mmcm_lock_reclocked_reg_0),
        .I3(Q[0]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_25
   (data_out,
    data_in,
    gt2_rxusrclk_in);
  output data_out;
  input data_in;
  input gt2_rxusrclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt2_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_26
   (data_out,
    gt2_rx_fsm_reset_done_out,
    gt2_rxusrclk_in);
  output data_out;
  input gt2_rx_fsm_reset_done_out;
  input gt2_rxusrclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt2_rx_fsm_reset_done_out;
  wire gt2_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(gt2_rx_fsm_reset_done_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt2_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_27
   (data_out,
    data_in,
    sysclk_in);
  output data_out;
  input data_in;
  input sysclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_28
   (data_out,
    gt1_txresetdone_out,
    sysclk_in);
  output data_out;
  input gt1_txresetdone_out;
  input sysclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt1_txresetdone_out;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_txresetdone_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_29
   (E,
    \FSM_sequential_tx_state_reg[3] ,
    reset_time_out_reg,
    Q,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    txresetdone_s3,
    reset_time_out_reg_0,
    \FSM_sequential_tx_state_reg[3]_i_3__0_0 ,
    \FSM_sequential_tx_state_reg[3]_i_3__0_1 ,
    mmcm_lock_reclocked,
    \FSM_sequential_tx_state_reg[3]_i_3__0_2 ,
    \FSM_sequential_tx_state_reg[3]_i_3__0_3 ,
    gt1_cplllock_out,
    sysclk_in);
  output [0:0]E;
  output \FSM_sequential_tx_state_reg[3] ;
  input reset_time_out_reg;
  input [3:0]Q;
  input \FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input txresetdone_s3;
  input reset_time_out_reg_0;
  input \FSM_sequential_tx_state_reg[3]_i_3__0_0 ;
  input \FSM_sequential_tx_state_reg[3]_i_3__0_1 ;
  input mmcm_lock_reclocked;
  input \FSM_sequential_tx_state_reg[3]_i_3__0_2 ;
  input \FSM_sequential_tx_state_reg[3]_i_3__0_3 ;
  input gt1_cplllock_out;
  input sysclk_in;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_5__0_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6__0_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[3] ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__0_0 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__0_1 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__0_2 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__0_3 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__0_n_0 ;
  wire [3:0]Q;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt1_cplllock_out;
  wire mmcm_lock_reclocked;
  wire reset_time_out;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire sysclk_in;
  wire txresetdone_s3;

  LUT6 #(
    .INIT(64'h3300744433007477)) 
    \FSM_sequential_tx_state[3]_i_1__0 
       (.I0(\FSM_sequential_tx_state_reg[3]_i_3__0_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_tx_state_reg[0] ),
        .I3(\FSM_sequential_tx_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(\FSM_sequential_tx_state_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'h45FF450045FF45FF)) 
    \FSM_sequential_tx_state[3]_i_5__0 
       (.I0(mmcm_lock_reclocked),
        .I1(reset_time_out_reg_0),
        .I2(\FSM_sequential_tx_state_reg[3]_i_3__0_2 ),
        .I3(Q[2]),
        .I4(cplllock_sync),
        .I5(\FSM_sequential_tx_state_reg[3]_i_3__0_3 ),
        .O(\FSM_sequential_tx_state[3]_i_5__0_n_0 ));
  LUT6 #(
    .INIT(64'h45004500450045FF)) 
    \FSM_sequential_tx_state[3]_i_6__0 
       (.I0(txresetdone_s3),
        .I1(reset_time_out_reg_0),
        .I2(\FSM_sequential_tx_state_reg[3]_i_3__0_0 ),
        .I3(Q[2]),
        .I4(cplllock_sync),
        .I5(\FSM_sequential_tx_state_reg[3]_i_3__0_1 ),
        .O(\FSM_sequential_tx_state[3]_i_6__0_n_0 ));
  MUXF7 \FSM_sequential_tx_state_reg[3]_i_3__0 
       (.I0(\FSM_sequential_tx_state[3]_i_5__0_n_0 ),
        .I1(\FSM_sequential_tx_state[3]_i_6__0_n_0 ),
        .O(\FSM_sequential_tx_state_reg[3]_i_3__0_n_0 ),
        .S(Q[1]));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_cplllock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFEFEFAA202020AA)) 
    reset_time_out_i_1__0
       (.I0(reset_time_out),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(reset_time_out_reg_0),
        .O(\FSM_sequential_tx_state_reg[3] ));
  LUT5 #(
    .INIT(32'h08BF08BB)) 
    reset_time_out_i_2__3
       (.I0(reset_time_out_reg),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cplllock_sync),
        .O(reset_time_out));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_30
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    mmcm_lock_reclocked_reg_0,
    sysclk_in);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [0:0]Q;
  input mmcm_lock_reclocked_reg_0;
  input sysclk_in;

  wire [0:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__0 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hEA00)) 
    mmcm_lock_reclocked_i_1__0
       (.I0(mmcm_lock_reclocked),
        .I1(Q),
        .I2(mmcm_lock_reclocked_reg_0),
        .I3(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_31
   (data_out,
    gt1_rxresetdone_out,
    sysclk_in);
  output data_out;
  input gt1_rxresetdone_out;
  input sysclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt1_rxresetdone_out;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_rxresetdone_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_32
   (\FSM_sequential_rx_state_reg[0] ,
    data_out,
    \FSM_sequential_rx_state_reg[3] ,
    Q,
    \FSM_sequential_rx_state_reg[0]_0 ,
    adapt_count_reset_reg,
    gt1_cplllock_out,
    sysclk_in);
  output \FSM_sequential_rx_state_reg[0] ;
  output data_out;
  output \FSM_sequential_rx_state_reg[3] ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input adapt_count_reset_reg;
  input gt1_cplllock_out;
  input sysclk_in;

  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire [3:0]Q;
  wire adapt_count_reset_reg;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt1_cplllock_out;
  wire sysclk_in;

  LUT6 #(
    .INIT(64'h5500550055005700)) 
    \FSM_sequential_rx_state[3]_i_5__0 
       (.I0(Q[0]),
        .I1(\FSM_sequential_rx_state_reg[0]_0 ),
        .I2(data_out),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_rx_state_reg[0] ));
  LUT6 #(
    .INIT(64'hFFFFBFFF00000404)) 
    adapt_count_reset_i_1__0
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(data_out),
        .I4(Q[2]),
        .I5(adapt_count_reset_reg),
        .O(\FSM_sequential_rx_state_reg[3] ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_cplllock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_33
   (D,
    E,
    \FSM_sequential_rx_state_reg[3] ,
    \FSM_sequential_rx_state_reg[3]_0 ,
    Q,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    reset_time_out_reg,
    rx_fsm_reset_done_int_reg,
    \FSM_sequential_rx_state_reg[3]_1 ,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[3]_2 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    \FSM_sequential_rx_state_reg[0]_2 ,
    \FSM_sequential_rx_state_reg[0]_3 ,
    \FSM_sequential_rx_state_reg[0]_4 ,
    data_out,
    reset_time_out_reg_0,
    dont_reset_on_data_error_in,
    \FSM_sequential_rx_state_reg[1] ,
    reset_time_out_reg_1,
    reset_time_out_reg_2,
    gt1_rx_fsm_reset_done_out,
    gt1_data_valid_in,
    sysclk_in);
  output [2:0]D;
  output [0:0]E;
  output \FSM_sequential_rx_state_reg[3] ;
  output \FSM_sequential_rx_state_reg[3]_0 ;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input reset_time_out_reg;
  input rx_fsm_reset_done_int_reg;
  input \FSM_sequential_rx_state_reg[3]_1 ;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[3]_2 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input \FSM_sequential_rx_state_reg[0]_4 ;
  input data_out;
  input reset_time_out_reg_0;
  input dont_reset_on_data_error_in;
  input \FSM_sequential_rx_state_reg[1] ;
  input reset_time_out_reg_1;
  input reset_time_out_reg_2;
  input gt1_rx_fsm_reset_done_out;
  input gt1_data_valid_in;
  input sysclk_in;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[1]_i_2__0_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_3__0_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_7__0_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[0]_4 ;
  wire \FSM_sequential_rx_state_reg[1] ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_1 ;
  wire \FSM_sequential_rx_state_reg[3]_2 ;
  wire [3:0]Q;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire data_valid_sync;
  wire dont_reset_on_data_error_in;
  wire gt1_data_valid_in;
  wire gt1_rx_fsm_reset_done_out;
  wire reset_time_out_i_3__4_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3__0_n_0;
  wire rx_fsm_reset_done_int_i_4_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire sysclk_in;
  wire time_out_wait_bypass_s3;

  LUT4 #(
    .INIT(16'h4F44)) 
    \FSM_sequential_rx_state[0]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2__0_n_0 ),
        .I1(Q[3]),
        .I2(\FSM_sequential_rx_state_reg[0] ),
        .I3(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h8B88BBBB)) 
    \FSM_sequential_rx_state[1]_i_1 
       (.I0(\FSM_sequential_rx_state[1]_i_2__0_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_rx_state_reg[0]_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'hFFFB000000000000)) 
    \FSM_sequential_rx_state[1]_i_2__0 
       (.I0(reset_time_out_reg),
        .I1(\FSM_sequential_rx_state_reg[1] ),
        .I2(dont_reset_on_data_error_in),
        .I3(data_valid_sync),
        .I4(Q[0]),
        .I5(\FSM_sequential_rx_state_reg[3]_1 ),
        .O(\FSM_sequential_rx_state[1]_i_2__0_n_0 ));
  LUT6 #(
    .INIT(64'hAAABBBBBAAABAAAB)) 
    \FSM_sequential_rx_state[3]_i_1__0 
       (.I0(\FSM_sequential_rx_state[3]_i_3__0_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[0]_1 ),
        .I2(\FSM_sequential_rx_state_reg[0]_2 ),
        .I3(Q[0]),
        .I4(\FSM_sequential_rx_state_reg[0]_3 ),
        .I5(\FSM_sequential_rx_state_reg[0]_4 ),
        .O(E));
  LUT6 #(
    .INIT(64'hBBBFFFFFBBBF0000)) 
    \FSM_sequential_rx_state[3]_i_2__0 
       (.I0(\FSM_sequential_rx_state[3]_i_7__0_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[3]_1 ),
        .I2(time_out_wait_bypass_s3),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\FSM_sequential_rx_state_reg[3]_2 ),
        .O(D[2]));
  LUT4 #(
    .INIT(16'h0CC4)) 
    \FSM_sequential_rx_state[3]_i_3__0 
       (.I0(\FSM_sequential_rx_state[3]_i_7__0_n_0 ),
        .I1(Q[3]),
        .I2(data_valid_sync),
        .I3(Q[1]),
        .O(\FSM_sequential_rx_state[3]_i_3__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \FSM_sequential_rx_state[3]_i_7__0 
       (.I0(Q[0]),
        .I1(data_valid_sync),
        .I2(dont_reset_on_data_error_in),
        .I3(\FSM_sequential_rx_state_reg[1] ),
        .I4(reset_time_out_reg),
        .O(\FSM_sequential_rx_state[3]_i_7__0_n_0 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt1_data_valid_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_valid_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h00FDFFFF00FD0000)) 
    reset_time_out_i_1__4
       (.I0(Q[3]),
        .I1(data_valid_sync),
        .I2(reset_time_out_reg_1),
        .I3(reset_time_out_i_3__4_n_0),
        .I4(reset_time_out_reg_2),
        .I5(reset_time_out_reg),
        .O(\FSM_sequential_rx_state_reg[3] ));
  LUT6 #(
    .INIT(64'h888888880000FF0C)) 
    reset_time_out_i_3__4
       (.I0(data_valid_sync),
        .I1(Q[1]),
        .I2(data_out),
        .I3(Q[2]),
        .I4(reset_time_out_reg_0),
        .I5(Q[3]),
        .O(reset_time_out_i_3__4_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    rx_fsm_reset_done_int_i_1__0
       (.I0(rx_fsm_reset_done_int),
        .I1(rx_fsm_reset_done_int_i_3__0_n_0),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(gt1_rx_fsm_reset_done_out),
        .O(\FSM_sequential_rx_state_reg[3]_0 ));
  LUT5 #(
    .INIT(32'h00100000)) 
    rx_fsm_reset_done_int_i_2__0
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(rx_fsm_reset_done_int_reg),
        .I3(reset_time_out_reg),
        .I4(data_valid_sync),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h0F400FF00F4000F0)) 
    rx_fsm_reset_done_int_i_3__0
       (.I0(reset_time_out_reg),
        .I1(rx_fsm_reset_done_int_reg),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(data_valid_sync),
        .I5(rx_fsm_reset_done_int_i_4_n_0),
        .O(rx_fsm_reset_done_int_i_3__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    rx_fsm_reset_done_int_i_4
       (.I0(reset_time_out_reg),
        .I1(\FSM_sequential_rx_state_reg[1] ),
        .I2(dont_reset_on_data_error_in),
        .I3(data_valid_sync),
        .O(rx_fsm_reset_done_int_i_4_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_34
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    mmcm_lock_reclocked_reg_0,
    sysclk_in);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input mmcm_lock_reclocked_reg_0;
  input sysclk_in;

  wire [1:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__4 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1__4
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(mmcm_lock_reclocked_reg_0),
        .I3(Q[0]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_35
   (data_out,
    data_in,
    gt1_rxusrclk_in);
  output data_out;
  input data_in;
  input gt1_rxusrclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt1_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_36
   (data_out,
    gt1_rx_fsm_reset_done_out,
    gt1_rxusrclk_in);
  output data_out;
  input gt1_rx_fsm_reset_done_out;
  input gt1_rxusrclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt1_rx_fsm_reset_done_out;
  wire gt1_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(gt1_rx_fsm_reset_done_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt1_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_37
   (data_out,
    data_in,
    sysclk_in);
  output data_out;
  input data_in;
  input sysclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_38
   (data_out,
    gt0_txresetdone_out,
    sysclk_in);
  output data_out;
  input gt0_txresetdone_out;
  input sysclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_txresetdone_out;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_txresetdone_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_39
   (E,
    \FSM_sequential_tx_state_reg[3] ,
    reset_time_out_reg,
    Q,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    sel,
    txresetdone_s3,
    reset_time_out,
    \FSM_sequential_tx_state_reg[3]_i_3_0 ,
    \FSM_sequential_tx_state_reg[3]_i_3_1 ,
    mmcm_lock_reclocked,
    \FSM_sequential_tx_state_reg[3]_i_3_2 ,
    \FSM_sequential_tx_state_reg[3]_i_3_3 ,
    gt0_cplllock_out,
    sysclk_in);
  output [0:0]E;
  output \FSM_sequential_tx_state_reg[3] ;
  input reset_time_out_reg;
  input [3:0]Q;
  input \FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input sel;
  input txresetdone_s3;
  input reset_time_out;
  input \FSM_sequential_tx_state_reg[3]_i_3_0 ;
  input \FSM_sequential_tx_state_reg[3]_i_3_1 ;
  input mmcm_lock_reclocked;
  input \FSM_sequential_tx_state_reg[3]_i_3_2 ;
  input \FSM_sequential_tx_state_reg[3]_i_3_3 ;
  input gt0_cplllock_out;
  input sysclk_in;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_5_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[3] ;
  wire \FSM_sequential_tx_state_reg[3]_i_3_0 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3_1 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3_2 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3_3 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3_n_0 ;
  wire [3:0]Q;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_cplllock_out;
  wire mmcm_lock_reclocked;
  wire reset_time_out;
  wire reset_time_out_0;
  wire reset_time_out_reg;
  wire sel;
  wire sysclk_in;
  wire txresetdone_s3;

  LUT6 #(
    .INIT(64'h3300744433007477)) 
    \FSM_sequential_tx_state[3]_i_1 
       (.I0(\FSM_sequential_tx_state_reg[3]_i_3_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_tx_state_reg[0] ),
        .I3(\FSM_sequential_tx_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(sel),
        .O(E));
  LUT6 #(
    .INIT(64'h45FF450045FF45FF)) 
    \FSM_sequential_tx_state[3]_i_5 
       (.I0(mmcm_lock_reclocked),
        .I1(reset_time_out),
        .I2(\FSM_sequential_tx_state_reg[3]_i_3_2 ),
        .I3(Q[2]),
        .I4(cplllock_sync),
        .I5(\FSM_sequential_tx_state_reg[3]_i_3_3 ),
        .O(\FSM_sequential_tx_state[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h45004500450045FF)) 
    \FSM_sequential_tx_state[3]_i_6 
       (.I0(txresetdone_s3),
        .I1(reset_time_out),
        .I2(\FSM_sequential_tx_state_reg[3]_i_3_0 ),
        .I3(Q[2]),
        .I4(cplllock_sync),
        .I5(\FSM_sequential_tx_state_reg[3]_i_3_1 ),
        .O(\FSM_sequential_tx_state[3]_i_6_n_0 ));
  MUXF7 \FSM_sequential_tx_state_reg[3]_i_3 
       (.I0(\FSM_sequential_tx_state[3]_i_5_n_0 ),
        .I1(\FSM_sequential_tx_state[3]_i_6_n_0 ),
        .O(\FSM_sequential_tx_state_reg[3]_i_3_n_0 ),
        .S(Q[1]));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_cplllock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFEFEFAA202020AA)) 
    reset_time_out_i_1
       (.I0(reset_time_out_0),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(reset_time_out),
        .O(\FSM_sequential_tx_state_reg[3] ));
  LUT5 #(
    .INIT(32'h08BF08BB)) 
    reset_time_out_i_2__2
       (.I0(reset_time_out_reg),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cplllock_sync),
        .O(reset_time_out_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_40
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    mmcm_lock_reclocked_reg_0,
    sysclk_in);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input mmcm_lock_reclocked_reg_0;
  input sysclk_in;

  wire [1:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(mmcm_lock_reclocked_reg_0),
        .I3(Q[0]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_41
   (data_out,
    gt0_rxresetdone_out,
    sysclk_in);
  output data_out;
  input gt0_rxresetdone_out;
  input sysclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_rxresetdone_out;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_rxresetdone_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_42
   (time_out_2ms_reg,
    reset_time_out_reg,
    \FSM_sequential_rx_state_reg[3] ,
    Q,
    reset_time_out_reg_0,
    data_out,
    \FSM_sequential_rx_state_reg[0] ,
    reset_time_out_reg_1,
    rxresetdone_s3,
    \FSM_sequential_rx_state_reg[0]_0 ,
    reset_time_out_reg_2,
    recclk_mon_count_reset,
    gt0_cplllock_out,
    sysclk_in);
  output time_out_2ms_reg;
  output reset_time_out_reg;
  output \FSM_sequential_rx_state_reg[3] ;
  input [3:0]Q;
  input reset_time_out_reg_0;
  input data_out;
  input \FSM_sequential_rx_state_reg[0] ;
  input reset_time_out_reg_1;
  input rxresetdone_s3;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input reset_time_out_reg_2;
  input recclk_mon_count_reset;
  input gt0_cplllock_out;
  input sysclk_in;

  wire \FSM_sequential_rx_state[3]_i_11_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire [3:0]Q;
  wire cplllock_sync;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_cplllock_out;
  wire recclk_mon_count_reset;
  wire reset_time_out;
  wire reset_time_out_i_5__2_n_0;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire reset_time_out_reg_1;
  wire reset_time_out_reg_2;
  wire rxresetdone_s3;
  wire sysclk_in;
  wire time_out_2ms_reg;

  LUT6 #(
    .INIT(64'h5500550055005700)) 
    \FSM_sequential_rx_state[3]_i_11 
       (.I0(Q[0]),
        .I1(\FSM_sequential_rx_state_reg[0] ),
        .I2(cplllock_sync),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(Q[2]),
        .O(\FSM_sequential_rx_state[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FFFFF2FF)) 
    \FSM_sequential_rx_state[3]_i_5 
       (.I0(\FSM_sequential_rx_state_reg[0] ),
        .I1(reset_time_out_reg_1),
        .I2(rxresetdone_s3),
        .I3(Q[1]),
        .I4(\FSM_sequential_rx_state_reg[0]_0 ),
        .I5(\FSM_sequential_rx_state[3]_i_11_n_0 ),
        .O(time_out_2ms_reg));
  LUT6 #(
    .INIT(64'hFFFFBFFF00000404)) 
    adapt_count_reset_i_1
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(cplllock_sync),
        .I4(Q[2]),
        .I5(recclk_mon_count_reset),
        .O(\FSM_sequential_rx_state_reg[3] ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_cplllock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    reset_time_out_i_1__3
       (.I0(reset_time_out),
        .I1(reset_time_out_reg_2),
        .I2(reset_time_out_reg_1),
        .O(reset_time_out_reg));
  LUT6 #(
    .INIT(64'h77727772DDD8FFFA)) 
    reset_time_out_i_2
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(reset_time_out_reg_0),
        .I3(reset_time_out_i_5__2_n_0),
        .I4(Q[0]),
        .I5(data_out),
        .O(reset_time_out));
  LUT3 #(
    .INIT(8'h45)) 
    reset_time_out_i_5__2
       (.I0(Q[2]),
        .I1(cplllock_sync),
        .I2(Q[1]),
        .O(reset_time_out_i_5__2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_43
   (data_out,
    D,
    E,
    \FSM_sequential_rx_state_reg[3] ,
    rx_fsm_reset_done_int_reg,
    rx_fsm_reset_done_int_reg_0,
    Q,
    \FSM_sequential_rx_state_reg[3]_0 ,
    time_out_wait_bypass_s3,
    \FSM_sequential_rx_state_reg[3]_1 ,
    \FSM_sequential_rx_state_reg[0] ,
    \FSM_sequential_rx_state_reg[0]_0 ,
    \FSM_sequential_rx_state_reg[0]_1 ,
    \FSM_sequential_rx_state_reg[0]_2 ,
    dont_reset_on_data_error_in,
    \FSM_sequential_rx_state_reg[0]_3 ,
    \FSM_sequential_rx_state_reg[0]_4 ,
    gt0_rx_fsm_reset_done_out,
    gt0_data_valid_in,
    sysclk_in);
  output data_out;
  output [2:0]D;
  output [0:0]E;
  output \FSM_sequential_rx_state_reg[3] ;
  input rx_fsm_reset_done_int_reg;
  input rx_fsm_reset_done_int_reg_0;
  input [3:0]Q;
  input \FSM_sequential_rx_state_reg[3]_0 ;
  input time_out_wait_bypass_s3;
  input \FSM_sequential_rx_state_reg[3]_1 ;
  input \FSM_sequential_rx_state_reg[0] ;
  input \FSM_sequential_rx_state_reg[0]_0 ;
  input \FSM_sequential_rx_state_reg[0]_1 ;
  input \FSM_sequential_rx_state_reg[0]_2 ;
  input dont_reset_on_data_error_in;
  input \FSM_sequential_rx_state_reg[0]_3 ;
  input \FSM_sequential_rx_state_reg[0]_4 ;
  input gt0_rx_fsm_reset_done_out;
  input gt0_data_valid_in;
  input sysclk_in;

  wire [2:0]D;
  wire [0:0]E;
  wire \FSM_sequential_rx_state[3]_i_3_n_0 ;
  wire \FSM_sequential_rx_state[3]_i_6__2_n_0 ;
  wire \FSM_sequential_rx_state_reg[0] ;
  wire \FSM_sequential_rx_state_reg[0]_0 ;
  wire \FSM_sequential_rx_state_reg[0]_1 ;
  wire \FSM_sequential_rx_state_reg[0]_2 ;
  wire \FSM_sequential_rx_state_reg[0]_3 ;
  wire \FSM_sequential_rx_state_reg[0]_4 ;
  wire \FSM_sequential_rx_state_reg[3] ;
  wire \FSM_sequential_rx_state_reg[3]_0 ;
  wire \FSM_sequential_rx_state_reg[3]_1 ;
  wire [3:0]Q;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire dont_reset_on_data_error_in;
  wire gt0_data_valid_in;
  wire gt0_rx_fsm_reset_done_out;
  wire rx_fsm_reset_done_int;
  wire rx_fsm_reset_done_int_i_3_n_0;
  wire rx_fsm_reset_done_int_i_4__2_n_0;
  wire rx_fsm_reset_done_int_reg;
  wire rx_fsm_reset_done_int_reg_0;
  wire sysclk_in;
  wire time_out_wait_bypass_s3;

  LUT5 #(
    .INIT(32'hC4FFC4C4)) 
    \FSM_sequential_rx_state[0]_i_1__2 
       (.I0(\FSM_sequential_rx_state[3]_i_6__2_n_0 ),
        .I1(Q[3]),
        .I2(Q[1]),
        .I3(\FSM_sequential_rx_state_reg[0]_3 ),
        .I4(\FSM_sequential_rx_state_reg[0]_4 ),
        .O(D[0]));
  LUT5 #(
    .INIT(32'h038833BB)) 
    \FSM_sequential_rx_state[1]_i_1__2 
       (.I0(\FSM_sequential_rx_state[3]_i_6__2_n_0 ),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(\FSM_sequential_rx_state_reg[0]_4 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h4F4F4F4F4444444F)) 
    \FSM_sequential_rx_state[3]_i_1 
       (.I0(\FSM_sequential_rx_state[3]_i_3_n_0 ),
        .I1(Q[3]),
        .I2(\FSM_sequential_rx_state_reg[0] ),
        .I3(\FSM_sequential_rx_state_reg[0]_0 ),
        .I4(Q[0]),
        .I5(\FSM_sequential_rx_state_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'hBBBFFFFFBBBF0000)) 
    \FSM_sequential_rx_state[3]_i_2 
       (.I0(\FSM_sequential_rx_state[3]_i_6__2_n_0 ),
        .I1(\FSM_sequential_rx_state_reg[3]_0 ),
        .I2(time_out_wait_bypass_s3),
        .I3(Q[0]),
        .I4(Q[3]),
        .I5(\FSM_sequential_rx_state_reg[3]_1 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000FFFFFB000000)) 
    \FSM_sequential_rx_state[3]_i_3 
       (.I0(rx_fsm_reset_done_int_reg),
        .I1(\FSM_sequential_rx_state_reg[0]_2 ),
        .I2(dont_reset_on_data_error_in),
        .I3(Q[0]),
        .I4(\FSM_sequential_rx_state_reg[3]_0 ),
        .I5(data_out),
        .O(\FSM_sequential_rx_state[3]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hAAAAA8AA)) 
    \FSM_sequential_rx_state[3]_i_6__2 
       (.I0(Q[0]),
        .I1(data_out),
        .I2(dont_reset_on_data_error_in),
        .I3(\FSM_sequential_rx_state_reg[0]_2 ),
        .I4(rx_fsm_reset_done_int_reg),
        .O(\FSM_sequential_rx_state[3]_i_6__2_n_0 ));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt0_data_valid_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    rx_fsm_reset_done_int_i_1
       (.I0(rx_fsm_reset_done_int),
        .I1(rx_fsm_reset_done_int_i_3_n_0),
        .I2(Q[3]),
        .I3(Q[2]),
        .I4(gt0_rx_fsm_reset_done_out),
        .O(\FSM_sequential_rx_state_reg[3] ));
  LUT5 #(
    .INIT(32'h00100000)) 
    rx_fsm_reset_done_int_i_2
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(rx_fsm_reset_done_int_reg_0),
        .I3(rx_fsm_reset_done_int_reg),
        .I4(data_out),
        .O(rx_fsm_reset_done_int));
  LUT6 #(
    .INIT(64'h0000757500FF0000)) 
    rx_fsm_reset_done_int_i_3
       (.I0(data_out),
        .I1(rx_fsm_reset_done_int_reg),
        .I2(rx_fsm_reset_done_int_reg_0),
        .I3(rx_fsm_reset_done_int_i_4__2_n_0),
        .I4(Q[0]),
        .I5(Q[1]),
        .O(rx_fsm_reset_done_int_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h5545)) 
    rx_fsm_reset_done_int_i_4__2
       (.I0(data_out),
        .I1(dont_reset_on_data_error_in),
        .I2(\FSM_sequential_rx_state_reg[0]_2 ),
        .I3(rx_fsm_reset_done_int_reg),
        .O(rx_fsm_reset_done_int_i_4__2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_44
   (SR,
    mmcm_lock_reclocked_reg,
    mmcm_lock_reclocked,
    Q,
    mmcm_lock_reclocked_reg_0,
    sysclk_in);
  output [0:0]SR;
  output mmcm_lock_reclocked_reg;
  input mmcm_lock_reclocked;
  input [1:0]Q;
  input mmcm_lock_reclocked_reg_0;
  input sysclk_in;

  wire [1:0]Q;
  wire [0:0]SR;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire mmcm_lock_i;
  wire mmcm_lock_reclocked;
  wire mmcm_lock_reclocked_reg;
  wire mmcm_lock_reclocked_reg_0;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(1'b1),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(mmcm_lock_i),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \mmcm_lock_count[7]_i_1__3 
       (.I0(mmcm_lock_i),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hEAAA0000)) 
    mmcm_lock_reclocked_i_1__3
       (.I0(mmcm_lock_reclocked),
        .I1(Q[1]),
        .I2(mmcm_lock_reclocked_reg_0),
        .I3(Q[0]),
        .I4(mmcm_lock_i),
        .O(mmcm_lock_reclocked_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_45
   (data_out,
    data_in,
    gt0_rxusrclk_in);
  output data_out;
  input data_in;
  input gt0_rxusrclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_46
   (data_out,
    gt0_rx_fsm_reset_done_out,
    gt0_rxusrclk_in);
  output data_out;
  input gt0_rx_fsm_reset_done_out;
  input gt0_rxusrclk_in;

  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt0_rx_fsm_reset_done_out;
  wire gt0_rxusrclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(gt0_rx_fsm_reset_done_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(gt0_rxusrclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_47
   (data_out,
    data_in,
    sysclk_in);
  output data_out;
  input data_in;
  input sysclk_in;

  wire data_in;
  wire data_out;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire sysclk_in;

  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(data_out),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_4_channel_sync_block" *) 
module gtwizard_4_channel_gtwizard_4_channel_sync_block_9
   (E,
    \FSM_sequential_tx_state_reg[3] ,
    reset_time_out_reg,
    Q,
    \FSM_sequential_tx_state_reg[0] ,
    \FSM_sequential_tx_state_reg[0]_0 ,
    \FSM_sequential_tx_state_reg[0]_1 ,
    mmcm_lock_reclocked,
    reset_time_out_reg_0,
    \FSM_sequential_tx_state_reg[3]_i_3__2_0 ,
    \FSM_sequential_tx_state_reg[3]_i_3__2_1 ,
    \FSM_sequential_tx_state_reg[3]_i_3__2_2 ,
    txresetdone_s3,
    \FSM_sequential_tx_state_reg[3]_i_3__2_3 ,
    gt3_cplllock_out,
    sysclk_in);
  output [0:0]E;
  output \FSM_sequential_tx_state_reg[3] ;
  input reset_time_out_reg;
  input [3:0]Q;
  input \FSM_sequential_tx_state_reg[0] ;
  input \FSM_sequential_tx_state_reg[0]_0 ;
  input \FSM_sequential_tx_state_reg[0]_1 ;
  input mmcm_lock_reclocked;
  input reset_time_out_reg_0;
  input \FSM_sequential_tx_state_reg[3]_i_3__2_0 ;
  input \FSM_sequential_tx_state_reg[3]_i_3__2_1 ;
  input \FSM_sequential_tx_state_reg[3]_i_3__2_2 ;
  input txresetdone_s3;
  input \FSM_sequential_tx_state_reg[3]_i_3__2_3 ;
  input gt3_cplllock_out;
  input sysclk_in;

  wire [0:0]E;
  wire \FSM_sequential_tx_state[3]_i_5__2_n_0 ;
  wire \FSM_sequential_tx_state[3]_i_6__2_n_0 ;
  wire \FSM_sequential_tx_state_reg[0] ;
  wire \FSM_sequential_tx_state_reg[0]_0 ;
  wire \FSM_sequential_tx_state_reg[0]_1 ;
  wire \FSM_sequential_tx_state_reg[3] ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__2_0 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__2_1 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__2_2 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__2_3 ;
  wire \FSM_sequential_tx_state_reg[3]_i_3__2_n_0 ;
  wire [3:0]Q;
  wire cplllock_sync;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire gt3_cplllock_out;
  wire mmcm_lock_reclocked;
  wire reset_time_out;
  wire reset_time_out_reg;
  wire reset_time_out_reg_0;
  wire sysclk_in;
  wire txresetdone_s3;

  LUT6 #(
    .INIT(64'h3300744433007477)) 
    \FSM_sequential_tx_state[3]_i_1__2 
       (.I0(\FSM_sequential_tx_state_reg[3]_i_3__2_n_0 ),
        .I1(Q[0]),
        .I2(\FSM_sequential_tx_state_reg[0] ),
        .I3(\FSM_sequential_tx_state_reg[0]_0 ),
        .I4(Q[3]),
        .I5(\FSM_sequential_tx_state_reg[0]_1 ),
        .O(E));
  LUT6 #(
    .INIT(64'h45FF450045FF45FF)) 
    \FSM_sequential_tx_state[3]_i_5__2 
       (.I0(mmcm_lock_reclocked),
        .I1(reset_time_out_reg_0),
        .I2(\FSM_sequential_tx_state_reg[3]_i_3__2_0 ),
        .I3(Q[2]),
        .I4(cplllock_sync),
        .I5(\FSM_sequential_tx_state_reg[3]_i_3__2_1 ),
        .O(\FSM_sequential_tx_state[3]_i_5__2_n_0 ));
  LUT6 #(
    .INIT(64'h0D0D00000D0D00FF)) 
    \FSM_sequential_tx_state[3]_i_6__2 
       (.I0(\FSM_sequential_tx_state_reg[3]_i_3__2_2 ),
        .I1(reset_time_out_reg_0),
        .I2(txresetdone_s3),
        .I3(\FSM_sequential_tx_state_reg[3]_i_3__2_3 ),
        .I4(Q[2]),
        .I5(cplllock_sync),
        .O(\FSM_sequential_tx_state[3]_i_6__2_n_0 ));
  MUXF7 \FSM_sequential_tx_state_reg[3]_i_3__2 
       (.I0(\FSM_sequential_tx_state[3]_i_5__2_n_0 ),
        .I1(\FSM_sequential_tx_state[3]_i_6__2_n_0 ),
        .O(\FSM_sequential_tx_state_reg[3]_i_3__2_n_0 ),
        .S(Q[1]));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(sysclk_in),
        .CE(1'b1),
        .D(gt3_cplllock_out),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(sysclk_in),
        .CE(1'b1),
        .D(data_sync5),
        .Q(cplllock_sync),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hEFEFEFAA202020AA)) 
    reset_time_out_i_1__2
       (.I0(reset_time_out),
        .I1(Q[3]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(Q[1]),
        .I5(reset_time_out_reg_0),
        .O(\FSM_sequential_tx_state_reg[3] ));
  LUT5 #(
    .INIT(32'h08BF08BB)) 
    reset_time_out_i_2__5
       (.I0(reset_time_out_reg),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .I4(cplllock_sync),
        .O(reset_time_out));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
