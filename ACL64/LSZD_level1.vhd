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
-- CREATED		"Mon Nov  9 19:27:14 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY LSZD_level1 IS 
	PORT
	(
		MS0 :  IN  STD_LOGIC;
		NZ_LS :  IN  STD_LOGIC;
		NZ_MS :  IN  STD_LOGIC;
		MSH_LS_sumbit :  IN  STD_LOGIC;
		NZ :  OUT  STD_LOGIC;
		P1 :  OUT  STD_LOGIC;
		P0 :  OUT  STD_LOGIC
	);
END LSZD_level1;

ARCHITECTURE bdf_type OF LSZD_level1 IS 

COMPONENT ha
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 Sum : OUT STD_LOGIC;
		 Cout : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT mux2_1
	PORT(I_0 : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 I_1 : IN STD_LOGIC;
		 Out_0 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '1';
SYNTHESIZED_WIRE_5 <= '0';



b2v_inst : ha
PORT MAP(A => MS0,
		 B => SYNTHESIZED_WIRE_0,
		 Sum => SYNTHESIZED_WIRE_4,
		 Cout => SYNTHESIZED_WIRE_2);


b2v_inst2 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_5,
		 Sel => MSH_LS_sumbit,
		 I_1 => SYNTHESIZED_WIRE_2,
		 Out_0 => P1);


b2v_inst3 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_5,
		 Sel => MSH_LS_sumbit,
		 I_1 => SYNTHESIZED_WIRE_4,
		 Out_0 => P0);


NZ <= NZ_MS AND NZ_LS;




END bdf_type;