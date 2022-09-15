--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Tue Nov 10 19:15:30 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target decoder2to4.bd
--Design      : decoder2to4
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decoder2to4 is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    EN : in STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of decoder2to4 : entity is "decoder2to4,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=decoder2to4,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=10,numReposBlks=10,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of decoder2to4 : entity is "decoder2to4.hwdef";
end decoder2to4;

architecture STRUCTURE of decoder2to4 is
  component decoder2to4_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_and2_0_0;
  component decoder2to4_xup_and2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_and2_1_0;
  component decoder2to4_xup_and2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_and2_2_0;
  component decoder2to4_xup_and2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_and2_3_0;
  component decoder2to4_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_inv_0_0;
  component decoder2to4_xup_inv_1_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_inv_1_0;
  component decoder2to4_xup_and2_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_and2_4_0;
  component decoder2to4_xup_and2_5_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_and2_5_0;
  component decoder2to4_xup_and2_6_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_and2_6_0;
  component decoder2to4_xup_and2_7_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component decoder2to4_xup_and2_7_0;
  signal A0_1 : STD_LOGIC;
  signal A1_1 : STD_LOGIC;
  signal EN_1 : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_2_y : STD_LOGIC;
  signal xup_and2_3_y : STD_LOGIC;
  signal xup_and2_4_y : STD_LOGIC;
  signal xup_and2_5_y : STD_LOGIC;
  signal xup_and2_6_y : STD_LOGIC;
  signal xup_and2_7_y : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_inv_1_y : STD_LOGIC;
begin
  A0_1 <= A0;
  A1_1 <= A1;
  D0 <= xup_and2_3_y;
  D1 <= xup_and2_2_y;
  D2 <= xup_and2_0_y;
  D3 <= xup_and2_1_y;
  EN_1 <= EN;
xup_and2_0: component decoder2to4_xup_and2_0_0
     port map (
      a => EN_1,
      b => xup_and2_7_y,
      y => xup_and2_0_y
    );
xup_and2_1: component decoder2to4_xup_and2_1_0
     port map (
      a => EN_1,
      b => xup_and2_5_y,
      y => xup_and2_1_y
    );
xup_and2_2: component decoder2to4_xup_and2_2_0
     port map (
      a => EN_1,
      b => xup_and2_6_y,
      y => xup_and2_2_y
    );
xup_and2_3: component decoder2to4_xup_and2_3_0
     port map (
      a => EN_1,
      b => xup_and2_4_y,
      y => xup_and2_3_y
    );
xup_and2_4: component decoder2to4_xup_and2_4_0
     port map (
      a => xup_inv_0_y,
      b => xup_inv_1_y,
      y => xup_and2_4_y
    );
xup_and2_5: component decoder2to4_xup_and2_5_0
     port map (
      a => A1_1,
      b => A0_1,
      y => xup_and2_5_y
    );
xup_and2_6: component decoder2to4_xup_and2_6_0
     port map (
      a => xup_inv_0_y,
      b => A0_1,
      y => xup_and2_6_y
    );
xup_and2_7: component decoder2to4_xup_and2_7_0
     port map (
      a => A1_1,
      b => xup_inv_1_y,
      y => xup_and2_7_y
    );
xup_inv_0: component decoder2to4_xup_inv_0_0
     port map (
      a => A1_1,
      y => xup_inv_0_y
    );
xup_inv_1: component decoder2to4_xup_inv_1_0
     port map (
      a => A0_1,
      y => xup_inv_1_y
    );
end STRUCTURE;
