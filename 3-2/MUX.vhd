library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;
use IEEE.std_logic_arith.all;

entity MUX is

port (
		S: IN std_logic;
		D0 : IN STD_LOGIC_VECTOR(3 downto 0);
		D1 : IN STD_LOGIC_VECTOR(7 downto 1);	   
	    muxOut : OUT std_logic_VECTOR(7 downto 1) 
	   );
end MUX;

architecture beh of MUX is
	begin

	process (D1, D0, S)
		begin
			if(S = '1') then 
				muxOut <= D1;
			else 
				muxOut <= "000" & D0;
			end if;

	end process;
end beh;



