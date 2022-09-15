vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib

vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xil_defaultlib  \
"../../../bd/firstquestion/ipshared/37a5/src/xup_dff_en_reset.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_dff_en_reset_0_0/sim/firstquestion_xup_dff_en_reset_0_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_dff_en_reset_1_0/sim/firstquestion_xup_dff_en_reset_1_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_dff_en_reset_2_0/sim/firstquestion_xup_dff_en_reset_2_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_dff_en_reset_3_0/sim/firstquestion_xup_dff_en_reset_3_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_dff_en_reset_4_0/sim/firstquestion_xup_dff_en_reset_4_0.v" \
"../../../bd/firstquestion/ipshared/67eb/src/xup_inv.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_inv_0_0/sim/firstquestion_xup_inv_0_0.v" \
"../../../bd/firstquestion/ipshared/c3d7/src/xup_or2.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_or2_0_0/sim/firstquestion_xup_or2_0_0.v" \
"../../../bd/firstquestion/ipshared/9859/src/xup_and2.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_and2_0_0/sim/firstquestion_xup_and2_0_0.v" \
"../../../bd/firstquestion/ipshared/8053/src/xup_or4.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_or4_0_0/sim/firstquestion_xup_or4_0_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_and2_1_0/sim/firstquestion_xup_and2_1_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_or2_1_0/sim/firstquestion_xup_or2_1_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_and2_2_0/sim/firstquestion_xup_and2_2_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_and2_3_0/sim/firstquestion_xup_and2_3_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_and2_4_0/sim/firstquestion_xup_and2_4_0.v" \
"../../../bd/firstquestion/ip/firstquestion_xup_and2_5_0/sim/firstquestion_xup_and2_5_0.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/firstquestion/sim/firstquestion.vhd" \

vlog -work xil_defaultlib \
"glbl.v"

