library IEEE;
use IEEE.STD_LOGIC_1164.all;
entity opcode is
 port(
 op : in std_logic_vector(1 downto 0);
 dec : out std_logic_vector(1 downto 0));
end opcode;
architecture arch of opcode is
begin
with op select
 dec <= "00" when "00",
 "01" when "01",
 "10" when "10",
 "11" when "11";
end arch;