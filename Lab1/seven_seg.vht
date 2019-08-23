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
-- Generated on "02/04/2019 11:27:04"
                                                            
-- Vhdl Test Bench template for design  :  seven_seg
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY seven_seg_vhd_tst IS
END seven_seg_vhd_tst;
ARCHITECTURE seven_seg_arch OF seven_seg_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL c : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL disp : STD_LOGIC_VECTOR(0 TO 6);
COMPONENT seven_seg
	PORT (
	c : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	disp : BUFFER STD_LOGIC_VECTOR(0 TO 6)
	);
END COMPONENT;
BEGIN
	i1 : seven_seg
	PORT MAP (
-- list connections between master ports and signals
	c => c,
	disp => disp
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
		  
		  c <= "000"; --this should display H which is 0001001
		  
		  wait for 10ns;
		  
		  c <= "001"; --this should display E which is 0000110
		  
		  wait for 10ns;
		  
		  c <= "010"; --this should display L which is 1000111
		  
		  wait for 10ns;
		  
		  c <= "011"; --this should display blank which is 1000000
		  
		  wait for 10ns;
		  
		  c <= "100"; --this should display vlank which is 1111111
		  
		  wait for 10ns;
		  
		  c <= "101"; --this should display blank which is 1111111
		  
		  wait for 10ns;
		  
		  c <= "110"; --this should display blank which is 1111111
		  
		  wait for 10ns;
		  
		  c <= "111"; --this should display blank which is 1111111
		  
		  wait for 10ns;

WAIT;                                                        
END PROCESS always;                                          
END seven_seg_arch;
