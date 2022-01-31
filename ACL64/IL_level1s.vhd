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
-- CREATED		"Mon Nov  9 16:19:51 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY IL_level1s IS 
	PORT
	(
		Cout_0 :  IN  STD_LOGIC;
		In_2 :  IN  STD_LOGIC;
		In_1 :  IN  STD_LOGIC;
		In_0 :  IN  STD_LOGIC;
		LSZD_Pos0 :  IN  STD_LOGIC;
		LSZD_Pos1 :  IN  STD_LOGIC;
		Out_2 :  OUT  STD_LOGIC;
		Out_1 :  OUT  STD_LOGIC;
		Out_0 :  OUT  STD_LOGIC;
		pn1 :  OUT  STD_LOGIC
	);
END IL_level1s;

ARCHITECTURE bdf_type OF IL_level1s IS 

COMPONENT mux2_1
	PORT(I_0 : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 I_1 : IN STD_LOGIC;
		 Out_0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT decoder2_4
	PORT(P0 : IN STD_LOGIC;
		 P1 : IN STD_LOGIC;
		 En : IN STD_LOGIC;
		 d0 : OUT STD_LOGIC;
		 d1 : OUT STD_LOGIC;
		 d2 : OUT STD_LOGIC;
		 d3 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;


BEGIN 



b2v_inst1 : mux2_1
PORT MAP(I_0 => In_1,
		 Sel => SYNTHESIZED_WIRE_10,
		 I_1 => SYNTHESIZED_WIRE_1,
		 Out_0 => Out_1);


SYNTHESIZED_WIRE_1 <= NOT(In_1);



SYNTHESIZED_WIRE_9 <= NOT(In_0);



b2v_inst15 : decoder2_4
PORT MAP(P0 => LSZD_Pos0,
		 P1 => LSZD_Pos1,
		 En => Cout_0,
		 d0 => SYNTHESIZED_WIRE_7,
		 d1 => SYNTHESIZED_WIRE_5,
		 d2 => SYNTHESIZED_WIRE_11,
		 d3 => pn1);


b2v_inst3 : mux2_1
PORT MAP(I_0 => In_2,
		 Sel => SYNTHESIZED_WIRE_11,
		 I_1 => SYNTHESIZED_WIRE_3,
		 Out_0 => Out_2);


SYNTHESIZED_WIRE_10 <= SYNTHESIZED_WIRE_11 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_10 OR SYNTHESIZED_WIRE_7;


b2v_inst7 : mux2_1
PORT MAP(I_0 => In_0,
		 Sel => SYNTHESIZED_WIRE_8,
		 I_1 => SYNTHESIZED_WIRE_9,
		 Out_0 => Out_0);


SYNTHESIZED_WIRE_3 <= NOT(In_2);



END bdf_type;