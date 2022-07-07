--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Sun Nov  8 17:00:53 2020
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
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    A2 : in STD_LOGIC;
    A3 : in STD_LOGIC;
    O : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of question : entity is "question,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=question,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of question : entity is "question.hwdef";
end question;

architecture STRUCTURE of question is
  component question_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_and2_0_0;
  component question_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_inv_0_0;
  component question_xup_inv_1_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_inv_1_0;
  component question_xup_and2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_and2_1_0;
  component question_xup_inv_2_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_inv_2_0;
  component question_xup_and2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_and2_2_0;
  component question_xup_inv_3_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_inv_3_0;
  component question_xup_and3_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_and3_0_0;
  component question_xup_or4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component question_xup_or4_0_0;
  signal A0_1 : STD_LOGIC;
  signal A1_1 : STD_LOGIC;
  signal A2_1 : STD_LOGIC;
  signal A3_1 : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_2_y : STD_LOGIC;
  signal xup_and3_0_y : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_inv_1_y : STD_LOGIC;
  signal xup_inv_2_y : STD_LOGIC;
  signal xup_inv_3_y : STD_LOGIC;
  signal xup_or4_0_y : STD_LOGIC;
begin
  A0_1 <= A0;
  A1_1 <= A1;
  A2_1 <= A2;
  A3_1 <= A3;
  O <= xup_or4_0_y;
xup_and2_0: component question_xup_and2_0_0
     port map (
      a => xup_inv_0_y,
      b => xup_inv_1_y,
      y => xup_and2_0_y
    );
xup_and2_1: component question_xup_and2_1_0
     port map (
      a => A2_1,
      b => xup_inv_2_y,
      y => xup_and2_1_y
    );
xup_and2_2: component question_xup_and2_2_0
     port map (
      a => A3_1,
      b => xup_inv_3_y,
      y => xup_and2_2_y
    );
xup_and3_0: component question_xup_and3_0_0
     port map (
      a => A3_1,
      b => A2_1,
      c => A1_1,
      y => xup_and3_0_y
    );
xup_inv_0: component question_xup_inv_0_0
     port map (
      a => A2_1,
      y => xup_inv_0_y
    );
xup_inv_1: component question_xup_inv_1_0
     port map (
      a => A1_1,
      y => xup_inv_1_y
    );
xup_inv_2: component question_xup_inv_2_0
     port map (
      a => A0_1,
      y => xup_inv_2_y
    );
xup_inv_3: component question_xup_inv_3_0
     port map (
      a => A0_1,
      y => xup_inv_3_y
    );
xup_or4_0: component question_xup_or4_0_0
     port map (
      a => xup_and2_0_y,
      b => xup_and2_1_y,
      c => xup_and2_2_y,
      d => xup_and3_0_y,
      y => xup_or4_0_y
    );
end STRUCTURE;
