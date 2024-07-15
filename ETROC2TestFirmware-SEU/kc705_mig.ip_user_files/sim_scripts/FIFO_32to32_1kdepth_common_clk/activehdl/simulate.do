onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+FIFO_32to32_1kdepth_common_clk -L xil_defaultlib -L xpm -L fifo_generator_v13_2_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FIFO_32to32_1kdepth_common_clk xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {FIFO_32to32_1kdepth_common_clk.udo}

run -all

endsim

quit -force
