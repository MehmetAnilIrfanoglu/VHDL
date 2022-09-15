--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu Jan  7 22:49:27 2021
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target design_1_wrapper.bd
--Design      : design_1_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_wrapper is
  port (
    AT0 : out STD_LOGIC;
    AT1 : out STD_LOGIC;
    AT2 : out STD_LOGIC;
    CMD : out STD_LOGIC;
    CMU : out STD_LOGIC;
    DRC : out STD_LOGIC;
    DRO : out STD_LOGIC;
    FC0 : in STD_LOGIC;
    FC2 : in STD_LOGIC;
    FCD1 : in STD_LOGIC;
    FCU1 : in STD_LOGIC;
    GT0 : in STD_LOGIC;
    GT1 : in STD_LOGIC;
    GT2 : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    enabling : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end design_1_wrapper;

architecture STRUCTURE of design_1_wrapper is
  component design_1 is
  port (
    FC0 : in STD_LOGIC;
    FC2 : in STD_LOGIC;
    FCU1 : in STD_LOGIC;
    FCD1 : in STD_LOGIC;
    GT0 : in STD_LOGIC;
    GT1 : in STD_LOGIC;
    GT2 : in STD_LOGIC;
    DRC : out STD_LOGIC;
    DRO : out STD_LOGIC;
    AT0 : out STD_LOGIC;
    AT1 : out STD_LOGIC;
    AT2 : out STD_LOGIC;
    CMU : out STD_LOGIC;
    CMD : out STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    clk : in STD_LOGIC;
    enabling : in STD_LOGIC
  );
  end component design_1;
begin
design_1_i: component design_1
     port map (
      AT0 => AT0,
      AT1 => AT1,
      AT2 => AT2,
      CMD => CMD,
      CMU => CMU,
      DRC => DRC,
      DRO => DRO,
      FC0 => FC0,
      FC2 => FC2,
      FCD1 => FCD1,
      FCU1 => FCU1,
      GT0 => GT0,
      GT1 => GT1,
      GT2 => GT2,
      clk => clk,
      en => en,
      enabling => enabling,
      reset => reset
    );
end STRUCTURE;
