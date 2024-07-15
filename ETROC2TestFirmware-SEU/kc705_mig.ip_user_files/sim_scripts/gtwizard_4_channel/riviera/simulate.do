onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+gtwizard_4_channel -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.gtwizard_4_channel xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {gtwizard_4_channel.udo}

run -all

endsim

quit -force
