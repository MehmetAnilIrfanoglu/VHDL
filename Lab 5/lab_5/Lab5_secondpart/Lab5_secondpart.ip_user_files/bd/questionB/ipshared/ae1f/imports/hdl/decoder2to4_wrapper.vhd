--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Tue Nov 10 19:14:39 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target decoder2to4_wrapper.bd
--Design      : decoder2to4_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decoder2to4_wrapper is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    EN : in STD_LOGIC
  );
end decoder2to4_wrapper;

architecture STRUCTURE of decoder2to4_wrapper is
  component decoder2to4 is
  port (
    EN : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A0 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC
  );
  end component decoder2to4;
begin
decoder2to4_i: component decoder2to4
     port map (
      A0 => A0,
      A1 => A1,
      D0 => D0,
      D1 => D1,
      D2 => D2,
      D3 => D3,
      EN => EN
    );
end STRUCTURE;
