onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib clockwiz_opt

do {wave.do}

view wave
view structure
view signals

do {clockwiz.udo}

run -all

quit -force
