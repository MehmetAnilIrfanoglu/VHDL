onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib question_opt

do {wave.do}

view wave
view structure
view signals

do {question.udo}

run -all

quit -force
