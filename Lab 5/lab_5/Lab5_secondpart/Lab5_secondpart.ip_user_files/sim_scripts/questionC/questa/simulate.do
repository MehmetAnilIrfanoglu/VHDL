onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib questionC_opt

do {wave.do}

view wave
view structure
view signals

do {questionC.udo}

run -all

quit -force
