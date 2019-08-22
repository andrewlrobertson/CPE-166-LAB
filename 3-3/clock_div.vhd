LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY clock_div IS
PORT
(
clk : IN STD_LOGIC;
clkout : OUT STD_LOGIC);
END clock_div;

ARCHITECTURE behavior OF clock_div IS
SIGNAL tmp : integer := 0;

BEGIN

	process (clk)
    constant meg100 : integer := 100000000;
	begin
		if (rising_edge(clk)) then
			if (tmp = meg100) then
				clkout <= '1';
				tmp <= 0;
			elsif(tmp<(meg100/2 - 1)) then
				clkout <= '1';
				tmp <= tmp + 10000000;
			else
				clkout <= '0';
				tmp <= tmp + 10000000;
			end if;
		end if;
	end process;
END behavior;