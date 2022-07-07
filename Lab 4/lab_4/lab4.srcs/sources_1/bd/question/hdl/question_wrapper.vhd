--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sun Nov  8 17:00:53 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target question_wrapper.bd
--Design      : question_wrapper
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity question_wrapper is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    O : out STD_LOGIC
  );
end question_wrapper;

architecture STRUCTURE of question_wrapper is
  component question is
  port (
    A3 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A0 : in STD_LOGIC;
    O : out STD_LOGIC
  );
  end component question;
begin
question_i: component question
     port map (
      A0 => A0,
      A1 => A1,
      A2 => A2,
      A3 => A3,
      O => O
    );
end STRUCTURE;
