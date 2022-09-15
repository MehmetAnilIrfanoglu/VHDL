onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+firstquestion -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.firstquestion xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {firstquestion.udo}

run -all

endsim

quit -force
