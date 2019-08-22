LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY lfsr_circuit IS
PORT (
    CLK: IN STD_LOGIC;
    rst: in std_logic;
    lfsr_out: OUT STD_LOGIC_VECTOR(3 DOWNTO 0) 
    );
 end entity lfsr_circuit;
 
 ARCHITECTURE design OF lfsr_circuit IS
	signal x : std_logic_vector(3 downto 0) :="0001";
begin 
	lfsr_out(0) <= x(3);
	lfsr_out(1) <= x(2);
	lfsr_out(2) <= x(1);
	lfsr_out(3) <= x(0);
	
	process(clk)
	begin
	   if rising_edge(clk) then
	       if (rst ='1') then 
	           x <= "1000";
	       else
	           x(0) <= x(3);
	           x(1) <= x(0) XOR x(3);
	           x(2) <= x(1);
	           x(3) <= x(2);
	       end if;
	   end if;
	end process;
end design;