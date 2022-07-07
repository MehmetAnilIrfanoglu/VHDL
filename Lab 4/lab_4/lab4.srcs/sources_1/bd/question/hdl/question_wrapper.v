//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
//Date        : Wed Nov  4 12:35:52 2020
//Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
//Command     : generate_target question_wrapper.bd
//Design      : question_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module question_wrapper
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

  wire A0;
  wire A1;
  wire A2;
  wire A3;
  wire O;

  question question_i
       (.A0(A0),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .O(O));
endmodule
