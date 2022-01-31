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
-- CREATED		"Mon Nov  9 15:40:41 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY IL_level2 IS 
	PORT
	(
		Cout_0 :  IN  STD_LOGIC;
		In_3 :  IN  STD_LOGIC;
		In_2 :  IN  STD_LOGIC;
		In_1 :  IN  STD_LOGIC;
		In_0 :  IN  STD_LOGIC;
		LSZD_Pos0 :  IN  STD_LOGIC;
		LSZD_Pos1 :  IN  STD_LOGIC;
		LSZD_Pos2 :  IN  STD_LOGIC;
		In_4 :  IN  STD_LOGIC;
		Out_3 :  OUT  STD_LOGIC;
		Out_2 :  OUT  STD_LOGIC;
		Out_1 :  OUT  STD_LOGIC;
		Out_0 :  OUT  STD_LOGIC;
		Out_4 :  OUT  STD_LOGIC
	);
END IL_level2;

ARCHITECTURE bdf_type OF IL_level2 IS 

COMPONENT mux2_1
	PORT(I_0 : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 I_1 : IN STD_LOGIC;
		 Out_0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT decoder3_5
	PORT(i0 : IN STD_LOGIC;
		 i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 En : IN STD_LOGIC;
		 d0 : OUT STD_LOGIC;
		 d1 : OUT STD_LOGIC;
		 d2 : OUT STD_LOGIC;
		 d3 : OUT STD_LOGIC;
		 d4 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;


BEGIN 



b2v_inst : mux2_1
PORT MAP(I_0 => In_3,
		 Sel => SYNTHESIZED_WIRE_18,
		 I_1 => SYNTHESIZED_WIRE_1,
		 Out_0 => Out_3);


SYNTHESIZED_WIRE_11 <= NOT(In_1);



SYNTHESIZED_WIRE_3 <= NOT(In_0);



b2v_inst14 : mux2_1
PORT MAP(I_0 => In_0,
		 Sel => SYNTHESIZED_WIRE_2,
		 I_1 => SYNTHESIZED_WIRE_3,
		 Out_0 => Out_0);


SYNTHESIZED_WIRE_18 <= SYNTHESIZED_WIRE_19 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_9 <= NOT(In_4);



SYNTHESIZED_WIRE_21 <= SYNTHESIZED_WIRE_18 OR SYNTHESIZED_WIRE_7;


b2v_inst21 : mux2_1
PORT MAP(I_0 => In_4,
		 Sel => SYNTHESIZED_WIRE_19,
		 I_1 => SYNTHESIZED_WIRE_9,
		 Out_0 => Out_4);


b2v_inst27 : mux2_1
PORT MAP(I_0 => In_1,
		 Sel => SYNTHESIZED_WIRE_20,
		 I_1 => SYNTHESIZED_WIRE_11,
		 Out_0 => Out_1);


b2v_inst28 : mux2_1
PORT MAP(I_0 => In_2,
		 Sel => SYNTHESIZED_WIRE_21,
		 I_1 => SYNTHESIZED_WIRE_13,
		 Out_0 => Out_2);


SYNTHESIZED_WIRE_20 <= SYNTHESIZED_WIRE_21 OR SYNTHESIZED_WIRE_15;


SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_20 OR SYNTHESIZED_WIRE_17;


b2v_inst6 : decoder3_5
PORT MAP(i0 => LSZD_Pos0,
		 i1 => LSZD_Pos1,
		 i2 => LSZD_Pos2,
		 En => Cout_0,
		 d0 => SYNTHESIZED_WIRE_17,
		 d1 => SYNTHESIZED_WIRE_15,
		 d2 => SYNTHESIZED_WIRE_7,
		 d3 => SYNTHESIZED_WIRE_5,
		 d4 => SYNTHESIZED_WIRE_19);


SYNTHESIZED_WIRE_1 <= NOT(In_3);



SYNTHESIZED_WIRE_13 <= NOT(In_2);



END bdf_type;