-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 31.12.2020 19:38:36 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_secondTry_wrapper is
end tb_secondTry_wrapper;

architecture tb of tb_secondTry_wrapper is

    component secondTry_wrapper
        port (clk   : in std_logic;
              en    : in std_logic;
              reset : in std_logic;
              x     : in std_logic;
              z     : out std_logic);
    end component;

    signal clk   : std_logic;
    signal en    : std_logic;
    signal reset : std_logic;
    signal x     : std_logic;
    signal z     : std_logic;

    constant TbPeriod : time := 1000 ms; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : secondTry_wrapper
    port map (clk   => clk,
              en    => en,
              reset => reset,
              x     => x,
              z     => z);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        en <= '0';
        x <= '0';

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for TbPeriod;
        reset <= '0';
        wait for TbPeriod;

        -- EDIT Add stimuli here
        en <= '0';
        x <= '0';

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for TbPeriod;
        reset <= '0';
        wait for TbPeriod;
        
        en <= '1';
        x <= '0';
        wait for TbPeriod;
        x <= '1';
        wait for TbPeriod;
        x <= '0';
        wait for TbPeriod;
        x <= '0';
        wait for TbPeriod;
        x <= '1';
        wait for TbPeriod;
        x <= '1';
        wait for TbPeriod;
         x <= '1';
        wait for TbPeriod;
         

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_secondTry_wrapper of tb_secondTry_wrapper is
    for tb
    end for;
end cfg_tb_secondTry_wrapper;