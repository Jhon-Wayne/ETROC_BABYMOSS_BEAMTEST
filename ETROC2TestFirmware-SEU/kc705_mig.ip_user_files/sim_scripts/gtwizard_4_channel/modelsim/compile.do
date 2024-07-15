vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm

vlog -work xil_defaultlib -64 -incr -sv \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"C:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr \
"../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel/example_design/gtwizard_4_channel_tx_startup_fsm.v" \
"../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel/example_design/gtwizard_4_channel_rx_startup_fsm.v" \
"../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_init.v" \
"../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_cpll_railing.v" \
"../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_gt.v" \
"../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_multi_gt.v" \
"../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel/example_design/gtwizard_4_channel_sync_block.v" \
"../../../../kc705_mig.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel.v" \

vlog -work xil_defaultlib \
"glbl.v"

