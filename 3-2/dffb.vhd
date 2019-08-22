library IEEE;
use IEEE.std_logic_1164.all;

entity dffb is

port ( load, clear, clk  : IN std_logic;
		din : IN std_logic_vector(7 downto 1);
       qout : OUT std_logic_vector(7 downto 1) );

end dffb;

architecture imp of dffb is
begin
	process (clk)
		begin
		if (rising_edge(clk)) then
			if (clear = '1') then
			qout <= "0000000";
			end if;
			if (load = '1') then
			qout <= din;
			end if;
		end if;
	end process;

end imp;