vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  -incr \
"../../../bd/question/ipshared/9859/src/xup_and2.v" \
"../../../bd/question/ip/question_xup_and2_0_0/sim/question_xup_and2_0_0.v" \
"../../../bd/question/ipshared/67eb/src/xup_inv.v" \
"../../../bd/question/ip/question_xup_inv_0_0/sim/question_xup_inv_0_0.v" \
"../../../bd/question/ip/question_xup_inv_1_0/sim/question_xup_inv_1_0.v" \
"../../../bd/question/ip/question_xup_and2_1_0/sim/question_xup_and2_1_0.v" \
"../../../bd/question/ip/question_xup_inv_2_0/sim/question_xup_inv_2_0.v" \
"../../../bd/question/ip/question_xup_and2_2_0/sim/question_xup_and2_2_0.v" \
"../../../bd/question/ip/question_xup_inv_3_0/sim/question_xup_inv_3_0.v" \
"../../../bd/question/ipshared/2167/src/xup_and3.v" \
"../../../bd/question/ip/question_xup_and3_0_0/sim/question_xup_and3_0_0.v" \
"../../../bd/question/ipshared/8053/src/xup_or4.v" \
"../../../bd/question/ip/question_xup_or4_0_0/sim/question_xup_or4_0_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/question/sim/question.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

