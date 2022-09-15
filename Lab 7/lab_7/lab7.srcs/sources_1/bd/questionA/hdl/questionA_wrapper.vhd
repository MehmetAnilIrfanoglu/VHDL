--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu Dec 10 13:22:09 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target questionA_wrapper.bd
--Design      : questionA_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity questionA_wrapper is
  port (
    CO : out STD_LOGIC;
    Q0 : out STD_LOGIC;
    Q1 : out STD_LOGIC;
    Q2 : out STD_LOGIC;
    Q3 : out STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC
  );
end questionA_wrapper;

architecture STRUCTURE of questionA_wrapper is
  component questionA is
  port (
    clk : in STD_LOGIC;
    reset : in STD_LOGIC;
    en : in STD_LOGIC;
    CO : out STD_LOGIC;
    Q0 : out STD_LOGIC;
    Q1 : out STD_LOGIC;
    Q2 : out STD_LOGIC;
    Q3 : out STD_LOGIC
  );
  end component questionA;
begin
questionA_i: component questionA
     port map (
      CO => CO,
      Q0 => Q0,
      Q1 => Q1,
      Q2 => Q2,
      Q3 => Q3,
      clk => clk,
      en => en,
      reset => reset
    );
end STRUCTURE;
