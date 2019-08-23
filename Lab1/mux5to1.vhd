LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity Mux5to1 is
	port( x,y,u,v,w 	: IN std_logic_vector(2 downto 0);
			s				: IN std_logic_vector(2 downto 0);
			m				: OUT std_logic_vector(2 downto 0));
end Mux5to1;

--Begin a the architecture
architecture muxarch of Mux5to1 is
	
	begin
	-- multiplexer selection logic 
	with s select
		m <= 	x when "000",
				y when "001",
				u when "010",
				v when "011",
				w when others;
				
	
end muxarch;