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
-- CREATED		"Wed Oct 14 12:55:15 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY fa IS 
	PORT
	(
		A :  IN  STD_LOGIC;
		B :  IN  STD_LOGIC;
		C_in :  IN  STD_LOGIC;
		C_out :  OUT  STD_LOGIC;
		Sum :  OUT  STD_LOGIC
	);
END fa;

ARCHITECTURE bdf_type OF fa IS 

COMPONENT ha
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Sum : OUT STD_LOGIC;
		 C_out : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	v :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



b2v_inst : ha
PORT MAP(A => A,
		 B => B,
		 Sum => SYNTHESIZED_WIRE_0,
		 C_out => v);


b2v_inst1 : ha
PORT MAP(A => SYNTHESIZED_WIRE_0,
		 B => C_in,
		 Sum => Sum,
		 C_out => SYNTHESIZED_WIRE_1);


C_out <= SYNTHESIZED_WIRE_1 OR v;


END bdf_type;