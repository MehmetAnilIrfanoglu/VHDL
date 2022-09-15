onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib questionA_opt

do {wave.do}

view wave
view structure
view signals

do {questionA.udo}

run -all

quit -force
