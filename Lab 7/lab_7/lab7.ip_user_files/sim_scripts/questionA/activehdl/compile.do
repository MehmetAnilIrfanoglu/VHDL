vlib work
vlib activehdl

vlib activehdl/xil_defaultlib

vmap xil_defaultlib activehdl/xil_defaultlib

vlog -work xil_defaultlib  -v2k5 \
"../../../bd/questionA/ipshared/37a5/src/xup_dff_en_reset.v" \
"../../../bd/questionA/ip/questionA_xup_dff_en_reset_0_0/sim/questionA_xup_dff_en_reset_0_0.v" \
"../../../bd/questionA/ip/questionA_xup_dff_en_reset_0_1/sim/questionA_xup_dff_en_reset_0_1.v" \
"../../../bd/questionA/ip/questionA_xup_dff_en_reset_0_2/sim/questionA_xup_dff_en_reset_0_2.v" \
"../../../bd/questionA/ip/questionA_xup_dff_en_reset_0_3/sim/questionA_xup_dff_en_reset_0_3.v" \
"../../../bd/questionA/ipshared/9859/src/xup_and2.v" \
"../../../bd/questionA/ip/questionA_xup_and2_0_0/sim/questionA_xup_and2_0_0.v" \
"../../../bd/questionA/ip/questionA_xup_and2_0_1/sim/questionA_xup_and2_0_1.v" \
"../../../bd/questionA/ip/questionA_xup_and2_0_2/sim/questionA_xup_and2_0_2.v" \
"../../../bd/questionA/ip/questionA_xup_and2_0_3/sim/questionA_xup_and2_0_3.v" \
"../../../bd/questionA/ip/questionA_xup_and2_0_4/sim/questionA_xup_and2_0_4.v" \
"../../../bd/questionA/ipshared/7294/src/xup_xor2.v" \
"../../../bd/questionA/ip/questionA_xup_xor2_0_0/sim/questionA_xup_xor2_0_0.v" \
"../../../bd/questionA/ip/questionA_xup_xor2_0_1/sim/questionA_xup_xor2_0_1.v" \
"../../../bd/questionA/ipshared/c3d7/src/xup_or2.v" \
"../../../bd/questionA/ip/questionA_xup_or2_0_0/sim/questionA_xup_or2_0_0.v" \
"../../../bd/questionA/ipshared/67eb/src/xup_inv.v" \
"../../../bd/questionA/ip/questionA_xup_inv_0_0/sim/questionA_xup_inv_0_0.v" \
"../../../bd/questionA/ip/questionA_xup_inv_0_1/sim/questionA_xup_inv_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/questionA/sim/questionA.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

