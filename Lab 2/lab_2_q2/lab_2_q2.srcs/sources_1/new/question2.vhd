----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 24.10.2020 20:21:32
-- Design Name: 
-- Module Name: question2 - Behavioral
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



entity question2 is
Port (sel: in std_logic_vector(2 downto 0);
A: out std_logic_vector(3 downto 0));
end question2;

architecture Behavioral of question2 is

begin
WITH sel SELECT
A <="1000"  WHEN "100", 
 "0100" WHEN "101",
 "0010" WHEN "110",
 "0001" WHEN "111",
 "0000" WHEN "000",
 "0000" WHEN "001",
 "0000" WHEN "010",
  "0000" WHEN OTHERS; 


end Behavioral;
