LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.all;

ENTITY top_tb IS
END top_tb;
ARCHITECTURE test OF top_tb IS

component top is								--port list for top
port(clk, switch0, switch1, switch2, switch3:  in std_logic;
lfsr_display : out std_logic_vector(3 downto 0);
calc_display : out std_logic_vector(1 downto 0));
end component;

signal switch0 :std_logic;
signal switch1 :std_logic;
signal switch2 :std_logic;
signal switch3 :std_logic;
signal clk :std_logic:='0';
signal lfsr_display : std_logic_vector(3 downto 0);
signal calc_display : std_logic_vector(1 downto 0);

BEGIN
uut: top port map (clk, switch0, switch1, switch2, switch3, lfsr_display, calc_display);

--entity top is								--port list for top
--port(clk, switch0, switch1, switch2, switch3:  in std_logic;
--lfsr_display : out std_logic_vector(3 downto 0);
--calc_display : out std_logic_vector(1 downto 0));
--end top;


Process
Begin
CLK <= not CLK;
wait for 2 ns;
End Process;

Process
Begin
switch0 <= '0'; switch1 <= '0'; switch2 <= '0'; switch3 <= '0';
Wait for 120 ns;
switch0 <= '1'; switch1 <= '0';
Wait for 120 ns;
switch0 <= '0'; switch1 <= '1';
Wait for 120 ns;
switch0 <= '0'; switch1 <= '0';
Wait for 120 ns;
								switch2 <= '0'; switch3 <= '1';
								Wait for 60 ns;
								switch2 <= '1'; switch3 <= '0';
								Wait for 60 ns;
								switch2 <= '1'; switch3 <= '1';
								Wait for 60 ns;
switch0 <= '1'; switch1 <= '0';
wait;
End process;

END test;
