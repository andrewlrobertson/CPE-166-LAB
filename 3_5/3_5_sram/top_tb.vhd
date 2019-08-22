LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY top_tb IS
END top_tb;

ARCHITECTURE test OF top_tb IS

component top_sram is
 Port ( clk, reset: in std_logic;
       data:  inout std_logic_vector(3 downto 0)
 );
end component;

		signal clk		: std_logic:='0';
		signal reset	: std_logic:='0'; 
	    signal data		: std_logic_vector ( 3 downto 0);

BEGIN
uut: top_sram port map (
		 clk   	=>	clk,
       reset 	=>	reset,
	    data  	=>	data
);

Process
Begin
CLK <= not CLK;
wait for 5 ns;
End Process;

Process
Begin
reset <= '1';
wait for 170 ns;
reset <= '0';
wait for 400 ns;
reset <= '1';
wait;
End process;

END test;