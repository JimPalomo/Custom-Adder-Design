-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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

-- PROGRAM		"Quartus Prime"
-- VERSION		"Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"
-- CREATED		"Sat Nov  7 15:18:38 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY decoder1_2e IS 
	PORT
	(
		En :  IN  STD_LOGIC;
		P0 :  IN  STD_LOGIC;
		Out_0 :  OUT  STD_LOGIC;
		Out_1 :  OUT  STD_LOGIC
	);
END decoder1_2e;

ARCHITECTURE bdf_type OF decoder1_2e IS 

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_0 <= NOT(P0);



Out_0 <= SYNTHESIZED_WIRE_0 AND En;


Out_1 <= P0 AND En;


END bdf_type;