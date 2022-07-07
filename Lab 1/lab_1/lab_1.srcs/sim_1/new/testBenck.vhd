library ieee;
use ieee.std_logic_1164.all;

entity tb_model_4 is
end tb_model_4;

architecture tb of tb_model_4 is

    component model_4
        port (ss : in std_logic_vector (5 downto 0);
              DD : out std_logic);
    end component;

    signal ss : std_logic_vector (5 downto 0);
    signal DD : std_logic;

begin

    dut : model_4
    port map (ss => ss,
              DD => DD);

    stimuli : process
    begin
        -- EDIT Adapt initialization as needed
       ss <= "000000";
        wait for 10 ns;
        
        ss <= "000001";
        wait for 10 ns;
        
        ss <= "100111";
        wait for 10 ns;
        
        ss <= "100000";
        wait for 10 ns;
        
         ss <= "111111";
        wait for 10 ns;

        -- EDIT Add stimuli here

        wait;
    end process;

end tb;

-- Configuration block below is required by some simulators. Usually no need to edit.

configuration cfg_tb_model_4 of tb_model_4 is
    for tb
    end for;
end cfg_tb_model_4;
