////////////////////////////////////////////////////////////////////////////////
//   ____  ____ 
//  /   /\/   / 
// /___/  \  /    Vendor: Xilinx 
// \   \   \/     Version : 3.6
//  \   \         Application : 7 Series FPGAs Transceivers Wizard  
//  /   /         Filename : gtwizard_4_channel.veo
// /___/   /\      
// \   \  /  \ 
//  \___\/\___\ 
//
//
// Instantiation Template
// Generated by Xilinx 7 Series FPGAs Transceivers Wizard
// 
// 
// (c) Copyright 2010-2012 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES. 


// Use the templates in this file to add the components generated by the wizard to your
// design. 

    gtwizard_4_channel  gtwizard_4_channel_i
    (
     .sysclk_in(sysclk_in), // input wire sysclk_in
     .soft_reset_tx_in(soft_reset_tx_in), // input wire soft_reset_tx_in
     .soft_reset_rx_in(soft_reset_rx_in), // input wire soft_reset_rx_in
     .dont_reset_on_data_error_in(dont_reset_on_data_error_in), // input wire dont_reset_on_data_error_in
     .gt0_tx_fsm_reset_done_out(gt0_tx_fsm_reset_done_out), // output wire gt0_tx_fsm_reset_done_out
     .gt0_rx_fsm_reset_done_out(gt0_rx_fsm_reset_done_out), // output wire gt0_rx_fsm_reset_done_out
     .gt0_data_valid_in(gt0_data_valid_in), // input wire gt0_data_valid_in
     .gt1_tx_fsm_reset_done_out(gt1_tx_fsm_reset_done_out), // output wire gt1_tx_fsm_reset_done_out
     .gt1_rx_fsm_reset_done_out(gt1_rx_fsm_reset_done_out), // output wire gt1_rx_fsm_reset_done_out
     .gt1_data_valid_in(gt1_data_valid_in), // input wire gt1_data_valid_in
     .gt2_tx_fsm_reset_done_out(gt2_tx_fsm_reset_done_out), // output wire gt2_tx_fsm_reset_done_out
     .gt2_rx_fsm_reset_done_out(gt2_rx_fsm_reset_done_out), // output wire gt2_rx_fsm_reset_done_out
     .gt2_data_valid_in(gt2_data_valid_in), // input wire gt2_data_valid_in
     .gt3_tx_fsm_reset_done_out(gt3_tx_fsm_reset_done_out), // output wire gt3_tx_fsm_reset_done_out
     .gt3_rx_fsm_reset_done_out(gt3_rx_fsm_reset_done_out), // output wire gt3_rx_fsm_reset_done_out
     .gt3_data_valid_in(gt3_data_valid_in), // input wire gt3_data_valid_in

    //_________________________________________________________________________
    //GT0  (X0Y12)
    //____________________________CHANNEL PORTS________________________________
    //------------------------------- CPLL Ports -------------------------------
        .gt0_cpllfbclklost_out          (gt0_cpllfbclklost_out), // output wire gt0_cpllfbclklost_out
        .gt0_cplllock_out               (gt0_cplllock_out), // output wire gt0_cplllock_out
        .gt0_cplllockdetclk_in          (gt0_cplllockdetclk_in), // input wire gt0_cplllockdetclk_in
        .gt0_cpllreset_in               (gt0_cpllreset_in), // input wire gt0_cpllreset_in
    //------------------------ Channel - Clocking Ports ------------------------
        .gt0_gtrefclk0_in               (gt0_gtrefclk0_in), // input wire gt0_gtrefclk0_in
        .gt0_gtrefclk1_in               (gt0_gtrefclk1_in), // input wire gt0_gtrefclk1_in
    //-------------------------- Channel - DRP Ports  --------------------------
        .gt0_drpaddr_in                 (gt0_drpaddr_in), // input wire [8:0] gt0_drpaddr_in
        .gt0_drpclk_in                  (gt0_drpclk_in), // input wire gt0_drpclk_in
        .gt0_drpdi_in                   (gt0_drpdi_in), // input wire [15:0] gt0_drpdi_in
        .gt0_drpdo_out                  (gt0_drpdo_out), // output wire [15:0] gt0_drpdo_out
        .gt0_drpen_in                   (gt0_drpen_in), // input wire gt0_drpen_in
        .gt0_drprdy_out                 (gt0_drprdy_out), // output wire gt0_drprdy_out
        .gt0_drpwe_in                   (gt0_drpwe_in), // input wire gt0_drpwe_in
    //------------------------- Digital Monitor Ports --------------------------
        .gt0_dmonitorout_out            (gt0_dmonitorout_out), // output wire [7:0] gt0_dmonitorout_out
    //------------------- RX Initialization and Reset Ports --------------------
        .gt0_eyescanreset_in            (gt0_eyescanreset_in), // input wire gt0_eyescanreset_in
        .gt0_rxuserrdy_in               (gt0_rxuserrdy_in), // input wire gt0_rxuserrdy_in
    //------------------------ RX Margin Analysis Ports ------------------------
        .gt0_eyescandataerror_out       (gt0_eyescandataerror_out), // output wire gt0_eyescandataerror_out
        .gt0_eyescantrigger_in          (gt0_eyescantrigger_in), // input wire gt0_eyescantrigger_in
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .gt0_rxusrclk_in                (gt0_rxusrclk_in), // input wire gt0_rxusrclk_in
        .gt0_rxusrclk2_in               (gt0_rxusrclk2_in), // input wire gt0_rxusrclk2_in
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
        .gt0_rxdata_out                 (gt0_rxdata_out), // output wire [31:0] gt0_rxdata_out
    //------------------------- Receive Ports - RX AFE -------------------------
        .gt0_gtxrxp_in                  (gt0_gtxrxp_in), // input wire gt0_gtxrxp_in
    //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gt0_gtxrxn_in                  (gt0_gtxrxn_in), // input wire gt0_gtxrxn_in
    //------------------- Receive Ports - RX Equalizer Ports -------------------
        .gt0_rxdfelpmreset_in           (gt0_rxdfelpmreset_in), // input wire gt0_rxdfelpmreset_in
        .gt0_rxmonitorout_out           (gt0_rxmonitorout_out), // output wire [6:0] gt0_rxmonitorout_out
        .gt0_rxmonitorsel_in            (gt0_rxmonitorsel_in), // input wire [1:0] gt0_rxmonitorsel_in
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .gt0_rxoutclk_out               (gt0_rxoutclk_out), // output wire gt0_rxoutclk_out
        .gt0_rxoutclkfabric_out         (gt0_rxoutclkfabric_out), // output wire gt0_rxoutclkfabric_out
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gt0_gtrxreset_in               (gt0_gtrxreset_in), // input wire gt0_gtrxreset_in
        .gt0_rxpmareset_in              (gt0_rxpmareset_in), // input wire gt0_rxpmareset_in
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .gt0_rxresetdone_out            (gt0_rxresetdone_out), // output wire gt0_rxresetdone_out
    //------------------- TX Initialization and Reset Ports --------------------
        .gt0_gttxreset_in               (gt0_gttxreset_in), // input wire gt0_gttxreset_in
        .gt0_txuserrdy_in               (gt0_txuserrdy_in), // input wire gt0_txuserrdy_in
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .gt0_txusrclk_in                (gt0_txusrclk_in), // input wire gt0_txusrclk_in
        .gt0_txusrclk2_in               (gt0_txusrclk2_in), // input wire gt0_txusrclk2_in
    //---------------- Transmit Ports - TX Data Path interface -----------------
        .gt0_txdata_in                  (gt0_txdata_in), // input wire [31:0] gt0_txdata_in
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .gt0_gtxtxn_out                 (gt0_gtxtxn_out), // output wire gt0_gtxtxn_out
        .gt0_gtxtxp_out                 (gt0_gtxtxp_out), // output wire gt0_gtxtxp_out
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .gt0_txoutclk_out               (gt0_txoutclk_out), // output wire gt0_txoutclk_out
        .gt0_txoutclkfabric_out         (gt0_txoutclkfabric_out), // output wire gt0_txoutclkfabric_out
        .gt0_txoutclkpcs_out            (gt0_txoutclkpcs_out), // output wire gt0_txoutclkpcs_out
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .gt0_txresetdone_out            (gt0_txresetdone_out), // output wire gt0_txresetdone_out

    //GT1  (X0Y13)
    //____________________________CHANNEL PORTS________________________________
    //------------------------------- CPLL Ports -------------------------------
        .gt1_cpllfbclklost_out          (gt1_cpllfbclklost_out), // output wire gt1_cpllfbclklost_out
        .gt1_cplllock_out               (gt1_cplllock_out), // output wire gt1_cplllock_out
        .gt1_cplllockdetclk_in          (gt1_cplllockdetclk_in), // input wire gt1_cplllockdetclk_in
        .gt1_cpllreset_in               (gt1_cpllreset_in), // input wire gt1_cpllreset_in
    //------------------------ Channel - Clocking Ports ------------------------
        .gt1_gtrefclk0_in               (gt1_gtrefclk0_in), // input wire gt1_gtrefclk0_in
        .gt1_gtrefclk1_in               (gt1_gtrefclk1_in), // input wire gt1_gtrefclk1_in
    //-------------------------- Channel - DRP Ports  --------------------------
        .gt1_drpaddr_in                 (gt1_drpaddr_in), // input wire [8:0] gt1_drpaddr_in
        .gt1_drpclk_in                  (gt1_drpclk_in), // input wire gt1_drpclk_in
        .gt1_drpdi_in                   (gt1_drpdi_in), // input wire [15:0] gt1_drpdi_in
        .gt1_drpdo_out                  (gt1_drpdo_out), // output wire [15:0] gt1_drpdo_out
        .gt1_drpen_in                   (gt1_drpen_in), // input wire gt1_drpen_in
        .gt1_drprdy_out                 (gt1_drprdy_out), // output wire gt1_drprdy_out
        .gt1_drpwe_in                   (gt1_drpwe_in), // input wire gt1_drpwe_in
    //------------------------- Digital Monitor Ports --------------------------
        .gt1_dmonitorout_out            (gt1_dmonitorout_out), // output wire [7:0] gt1_dmonitorout_out
    //------------------- RX Initialization and Reset Ports --------------------
        .gt1_eyescanreset_in            (gt1_eyescanreset_in), // input wire gt1_eyescanreset_in
        .gt1_rxuserrdy_in               (gt1_rxuserrdy_in), // input wire gt1_rxuserrdy_in
    //------------------------ RX Margin Analysis Ports ------------------------
        .gt1_eyescandataerror_out       (gt1_eyescandataerror_out), // output wire gt1_eyescandataerror_out
        .gt1_eyescantrigger_in          (gt1_eyescantrigger_in), // input wire gt1_eyescantrigger_in
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .gt1_rxusrclk_in                (gt1_rxusrclk_in), // input wire gt1_rxusrclk_in
        .gt1_rxusrclk2_in               (gt1_rxusrclk2_in), // input wire gt1_rxusrclk2_in
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
        .gt1_rxdata_out                 (gt1_rxdata_out), // output wire [31:0] gt1_rxdata_out
    //------------------------- Receive Ports - RX AFE -------------------------
        .gt1_gtxrxp_in                  (gt1_gtxrxp_in), // input wire gt1_gtxrxp_in
    //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gt1_gtxrxn_in                  (gt1_gtxrxn_in), // input wire gt1_gtxrxn_in
    //------------------- Receive Ports - RX Equalizer Ports -------------------
        .gt1_rxdfelpmreset_in           (gt1_rxdfelpmreset_in), // input wire gt1_rxdfelpmreset_in
        .gt1_rxmonitorout_out           (gt1_rxmonitorout_out), // output wire [6:0] gt1_rxmonitorout_out
        .gt1_rxmonitorsel_in            (gt1_rxmonitorsel_in), // input wire [1:0] gt1_rxmonitorsel_in
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .gt1_rxoutclk_out               (gt1_rxoutclk_out), // output wire gt1_rxoutclk_out
        .gt1_rxoutclkfabric_out         (gt1_rxoutclkfabric_out), // output wire gt1_rxoutclkfabric_out
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gt1_gtrxreset_in               (gt1_gtrxreset_in), // input wire gt1_gtrxreset_in
        .gt1_rxpmareset_in              (gt1_rxpmareset_in), // input wire gt1_rxpmareset_in
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .gt1_rxresetdone_out            (gt1_rxresetdone_out), // output wire gt1_rxresetdone_out
    //------------------- TX Initialization and Reset Ports --------------------
        .gt1_gttxreset_in               (gt1_gttxreset_in), // input wire gt1_gttxreset_in
        .gt1_txuserrdy_in               (gt1_txuserrdy_in), // input wire gt1_txuserrdy_in
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .gt1_txusrclk_in                (gt1_txusrclk_in), // input wire gt1_txusrclk_in
        .gt1_txusrclk2_in               (gt1_txusrclk2_in), // input wire gt1_txusrclk2_in
    //---------------- Transmit Ports - TX Data Path interface -----------------
        .gt1_txdata_in                  (gt1_txdata_in), // input wire [31:0] gt1_txdata_in
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .gt1_gtxtxn_out                 (gt1_gtxtxn_out), // output wire gt1_gtxtxn_out
        .gt1_gtxtxp_out                 (gt1_gtxtxp_out), // output wire gt1_gtxtxp_out
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .gt1_txoutclk_out               (gt1_txoutclk_out), // output wire gt1_txoutclk_out
        .gt1_txoutclkfabric_out         (gt1_txoutclkfabric_out), // output wire gt1_txoutclkfabric_out
        .gt1_txoutclkpcs_out            (gt1_txoutclkpcs_out), // output wire gt1_txoutclkpcs_out
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .gt1_txresetdone_out            (gt1_txresetdone_out), // output wire gt1_txresetdone_out

    //GT2  (X0Y14)
    //____________________________CHANNEL PORTS________________________________
    //------------------------------- CPLL Ports -------------------------------
        .gt2_cpllfbclklost_out          (gt2_cpllfbclklost_out), // output wire gt2_cpllfbclklost_out
        .gt2_cplllock_out               (gt2_cplllock_out), // output wire gt2_cplllock_out
        .gt2_cplllockdetclk_in          (gt2_cplllockdetclk_in), // input wire gt2_cplllockdetclk_in
        .gt2_cpllreset_in               (gt2_cpllreset_in), // input wire gt2_cpllreset_in
    //------------------------ Channel - Clocking Ports ------------------------
        .gt2_gtrefclk0_in               (gt2_gtrefclk0_in), // input wire gt2_gtrefclk0_in
        .gt2_gtrefclk1_in               (gt2_gtrefclk1_in), // input wire gt2_gtrefclk1_in
    //-------------------------- Channel - DRP Ports  --------------------------
        .gt2_drpaddr_in                 (gt2_drpaddr_in), // input wire [8:0] gt2_drpaddr_in
        .gt2_drpclk_in                  (gt2_drpclk_in), // input wire gt2_drpclk_in
        .gt2_drpdi_in                   (gt2_drpdi_in), // input wire [15:0] gt2_drpdi_in
        .gt2_drpdo_out                  (gt2_drpdo_out), // output wire [15:0] gt2_drpdo_out
        .gt2_drpen_in                   (gt2_drpen_in), // input wire gt2_drpen_in
        .gt2_drprdy_out                 (gt2_drprdy_out), // output wire gt2_drprdy_out
        .gt2_drpwe_in                   (gt2_drpwe_in), // input wire gt2_drpwe_in
    //------------------------- Digital Monitor Ports --------------------------
        .gt2_dmonitorout_out            (gt2_dmonitorout_out), // output wire [7:0] gt2_dmonitorout_out
    //------------------- RX Initialization and Reset Ports --------------------
        .gt2_eyescanreset_in            (gt2_eyescanreset_in), // input wire gt2_eyescanreset_in
        .gt2_rxuserrdy_in               (gt2_rxuserrdy_in), // input wire gt2_rxuserrdy_in
    //------------------------ RX Margin Analysis Ports ------------------------
        .gt2_eyescandataerror_out       (gt2_eyescandataerror_out), // output wire gt2_eyescandataerror_out
        .gt2_eyescantrigger_in          (gt2_eyescantrigger_in), // input wire gt2_eyescantrigger_in
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .gt2_rxusrclk_in                (gt2_rxusrclk_in), // input wire gt2_rxusrclk_in
        .gt2_rxusrclk2_in               (gt2_rxusrclk2_in), // input wire gt2_rxusrclk2_in
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
        .gt2_rxdata_out                 (gt2_rxdata_out), // output wire [31:0] gt2_rxdata_out
    //------------------------- Receive Ports - RX AFE -------------------------
        .gt2_gtxrxp_in                  (gt2_gtxrxp_in), // input wire gt2_gtxrxp_in
    //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gt2_gtxrxn_in                  (gt2_gtxrxn_in), // input wire gt2_gtxrxn_in
    //------------------- Receive Ports - RX Equalizer Ports -------------------
        .gt2_rxdfelpmreset_in           (gt2_rxdfelpmreset_in), // input wire gt2_rxdfelpmreset_in
        .gt2_rxmonitorout_out           (gt2_rxmonitorout_out), // output wire [6:0] gt2_rxmonitorout_out
        .gt2_rxmonitorsel_in            (gt2_rxmonitorsel_in), // input wire [1:0] gt2_rxmonitorsel_in
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .gt2_rxoutclk_out               (gt2_rxoutclk_out), // output wire gt2_rxoutclk_out
        .gt2_rxoutclkfabric_out         (gt2_rxoutclkfabric_out), // output wire gt2_rxoutclkfabric_out
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gt2_gtrxreset_in               (gt2_gtrxreset_in), // input wire gt2_gtrxreset_in
        .gt2_rxpmareset_in              (gt2_rxpmareset_in), // input wire gt2_rxpmareset_in
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .gt2_rxresetdone_out            (gt2_rxresetdone_out), // output wire gt2_rxresetdone_out
    //------------------- TX Initialization and Reset Ports --------------------
        .gt2_gttxreset_in               (gt2_gttxreset_in), // input wire gt2_gttxreset_in
        .gt2_txuserrdy_in               (gt2_txuserrdy_in), // input wire gt2_txuserrdy_in
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .gt2_txusrclk_in                (gt2_txusrclk_in), // input wire gt2_txusrclk_in
        .gt2_txusrclk2_in               (gt2_txusrclk2_in), // input wire gt2_txusrclk2_in
    //---------------- Transmit Ports - TX Data Path interface -----------------
        .gt2_txdata_in                  (gt2_txdata_in), // input wire [31:0] gt2_txdata_in
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .gt2_gtxtxn_out                 (gt2_gtxtxn_out), // output wire gt2_gtxtxn_out
        .gt2_gtxtxp_out                 (gt2_gtxtxp_out), // output wire gt2_gtxtxp_out
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .gt2_txoutclk_out               (gt2_txoutclk_out), // output wire gt2_txoutclk_out
        .gt2_txoutclkfabric_out         (gt2_txoutclkfabric_out), // output wire gt2_txoutclkfabric_out
        .gt2_txoutclkpcs_out            (gt2_txoutclkpcs_out), // output wire gt2_txoutclkpcs_out
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .gt2_txresetdone_out            (gt2_txresetdone_out), // output wire gt2_txresetdone_out

    //GT3  (X0Y15)
    //____________________________CHANNEL PORTS________________________________
    //------------------------------- CPLL Ports -------------------------------
        .gt3_cpllfbclklost_out          (gt3_cpllfbclklost_out), // output wire gt3_cpllfbclklost_out
        .gt3_cplllock_out               (gt3_cplllock_out), // output wire gt3_cplllock_out
        .gt3_cplllockdetclk_in          (gt3_cplllockdetclk_in), // input wire gt3_cplllockdetclk_in
        .gt3_cpllreset_in               (gt3_cpllreset_in), // input wire gt3_cpllreset_in
    //------------------------ Channel - Clocking Ports ------------------------
        .gt3_gtrefclk0_in               (gt3_gtrefclk0_in), // input wire gt3_gtrefclk0_in
        .gt3_gtrefclk1_in               (gt3_gtrefclk1_in), // input wire gt3_gtrefclk1_in
    //-------------------------- Channel - DRP Ports  --------------------------
        .gt3_drpaddr_in                 (gt3_drpaddr_in), // input wire [8:0] gt3_drpaddr_in
        .gt3_drpclk_in                  (gt3_drpclk_in), // input wire gt3_drpclk_in
        .gt3_drpdi_in                   (gt3_drpdi_in), // input wire [15:0] gt3_drpdi_in
        .gt3_drpdo_out                  (gt3_drpdo_out), // output wire [15:0] gt3_drpdo_out
        .gt3_drpen_in                   (gt3_drpen_in), // input wire gt3_drpen_in
        .gt3_drprdy_out                 (gt3_drprdy_out), // output wire gt3_drprdy_out
        .gt3_drpwe_in                   (gt3_drpwe_in), // input wire gt3_drpwe_in
    //------------------------- Digital Monitor Ports --------------------------
        .gt3_dmonitorout_out            (gt3_dmonitorout_out), // output wire [7:0] gt3_dmonitorout_out
    //------------------- RX Initialization and Reset Ports --------------------
        .gt3_eyescanreset_in            (gt3_eyescanreset_in), // input wire gt3_eyescanreset_in
        .gt3_rxuserrdy_in               (gt3_rxuserrdy_in), // input wire gt3_rxuserrdy_in
    //------------------------ RX Margin Analysis Ports ------------------------
        .gt3_eyescandataerror_out       (gt3_eyescandataerror_out), // output wire gt3_eyescandataerror_out
        .gt3_eyescantrigger_in          (gt3_eyescantrigger_in), // input wire gt3_eyescantrigger_in
    //---------------- Receive Ports - FPGA RX Interface Ports -----------------
        .gt3_rxusrclk_in                (gt3_rxusrclk_in), // input wire gt3_rxusrclk_in
        .gt3_rxusrclk2_in               (gt3_rxusrclk2_in), // input wire gt3_rxusrclk2_in
    //---------------- Receive Ports - FPGA RX interface Ports -----------------
        .gt3_rxdata_out                 (gt3_rxdata_out), // output wire [31:0] gt3_rxdata_out
    //------------------------- Receive Ports - RX AFE -------------------------
        .gt3_gtxrxp_in                  (gt3_gtxrxp_in), // input wire gt3_gtxrxp_in
    //---------------------- Receive Ports - RX AFE Ports ----------------------
        .gt3_gtxrxn_in                  (gt3_gtxrxn_in), // input wire gt3_gtxrxn_in
    //------------------- Receive Ports - RX Equalizer Ports -------------------
        .gt3_rxdfelpmreset_in           (gt3_rxdfelpmreset_in), // input wire gt3_rxdfelpmreset_in
        .gt3_rxmonitorout_out           (gt3_rxmonitorout_out), // output wire [6:0] gt3_rxmonitorout_out
        .gt3_rxmonitorsel_in            (gt3_rxmonitorsel_in), // input wire [1:0] gt3_rxmonitorsel_in
    //------------- Receive Ports - RX Fabric Output Control Ports -------------
        .gt3_rxoutclk_out               (gt3_rxoutclk_out), // output wire gt3_rxoutclk_out
        .gt3_rxoutclkfabric_out         (gt3_rxoutclkfabric_out), // output wire gt3_rxoutclkfabric_out
    //----------- Receive Ports - RX Initialization and Reset Ports ------------
        .gt3_gtrxreset_in               (gt3_gtrxreset_in), // input wire gt3_gtrxreset_in
        .gt3_rxpmareset_in              (gt3_rxpmareset_in), // input wire gt3_rxpmareset_in
    //------------ Receive Ports -RX Initialization and Reset Ports ------------
        .gt3_rxresetdone_out            (gt3_rxresetdone_out), // output wire gt3_rxresetdone_out
    //------------------- TX Initialization and Reset Ports --------------------
        .gt3_gttxreset_in               (gt3_gttxreset_in), // input wire gt3_gttxreset_in
        .gt3_txuserrdy_in               (gt3_txuserrdy_in), // input wire gt3_txuserrdy_in
    //---------------- Transmit Ports - FPGA TX Interface Ports ----------------
        .gt3_txusrclk_in                (gt3_txusrclk_in), // input wire gt3_txusrclk_in
        .gt3_txusrclk2_in               (gt3_txusrclk2_in), // input wire gt3_txusrclk2_in
    //---------------- Transmit Ports - TX Data Path interface -----------------
        .gt3_txdata_in                  (gt3_txdata_in), // input wire [31:0] gt3_txdata_in
    //-------------- Transmit Ports - TX Driver and OOB signaling --------------
        .gt3_gtxtxn_out                 (gt3_gtxtxn_out), // output wire gt3_gtxtxn_out
        .gt3_gtxtxp_out                 (gt3_gtxtxp_out), // output wire gt3_gtxtxp_out
    //--------- Transmit Ports - TX Fabric Clock Output Control Ports ----------
        .gt3_txoutclk_out               (gt3_txoutclk_out), // output wire gt3_txoutclk_out
        .gt3_txoutclkfabric_out         (gt3_txoutclkfabric_out), // output wire gt3_txoutclkfabric_out
        .gt3_txoutclkpcs_out            (gt3_txoutclkpcs_out), // output wire gt3_txoutclkpcs_out
    //----------- Transmit Ports - TX Initialization and Reset Ports -----------
        .gt3_txresetdone_out            (gt3_txresetdone_out), // output wire gt3_txresetdone_out


    //____________________________COMMON PORTS________________________________
     .gt0_qplloutclk_in(gt0_qplloutclk_in), // input wire gt0_qplloutclk_in
     .gt0_qplloutrefclk_in(gt0_qplloutrefclk_in) // input wire gt0_qplloutrefclk_in
    );


