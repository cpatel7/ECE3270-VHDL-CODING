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
-- Generated on "02/01/2019 17:41:51"
                                                            
-- Vhdl Test Bench template for design  :  Mux2to1
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux2to1_vhd_tst IS
END Mux2to1_vhd_tst;
ARCHITECTURE Mux2to1_arch OF Mux2to1_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL m : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL s : STD_LOGIC;
SIGNAL x : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL y : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT Mux2to1
	PORT (
	m : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
	s : IN STD_LOGIC;
	x : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
	y : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux2to1
	PORT MAP (
-- list connections between master ports and signals
	m => m,
	s => s,
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
			x <= "00000000"; --set x to 0 and y to 1
			y <= "11111111";
			s <= '0'; -- s is off
			
			wait for 10ns;
			
			s <= '1'; --s is now on so we should see an output of y
			
			wait for 10ns;
			
			s <= '0'; --s is off now so we should see an output of x
			x <= "11110000";
			
			wait for 10ns;
			
			s <= '1';
			y <= "00001111";
			
			wait for 10ns;
				  
WAIT;                                                        
END PROCESS always;                                          
END Mux2to1_arch;
