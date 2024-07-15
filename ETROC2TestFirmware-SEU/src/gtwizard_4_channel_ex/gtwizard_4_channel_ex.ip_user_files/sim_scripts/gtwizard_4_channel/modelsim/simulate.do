onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.gtwizard_4_channel xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {gtwizard_4_channel.udo}

run -all

quit -force
