-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 4.11.2020 09:47:26 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_question_wrapper is
end tb_question_wrapper;

architecture tb of tb_question_wrapper is

    component question_wrapper
        port (A0 : in std_logic;
              A1 : in std_logic;
              A2 : in std_logic;
              A3 : in std_logic;
              O  : out std_logic);
    end component;

    signal A0 : std_logic;
    signal A1 : std_logic;
    signal A2 : std_logic;
    signal A3 : std_logic;
    signal O  : std_logic;

begin

    dut : question_wrapper
    port map (A0 => A0,
              A1 => A1,
              A2 => A2,
              A3 => A3,
              O  => O);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        A3 <= '0';
        A2 <= '0';
        A1 <= '0';
        A0 <= '0';
        wait for 10 ns;
        
          A3 <= '0';
        A2 <= '0';
        A1 <= '0';
        A0 <= '1';
        wait for 10 ns;
        
          A3 <= '0';
        A2 <= '0';
        A1 <= '1';
        A0 <= '0';
        wait for 10 ns;
        
          A3 <= '0';
        A2 <= '0';
        A1 <= '1';
        A0 <= '1';
        wait for 10 ns;
        
          A3 <= '0';
        A2 <= '1';
        A1 <= '0';
        A0 <= '0';
        wait for 10 ns;
        
          A3 <= '0';
        A2 <= '1';
        A1 <= '0';
        A0 <= '1';
        wait for 10 ns;
        
          A3 <= '0';
        A2 <= '1';
        A1 <= '1';
        A0 <= '0';
        wait for 10 ns;
        
          A3 <= '0';
        A2 <= '1';
        A1 <= '1';
        A0 <= '1';
        wait for 10 ns;
        
          A3 <= '1';
        A2 <= '0';
        A1 <= '0';
        A0 <= '0';
        wait for 10 ns;
        
          A3 <= '1';
        A2 <= '0';
        A1 <= '0';
        A0 <= '1';
        wait for 10 ns;
        
          A3 <= '1';
        A2 <= '0';
        A1 <= '1';
        A0 <= '0';
        wait for 10 ns;
        
          A3 <= '1';
        A2 <= '0';
        A1 <= '1';
        A0 <= '1';
        wait for 10 ns;
        
          A3 <= '1';
        A2 <= '1';
        A1 <= '0';
        A0 <= '0';
        wait for 10 ns;
        
          A3 <= '1';
        A2 <= '1';
        A1 <= '0';
        A0 <= '1';
        wait for 10 ns;
        
          A3 <= '1';
        A2 <= '1';
        A1 <= '1';
        A0 <= '0';
        wait for 10 ns;
        
          A3 <= '1';
        A2 <= '1';
        A1 <= '1';
        A0 <= '1';
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