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
-- CREATED		"Mon Nov  9 17:16:55 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY leaf_cin IS 
	PORT
	(
		A_1 :  IN  STD_LOGIC;
		B_1 :  IN  STD_LOGIC;
		A_0 :  IN  STD_LOGIC;
		B_0 :  IN  STD_LOGIC;
		Cin_init :  IN  STD_LOGIC;
		Pos :  OUT  STD_LOGIC;
		Sum_0 :  OUT  STD_LOGIC;
		Cout_1p :  OUT  STD_LOGIC;
		Sum_1p :  OUT  STD_LOGIC;
		NZ :  OUT  STD_LOGIC
	);
END leaf_cin;

ARCHITECTURE bdf_type OF leaf_cin IS 

COMPONENT ha
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Sum : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT fa
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C_in : IN STD_LOGIC;
		 C_out : OUT STD_LOGIC;
		 Sum : OUT STD_LOGIC
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

SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;


BEGIN 
Pos <= SYNTHESIZED_WIRE_7;
Sum_0 <= SYNTHESIZED_WIRE_6;
Cout_1p <= SYNTHESIZED_WIRE_5;
Sum_1p <= SYNTHESIZED_WIRE_4;



b2v_inst : ha
PORT MAP(A => A_1,
		 B => B_1,
		 Sum => SYNTHESIZED_WIRE_7,
		 Cout => SYNTHESIZED_WIRE_3);


b2v_inst1 : fa
PORT MAP(A => A_0,
		 B => B_0,
		 C_in => Cin_init,
		 C_out => SYNTHESIZED_WIRE_1,
		 Sum => SYNTHESIZED_WIRE_6);


b2v_inst4 : il_leaf
PORT MAP(LSZD_Pos => SYNTHESIZED_WIRE_7,
		 Cout_0 => SYNTHESIZED_WIRE_1,
		 Sum_1 => SYNTHESIZED_WIRE_7,
		 Cout_1 => SYNTHESIZED_WIRE_3,
		 Sum_1p => SYNTHESIZED_WIRE_4,
		 Cout_1p => SYNTHESIZED_WIRE_5);


NZ <= SYNTHESIZED_WIRE_4 AND SYNTHESIZED_WIRE_5 AND SYNTHESIZED_WIRE_6;


END bdf_type;