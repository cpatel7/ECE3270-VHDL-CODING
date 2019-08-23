LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY DFlipFlop_board IS
port(	KEY: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		LEDR: OUT STD_LOGIC_VECTOR(9 DOWNTO 0));
END DFlipFlop_board;

ARCHITECTURE struct OF DFlipFlop_board IS

COMPONENT DFlipFlop
PORT(	clk, d:	IN STD_LOGIC;
		q:			OUT STD_LOGIC);
END COMPONENT;

BEGIN
	--create the device and map the appropriate pins
dut 	: DFlipFlop
		PORT MAP (
				clk 	=> key(0),
				d 		=> sw(0),
				q		=> ledr(0)
		);
end struct;		