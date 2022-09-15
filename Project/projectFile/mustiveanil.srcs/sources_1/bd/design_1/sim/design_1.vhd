--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Thu Jan  7 22:49:27 2021
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target design_1.bd
--Design      : design_1
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1 is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of design_1 : entity is "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=56,numReposBlks=56,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of design_1 : entity is "design_1.hwdef";
end design_1;

architecture STRUCTURE of design_1 is
  component design_1_xup_dff_en_reset_0_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_0;
  component design_1_xup_dff_en_reset_0_1 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_1;
  component design_1_xup_dff_en_reset_0_2 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_2;
  component design_1_Wait0_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_Wait0_0;
  component design_1_xup_or2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or2_0_0;
  component design_1_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_0_0;
  component design_1_xup_dff_en_reset_0_3 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_3;
  component design_1_xup_dff_en_reset_0_4 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_4;
  component design_1_xup_and4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and4_0_0;
  component design_1_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_inv_0_0;
  component design_1_xup_inv_0_1 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_inv_0_1;
  component design_1_xup_inv_0_2 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_inv_0_2;
  component design_1_xup_inv_0_3 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_inv_0_3;
  component design_1_xup_inv_0_4 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_inv_0_4;
  component design_1_xup_inv_0_5 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_inv_0_5;
  component design_1_xup_inv_0_6 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_inv_0_6;
  component design_1_xup_or4_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or4_0_0;
  component design_1_xup_dff_en_reset_0_5 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_5;
  component design_1_xup_dff_en_reset_0_6 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_6;
  component design_1_DoorOpen1_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_DoorOpen1_0;
  component design_1_DoorOpen1_1 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_DoorOpen1_1;
  component design_1_xup_or3_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or3_0_0;
  component design_1_xup_and2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_3_0;
  component design_1_xup_and2_3_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_3_1;
  component design_1_xup_nor2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_nor2_0_0;
  component design_1_xup_nor2_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_nor2_0_1;
  component design_1_xup_and5_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    e : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and5_0_0;
  component design_1_xup_or3_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or3_1_0;
  component design_1_xup_or3_1_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or3_1_1;
  component design_1_xup_or2_1_2 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or2_1_2;
  component design_1_xup_and2_5_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_5_0;
  component design_1_xup_dff_en_reset_0_7 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_7;
  component design_1_xup_or3_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or3_3_0;
  component design_1_xup_dff_en_reset_0_8 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_8;
  component design_1_xup_and3_0_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and3_0_1;
  component design_1_xup_and5_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    e : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and5_1_0;
  component design_1_xup_or3_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or3_4_0;
  component design_1_xup_or3_4_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or3_4_1;
  component design_1_xup_or2_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or2_3_0;
  component design_1_xup_dff_en_reset_0_9 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_xup_dff_en_reset_0_9;
  component design_1_FLOOR2_0 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_FLOOR2_0;
  component design_1_FLOOR2_1 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_FLOOR2_1;
  component design_1_FLOOR2_2 is
  port (
    d : in STD_LOGIC;
    clk : in STD_LOGIC;
    en : in STD_LOGIC;
    reset : in STD_LOGIC;
    q : out STD_LOGIC
  );
  end component design_1_FLOOR2_2;
  component design_1_xup_or2_4_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or2_4_0;
  component design_1_xup_and2_1_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and2_1_1;
  component design_1_xup_or2_5_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or2_5_0;
  component design_1_xup_and4_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_and4_1_0;
  component design_1_xup_or4_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or4_1_0;
  component design_1_xup_or3_6_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or3_6_0;
  component design_1_xup_or3_7_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or3_7_0;
  component design_1_xup_or3_7_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or3_7_1;
  component design_1_xup_or4_2_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or4_2_0;
  component design_1_xup_or4_2_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or4_2_1;
  component design_1_xup_or4_3_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    c : in STD_LOGIC;
    d : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or4_3_0;
  component design_1_xup_or2_2_1 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or2_2_1;
  component design_1_xup_or2_2_2 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component design_1_xup_or2_2_2;
  signal DoorClose0_q : STD_LOGIC;
  signal DoorClose1_q : STD_LOGIC;
  signal DoorClose2_q : STD_LOGIC;
  signal DoorOpen0_q : STD_LOGIC;
  signal DoorOpen1_q : STD_LOGIC;
  signal DoorOpen2_q : STD_LOGIC;
  signal ED1_q : STD_LOGIC;
  signal ED2_q : STD_LOGIC;
  signal EU1_q : STD_LOGIC;
  signal EU2_q : STD_LOGIC;
  signal FC0_1 : STD_LOGIC;
  signal FC2_1 : STD_LOGIC;
  signal FCD1_1 : STD_LOGIC;
  signal FCU1_1 : STD_LOGIC;
  signal FLOOR0_q : STD_LOGIC;
  signal FLOOR1_q : STD_LOGIC;
  signal FLOOR2_q : STD_LOGIC;
  signal GT0_1 : STD_LOGIC;
  signal GT1_1 : STD_LOGIC;
  signal GT2_1 : STD_LOGIC;
  signal Wait0_q : STD_LOGIC;
  signal Wait1_q : STD_LOGIC;
  signal Wait2_q : STD_LOGIC;
  signal clk_1 : STD_LOGIC;
  signal en_1 : STD_LOGIC;
  signal notFC0_y : STD_LOGIC;
  signal notFC2_y : STD_LOGIC;
  signal notFCD1_y : STD_LOGIC;
  signal notFCU1_y : STD_LOGIC;
  signal notGT0_y : STD_LOGIC;
  signal notGT1_y : STD_LOGIC;
  signal notGT2_y : STD_LOGIC;
  signal reset_1 : STD_LOGIC;
  signal tempInput_1 : STD_LOGIC;
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_and2_3_y : STD_LOGIC;
  signal xup_and2_4_y : STD_LOGIC;
  signal xup_and2_5_y : STD_LOGIC;
  signal xup_and3_0_y : STD_LOGIC;
  signal xup_and4_0_y : STD_LOGIC;
  signal xup_and4_1_y : STD_LOGIC;
  signal xup_and5_0_y : STD_LOGIC;
  signal xup_and5_1_y : STD_LOGIC;
  signal xup_nor2_0_y : STD_LOGIC;
  signal xup_nor2_1_y : STD_LOGIC;
  signal xup_or2_0_y : STD_LOGIC;
  signal xup_or2_1_y : STD_LOGIC;
  signal xup_or2_2_y : STD_LOGIC;
  signal xup_or2_3_y : STD_LOGIC;
  signal xup_or2_4_y : STD_LOGIC;
  signal xup_or2_5_y : STD_LOGIC;
  signal xup_or2_6_y : STD_LOGIC;
  signal xup_or3_0_y : STD_LOGIC;
  signal xup_or3_1_y : STD_LOGIC;
  signal xup_or3_2_y : STD_LOGIC;
  signal xup_or3_3_y : STD_LOGIC;
  signal xup_or3_4_y : STD_LOGIC;
  signal xup_or3_5_y : STD_LOGIC;
  signal xup_or3_6_y : STD_LOGIC;
  signal xup_or3_7_y : STD_LOGIC;
  signal xup_or3_8_y : STD_LOGIC;
  signal xup_or4_0_y : STD_LOGIC;
  signal xup_or4_1_y : STD_LOGIC;
  signal xup_or4_2_y : STD_LOGIC;
  signal xup_or4_3_y : STD_LOGIC;
  signal xup_or4_4_y : STD_LOGIC;
