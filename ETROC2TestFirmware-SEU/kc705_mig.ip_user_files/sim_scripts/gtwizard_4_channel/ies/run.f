-makelib ies_lib/xil_defaultlib -sv \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel/example_design/gtwizard_4_channel_tx_startup_fsm.v" \
  "../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel/example_design/gtwizard_4_channel_rx_startup_fsm.v" \
  "../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_init.v" \
  "../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_cpll_railing.v" \
  "../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_gt.v" \
  "../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_multi_gt.v" \
  "../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel/example_design/gtwizard_4_channel_sync_block.v" \
  "../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

