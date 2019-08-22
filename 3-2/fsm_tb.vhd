LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY fsm_tb IS
END fsm_tb;
ARCHITECTURE test OF fsm_tb IS
component fsm
PORT
(
		SW0, SW1, SW2, CLK : in std_logic;
		CLR, LDA, LDB, MUX : out std_logic
);
end component;

signal SW0 :std_logic;
signal SW1 :std_logic;
signal SW2 :std_logic;
signal CLK :std_logic:='0';
signal CLR :std_logic;
signal LDA :std_logic;
signal LDB :std_logic;
signal MUX :std_logic;

BEGIN
uut: fsm port map (
SW0 => SW0,
SW1 => SW1,
SW2 => SW2,
CLK => CLK,
CLR => CLR,
LDA => LDA,
LDB => LDB,
MUX => MUX
);

Process
Begin
CLK <= not CLK;
wait for 2 ns;
End Process;

Process
Begin
SW0 <= '0'; SW1 <= '0'; SW2 <= '0';
Wait for 6 ns;
SW0 <= '1'; SW1 <= '0'; SW2 <= '0';
Wait for 6 ns;
SW0 <= '0'; SW1 <= '1'; SW2 <= '0';
Wait for 6 ns;
SW0 <= '0'; SW1 <= '0'; SW2 <= '0';
Wait for 6 ns;
SW0 <= '0'; SW1 <= '0'; SW2 <= '1';
Wait for 6 ns;
SW0 <= '1'; SW1 <= '0'; SW2 <= '0';
wait;
End process;

END test;