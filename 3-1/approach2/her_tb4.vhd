LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY top_tb IS
END top_tb;
ARCHITECTURE beh OF top_tb IS
component top
PORT
(
	clk, up_d : in std_logic;
	out_display : out std_logic_vector(7 downto 0);
	board_display: out std_logic
);
end component;
signal TA : STD_LOGIC:='0';
signal TB : STD_LOGIC;
signal TC: STD_LOGIC_VECTOR(7 downto 0);
signal TD: STD_LOGIC;
BEGIN
uut: top port map (
clk => TA,
up_d => TB,
out_display => TC,
board_display => TD
);

Process
Begin
TA <= not TA;
Wait for 1 ps;
End process;

Process
Begin
TB <='1';
Wait for 5000 ns;
TB <='0';
Wait;
End process;

END beh;