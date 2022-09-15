--Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
----------------------------------------------------------------------------------
--Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
--Date        : Tue Nov 10 23:49:32 2020
--Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
--Command     : generate_target questionC.bd
--Design      : questionC
--Purpose     : IP block netlist
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity questionC is
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
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of questionC : entity is "questionC,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=questionC,x_ipVersion=1.00.a,x_ipLanguage=VHDL,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}";
  attribute HW_HANDOFF : string;
  attribute HW_HANDOFF of questionC : entity is "questionC.hwdef";
end questionC;

architecture STRUCTURE of questionC is
  component questionC_decoder2to4_wrapper_0_0 is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    EN : in STD_LOGIC
  );
  end component questionC_decoder2to4_wrapper_0_0;
  component questionC_decoder2to4_wrapper_1_0 is
  port (
    A0 : in STD_LOGIC;
    A1 : in STD_LOGIC;
    D0 : out STD_LOGIC;
    D1 : out STD_LOGIC;
    D2 : out STD_LOGIC;
    D3 : out STD_LOGIC;
    EN : in STD_LOGIC
  );
  end component questionC_decoder2to4_wrapper_1_0;
  component questionC_xup_and2_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionC_xup_and2_0_0;
  component questionC_xup_and2_1_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionC_xup_and2_1_0;
  component questionC_xup_inv_0_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  end component questionC_xup_inv_0_0;
  signal EN_1 : STD_LOGIC;
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
  signal xup_and2_0_y : STD_LOGIC;
  signal xup_and2_1_y : STD_LOGIC;
  signal xup_inv_0_y : STD_LOGIC;
begin
  EN_1 <= EN;
  X0_1 <= X0;
  X1_1 <= X1;
  X2_1 <= X2;
  Y0 <= decoder2to4_wrapper_0_D0;
  Y1 <= decoder2to4_wrapper_0_D1;
  Y2 <= decoder2to4_wrapper_0_D2;
  Y3 <= decoder2to4_wrapper_0_D3;
  Y4 <= decoder2to4_wrapper_1_D0;
  Y5 <= decoder2to4_wrapper_1_D1;
  Y6 <= decoder2to4_wrapper_1_D2;
  Y7 <= decoder2to4_wrapper_1_D3;
decoder2to4_wrapper_0: component questionC_decoder2to4_wrapper_0_0
     port map (
      A0 => X2_1,
      A1 => X1_1,
      D0 => decoder2to4_wrapper_0_D0,
      D1 => decoder2to4_wrapper_0_D1,
      D2 => decoder2to4_wrapper_0_D2,
      D3 => decoder2to4_wrapper_0_D3,
      EN => xup_and2_0_y
    );
decoder2to4_wrapper_1: component questionC_decoder2to4_wrapper_1_0
     port map (
      A0 => X2_1,
      A1 => X1_1,
      D0 => decoder2to4_wrapper_1_D0,
      D1 => decoder2to4_wrapper_1_D1,
      D2 => decoder2to4_wrapper_1_D2,
      D3 => decoder2to4_wrapper_1_D3,
      EN => xup_and2_1_y
    );
xup_and2_0: component questionC_xup_and2_0_0
     port map (
      a => xup_inv_0_y,
      b => EN_1,
      y => xup_and2_0_y
    );
xup_and2_1: component questionC_xup_and2_1_0
     port map (
      a => X0_1,
      b => EN_1,
      y => xup_and2_1_y
    );
xup_inv_0: component questionC_xup_inv_0_0
     port map (
      a => X0_1,
      y => xup_inv_0_y
    );
end STRUCTURE;
