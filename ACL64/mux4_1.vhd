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
-- CREATED		"Mon Nov  9 21:03:17 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY mux4_1 IS 
	PORT
	(
		i0 :  IN  STD_LOGIC;
		i1 :  IN  STD_LOGIC;
		i2 :  IN  STD_LOGIC;
		i3 :  IN  STD_LOGIC;
		Sel0 :  IN  STD_LOGIC;
		Sel1 :  IN  STD_LOGIC;
		out_0 :  OUT  STD_LOGIC
	);
END mux4_1;

ARCHITECTURE bdf_type OF mux4_1 IS 

COMPONENT mux2_1
	PORT(I_0 : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 I_1 : IN STD_LOGIC;
		 Out_0 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;


BEGIN 



b2v_inst : mux2_1
PORT MAP(I_0 => i0,
		 Sel => Sel0,
		 I_1 => i1,
		 Out_0 => SYNTHESIZED_WIRE_0);


b2v_inst1 : mux2_1
PORT MAP(I_0 => i2,
		 Sel => Sel0,
		 I_1 => i3,
		 Out_0 => SYNTHESIZED_WIRE_1);


b2v_inst2 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_0,
		 Sel => Sel1,
		 I_1 => SYNTHESIZED_WIRE_1,
		 Out_0 => out_0);


END bdf_type;