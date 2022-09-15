// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Tue Nov 10 19:17:05 2020
// Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decoder2to4_xup_and2_7_0 -prefix
//               decoder2to4_xup_and2_7_0_ decoder2to4_xup_and2_0_0_stub.v
// Design      : decoder2to4_xup_and2_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7k70tfbv676-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "xup_and2,Vivado 2020.1" *)
module decoder2to4_xup_and2_7_0(a, b, y)
/* synthesis syn_black_box black_box_pad_pin="a,b,y" */;
  input a;
  input b;
  output y;
endmodule
