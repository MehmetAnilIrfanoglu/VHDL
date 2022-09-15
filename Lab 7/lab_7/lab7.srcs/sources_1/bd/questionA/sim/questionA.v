//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Dec  9 19:59:51 2020
//Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
//Command     : generate_target questionA.bd
//Design      : questionA
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "questionA,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=questionA,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "questionA.hwdef" *) 
module questionA
   (CO,
    Q0,
    Q1,
    Q2,
    Q3,
    clk,
    en,
    reset);
  output CO;
  output Q0;
  output Q1;
  output Q2;
  output Q3;
  input clk;
  input en;
  input reset;

  wire clk_1;
  wire en_1;
  wire reset_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_and2_2_y;
  wire xup_and2_3_y;
  wire xup_and2_4_y;
  wire xup_dff_en_reset_0_q;
  wire xup_dff_en_reset_1_q;
  wire xup_dff_en_reset_2_q;
  wire xup_dff_en_reset_3_q;
  wire xup_inv_0_y;
  wire xup_inv_1_y;
  wire xup_or2_0_y;
  wire xup_xor2_0_y;
  wire xup_xor2_1_y;

  assign CO = xup_and2_4_y;
  assign Q0 = xup_dff_en_reset_0_q;
  assign Q1 = xup_dff_en_reset_1_q;
  assign Q2 = xup_dff_en_reset_2_q;
  assign Q3 = xup_dff_en_reset_3_q;
  assign clk_1 = clk;
  assign en_1 = en;
  assign reset_1 = reset;
  questionA_xup_and2_0_0 xup_and2_0
       (.a(xup_inv_1_y),
        .b(xup_dff_en_reset_0_q),
        .y(xup_and2_0_y));
  questionA_xup_and2_0_1 xup_and2_1
       (.a(xup_dff_en_reset_0_q),
        .b(xup_dff_en_reset_1_q),
        .y(xup_and2_1_y));
  questionA_xup_and2_0_2 xup_and2_2
       (.a(xup_dff_en_reset_3_q),
        .b(xup_inv_0_y),
        .y(xup_and2_2_y));
  questionA_xup_and2_0_3 xup_and2_3
       (.a(xup_dff_en_reset_2_q),
        .b(xup_and2_1_y),
        .y(xup_and2_3_y));
  questionA_xup_and2_0_4 xup_and2_4
       (.a(xup_dff_en_reset_0_q),
        .b(xup_dff_en_reset_3_q),
        .y(xup_and2_4_y));
  questionA_xup_dff_en_reset_0_0 xup_dff_en_reset_0
       (.clk(clk_1),
        .d(xup_inv_0_y),
        .en(en_1),
        .q(xup_dff_en_reset_0_q),
        .reset(reset_1));
  questionA_xup_dff_en_reset_0_1 xup_dff_en_reset_1
       (.clk(clk_1),
        .d(xup_xor2_0_y),
        .en(en_1),
        .q(xup_dff_en_reset_1_q),
        .reset(reset_1));
  questionA_xup_dff_en_reset_0_2 xup_dff_en_reset_2
       (.clk(clk_1),
        .d(xup_xor2_1_y),
        .en(en_1),
        .q(xup_dff_en_reset_2_q),
        .reset(reset_1));
  questionA_xup_dff_en_reset_0_3 xup_dff_en_reset_3
       (.clk(clk_1),
        .d(xup_or2_0_y),
        .en(en_1),
        .q(xup_dff_en_reset_3_q),
        .reset(reset_1));
  questionA_xup_inv_0_0 xup_inv_0
       (.a(xup_dff_en_reset_0_q),
        .y(xup_inv_0_y));
  questionA_xup_inv_0_1 xup_inv_1
       (.a(xup_dff_en_reset_3_q),
        .y(xup_inv_1_y));
  questionA_xup_or2_0_0 xup_or2_0
       (.a(xup_and2_3_y),
        .b(xup_and2_2_y),
        .y(xup_or2_0_y));
  questionA_xup_xor2_0_0 xup_xor2_0
       (.a(xup_and2_0_y),
        .b(xup_dff_en_reset_1_q),
        .y(xup_xor2_0_y));
  questionA_xup_xor2_0_1 xup_xor2_1
       (.a(xup_and2_1_y),
        .b(xup_dff_en_reset_2_q),
        .y(xup_xor2_1_y));
endmodule