begin
  AT0 <= xup_or4_4_y;
  AT1 <= xup_or4_3_y;
  AT2 <= xup_or4_2_y;
  CMD <= xup_or2_2_y;
  CMU <= xup_or2_6_y;
  DRC <= xup_or3_8_y;
  DRO <= xup_or3_7_y;
  FC0_1 <= FC0;
  FC2_1 <= FC2;
  FCD1_1 <= FCD1;
  FCU1_1 <= FCU1;
  GT0_1 <= GT0;
  GT1_1 <= GT1;
  GT2_1 <= GT2;
  clk_1 <= clk;
  en_1 <= en;
  reset_1 <= reset;
  tempInput_1 <= enabling;
C0: component design_1_Wait0_0
     port map (
      clk => clk_1,
      d => Wait0_q,
      en => en_1,
      q => DoorClose0_q,
      reset => reset_1
    );
C1: component design_1_DoorOpen1_1
     port map (
      clk => clk_1,
      d => Wait1_q,
      en => en_1,
      q => DoorClose1_q,
      reset => reset_1
    );
C2: component design_1_FLOOR2_2
     port map (
      clk => clk_1,
      d => Wait2_q,
      en => en_1,
      q => DoorClose2_q,
      reset => reset_1
    );
Flr0: component design_1_xup_dff_en_reset_0_0
     port map (
      clk => clk_1,
      d => xup_or3_6_y,
      en => en_1,
      q => FLOOR0_q,
      reset => reset_1
    );
Flr1: component design_1_xup_dff_en_reset_0_5
     port map (
      clk => clk_1,
      d => xup_or3_3_y,
      en => en_1,
      q => FLOOR1_q,
      reset => reset_1
    );
Flr2: component design_1_xup_dff_en_reset_0_9
     port map (
      clk => clk_1,
      d => xup_or2_4_y,
      en => en_1,
      q => FLOOR2_q,
      reset => reset_1
    );
