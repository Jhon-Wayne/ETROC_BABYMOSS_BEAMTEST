onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib gtwizard_4_channel_opt

do {wave.do}

view wave
view structure
view signals

do {gtwizard_4_channel.udo}

run -all

quit -force
