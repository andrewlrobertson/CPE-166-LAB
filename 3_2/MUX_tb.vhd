LIBRARY IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;
ENTITY MUX_tb IS
END MUX_tb;
ARCHITECTURE beh OF MUX_tb IS
component MUX
PORT
(
		S: IN std_logic;
		D0 : IN STD_LOGIC_VECTOR(4 downto 1);
		D1 : IN STD_LOGIC_VECTOR(7 downto 1);	   
	    muxOut : OUT std_logic_VECTOR(7 downto 1) 
);
end component;
signal S_TB : STD_LOGIC;
signal D0_TB: STD_LOGIC_VECTOR(4 downto 1);
signal D1_TB : STD_LOGIC_VECTOR(7 downto 1);
signal muxOut_TB: std_logic_VECTOR(7 downto 1);
BEGIN
uut: MUX port map (
    S => S_TB,
    D0 => D0_TB,
    D1 => D1_TB,
    muxOut => muxOut_TB
);
Process
    Begin
    S_TB <='0';
	D0_TB <= "1010";
	D1_TB <= "1011010";
    Wait for 5 ns;
	S_TB <='1';
	D0_TB <= "1110";
	D1_TB <= "1101111";
    Wait for 5 ns;
	S_TB <='0';
	D0_TB <= "1010";
	D1_TB <= "1011010";
    Wait for 5 ns;
	S_TB <='1';
	D0_TB <= "1110";
	D1_TB <= "1010111";
    Wait for 5 ns;
    
End process;

END beh;