//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Dec  9 19:59:51 2020
//Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
//Command     : generate_target questionA_wrapper.bd
//Design      : questionA_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module questionA_wrapper
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

  wire CO;
  wire Q0;
  wire Q1;
  wire Q2;
  wire Q3;
  wire clk;
  wire en;
  wire reset;

  questionA questionA_i
       (.CO(CO),
        .Q0(Q0),
        .Q1(Q1),
        .Q2(Q2),
        .Q3(Q3),
        .clk(clk),
        .en(en),
        .reset(reset));
endmodule
