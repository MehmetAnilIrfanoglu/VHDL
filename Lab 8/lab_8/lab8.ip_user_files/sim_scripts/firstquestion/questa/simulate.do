onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib firstquestion_opt

do {wave.do}

view wave
view structure
view signals

do {firstquestion.udo}

run -all

quit -force
