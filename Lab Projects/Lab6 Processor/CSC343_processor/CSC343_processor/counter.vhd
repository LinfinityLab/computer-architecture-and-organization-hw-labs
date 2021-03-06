LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_signed.all;

ENTITY Counter IS
	PORT
	(
		Clk			: in std_logic ;
		Clear		: in std_logic ;
		Q			: out std_logic_vector (4 downto 0)
	);
END Counter;

Architecture arch of Counter is
	signal count : std_logic_vector(4 downto 0);
begin
	process(clk, clear)
	begin
			if clear = '0' then
				count <= "00000";
			elsif (rising_edge(clk)) then
				count <= count + 1;
			end if;
	end process;
	Q <= count;
end arch;
