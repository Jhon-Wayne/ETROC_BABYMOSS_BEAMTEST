vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../kc705_mig.srcs/sources_1/ip/ila_32X1/hdl/verilog" \
"E:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../kc705_mig.srcs/sources_1/ip/ila_32X1/hdl/verilog" \
"../../../../kc705_mig.srcs/sources_1/ip/ila_32X1/sim/ila_32X1.v" \

vlog -work xil_defaultlib \
"glbl.v"

