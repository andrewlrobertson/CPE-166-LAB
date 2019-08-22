LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY top_tb IS
END top_tb;
ARCHITECTURE test OF top_tb IS

component top is								--port list for top
port(
	clk, switch0, switch1, switch2:  in std_logic;
	out_display : out std_logic_vector(7 downto 1);
end component;

signal switch0 :std_logic;
signal switch1 :std_logic;
signal switch2 :std_logic;
signal clk :std_logic:='0';
signal out_display : std_logic_vector(7 downto 1);

BEGIN
uut: top port map (
switch0 => switch0,
switch1 => switch1,
switch2 => switch2,
CLK => CLK,
out_display => out_display,

);

Process
Begin
CLK <= not CLK;
wait for 2 ns;
End Process;

Process
Begin
switch0 <= '0'; switch1 <= '0'; switch2 <= '0';
Wait for 120 ns;
switch0 <= '1'; switch1 <= '0'; switch2 <= '0';
Wait for 120 ns;
switch0 <= '0'; switch1 <= '1'; switch2 <= '0';
Wait for 120 ns;
switch0 <= '0'; switch1 <= '0'; switch2 <= '0';
Wait for 120 ns;
switch0 <= '0'; switch1 <= '0'; switch2 <= '1';
Wait for 120 ns;
switch0 <= '1'; switch1 <= '0'; switch2 <= '0';
wait;
End process;

END test;