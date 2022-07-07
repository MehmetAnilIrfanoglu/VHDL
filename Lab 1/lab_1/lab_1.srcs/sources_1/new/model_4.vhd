----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2020 06:53:48
-- Design Name: 
-- Module Name: model_4 - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity model_4 is
    PORT(ss: in std_logic_vector(5 downto 0); DD: out std_logic);
end model_4;

architecture Behavioral of model_4 is
COMPONENT model_0 is 
PORT(a: in std_logic_vector(5 downto 0); b: out std_logic_vector(5 downto 0));
END COMPONENT;

COMPONENT model_1 IS 
Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : out STD_LOGIC);
END COMPONENT;

COMPONENT model_2 IS
Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : in STD_LOGIC;
           d : out STD_LOGIC);
END COMPONENT;

COMPONENT model_3 IS
Port ( a : in STD_LOGIC;
           b : in STD_LOGIC;
           c : out STD_LOGIC);
END COMPONENT;
SIGNAL AA:STD_LOGIC;
SIGNAL BB:STD_LOGIC;

SIGNAL AQ:std_logic_vector(5 downto 0);
begin

M0: model_0 PORT MAP(ss,AQ);
M1: model_1 PORT MAP(AQ(5),AQ(4),AQ(3),AA);
M2: model_2 PORT MAP(AQ(2),AQ(1),AQ(0),BB);
M3: model_3 PORT MAP(AA,BB,DD);

end Behavioral;
