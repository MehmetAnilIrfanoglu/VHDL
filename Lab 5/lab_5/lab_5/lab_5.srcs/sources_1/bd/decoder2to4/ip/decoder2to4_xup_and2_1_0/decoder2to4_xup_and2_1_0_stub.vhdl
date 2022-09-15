-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Nov 10 19:17:05 2020
-- Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decoder2to4_xup_and2_1_0 -prefix
--               decoder2to4_xup_and2_1_0_ decoder2to4_xup_and2_0_0_stub.vhdl
-- Design      : decoder2to4_xup_and2_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decoder2to4_xup_and2_1_0 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );

end decoder2to4_xup_and2_1_0;

architecture stub of decoder2to4_xup_and2_1_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "a,b,y";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "xup_and2,Vivado 2020.1";
begin
end;
