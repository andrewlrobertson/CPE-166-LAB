LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY hamming IS
PORT(
		four_bit_in : in std_logic_vector(3 downto 0);
		seven_bit_out : out std_logic_vector(6 downto 0)
);
END hamming;

ARCHITECTURE ham OF hamming IS
signal parity : std_logic_vector(2 downto 0);
BEGIN


parity(0) <= four_bit_in(0) xor four_bit_in(1) xor four_bit_in(3);
parity(1) <= four_bit_in(0) xor four_bit_in(2) xor four_bit_in(3);
parity(2) <= four_bit_in(1) xor four_bit_in(2) xor four_bit_in(3);

seven_bit_out <= four_bit_in(3) & four_bit_in(2) & four_bit_in(1) & 
				 parity(2) & four_bit_in(0) & parity(1) & parity(0);

END ham;