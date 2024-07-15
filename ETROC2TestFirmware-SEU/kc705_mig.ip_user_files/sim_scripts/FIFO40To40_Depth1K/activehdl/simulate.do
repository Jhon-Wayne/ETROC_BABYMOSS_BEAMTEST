onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+FIFO40To40_Depth1K -L xil_defaultlib -L xpm -L fifo_generator_v13_2_3 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.FIFO40To40_Depth1K xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {FIFO40To40_Depth1K.udo}

run -all

endsim

quit -force
