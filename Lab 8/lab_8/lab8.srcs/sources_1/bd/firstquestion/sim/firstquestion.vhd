--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu Dec 31 21:24:36 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target firstquestion.bd
--Design      : firstquestion
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity firstquestion is
  port (
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    x : in STD_LOGIC;
    z : out STD_LOGIC
  );
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of firstquestion : entity is "firstquestion,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=firstquestion,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=15,numReposBlks=15,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of firstquestion : entity is "firstquestion.hwdef";
end firstquestion;

architecture STRUCTURE of firstquestion is
  component firstquestion_xup_dff_en_reset_0_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component firstquestion_xup_dff_en_reset_0_0;
  component firstquestion_xup_dff_en_reset_1_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component firstquestion_xup_dff_en_reset_1_0;
  component firstquestion_xup_dff_en_reset_2_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component firstquestion_xup_dff_en_reset_2_0;
  component firstquestion_xup_dff_en_reset_3_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component firstquestion_xup_dff_en_reset_3_0;
  component firstquestion_xup_dff_en_reset_4_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component firstquestion_xup_dff_en_reset_4_0;
  component firstquestion_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_inv_0_0;
  component firstquestion_xup_or2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_or2_0_0;
  component firstquestion_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_and2_0_0;
  component firstquestion_xup_or4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_or4_0_0;
  component firstquestion_xup_and2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_and2_1_0;
  component firstquestion_xup_or2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_or2_1_0;
  component firstquestion_xup_and2_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_and2_2_0;
  component firstquestion_xup_and2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_and2_3_0;
  component firstquestion_xup_and2_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_and2_4_0;
  component firstquestion_xup_and2_5_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component firstquestion_xup_and2_5_0;
  signal clk_1 : STD_LOGIC;
  signal en_1 : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal x_1 : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_2_y : STD_LOGIC;
  signal xup_and2_3_y : STD_LOGIC;
  signal xup_and2_4_y : STD_LOGIC;
  signal xup_and2_5_y : STD_LOGIC;
  signal xup_dff_en_reset_0_q : STD_LOGIC;
  signal xup_dff_en_reset_1_q : STD_LOGIC;
  signal xup_dff_en_reset_2_q : STD_LOGIC;
  signal xup_dff_en_reset_3_q : STD_LOGIC;
  signal xup_dff_en_reset_4_q : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
  signal xup_or2_0_y : STD_LOGIC;
  signal xup_or2_1_y : STD_LOGIC;
  signal xup_or4_0_y : STD_LOGIC;
begin
  clk_1 <= clk;
  en_1 <= en;
  reset_1 <= reset;
  x_1 <= x;
  z <= xup_and2_5_y;
xup_and2_0: component firstquestion_xup_and2_0_0
     port map (
      a => xup_or2_0_y,
      b => xup_inv_0_y,
      y => xup_and2_0_y
    );
xup_and2_1: component firstquestion_xup_and2_1_0
     port map (
      a => xup_or4_0_y,
      b => x_1,
      y => xup_and2_1_y
    );
xup_and2_2: component firstquestion_xup_and2_2_0
     port map (
      a => xup_or2_1_y,
      b => xup_inv_0_y,
      y => xup_and2_2_y
    );
xup_and2_3: component firstquestion_xup_and2_3_0
     port map (
      a => xup_dff_en_reset_2_q,
      b => xup_inv_0_y,
      y => xup_and2_3_y
    );
xup_and2_4: component firstquestion_xup_and2_4_0
     port map (
      a => xup_dff_en_reset_1_q,
      b => x_1,
      y => xup_and2_4_y
    );
xup_and2_5: component firstquestion_xup_and2_5_0
     port map (
      a => xup_dff_en_reset_0_q,
      b => x_1,
      y => xup_and2_5_y
    );
xup_dff_en_reset_0: component firstquestion_xup_dff_en_reset_0_0
     port map (
      clk => clk_1,
      d => xup_and2_4_y,
      en => en_1,
      q => xup_dff_en_reset_0_q,
      reset => reset_1
    );
xup_dff_en_reset_1: component firstquestion_xup_dff_en_reset_1_0
     port map (
      clk => clk_1,
      d => xup_and2_3_y,
      en => en_1,
      q => xup_dff_en_reset_1_q,
      reset => reset_1
    );
xup_dff_en_reset_2: component firstquestion_xup_dff_en_reset_2_0
     port map (
      clk => clk_1,
      d => xup_and2_2_y,
      en => en_1,
      q => xup_dff_en_reset_2_q,
      reset => reset_1
    );
xup_dff_en_reset_3: component firstquestion_xup_dff_en_reset_3_0
     port map (
      clk => clk_1,
      d => xup_and2_1_y,
      en => en_1,
      q => xup_dff_en_reset_3_q,
      reset => reset_1
    );
xup_dff_en_reset_4: component firstquestion_xup_dff_en_reset_4_0
     port map (
      clk => clk_1,
      d => xup_and2_0_y,
      en => en_1,
      q => xup_dff_en_reset_4_q,
      reset => reset_1
    );
xup_inv_0: component firstquestion_xup_inv_0_0
     port map (
      a => x_1,
      y => xup_inv_0_y
    );
xup_or2_0: component firstquestion_xup_or2_0_0
     port map (
      a => xup_dff_en_reset_4_q,
      b => xup_dff_en_reset_1_q,
      y => xup_or2_0_y
    );
xup_or2_1: component firstquestion_xup_or2_1_0
     port map (
      a => xup_dff_en_reset_3_q,
      b => xup_dff_en_reset_0_q,
      y => xup_or2_1_y
    );
xup_or4_0: component firstquestion_xup_or4_0_0
     port map (
      a => xup_dff_en_reset_4_q,
      b => xup_dff_en_reset_3_q,
      c => xup_dff_en_reset_2_q,
      d => xup_dff_en_reset_0_q,
      y => xup_or4_0_y
    );
end STRUCTURE;
