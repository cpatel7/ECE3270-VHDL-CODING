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
-- Generated on "02/05/2019 16:56:00"
                                                            
-- Vhdl Test Bench template for design  :  lab1_final
-- 
-- Simulation tool : ModelSim-Altera (VHDL)
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab1_final_vhd_tst IS
END lab1_final_vhd_tst;
ARCHITECTURE lab1_final_arch OF lab1_final_vhd_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL disp1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp4 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL disp5 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL key3to0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL sw2to0 : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL sw9to7 : STD_LOGIC_VECTOR(2 DOWNTO 0);
COMPONENT lab1_final
	PORT (
	disp1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp4 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	disp5 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	key3to0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	sw2to0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	sw9to7 : IN STD_LOGIC_VECTOR(2 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab1_final
	PORT MAP (
-- list connections between master ports and signals
	disp1 => disp1,
	disp2 => disp2,
	disp3 => disp3,
	disp4 => disp4,
	disp5 => disp5,
	key3to0 => key3to0,
	sw2to0 => sw2to0,
	sw9to7 => sw9to7
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
		  
		  sw2to0 	<= "001"; --latch E to hex display 3(disp2)
		  key3to0	<= "0010";
		  wait for 10ns;
		  
		  sw2to0 	<= "010"; --latch L to hex display 2 and 1(disp3 and disp4)
		  key3to0	<= "1001";
		  wait for 10ns;
		  
		  sw2to0 	<= "011"; --latch O to hex display 0(disp5)
		  key3to0	<= "0100";
		  wait for 10ns;
		  
		  sw2to0		<= "000"; --this should always stay to H after all the latching is done
		  sw9to7		<= "000"; --this should print HELLO 
		  
		  wait for 10ns;
		  
		  sw9to7		<= "001"; --this should print OHELL
		  
		  wait for 10ns;
		  
		  sw9to7		<= "010"; --this should print LOHEL
		  
		  wait for 10ns;
		  
		  sw9to7		<= "011"; --this should print LLOHE
		  
		  wait for 10ns;
		  
		  sw9to7		<= "100"; --this should print ELLOH
		  
		  wait for 10ns;
		  
WAIT;                                                        
END PROCESS always;                                          
END lab1_final_arch;
