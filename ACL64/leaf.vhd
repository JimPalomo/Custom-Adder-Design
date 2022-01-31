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
-- CREATED		"Mon Nov  9 14:59:56 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY leaf IS 
	PORT
	(
		A_1 :  IN  STD_LOGIC;
		B_1 :  IN  STD_LOGIC;
		A_0 :  IN  STD_LOGIC;
		B_0 :  IN  STD_LOGIC;
		Pos :  OUT  STD_LOGIC;
		Sum_0 :  OUT  STD_LOGIC;
		Cout_1p :  OUT  STD_LOGIC;
		Sum_1p :  OUT  STD_LOGIC;
		NZ :  OUT  STD_LOGIC
	);
END leaf;

ARCHITECTURE bdf_type OF leaf IS 

COMPONENT ha
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Sum : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT il_leaf
	PORT(LSZD_Pos : IN STD_LOGIC;
		 Cout_0 : IN STD_LOGIC;
		 Sum_1 : IN STD_LOGIC;
		 Cout_1 : IN STD_LOGIC;
		 Sum_1p : OUT STD_LOGIC;
		 Cout_1p : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
Pos <= SYNTHESIZED_WIRE_7;
Sum_0 <= SYNTHESIZED_WIRE_2;
Cout_1p <= SYNTHESIZED_WIRE_1;
Sum_1p <= SYNTHESIZED_WIRE_0;



b2v_inst : ha
PORT MAP(A => A_1,
		 B => B_1,
		 Sum => SYNTHESIZED_WIRE_7,
		 Cout => SYNTHESIZED_WIRE_6);


b2v_inst1 : ha
PORT MAP(A => A_0,
		 B => B_0,
		 Sum => SYNTHESIZED_WIRE_2,
		 Cout => SYNTHESIZED_WIRE_4);


NZ <= SYNTHESIZED_WIRE_0 AND SYNTHESIZED_WIRE_1 AND SYNTHESIZED_WIRE_2;


b2v_inst4 : il_leaf
PORT MAP(LSZD_Pos => SYNTHESIZED_WIRE_7,
		 Cout_0 => SYNTHESIZED_WIRE_4,
		 Sum_1 => SYNTHESIZED_WIRE_7,
		 Cout_1 => SYNTHESIZED_WIRE_6,
		 Sum_1p => SYNTHESIZED_WIRE_0,
		 Cout_1p => SYNTHESIZED_WIRE_1);


END bdf_type;