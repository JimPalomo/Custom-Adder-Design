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
-- CREATED		"Sat Nov  7 15:23:09 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY decoder2_4 IS 
	PORT
	(
		En :  IN  STD_LOGIC;
		P0 :  IN  STD_LOGIC;
		P1 :  IN  STD_LOGIC;
		d0 :  OUT  STD_LOGIC;
		d1 :  OUT  STD_LOGIC;
		d2 :  OUT  STD_LOGIC;
		d3 :  OUT  STD_LOGIC
	);
END decoder2_4;

ARCHITECTURE bdf_type OF decoder2_4 IS 

SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;


BEGIN 



SYNTHESIZED_WIRE_8 <= NOT(P0);



SYNTHESIZED_WIRE_9 <= NOT(P1);



SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_8 AND SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_5 <= P0 AND SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_6 <= P1 AND SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_7 <= P1 AND P0;


d0 <= SYNTHESIZED_WIRE_4 AND En;


d1 <= SYNTHESIZED_WIRE_5 AND En;


d2 <= SYNTHESIZED_WIRE_6 AND En;


d3 <= SYNTHESIZED_WIRE_7 AND En;


END bdf_type;