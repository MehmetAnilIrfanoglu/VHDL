-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
-- Date        : Tue Nov 10 19:17:05 2020
-- Host        : DESKTOP-ECJJKP0 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decoder2to4_xup_inv_1_0 -prefix
--               decoder2to4_xup_inv_1_0_ decoder2to4_xup_inv_0_0_sim_netlist.vhdl
-- Design      : decoder2to4_xup_inv_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7k70tfbv676-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decoder2to4_xup_inv_1_0 is
  port (
    a : in STD_LOGIC;
    y : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decoder2to4_xup_inv_1_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decoder2to4_xup_inv_1_0 : entity is "decoder2to4_xup_inv_0_0,xup_inv,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decoder2to4_xup_inv_1_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decoder2to4_xup_inv_1_0 : entity is "xup_inv,Vivado 2020.1";
end decoder2to4_xup_inv_1_0;

architecture STRUCTURE of decoder2to4_xup_inv_1_0 is
begin
y_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => a,
      O => y
    );
end STRUCTURE;
