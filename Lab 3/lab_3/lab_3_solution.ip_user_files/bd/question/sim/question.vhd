--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu Oct 29 20:52:09 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target question.bd
--Design      : question
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity question is
  port (
    A : in STD_LOGIC;
    B : in STD_LOGIC;
    E : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of question : entity is "question,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=question,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of question : entity is "question.hwdef";
end question;

architecture STRUCTURE of question is
  component question_xup_nand2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_nand2_0_0;
  component question_xup_nor2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_nor2_0_0;
  component question_xup_xor2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_xor2_0_0;
  signal A_1 : STD_LOGIC;
  signal B_1 : STD_LOGIC;
  signal xup_nand2_0_y : STD_LOGIC;
  signal xup_nor2_0_y : STD_LOGIC;
  signal xup_xor2_0_y : STD_LOGIC;
begin
  A_1 <= A;
  B_1 <= B;
  E <= xup_xor2_0_y;
xup_nand2_0: component question_xup_nand2_0_0
     port map (
      a => A_1,
      b => B_1,
      y => xup_nand2_0_y
    );
xup_nor2_0: component question_xup_nor2_0_0
     port map (
      a => A_1,
      b => B_1,
      y => xup_nor2_0_y
    );
xup_xor2_0: component question_xup_xor2_0_0
     port map (
      a => xup_nor2_0_y,
      b => xup_nand2_0_y,
      y => xup_xor2_0_y
    );
end STRUCTURE;
