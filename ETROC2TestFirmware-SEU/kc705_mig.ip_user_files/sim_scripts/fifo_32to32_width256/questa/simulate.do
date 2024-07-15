onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib fifo_32to32_width256_opt

do {wave.do}

view wave
view structure
view signals

do {fifo_32to32_width256.udo}

run -all

quit -force
