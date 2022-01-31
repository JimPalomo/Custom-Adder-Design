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
-- CREATED		"Mon Nov  9 14:40:42 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY IL_leaf IS 
	PORT
	(
		LSZD_Pos :  IN  STD_LOGIC;
		Cout_0 :  IN  STD_LOGIC;
		Cout_1 :  IN  STD_LOGIC;
		Sum_1 :  IN  STD_LOGIC;
		Cout_1p :  OUT  STD_LOGIC;
		Sum_1p :  OUT  STD_LOGIC
	);
END IL_leaf;

ARCHITECTURE bdf_type OF IL_leaf IS 

COMPONENT mux2_1
	PORT(I_0 : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 I_1 : IN STD_LOGIC;
		 Out_0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT decoder1_2e
	PORT(P0 : IN STD_LOGIC;
		 En : IN STD_LOGIC;
		 Out_0 : OUT STD_LOGIC;
		 Out_1 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;


BEGIN 



b2v_inst : mux2_1
PORT MAP(I_0 => Cout_1,
		 Sel => SYNTHESIZED_WIRE_6,
		 I_1 => SYNTHESIZED_WIRE_1,
		 Out_0 => Cout_1p);


b2v_inst1 : decoder1_2e
PORT MAP(P0 => LSZD_Pos,
		 En => Cout_0,
		 Out_0 => SYNTHESIZED_WIRE_3,
		 Out_1 => SYNTHESIZED_WIRE_6);


SYNTHESIZED_WIRE_4 <= SYNTHESIZED_WIRE_6 OR SYNTHESIZED_WIRE_3;


b2v_inst3 : mux2_1
PORT MAP(I_0 => Sum_1,
		 Sel => SYNTHESIZED_WIRE_4,
		 I_1 => SYNTHESIZED_WIRE_5,
		 Out_0 => Sum_1p);


SYNTHESIZED_WIRE_1 <= NOT(Cout_1);



SYNTHESIZED_WIRE_5 <= NOT(Sum_1);



END bdf_type;