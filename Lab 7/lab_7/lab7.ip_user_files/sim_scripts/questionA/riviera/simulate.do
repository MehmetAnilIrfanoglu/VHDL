onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+questionA -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.questionA xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {questionA.udo}

run -all

endsim

quit -force
