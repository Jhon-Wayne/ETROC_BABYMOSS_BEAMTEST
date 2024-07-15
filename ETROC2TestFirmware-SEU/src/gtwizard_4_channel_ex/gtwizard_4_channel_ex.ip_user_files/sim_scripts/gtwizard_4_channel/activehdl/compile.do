vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../../gtwizard_4_channel_ex.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel/example_design/gtwizard_4_channel_tx_startup_fsm.v" \
"../../../../gtwizard_4_channel_ex.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel/example_design/gtwizard_4_channel_rx_startup_fsm.v" \
"../../../../gtwizard_4_channel_ex.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_init.v" \
"../../../../gtwizard_4_channel_ex.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_cpll_railing.v" \
"../../../../gtwizard_4_channel_ex.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_gt.v" \
"../../../../gtwizard_4_channel_ex.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel_multi_gt.v" \
"../../../../gtwizard_4_channel_ex.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel/example_design/gtwizard_4_channel_sync_block.v" \
"../../../../gtwizard_4_channel_ex.srcs/sources_1/ip/gtwizard_4_channel/gtwizard_4_channel.v" \


vlog -work xil_defaultlib \
"glbl.v"

