LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
ENTITY seven_segment IS
PORT
(
int_num : IN STD_LOGIC_VECTOR(3 downto 0);
seven_num : OUT STD_LOGIC_VECTOR(7 downto 0));
END seven_segment;

ARCHITECTURE behavior OF seven_segment IS
BEGIN

	process (int_num)
	begin
	case int_num is
	  when "0000" =>   seven_num <= "11000000";		--dp, g=>a
	  when "0001" =>   seven_num <= "11111001";		--
	  when "0010" =>   seven_num <= "10100100";		--
	  when "0011" =>   seven_num <= "10110000";		--
	  when "0100" =>   seven_num <= "10011001";		--
	  when "0101" =>   seven_num <= "10010010";		--
	  when "0110" =>   seven_num <= "10000011";		--
	  when "0111" =>   seven_num <= "11111000";		--
	  when "1000" =>   seven_num <= "10000000";		--
	  when "1001" =>   seven_num <= "10011000";		--
	  when others =>   seven_num <= "10111111";		--
	end case;	
	end process;
END behavior;