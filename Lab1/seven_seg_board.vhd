LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY seven_seg_board IS
port(	SW		: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		HEX0	: OUT STD_LOGIC_VECTOR(6 downto 0));
END seven_seg_board;

ARCHITECTURE struct OF seven_seg_board IS

COMPONENT seven_seg
PORT(	c		: IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		disp	: OUT STD_LOGIC_VECTOR(6 DOWNTO 0));
END COMPONENT;

BEGIN
	--create the device and map the appropriate pins
	dut 	: seven_seg
	PORT MAP (
			c		=> sw(2 downto 0),
			disp	=> hex0(6 downto 0)
	);
end struct;		