LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity DFlipFlop is
	port( clk: IN std_logic;
			d	: IN std_logic_vector(2 downto 0);
			q	: OUT std_logic_vector(2 downto 0));
end DFlipFlop;

--Begin a mixed architecture
architecture mixed of DFlipFlop is
	signal internal_d: std_logic_vector(2 downto 0);
	
	begin
	-- the signal is captured on every rising or falling edge of the clock
	process(clk)
		begin
		if(rising_edge(clk)) then
			internal_d <= d;
		else
			internal_d <= internal_d;
		end if;
	end process;
	
	q <= internal_d;
end mixed;