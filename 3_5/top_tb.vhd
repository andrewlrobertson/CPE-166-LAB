LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY top_tb IS
END top_tb;

ARCHITECTURE test OF top_tb IS

component mem_top IS
    port(
		 clk   	: IN  std_logic;
       reset 	: IN  std_logic; 
	    data  	: inout std_logic_vector ( 3 downto 0);
       addr_out : OUT  std_logic_vector(3 downto 0);		
         cs_out : OUT  std_logic;
         we_out : OUT  std_logic;
         oe_out : OUT  std_logic
			
    );
END component;

		signal clk		: std_logic:='0';
		signal reset	: std_logic:='0'; 
	    signal data		: std_logic_vector ( 3 downto 0);
		signal addr_out	: std_logic_vector(3 downto 0);		
        signal cs_out 	: std_logic;
        signal we_out	: std_logic;
        signal oe_out	: std_logic;

BEGIN
uut: mem_top port map (
		 clk   	=>	clk,
       reset 	=>	reset,
	    data  	=>	data,
       addr_out =>	addr_out,		
         cs_out =>	cs_out,
         we_out =>	we_out,
         oe_out =>	oe_out	

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
wait for 170 ns;
reset <= '1';
wait;
End process;

END test;