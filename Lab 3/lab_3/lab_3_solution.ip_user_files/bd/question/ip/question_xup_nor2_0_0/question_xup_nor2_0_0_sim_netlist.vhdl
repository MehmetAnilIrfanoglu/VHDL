-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Thu Oct 29 20:57:19 2020
-- Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/anil_/lab_3_solution/lab_3_solution.srcs/sources_1/bd/question/ip/question_xup_nor2_0_0/question_xup_nor2_0_0_sim_netlist.vhdl
-- Design      : question_xup_nor2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity question_xup_nor2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of question_xup_nor2_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of question_xup_nor2_0_0 : entity is "question_xup_nor2_0_0,xup_nor2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of question_xup_nor2_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of question_xup_nor2_0_0 : entity is "xup_nor2,Vivado 2020.1";
end question_xup_nor2_0_0;

architecture STRUCTURE of question_xup_nor2_0_0 is
begin
y_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a,
      I1 => b,
      O => y
    );
end STRUCTURE;
