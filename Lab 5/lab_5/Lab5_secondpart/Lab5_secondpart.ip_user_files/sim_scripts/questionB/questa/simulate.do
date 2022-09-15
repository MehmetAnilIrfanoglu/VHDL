onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib questionB_opt

do {wave.do}

view wave
view structure
view signals

do {questionB.udo}

run -all

quit -force
