LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
--USE IEEE.STD_LOGIC_ARITH.ALL;
--USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity clock_div_tb is
end clock_div_tb;

architecture test of clock_div_tb is
component clock_div
port(
    clk : IN STD_LOGIC;
    clkout : OUT STD_LOGIC
	);
end component;

signal clk: std_logic;
signal clkout std_logic;

begin
	uut: clock_div port map(
	clk => clk, 
	clkout=> clkout
	);
		
	process
	begin
		clk <= '0';
		wait for 10 ns;
		clk <= '1';
		wait for 10 ns;
	end process;
	
end test;