GD1: component design_1_xup_dff_en_reset_0_3
     port map (
      clk => clk_1,
      d => xup_and5_0_y,
      en => en_1,
      q => ED1_q,
      reset => reset_1
    );
GD2: component design_1_xup_dff_en_reset_0_7
     port map (
      clk => clk_1,
      d => xup_and4_1_y,
      en => en_1,
      q => ED2_q,
      reset => reset_1
    );
GU1: component design_1_xup_dff_en_reset_0_4
     port map (
      clk => clk_1,
      d => xup_and4_0_y,
      en => en_1,
      q => EU1_q,
      reset => reset_1
    );
GU2: component design_1_xup_dff_en_reset_0_8
     port map (
      clk => clk_1,
      d => xup_and5_1_y,
      en => en_1,
      q => EU2_q,
      reset => reset_1
    );
O0: component design_1_xup_dff_en_reset_0_1
     port map (
      clk => clk_1,
      d => xup_and2_0_y,
      en => en_1,
      q => DoorOpen0_q,
      reset => reset_1
    );
O1: component design_1_xup_dff_en_reset_0_6
     port map (
      clk => clk_1,
      d => xup_and2_5_y,
      en => en_1,
      q => DoorOpen1_q,
      reset => reset_1
    );
O2: component design_1_FLOOR2_0
     port map (
      clk => clk_1,
      d => xup_and2_1_y,
      en => en_1,
      q => DoorOpen2_q,
      reset => reset_1
    );
S0: component design_1_xup_dff_en_reset_0_2
     port map (
      clk => clk_1,
      d => DoorOpen0_q,
      en => en_1,
      q => Wait0_q,
      reset => reset_1
    );
S1: component design_1_DoorOpen1_0
     port map (
      clk => clk_1,
      d => DoorOpen1_q,
      en => en_1,
      q => Wait1_q,
      reset => reset_1
    );
S2: component design_1_FLOOR2_1
     port map (
      clk => clk_1,
      d => DoorOpen2_q,
      en => en_1,
      q => Wait2_q,
      reset => reset_1
    );
fc0not: component design_1_xup_inv_0_5
     port map (
      a => FC0_1,
      y => notFC0_y
    );
fc2not: component design_1_xup_inv_0_0
     port map (
      a => FC2_1,
      y => notFC2_y
    );
fcd1not: component design_1_xup_inv_0_4
     port map (
      a => FCD1_1,
      y => notFCD1_y
    );
fcu1not: component design_1_xup_inv_0_3
     port map (
      a => FCU1_1,
      y => notFCU1_y
    );
gt0not: component design_1_xup_inv_0_6
     port map (
      a => GT0_1,
      y => notGT0_y
    );
gt1not: component design_1_xup_inv_0_2
     port map (
      a => GT1_1,
      y => notGT1_y
    );
gt2not: component design_1_xup_inv_0_1
     port map (
      a => GT2_1,
      y => notGT2_y
    );
xup_and2_0: component design_1_xup_and2_0_0
     port map (
      a => xup_or2_0_y,
      b => FLOOR0_q,
      y => xup_and2_0_y
    );
xup_and2_1: component design_1_xup_and2_1_1
     port map (
      a => FLOOR2_q,
      b => xup_or2_5_y,
      y => xup_and2_1_y
    );
xup_and2_3: component design_1_xup_and2_3_0
     port map (
      a => xup_nor2_0_y,
      b => FCD1_1,
      y => xup_and2_3_y
    );
xup_and2_4: component design_1_xup_and2_3_1
     port map (
      a => xup_nor2_1_y,
      b => FCU1_1,
      y => xup_and2_4_y
    );
xup_and2_5: component design_1_xup_and2_5_0
     port map (
      a => FLOOR1_q,
      b => xup_or3_0_y,
      y => xup_and2_5_y
    );
xup_and3_0: component design_1_xup_and3_0_1
     port map (
      a => notGT0_y,
      b => notFC0_y,
      c => notGT1_y,
      y => xup_and3_0_y
    );
xup_and4_0: component design_1_xup_and4_0_0
     port map (
      a => FLOOR0_q,
      b => xup_or4_0_y,
      c => notGT0_y,
      d => notFC0_y,
      y => xup_and4_0_y
    );
xup_and4_1: component design_1_xup_and4_1_0
     port map (
      a => xup_or4_1_y,
      b => FLOOR2_q,
      c => notGT2_y,
      d => notFC2_y,
      y => xup_and4_1_y
    );
xup_and5_0: component design_1_xup_and5_0_0
     port map (
      a => xup_or2_1_y,
      b => xup_or3_1_y,
      c => xup_or3_2_y,
      d => notGT1_y,
      e => FLOOR1_q,
      y => xup_and5_0_y
    );
