onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_160to160_depth2k_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_160to160_depth2k.udo}

run -all

quit -force
