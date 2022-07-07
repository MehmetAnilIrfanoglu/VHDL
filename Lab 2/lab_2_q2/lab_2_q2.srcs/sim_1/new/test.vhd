-- Testbench automatically generated online
-- at https://vhdl.lapinoo.net
-- Generation date : 24.10.2020 17:28:35 UTC

library ieee;
use ieee.std_logic_1164.all;

entity tb_question2 is
end tb_question2;

architecture tb of tb_question2 is

    component question2
        port (sel : in std_logic_vector (2 downto 0);
              A   : out std_logic_vector (3 downto 0));
    end component;

    signal sel : std_logic_vector (2 downto 0);
    signal A   : std_logic_vector (3 downto 0);

begin

    dut : question2
    port map (sel => sel,
              A   => A);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
        sel <="000" ;
        wait for 10 ns;
        
         sel <="001" ;
        wait for 10 ns;
        
         sel <="010" ;
        wait for 10 ns;
        
         sel <="011" ;
        wait for 10 ns;
        
        sel <="100" ;
        wait for 10 ns;
        
         sel <="101" ;
        wait for 10 ns;
        
         sel <="110" ;
        wait for 10 ns;
        
         sel <="111" ;
        wait for 10 ns;

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_question2 of tb_question2 is
    for tb
    end for;
end cfg_tb_question2;