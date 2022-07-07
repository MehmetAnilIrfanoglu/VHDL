----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.10.2020 20:57:06
-- Design Name: 
-- Module Name: model_0 - Behavioral
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

entity model_0 is
PORT(a: in std_logic_vector(5 downto 0); b: out std_logic_vector(5 downto 0));
end model_0;

architecture Behavioral of model_0 is

begin
b(0) <= NOT a(0);
b(1) <= NOT a(1);
b(2) <= NOT a(2);
b(3) <= NOT a(3);
b(4) <= NOT a(4);
b(5) <= NOT a(5);

end Behavioral;
