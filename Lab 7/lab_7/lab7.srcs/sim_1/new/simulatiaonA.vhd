-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 9.12.2020 17:01:48 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_questionA_wrapper is
end tb_questionA_wrapper;

architecture tb of tb_questionA_wrapper is

    component questionA_wrapper
        port (CO    : out std_logic;
              Q0    : out std_logic;
              Q1    : out std_logic;
              Q2    : out std_logic;
              Q3    : out std_logic;
              clk   : in std_logic;
              en    : in std_logic;
              reset : in std_logic);
    end component;

    signal CO    : std_logic;
    signal Q0    : std_logic;
    signal Q1    : std_logic;
    signal Q2    : std_logic;
    signal Q3    : std_logic;
    signal clk   : std_logic;
    signal en    : std_logic;
    signal reset : std_logic;

    constant TbPeriod : time := 1000 ms; -- EDIT Put right period here
    signal TbClock : std_logic := '0';
    signal TbSimEnded : std_logic := '0';

begin

    dut : questionA_wrapper
    port map (CO    => CO,
              Q0    => Q0,
              Q1    => Q1,
              Q2    => Q2,
              Q3    => Q3,
              clk   => clk,
              en    => en,
              reset => reset);

    -- Clock generation
    TbClock <= not TbClock after TbPeriod/2 when TbSimEnded /= '1' else '0';

    -- EDIT: Check that clk is really your main clock signal
    clk <= TbClock;

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        en <= '0';

        -- Reset generation
        -- EDIT: Check that reset is really your reset signal
        reset <= '1';
        wait for TbPeriod;
        reset <= '0';
        wait for TbPeriod;

        -- EDIT Add stimuli here
        en  <= '1';
        wait for 29* TbPeriod;

        -- Stop the clock and hence terminate the simulation
        TbSimEnded <= '1';
        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_questionA_wrapper of tb_questionA_wrapper is
    for tb
    end for;
end cfg_tb_questionA_wrapper;