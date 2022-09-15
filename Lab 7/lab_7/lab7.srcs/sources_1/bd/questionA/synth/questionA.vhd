--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu Dec 10 13:22:09 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target questionA.bd
--Design      : questionA
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity questionA is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of questionA : entity is "questionA,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=questionA,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=14,numReposBlks=14,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of questionA : entity is "questionA.hwdef";
end questionA;

architecture STRUCTURE of questionA is
  component questionA_xup_dff_en_reset_0_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component questionA_xup_dff_en_reset_0_0;
  component questionA_xup_dff_en_reset_0_1 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component questionA_xup_dff_en_reset_0_1;
  component questionA_xup_dff_en_reset_0_2 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component questionA_xup_dff_en_reset_0_2;
  component questionA_xup_dff_en_reset_0_3 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component questionA_xup_dff_en_reset_0_3;
  component questionA_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_and2_0_0;
  component questionA_xup_and2_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_and2_0_1;
  component questionA_xup_and2_0_2 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_and2_0_2;
  component questionA_xup_and2_0_3 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_and2_0_3;
  component questionA_xup_and2_0_4 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_and2_0_4;
  component questionA_xup_xor2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_xor2_0_0;
  component questionA_xup_xor2_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_xor2_0_1;
  component questionA_xup_or2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_or2_0_0;
  component questionA_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_inv_0_0;
  component questionA_xup_inv_0_1 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionA_xup_inv_0_1;
  signal clk_1 : STD_LOGIC;
  signal en_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_2_y : STD_LOGIC;
  signal xup_and2_3_y : STD_LOGIC;
  signal xup_and2_4_y : STD_LOGIC;
  signal xup_dff_en_reset_0_q : STD_LOGIC;
  signal xup_dff_en_reset_1_q : STD_LOGIC;
  signal xup_dff_en_reset_2_q : STD_LOGIC;
  signal xup_dff_en_reset_3_q : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_inv_1_y : STD_LOGIC;
  signal xup_or2_0_y : STD_LOGIC;
  signal xup_xor2_0_y : STD_LOGIC;
  signal xup_xor2_1_y : STD_LOGIC;
begin
  CO <= xup_and2_4_y;
  Q0 <= xup_dff_en_reset_0_q;
  Q1 <= xup_dff_en_reset_1_q;
  Q2 <= xup_dff_en_reset_2_q;
  Q3 <= xup_dff_en_reset_3_q;
  clk_1 <= clk;
  en_1 <= en;
  reset_1 <= reset;
xup_and2_0: component questionA_xup_and2_0_0
     port map (
      a => xup_inv_1_y,
      b => xup_dff_en_reset_0_q,
      y => xup_and2_0_y
    );
xup_and2_1: component questionA_xup_and2_0_1
     port map (
      a => xup_dff_en_reset_0_q,
      b => xup_dff_en_reset_1_q,
      y => xup_and2_1_y
    );
xup_and2_2: component questionA_xup_and2_0_2
     port map (
      a => xup_dff_en_reset_3_q,
      b => xup_inv_0_y,
      y => xup_and2_2_y
    );
xup_and2_3: component questionA_xup_and2_0_3
     port map (
      a => xup_dff_en_reset_2_q,
      b => xup_and2_1_y,
      y => xup_and2_3_y
    );
xup_and2_4: component questionA_xup_and2_0_4
     port map (
      a => xup_dff_en_reset_0_q,
      b => xup_dff_en_reset_3_q,
      y => xup_and2_4_y
    );
xup_dff_en_reset_0: component questionA_xup_dff_en_reset_0_0
     port map (
      clk => clk_1,
      d => xup_inv_0_y,
      en => en_1,
      q => xup_dff_en_reset_0_q,
      reset => reset_1
    );
xup_dff_en_reset_1: component questionA_xup_dff_en_reset_0_1
     port map (
      clk => clk_1,
      d => xup_xor2_0_y,
      en => en_1,
      q => xup_dff_en_reset_1_q,
      reset => reset_1
    );
xup_dff_en_reset_2: component questionA_xup_dff_en_reset_0_2
     port map (
      clk => clk_1,
      d => xup_xor2_1_y,
      en => en_1,
      q => xup_dff_en_reset_2_q,
      reset => reset_1
    );
xup_dff_en_reset_3: component questionA_xup_dff_en_reset_0_3
     port map (
      clk => clk_1,
      d => xup_or2_0_y,
      en => en_1,
      q => xup_dff_en_reset_3_q,
      reset => reset_1
    );
xup_inv_0: component questionA_xup_inv_0_0
     port map (
      a => xup_dff_en_reset_0_q,
      y => xup_inv_0_y
    );
xup_inv_1: component questionA_xup_inv_0_1
     port map (
      a => xup_dff_en_reset_3_q,
      y => xup_inv_1_y
    );
xup_or2_0: component questionA_xup_or2_0_0
     port map (
      a => xup_and2_3_y,
      b => xup_and2_2_y,
      y => xup_or2_0_y
    );
xup_xor2_0: component questionA_xup_xor2_0_0
     port map (
      a => xup_and2_0_y,
      b => xup_dff_en_reset_1_q,
      y => xup_xor2_0_y
    );
xup_xor2_1: component questionA_xup_xor2_0_1
     port map (
      a => xup_and2_1_y,
      b => xup_dff_en_reset_2_q,
      y => xup_xor2_1_y
    );
end STRUCTURE;
