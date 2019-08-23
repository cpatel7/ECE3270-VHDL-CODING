-- Copyright (C) 1991-2016 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- ***************************************************************************
-- This file contains a Vhdl test bench template that is freely editable to   
-- suit user's needs .Comments are provided in each section to help the user  
-- fill out necessary details.                                                
-- ***************************************************************************
-- Generated on "02/01/2019 18:44:49"
                                                            
-- Vhdl Test Bench template for design  :  Mux5to1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux5to1_vhd_tst IS
END Mux5to1_vhd_tst;
ARCHITECTURE Mux5to1_arch OF Mux5to1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL m : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL s : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL u : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL v : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL w : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL x : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT Mux5to1
	PORT (
	m : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	s : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	u : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	v : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	w : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	x : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux5to1
	PORT MAP (
-- list connections between master ports and signals
	m => m,
	s => s,
	u => u,
	v => v,
	w => w,
	x => x,
	y => y
	);
init : PROCESS                                               
-- variable declarations                                     
BEGIN                                                        
        -- code that executes only once                      
WAIT;                                                       
END PROCESS init;                                           
always : PROCESS                                              
-- optional sensitivity list                                  
-- (        )                                                 
-- variable declarations                                      
BEGIN                                                         
        -- code executes for every event on sensitivity list  
		  -- code executes for every event on sensitivity list  
			x <= "000"; --set x to 0 and y to 1
			y <= "111";
			u <= "001";
			v <= "011";
			w <= "100";
			
			s <= "000"; -- we should see an  output of x
			
			wait for 10ns;
			
			s <= "001"; --we should see an output of y
			
			wait for 10ns;
			
			s <= "010"; --we should see an output of u
			
			wait for 10ns;
			
			s <= "011"; --we should see an output of v
			
			wait for 10ns;
			
			s <= "100"; --we should see an output of w
			
			wait for 10ns;
WAIT;                                                        
END PROCESS always;                                          
END Mux5to1_arch;
