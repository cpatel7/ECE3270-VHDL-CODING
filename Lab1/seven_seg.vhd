LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity seven_seg is
	port( c		: IN std_logic_vector(2 downto 0);
			disp	: OUT std_logic_vector(6 downto 0));
end seven_seg;

--Begin a the architecture
architecture seven_seg_arch of seven_seg is
	--declare signals to drive the seven segments of the display
	signal H			: std_logic_vector(6 downto 0) := "0001001";
	signal E			: std_logic_vector(6 downto 0) := "0000110";
	signal L			: std_logic_vector(6 downto 0) := "1000111";
	signal O			: std_logic_vector(6 downto 0) := "1000000";
	signal blank	: std_logic_vector(6 downto 0) := "1111111";

	begin
	-- seven segment display segment logic
	with c select
		disp <= 	H 		when "000",
					E 		when "001",
					L 		when "010",
					O 		when "011",
					blank when others;			
					
end seven_seg_arch;