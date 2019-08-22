LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.numeric_std.all;

entity calc_tb is
end calc_tb;

architecture test of calc_tb is
component calc
port(
B3, B4 : IN STD_LOGIC;
dout3, dout4 : IN STD_LOGIC_VECTOR(1 downto 0);
F : OUT STD_LOGIC_VECTOR(1 downto 0)
	);
end component;

signal B3, B4 : STD_LOGIC;
signal dout3, dout4 : STD_LOGIC_VECTOR(1 downto 0);
signal F : STD_LOGIC_VECTOR(1 downto 0);

begin
	uut: calc port map(B3, B4, dout3, dout4, F);	
	process
	begin
		dout3 <= "01"; dout4 <= "10";
		B3 <= '0'; B4 <= '0';
		wait for 100ns;
		B3 <= '0'; B4 <= '1';
		wait for 100ns;
		B3 <= '1'; B4 <= '0';
		wait for 100ns;
		B3 <= '1'; B4 <= '1';
		wait ;
	end process;
	
end test;