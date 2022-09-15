--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Tue Nov 10 22:58:23 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target questionB.bd
--Design      : questionB
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity questionB is
  port (
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of questionB : entity is "questionB,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=questionB,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=3,numReposBlks=3,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of questionB : entity is "questionB.hwdef";
end questionB;

architecture STRUCTURE of questionB is
  component questionB_decoder2to4_wrapper_0_0 is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    EN : in STD_LOGIC
  );
  end component questionB_decoder2to4_wrapper_0_0;
  component questionB_decoder2to4_wrapper_1_0 is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    EN : in STD_LOGIC
  );
  end component questionB_decoder2to4_wrapper_1_0;
  component questionB_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionB_xup_inv_0_0;
  signal X0_1 : STD_LOGIC;
  signal X1_1 : STD_LOGIC;
  signal X2_1 : STD_LOGIC;
  signal decoder2to4_wrapper_0_D0 : STD_LOGIC;
  signal decoder2to4_wrapper_0_D1 : STD_LOGIC;
  signal decoder2to4_wrapper_0_D2 : STD_LOGIC;
  signal decoder2to4_wrapper_0_D3 : STD_LOGIC;
  signal decoder2to4_wrapper_1_D0 : STD_LOGIC;
  signal decoder2to4_wrapper_1_D1 : STD_LOGIC;
  signal decoder2to4_wrapper_1_D2 : STD_LOGIC;
  signal decoder2to4_wrapper_1_D3 : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
begin
  X0_1 <= X0;
  X1_1 <= X1;
  X2_1 <= X2;
  Y0 <= decoder2to4_wrapper_1_D0;
  Y1 <= decoder2to4_wrapper_1_D1;
  Y2 <= decoder2to4_wrapper_1_D2;
  Y3 <= decoder2to4_wrapper_1_D3;
  Y4 <= decoder2to4_wrapper_0_D0;
  Y5 <= decoder2to4_wrapper_0_D1;
  Y6 <= decoder2to4_wrapper_0_D2;
  Y7 <= decoder2to4_wrapper_0_D3;
decoder2to4_wrapper_0: component questionB_decoder2to4_wrapper_0_0
     port map (
      A0 => X2_1,
      A1 => X1_1,
      D0 => decoder2to4_wrapper_0_D0,
      D1 => decoder2to4_wrapper_0_D1,
      D2 => decoder2to4_wrapper_0_D2,
      D3 => decoder2to4_wrapper_0_D3,
      EN => X0_1
    );
decoder2to4_wrapper_1: component questionB_decoder2to4_wrapper_1_0
     port map (
      A0 => X2_1,
      A1 => X1_1,
      D0 => decoder2to4_wrapper_1_D0,
      D1 => decoder2to4_wrapper_1_D1,
      D2 => decoder2to4_wrapper_1_D2,
      D3 => decoder2to4_wrapper_1_D3,
      EN => xup_inv_0_y
    );
xup_inv_0: component questionB_xup_inv_0_0
     port map (
      a => X0_1,
      y => xup_inv_0_y
    );
end STRUCTURE;
