LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity lab1_final_board is
	port(	SW		: in std_logic_vector(9 downto 0);
			KEY	: in std_logic_vector(3 downto 0);
			HEX0	: out std_logic_vector(6 downto 0);
			HEX1	: out std_logic_vector(6 downto 0);
			HEX2	: out std_logic_vector(6 downto 0);
			HEX3	: out std_logic_vector(6 downto 0);
			HEX4	: out std_logic_vector(6 downto 0));
end lab1_final_board;

architecture lab1_arch of lab1_final_board  is
	component lab1_final is
		port ( sw2to0, sw9to7	: IN std_logic_vector(2 downto 0);
				 key3to0				: IN std_logic_vector(3 downto 0);
				 disp1				: OUT std_logic_vector(6 downto 0);
				 disp2				: OUT std_logic_vector(6 downto 0);
				 disp3				: OUT std_logic_vector(6 downto 0);
				 disp4				: OUT std_logic_vector(6 downto 0);
				 disp5				: OUT std_logic_vector(6 downto 0));
	end component;
	
	BEGIN 
	dut : lab1_final
	PORT MAP( sw2to0	=> SW(2 downto 0),
				 key3to0	=> KEY(3 downto 0),
				 sw9to7	=> SW(9 downto 7),
				 disp1	=> HEX4,
				 disp2	=> HEX3,
				 disp3	=> HEX2,
				 disp4	=> HEX1,
				 disp5	=> HEX0);
end lab1_arch;