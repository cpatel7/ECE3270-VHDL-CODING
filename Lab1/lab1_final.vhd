LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity lab1_final is
		port( sw2to0, sw9to7	: IN std_logic_vector(2 downto 0);
				key3to0			: IN std_logic_vector(3 downto 0);
				disp1				: OUT std_logic_vector(6 downto 0);
				disp2				: OUT std_logic_vector(6 downto 0);
				disp3				: OUT std_logic_vector(6 downto 0);
				disp4				: OUT std_logic_vector(6 downto 0);
				disp5				: OUT std_logic_vector(6 downto 0));
end lab1_final;

--Begin a the architecture
architecture lab1_arch of lab1_final is
	--declare signals to drive the 5 seven segment displays
	signal mux0 	: std_logic_vector(2 downto 0);
	signal mux1 	: std_logic_vector(2 downto 0);
	signal mux2 	: std_logic_vector(2 downto 0);
	signal mux3 	: std_logic_vector(2 downto 0);
	signal mux4 	: std_logic_vector(2 downto 0);
	signal H		 	: std_logic_vector(2 downto 0); --key3
	signal E		 	: std_logic_vector(2 downto 0); --key2
	signal L		 	: std_logic_vector(2 downto 0); --key1
	signal O		 	: std_logic_vector(2 downto 0); --key0
	
	component DFlipFlop is
		port( clk 	: IN std_logic;
				d		: IN std_logic_vector(2 downto 0);
				q		: OUT std_logic_vector(2 downto 0));
	end component;
	
	component mux5to1 is
		port( s : IN std_logic_vector(2 downto 0);
				u : IN std_logic_vector(2 downto 0);
				v : IN std_logic_vector(2 downto 0);
				w : IN std_logic_vector(2 downto 0);
				x : IN std_logic_vector(2 downto 0);
				y : IN std_logic_vector(2 downto 0);
				m : OUT std_logic_vector(2 downto 0));
	end component;
	
	component seven_seg is
		port( c 		: IN std_logic_vector(2 downto 0);
				disp 	: OUT std_logic_vector(6 downto 0));
	end component;

	begin
	--set up the DFlipFlops that will latch onto the selected value and send to the multiplexer
	key0: DFlipFlop
	PORT MAP(	d		=> sw2to0,
					clk	=> key3to0(0),
					q		=> O);
	key1: DFlipFlop
	PORT MAP(	d		=> sw2to0,
					clk	=> key3to0(1),
					q		=> L);
	key2: DFlipFlop
	PORT MAP(	d		=> sw2to0,
					clk	=> key3to0(2),
					q		=> E);
	key3: DFlipFlop
	PORT MAP(	d		=> sw2to0,
					clk	=> key3to0(3),
					q		=> H);
			
	--set up the five multiplexers that will select the bit values and send to the displays
	m0: mux5to1
	PORT MAP(	s => sw9to7,
					u => H,
					v => O,
					w => L,
					x => sw2to0,
					y => E,
					m => mux0);
	m1: mux5to1
	PORT MAP(	s => sw9to7,
					u => E,
					v => H,
					w => O,
					x => L,
					y => sw2to0,
					m => mux1);
	m2: mux5to1
	PORT MAP(	s => sw9to7,
					u => sw2to0,
					v => E,
					w => H,
					x => O,
					y => L,
					m => mux2);					
	m3: mux5to1
	PORT MAP(	s => sw9to7,
					u => L,
					v => sw2to0,
					w => E,
					x => H,
					y => O,
					m => mux3);			
	m4: mux5to1
	PORT MAP(	s => sw9to7,
					u => O,
					v => L,
					w => sw2to0,
					x => E,
					y => H,
					m => mux4);
					
	--set up the 5 displays 
	seg_display1: seven_seg
	PORT MAP(	c		=> mux0,
					disp	=> disp1);
					
	seg_display2: seven_seg
	PORT MAP(	c		=> mux1,
					disp	=> disp2);

	seg_display3: seven_seg
	PORT MAP(	c		=> mux2,
					disp	=> disp3);

	seg_display4: seven_seg
	PORT MAP(	c		=> mux3,
					disp	=> disp4);

	seg_display5: seven_seg
	PORT MAP(	c		=> mux4,
					disp	=> disp5);					

end lab1_arch;