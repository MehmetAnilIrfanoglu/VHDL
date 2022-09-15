-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 15.11.2020 16:04:31 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_decoder2to4_wrapper is
end tb_decoder2to4_wrapper;

architecture tb of tb_decoder2to4_wrapper is

    component decoder2to4_wrapper
        port (A0 : in std_logic;
              A1 : in std_logic;
              D0 : out std_logic;
              D1 : out std_logic;
              D2 : out std_logic;
              D3 : out std_logic;
              EN : in std_logic);
    end component;

    signal A0 : std_logic;
    signal A1 : std_logic;
    signal D0 : std_logic;
    signal D1 : std_logic;
    signal D2 : std_logic;
    signal D3 : std_logic;
    signal EN : std_logic;

begin

    dut : decoder2to4_wrapper
    port map (A0 => A0,
              A1 => A1,
              D0 => D0,
              D1 => D1,
              D2 => D2,
              D3 => D3,
              EN => EN);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A0 <= '0';
        A1 <= '0';
        EN <= '0';
        
        wait for 10 ns;
        
        A0 <= '0';
        A1 <= '0';
        EN <= '1';
        
        wait for 10 ns;
        
        A0 <= '1';
        A1 <= '0';
        EN <= '1';
        
        wait for 10 ns;
        
        A0 <= '0';
        A1 <= '1';
        EN <= '1';
        
        wait for 10 ns;
        
        A0 <= '1';
        A1 <= '1';
        EN <= '1';
        
        wait for 10 ns;
        
        A0 <= '1';
        A1 <= '0';
        EN <= '0';
        
        wait for 10 ns;
        

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_decoder2to4_wrapper of tb_decoder2to4_wrapper is
    for tb
    end for;
end cfg_tb_decoder2to4_wrapper;