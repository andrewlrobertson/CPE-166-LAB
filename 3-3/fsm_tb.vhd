LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY fsm_tb IS
END fsm_tb;
ARCHITECTURE test OF fsm_tb IS
component fsm
PORT
(
		SW0, SW1, CLK : in std_logic;
		CLR, LD : out std_logic
);
end component;

signal SW0 :std_logic;
signal SW1 :std_logic;
signal CLK :std_logic:='0';
signal CLR :std_logic;
signal LD :std_logic;

BEGIN
uut: fsm port map (
SW0 => SW0,
SW1 => SW1,
CLK => CLK,
CLR => CLR,
LD  => LD
);

Process
Begin
CLK <= not CLK;
wait for 2 ns;
End Process;

Process
Begin
SW0 <= '0'; SW1 <= '0';
Wait for 100 ns;
SW0 <= '1'; SW1 <= '0';
Wait for 100 ns;
SW0 <= '0'; SW1 <= '1';
Wait for 100 ns;
SW0 <= '0'; SW1 <= '0';
Wait for 100 ns;
SW0 <= '1'; SW1 <= '0';
wait;
End process;

END test;