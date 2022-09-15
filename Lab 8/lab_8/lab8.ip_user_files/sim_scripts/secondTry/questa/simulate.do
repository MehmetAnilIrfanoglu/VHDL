onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib secondTry_opt

do {wave.do}

view wave
view structure
view signals

do {secondTry.udo}

run -all

quit -force
