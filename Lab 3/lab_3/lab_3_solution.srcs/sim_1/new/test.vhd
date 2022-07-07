-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 29.10.2020 17:52:43 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_question_wrapper is
end tb_question_wrapper;

architecture tb of tb_question_wrapper is

    component question_wrapper
        port (A : in std_logic;
              B : in std_logic;
              E : out std_logic);
    end component;

    signal A : std_logic;
    signal B : std_logic;
    signal E : std_logic;

begin

    dut : question_wrapper
    port map (A => A,
              B => B,
              E => E);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A <= '0';
        B <= '0';
        wait for 10 ns;
        
        A <= '0';
        B <= '1';
        wait for 10 ns;
        
        A <= '1';
        B <= '0';
        wait for 10 ns;
        
        A <= '1';
        B <= '1';
        wait for 10 ns;

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_question_wrapper of tb_question_wrapper is
    for tb
    end for;
end cfg_tb_question_wrapper;