--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Tue Nov 10 23:49:32 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target questionC_wrapper.bd
--Design      : questionC_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity questionC_wrapper is
  port (
    EN : in STD_LOGIC;
    X0 : in STD_LOGIC;
    X1 : in STD_LOGIC;
    X2 : in STD_LOGIC;
    Y0 : out STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC;
    Y4 : out STD_LOGIC;
    Y5 : out STD_LOGIC;
    Y6 : out STD_LOGIC;
    Y7 : out STD_LOGIC
  );
end questionC_wrapper;

architecture STRUCTURE of questionC_wrapper is
  component questionC is
  port (
    X0 : in STD_LOGIC;
    X1 : in STD_LOGIC;
    X2 : in STD_LOGIC;
    Y0 : out STD_LOGIC;
    EN : in STD_LOGIC;
    Y1 : out STD_LOGIC;
    Y2 : out STD_LOGIC;
    Y3 : out STD_LOGIC;
    Y4 : out STD_LOGIC;
    Y5 : out STD_LOGIC;
    Y6 : out STD_LOGIC;
    Y7 : out STD_LOGIC
  );
  end component questionC;
begin
questionC_i: component questionC
     port map (
      EN => EN,
      X0 => X0,
      X1 => X1,
      X2 => X2,
      Y0 => Y0,
      Y1 => Y1,
      Y2 => Y2,
      Y3 => Y3,
      Y4 => Y4,
      Y5 => Y5,
      Y6 => Y6,
      Y7 => Y7
    );
end STRUCTURE;
