vlib work
vlib riviera

vlib riviera/xil_defaultlib

vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ipshared/9859/src/xup_and2.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_and2_0_0/sim/decoder2to4_xup_and2_0_0.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_and2_1_0/sim/decoder2to4_xup_and2_1_0.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_and2_7_0/sim/decoder2to4_xup_and2_7_0.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_and2_4_0/sim/decoder2to4_xup_and2_4_0.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_and2_3_0/sim/decoder2to4_xup_and2_3_0.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ipshared/67eb/src/xup_inv.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_inv_0_0/sim/decoder2to4_xup_inv_0_0.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_and2_5_0/sim/decoder2to4_xup_and2_5_0.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_and2_6_0/sim/decoder2to4_xup_and2_6_0.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_and2_2_0/sim/decoder2to4_xup_and2_2_0.v" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/bd/decoder2to4/ip/decoder2to4_xup_inv_1_0/sim/decoder2to4_xup_inv_1_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/questionB/ipshared/ae1f/bd/decoder2to4/sim/decoder2to4.vhd" \
"../../../bd/questionB/ipshared/ae1f/imports/hdl/decoder2to4_wrapper.vhd" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_0_0/sim/questionB_decoder2to4_wrapper_0_0.vhd" \
"../../../bd/questionB/ip/questionB_decoder2to4_wrapper_1_0/sim/questionB_decoder2to4_wrapper_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/questionB/ip/questionB_xup_inv_0_0/sim/questionB_xup_inv_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/questionB/sim/questionB.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

