//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Nov  4 12:35:52 2020
//Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
//Command     : generate_target question.bd
//Design      : question
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "question,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=question,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "question.hwdef" *) 
module question
   (A0,
    A1,
    A2,
    A3,
    O);
  input A0;
  input A1;
  input A2;
  input A3;
  output O;

  wire A0_1;
  wire A1_1;
  wire A2_1;
  wire A3_1;
  wire xup_and2_0_y;
  wire xup_and2_1_y;
  wire xup_and2_2_y;
  wire xup_and3_0_y;
  wire xup_inv_0_y;
  wire xup_inv_1_y;
  wire xup_inv_2_y;
  wire xup_inv_3_y;
  wire xup_or4_0_y;

  assign A0_1 = A0;
  assign A1_1 = A1;
  assign A2_1 = A2;
  assign A3_1 = A3;
  assign O = xup_or4_0_y;
  question_xup_and2_0_0 xup_and2_0
       (.a(xup_inv_0_y),
        .b(xup_inv_1_y),
        .y(xup_and2_0_y));
  question_xup_and2_1_0 xup_and2_1
       (.a(A2_1),
        .b(xup_inv_2_y),
        .y(xup_and2_1_y));
  question_xup_and2_2_0 xup_and2_2
       (.a(A3_1),
        .b(xup_inv_3_y),
        .y(xup_and2_2_y));
  question_xup_and3_0_0 xup_and3_0
       (.a(A3_1),
        .b(A2_1),
        .c(A1_1),
        .y(xup_and3_0_y));
  question_xup_inv_0_0 xup_inv_0
       (.a(A2_1),
        .y(xup_inv_0_y));
  question_xup_inv_1_0 xup_inv_1
       (.a(A1_1),
        .y(xup_inv_1_y));
  question_xup_inv_2_0 xup_inv_2
       (.a(A0_1),
        .y(xup_inv_2_y));
  question_xup_inv_3_0 xup_inv_3
       (.a(A0_1),
        .y(xup_inv_3_y));
  question_xup_or4_0_0 xup_or4_0
       (.a(xup_and2_0_y),
        .b(xup_and2_1_y),
        .c(xup_and2_2_y),
        .d(xup_and3_0_y),
        .y(xup_or4_0_y));
endmodule
