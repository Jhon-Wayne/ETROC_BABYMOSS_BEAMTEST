onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO_32to32_1kdepth_common_clk_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO_32to32_1kdepth_common_clk.udo}

run -all

quit -force