xup_and5_1: component design_1_xup_and5_1_0
     port map (
      a => xup_and3_0_y,
      b => FLOOR1_q,
      c => xup_or2_3_y,
      d => xup_or3_4_y,
      e => xup_or3_5_y,
      y => xup_and5_1_y
    );
xup_nor2_0: component design_1_xup_nor2_0_0
     port map (
      a => FC2_1,
      b => GT2_1,
      y => xup_nor2_0_y
    );
xup_nor2_1: component design_1_xup_nor2_0_1
     port map (
      a => FC0_1,
      b => GT0_1,
      y => xup_nor2_1_y
    );
xup_or2_0: component design_1_xup_or2_0_0
     port map (
      a => FC0_1,
      b => GT0_1,
      y => xup_or2_0_y
    );
xup_or2_1: component design_1_xup_or2_1_2
     port map (
      a => FC0_1,
      b => GT0_1,
      y => xup_or2_1_y
    );
xup_or2_2: component design_1_xup_or2_2_1
     port map (
      a => ED2_q,
      b => ED1_q,
      y => xup_or2_2_y
    );
xup_or2_3: component design_1_xup_or2_3_0
     port map (
      a => FC2_1,
      b => GT2_1,
      y => xup_or2_3_y
    );
xup_or2_4: component design_1_xup_or2_4_0
     port map (
      a => DoorClose2_q,
      b => EU2_q,
      y => xup_or2_4_y
    );
xup_or2_5: component design_1_xup_or2_5_0
     port map (
      a => FC2_1,
      b => GT2_1,
      y => xup_or2_5_y
    );
xup_or2_6: component design_1_xup_or2_2_2
     port map (
      a => EU1_q,
      b => EU2_q,
      y => xup_or2_6_y
    );
xup_or3_0: component design_1_xup_or3_0_0
     port map (
      a => xup_and2_3_y,
      b => xup_and2_4_y,
      c => GT1_1,
      y => xup_or3_0_y
    );
xup_or3_1: component design_1_xup_or3_1_0
     port map (
      a => notFCD1_y,
      b => FC2_1,
      c => GT2_1,
      y => xup_or3_1_y
    );
xup_or3_2: component design_1_xup_or3_1_1
     port map (
      a => notFCU1_y,
      b => FC0_1,
      c => GT0_1,
      y => xup_or3_2_y
    );
xup_or3_3: component design_1_xup_or3_3_0
     port map (
      a => EU1_q,
      b => ED2_q,
      c => DoorClose1_q,
      y => xup_or3_3_y
    );
xup_or3_4: component design_1_xup_or3_4_0
     port map (
      a => notFCD1_y,
      b => FC2_1,
      c => GT2_1,
      y => xup_or3_4_y
    );
xup_or3_5: component design_1_xup_or3_4_1
     port map (
      a => notFCU1_y,
      b => FC0_1,
      c => GT0_1,
      y => xup_or3_5_y
    );
xup_or3_6: component design_1_xup_or3_6_0
     port map (
      a => ED1_q,
      b => DoorClose0_q,
      c => tempInput_1,
      y => xup_or3_6_y
    );
xup_or3_7: component design_1_xup_or3_7_0
     port map (
      a => DoorOpen2_q,
      b => DoorOpen1_q,
      c => DoorOpen0_q,
      y => xup_or3_7_y
    );
xup_or3_8: component design_1_xup_or3_7_1
     port map (
      a => DoorClose2_q,
      b => DoorClose1_q,
      c => DoorClose0_q,
      y => xup_or3_8_y
    );
xup_or4_0: component design_1_xup_or4_0_0
     port map (
      a => FCU1_1,
      b => GT1_1,
      c => FC2_1,
      d => GT2_1,
      y => xup_or4_0_y
    );
xup_or4_1: component design_1_xup_or4_1_0
     port map (
      a => FCD1_1,
      b => GT1_1,
      c => FC0_1,
      d => GT0_1,
      y => xup_or4_1_y
    );
xup_or4_2: component design_1_xup_or4_2_0
     port map (
      a => DoorClose2_q,
      b => Wait2_q,
      c => DoorOpen2_q,
      d => FLOOR2_q,
      y => xup_or4_2_y
    );
xup_or4_3: component design_1_xup_or4_2_1
     port map (
      a => DoorClose1_q,
      b => DoorOpen1_q,
      c => Wait1_q,
      d => FLOOR1_q,
      y => xup_or4_3_y
    );
xup_or4_4: component design_1_xup_or4_3_0
     port map (
      a => FLOOR0_q,
      b => DoorOpen0_q,
      c => Wait0_q,
      d => DoorClose0_q,
      y => xup_or4_4_y
    );
end STRUCTURE;
