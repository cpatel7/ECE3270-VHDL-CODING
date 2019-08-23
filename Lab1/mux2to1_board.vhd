LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY Mux2to1_board IS
port(	KEY: IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		SW: IN STD_LOGIC_VECTOR(9 DOWNTO 0);
		LEDR: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END Mux2to1_board;

ARCHITECTURE struct OF Mux2to1_board IS

COMPONENT Mux2to1
PORT(	x,y	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		s		: IN STD_LOGIC;
		m		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END COMPONENT;

BEGIN
	--create the device and map the appropriate pins
dut 	: Mux2to1
		PORT MAP (
				s 	=> key(0),
				x 	=> sw(7 downto 0),
				y	=> "11111111",
				m	=> ledr(7 downto 0)
		);
end struct;		