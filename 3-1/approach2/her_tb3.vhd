LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY seven_segment_tb IS
END seven_segment_tb;
ARCHITECTURE beh OF seven_segment_tb IS
component seven_segment
PORT
(
int_num : IN STD_LOGIC_VECTOR(3 downto 0);
seven_num : OUT STD_LOGIC_VECTOR(7 downto 0)
);
end component;
signal TA : STD_LOGIC_VECTOR(3 downto 0);
signal TC: STD_LOGIC_VECTOR(7 downto 0);
BEGIN
uut: seven_segment port map (
int_num => TA,
seven_num => TC
);
Process
Begin
TA <="0000";
Wait for 5 ns;
TA <="0001";
Wait for 5 ns;
TA <="0010";
Wait for 5 ns;
TA <="0011";
Wait for 5 ns;
TA <="0100";
Wait for 5 ns;
TA <="0101";
Wait for 5 ns;
TA <="0110";
Wait for 5 ns;
TA <="0111";
Wait for 5 ns;
TA <="1000";
Wait for 5 ns;
TA <="1001";
Wait for 5 ns;
TA <="1010";
Wait;
End process;

END beh;