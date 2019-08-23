LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Mux2to1 is
	port( x,y 	: IN std_logic_vector(7 downto 0);
			s		: IN std_logic;
			m		: OUT std_logic_vector(7 downto 0));
end Mux2to1;

--Begin a the architecture
architecture muxarch of Mux2to1 is
	
	begin
	-- select x when  s is 0 otherwise select y
	with s select
		m <= 	x when '0',
				y when others;
	
end muxarch;