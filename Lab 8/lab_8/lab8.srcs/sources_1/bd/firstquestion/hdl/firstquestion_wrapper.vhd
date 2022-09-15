--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu Dec 31 21:24:36 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target firstquestion_wrapper.bd
--Design      : firstquestion_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity firstquestion_wrapper is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    x : in STD_LOGIC;
    z : out STD_LOGIC
  );
end firstquestion_wrapper;

architecture STRUCTURE of firstquestion_wrapper is
  component firstquestion is
  port (
    x : in STD_LOGIC;
    z : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC
  );
  end component firstquestion;
begin
firstquestion_i: component firstquestion
     port map (
      clk => clk,
      en => en,
      reset => reset,
      x => x,
      z => z
    );
end STRUCTURE;
