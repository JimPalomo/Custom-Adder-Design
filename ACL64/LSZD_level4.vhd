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
-- CREATED		"Tue Nov 10 13:07:47 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY LSZD_level4 IS 
	PORT
	(
		MS0 :  IN  STD_LOGIC;
		MS1 :  IN  STD_LOGIC;
		NZ_LS :  IN  STD_LOGIC;
		NZ_MS :  IN  STD_LOGIC;
		MS2 :  IN  STD_LOGIC;
		MS3 :  IN  STD_LOGIC;
		MSH_LSsumbit_0 :  IN  STD_LOGIC;
		MSH_LSsumbit_1 :  IN  STD_LOGIC;
		MSH_LSsumbit_2 :  IN  STD_LOGIC;
		MSH_LSsumbit_3 :  IN  STD_LOGIC;
		NZ :  OUT  STD_LOGIC;
		P2 :  OUT  STD_LOGIC;
		P4 :  OUT  STD_LOGIC;
		P3 :  OUT  STD_LOGIC;
		P1 :  OUT  STD_LOGIC;
		P0 :  OUT  STD_LOGIC
	);
END LSZD_level4;

ARCHITECTURE bdf_type OF LSZD_level4 IS 

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

COMPONENT mux5_1
	PORT(I_0 : IN STD_LOGIC;
		 I_1 : IN STD_LOGIC;
		 I_2 : IN STD_LOGIC;
		 I_3 : IN STD_LOGIC;
		 I_4 : IN STD_LOGIC;
		 S0 : IN STD_LOGIC;
		 S1 : IN STD_LOGIC;
		 S2 : IN STD_LOGIC;
		 Out_0 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_55 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_56 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_57 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_58 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_59 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_60 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_54 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_55 <= '0';
SYNTHESIZED_WIRE_3 <= '1';
SYNTHESIZED_WIRE_60 <= '1';



b2v_inst : ha
PORT MAP(A => MS0,
		 B => SYNTHESIZED_WIRE_55,
		 Sum => SYNTHESIZED_WIRE_45,
		 Cout => SYNTHESIZED_WIRE_2);


b2v_inst1 : fa
PORT MAP(A => MS1,
		 B => SYNTHESIZED_WIRE_55,
		 C_in => SYNTHESIZED_WIRE_2,
		 C_out => SYNTHESIZED_WIRE_4,
		 Sum => SYNTHESIZED_WIRE_37);




SYNTHESIZED_WIRE_50 <= NOT(MSH_LSsumbit_1);



SYNTHESIZED_WIRE_6 <= NOT(MSH_LSsumbit_2);



b2v_inst2 : fa
PORT MAP(A => MS2,
		 B => SYNTHESIZED_WIRE_3,
		 C_in => SYNTHESIZED_WIRE_4,
		 C_out => SYNTHESIZED_WIRE_54,
		 Sum => SYNTHESIZED_WIRE_29);


SYNTHESIZED_WIRE_56 <= NOT(MSH_LSsumbit_3);



SYNTHESIZED_WIRE_59 <= MSH_LSsumbit_2 AND MSH_LSsumbit_3 AND MSH_LSsumbit_1 AND MSH_LSsumbit_0;


SYNTHESIZED_WIRE_8 <= SYNTHESIZED_WIRE_56 AND MSH_LSsumbit_1 AND MSH_LSsumbit_0;



SYNTHESIZED_WIRE_7 <= SYNTHESIZED_WIRE_6 AND MSH_LSsumbit_1 AND MSH_LSsumbit_0;


SYNTHESIZED_WIRE_58 <= SYNTHESIZED_WIRE_7 OR SYNTHESIZED_WIRE_8;


b2v_inst27 : mux5_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_55,
		 I_1 => SYNTHESIZED_WIRE_55,
		 I_2 => SYNTHESIZED_WIRE_55,
		 I_3 => SYNTHESIZED_WIRE_55,
		 I_4 => SYNTHESIZED_WIRE_55,
		 S0 => SYNTHESIZED_WIRE_57,
		 S1 => SYNTHESIZED_WIRE_58,
		 S2 => SYNTHESIZED_WIRE_59,
		 Out_0 => P4);


b2v_inst28 : mux5_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_55,
		 I_1 => SYNTHESIZED_WIRE_55,
		 I_2 => SYNTHESIZED_WIRE_55,
		 I_3 => SYNTHESIZED_WIRE_55,
		 I_4 => SYNTHESIZED_WIRE_21,
		 S0 => SYNTHESIZED_WIRE_57,
		 S1 => SYNTHESIZED_WIRE_58,
		 S2 => SYNTHESIZED_WIRE_59,
		 Out_0 => P3);


b2v_inst29 : mux5_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_55,
		 I_1 => SYNTHESIZED_WIRE_55,
		 I_2 => SYNTHESIZED_WIRE_55,
		 I_3 => SYNTHESIZED_WIRE_55,
		 I_4 => SYNTHESIZED_WIRE_29,
		 S0 => SYNTHESIZED_WIRE_57,
		 S1 => SYNTHESIZED_WIRE_58,
		 S2 => SYNTHESIZED_WIRE_59,
		 Out_0 => P2);


b2v_inst30 : mux5_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_55,
		 I_1 => SYNTHESIZED_WIRE_55,
		 I_2 => SYNTHESIZED_WIRE_60,
		 I_3 => SYNTHESIZED_WIRE_60,
		 I_4 => SYNTHESIZED_WIRE_37,
		 S0 => SYNTHESIZED_WIRE_57,
		 S1 => SYNTHESIZED_WIRE_58,
		 S2 => SYNTHESIZED_WIRE_59,
		 Out_0 => P1);


b2v_inst31 : mux5_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_55,
		 I_1 => SYNTHESIZED_WIRE_60,
		 I_2 => SYNTHESIZED_WIRE_55,
		 I_3 => SYNTHESIZED_WIRE_60,
		 I_4 => SYNTHESIZED_WIRE_45,
		 S0 => SYNTHESIZED_WIRE_57,
		 S1 => SYNTHESIZED_WIRE_58,
		 S2 => SYNTHESIZED_WIRE_59,
		 Out_0 => P0);


SYNTHESIZED_WIRE_51 <= SYNTHESIZED_WIRE_56 AND MSH_LSsumbit_2 AND MSH_LSsumbit_0;


SYNTHESIZED_WIRE_52 <= SYNTHESIZED_WIRE_50 AND MSH_LSsumbit_0;


SYNTHESIZED_WIRE_57 <= SYNTHESIZED_WIRE_51 OR SYNTHESIZED_WIRE_52;


NZ <= NZ_MS AND NZ_LS;


b2v_inst9 : fa
PORT MAP(A => MS3,
		 B => SYNTHESIZED_WIRE_55,
		 C_in => SYNTHESIZED_WIRE_54,
		 Sum => SYNTHESIZED_WIRE_21);


END bdf_type;