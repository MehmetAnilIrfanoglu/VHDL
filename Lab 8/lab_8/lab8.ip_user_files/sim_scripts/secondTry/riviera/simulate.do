onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+secondTry -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.secondTry xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {secondTry.udo}

run -all

endsim

quit -force
