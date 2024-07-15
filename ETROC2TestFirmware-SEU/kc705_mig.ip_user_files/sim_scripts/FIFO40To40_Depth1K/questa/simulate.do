onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib FIFO40To40_Depth1K_opt

do {wave.do}

view wave
view structure
view signals

do {FIFO40To40_Depth1K.udo}

run -all

quit -force
