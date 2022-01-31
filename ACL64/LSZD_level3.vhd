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
-- CREATED		"Mon Nov  9 22:30:50 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY LSZD_level3 IS 
	PORT
	(
		MS0 :  IN  STD_LOGIC;
		MS1 :  IN  STD_LOGIC;
		NZ_LS :  IN  STD_LOGIC;
		NZ_MS :  IN  STD_LOGIC;
		MS2 :  IN  STD_LOGIC;
		MSH_LSsumbit_0 :  IN  STD_LOGIC;
		MSH_LSsumbit_1 :  IN  STD_LOGIC;
		MSH_LSsumbit_2 :  IN  STD_LOGIC;
		NZ :  OUT  STD_LOGIC;
		P3 :  OUT  STD_LOGIC;
		P2 :  OUT  STD_LOGIC;
		P1 :  OUT  STD_LOGIC;
		P0 :  OUT  STD_LOGIC
	);
END LSZD_level3;

ARCHITECTURE bdf_type OF LSZD_level3 IS 

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

COMPONENT mux4_1
	PORT(i0 : IN STD_LOGIC;
		 i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 i3 : IN STD_LOGIC;
		 Sel0 : IN STD_LOGIC;
		 Sel1 : IN STD_LOGIC;
		 out_0 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_0 <= '1';
SYNTHESIZED_WIRE_1 <= '1';
SYNTHESIZED_WIRE_31 <= '0';
SYNTHESIZED_WIRE_17 <= '1';
SYNTHESIZED_WIRE_22 <= '1';



b2v_inst : ha
PORT MAP(A => MS0,
		 B => SYNTHESIZED_WIRE_0,
		 Sum => SYNTHESIZED_WIRE_24,
		 Cout => SYNTHESIZED_WIRE_2);


b2v_inst1 : fa
PORT MAP(A => MS1,
		 B => SYNTHESIZED_WIRE_1,
		 C_in => SYNTHESIZED_WIRE_2,
		 C_out => SYNTHESIZED_WIRE_30,
		 Sum => SYNTHESIZED_WIRE_18);



b2v_inst12 : mux4_1
PORT MAP(i0 => SYNTHESIZED_WIRE_31,
		 i1 => SYNTHESIZED_WIRE_31,
		 i2 => SYNTHESIZED_WIRE_31,
		 i3 => SYNTHESIZED_WIRE_31,
		 Sel0 => SYNTHESIZED_WIRE_32,
		 Sel1 => SYNTHESIZED_WIRE_33,
		 out_0 => P3);


b2v_inst13 : mux4_1
PORT MAP(i0 => SYNTHESIZED_WIRE_31,
		 i1 => SYNTHESIZED_WIRE_31,
		 i2 => SYNTHESIZED_WIRE_31,
		 i3 => SYNTHESIZED_WIRE_12,
		 Sel0 => SYNTHESIZED_WIRE_32,
		 Sel1 => SYNTHESIZED_WIRE_33,
		 out_0 => P2);


b2v_inst14 : mux4_1
PORT MAP(i0 => SYNTHESIZED_WIRE_31,
		 i1 => SYNTHESIZED_WIRE_31,
		 i2 => SYNTHESIZED_WIRE_17,
		 i3 => SYNTHESIZED_WIRE_18,
		 Sel0 => SYNTHESIZED_WIRE_32,
		 Sel1 => SYNTHESIZED_WIRE_33,
		 out_0 => P1);


b2v_inst15 : mux4_1
PORT MAP(i0 => SYNTHESIZED_WIRE_31,
		 i1 => SYNTHESIZED_WIRE_22,
		 i2 => SYNTHESIZED_WIRE_31,
		 i3 => SYNTHESIZED_WIRE_24,
		 Sel0 => SYNTHESIZED_WIRE_32,
		 Sel1 => SYNTHESIZED_WIRE_33,
		 out_0 => P0);



SYNTHESIZED_WIRE_28 <= SYNTHESIZED_WIRE_27 OR MSH_LSsumbit_2;


SYNTHESIZED_WIRE_27 <= NOT(MSH_LSsumbit_1);



SYNTHESIZED_WIRE_32 <= SYNTHESIZED_WIRE_28 AND MSH_LSsumbit_0;


b2v_inst2 : fa
PORT MAP(A => MS2,
		 B => SYNTHESIZED_WIRE_31,
		 C_in => SYNTHESIZED_WIRE_30,
		 Sum => SYNTHESIZED_WIRE_12);


SYNTHESIZED_WIRE_33 <= MSH_LSsumbit_1 AND MSH_LSsumbit_0;




NZ <= NZ_MS AND NZ_LS;



END bdf_type;