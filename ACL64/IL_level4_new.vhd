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
-- CREATED		"Tue Nov 10 13:00:17 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY IL_level4_new IS 
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
		In_5 :  IN  STD_LOGIC;
		In_6 :  IN  STD_LOGIC;
		In_7 :  IN  STD_LOGIC;
		LSZD_Pos3 :  IN  STD_LOGIC;
		In_8 :  IN  STD_LOGIC;
		In_9 :  IN  STD_LOGIC;
		In_10 :  IN  STD_LOGIC;
		In_11 :  IN  STD_LOGIC;
		In_12 :  IN  STD_LOGIC;
		In_13 :  IN  STD_LOGIC;
		In_14 :  IN  STD_LOGIC;
		In_15 :  IN  STD_LOGIC;
		LSZD_Pos4 :  IN  STD_LOGIC;
		In_16 :  IN  STD_LOGIC;
		Out_3 :  OUT  STD_LOGIC;
		Out_2 :  OUT  STD_LOGIC;
		Out_1 :  OUT  STD_LOGIC;
		Out_0 :  OUT  STD_LOGIC;
		Out_4 :  OUT  STD_LOGIC;
		Out_5 :  OUT  STD_LOGIC;
		Out_6 :  OUT  STD_LOGIC;
		Out_7 :  OUT  STD_LOGIC;
		Out_8 :  OUT  STD_LOGIC;
		Out_9 :  OUT  STD_LOGIC;
		Out_10 :  OUT  STD_LOGIC;
		Out_11 :  OUT  STD_LOGIC;
		Out_12 :  OUT  STD_LOGIC;
		Out_13 :  OUT  STD_LOGIC;
		Out_14 :  OUT  STD_LOGIC;
		Out_15 :  OUT  STD_LOGIC;
		Out_16 :  OUT  STD_LOGIC
	);
END IL_level4_new;

ARCHITECTURE bdf_type OF IL_level4_new IS 

COMPONENT mux2_1
	PORT(I_0 : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 I_1 : IN STD_LOGIC;
		 Out_0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT decoder5_32
	PORT(i0 : IN STD_LOGIC;
		 i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 i3 : IN STD_LOGIC;
		 i4 : IN STD_LOGIC;
		 En : IN STD_LOGIC;
		 d0 : OUT STD_LOGIC;
		 d1 : OUT STD_LOGIC;
		 d2 : OUT STD_LOGIC;
		 d3 : OUT STD_LOGIC;
		 d4 : OUT STD_LOGIC;
		 d5 : OUT STD_LOGIC;
		 d6 : OUT STD_LOGIC;
		 d7 : OUT STD_LOGIC;
		 d8 : OUT STD_LOGIC;
		 d9 : OUT STD_LOGIC;
		 d10 : OUT STD_LOGIC;
		 d11 : OUT STD_LOGIC;
		 d12 : OUT STD_LOGIC;
		 d13 : OUT STD_LOGIC;
		 d14 : OUT STD_LOGIC;
		 d15 : OUT STD_LOGIC;
		 d16 : OUT STD_LOGIC;
		 d17 : OUT STD_LOGIC;
		 d18 : OUT STD_LOGIC;
		 d19 : OUT STD_LOGIC;
		 d20 : OUT STD_LOGIC;
		 d21 : OUT STD_LOGIC;
		 d22 : OUT STD_LOGIC;
		 d23 : OUT STD_LOGIC;
		 d24 : OUT STD_LOGIC;
		 d25 : OUT STD_LOGIC;
		 d26 : OUT STD_LOGIC;
		 d27 : OUT STD_LOGIC;
		 d28 : OUT STD_LOGIC;
		 d29 : OUT STD_LOGIC;
		 d30 : OUT STD_LOGIC;
		 d31 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_66 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_67 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_3 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_68 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_69 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_70 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_13 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_15 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_17 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_19 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_71 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_21 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_72 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_23 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_73 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_25 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_74 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_27 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_75 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_29 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_76 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_31 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_77 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_33 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_78 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_35 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_79 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_37 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_39 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_41 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_43 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_45 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_47 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_49 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_51 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_53 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_80 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_55 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_81 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_57 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_59 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_61 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_63 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_64 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_65 :  STD_LOGIC;


BEGIN 



b2v_inst : mux2_1
PORT MAP(I_0 => In_3,
		 Sel => SYNTHESIZED_WIRE_66,
		 I_1 => SYNTHESIZED_WIRE_1,
		 Out_0 => Out_3);


b2v_inst1 : decoder5_32
PORT MAP(i0 => LSZD_Pos0,
		 i1 => LSZD_Pos1,
		 i2 => LSZD_Pos2,
		 i3 => LSZD_Pos3,
		 i4 => LSZD_Pos4,
		 En => Cout_0,
		 d0 => SYNTHESIZED_WIRE_55,
		 d1 => SYNTHESIZED_WIRE_43,
		 d2 => SYNTHESIZED_WIRE_11,
		 d3 => SYNTHESIZED_WIRE_3,
		 d4 => SYNTHESIZED_WIRE_5,
		 d5 => SYNTHESIZED_WIRE_7,
		 d6 => SYNTHESIZED_WIRE_9,
		 d7 => SYNTHESIZED_WIRE_21,
		 d8 => SYNTHESIZED_WIRE_23,
		 d9 => SYNTHESIZED_WIRE_25,
		 d10 => SYNTHESIZED_WIRE_29,
		 d11 => SYNTHESIZED_WIRE_31,
		 d12 => SYNTHESIZED_WIRE_33,
		 d13 => SYNTHESIZED_WIRE_35,
		 d14 => SYNTHESIZED_WIRE_37,
		 d15 => SYNTHESIZED_WIRE_57,
		 d16 => SYNTHESIZED_WIRE_81);


SYNTHESIZED_WIRE_61 <= NOT(In_1);



SYNTHESIZED_WIRE_65 <= NOT(In_0);



SYNTHESIZED_WIRE_66 <= SYNTHESIZED_WIRE_67 OR SYNTHESIZED_WIRE_3;


SYNTHESIZED_WIRE_67 <= SYNTHESIZED_WIRE_68 OR SYNTHESIZED_WIRE_5;


SYNTHESIZED_WIRE_68 <= SYNTHESIZED_WIRE_69 OR SYNTHESIZED_WIRE_7;


SYNTHESIZED_WIRE_69 <= SYNTHESIZED_WIRE_70 OR SYNTHESIZED_WIRE_9;


SYNTHESIZED_WIRE_13 <= NOT(In_4);



SYNTHESIZED_WIRE_74 <= SYNTHESIZED_WIRE_66 OR SYNTHESIZED_WIRE_11;


SYNTHESIZED_WIRE_15 <= NOT(In_5);



b2v_inst21 : mux2_1
PORT MAP(I_0 => In_4,
		 Sel => SYNTHESIZED_WIRE_67,
		 I_1 => SYNTHESIZED_WIRE_13,
		 Out_0 => Out_4);


b2v_inst22 : mux2_1
PORT MAP(I_0 => In_5,
		 Sel => SYNTHESIZED_WIRE_68,
		 I_1 => SYNTHESIZED_WIRE_15,
		 Out_0 => Out_5);


SYNTHESIZED_WIRE_17 <= NOT(In_6);



b2v_inst24 : mux2_1
PORT MAP(I_0 => In_6,
		 Sel => SYNTHESIZED_WIRE_69,
		 I_1 => SYNTHESIZED_WIRE_17,
		 Out_0 => Out_6);


SYNTHESIZED_WIRE_19 <= NOT(In_7);



b2v_inst26 : mux2_1
PORT MAP(I_0 => In_7,
		 Sel => SYNTHESIZED_WIRE_70,
		 I_1 => SYNTHESIZED_WIRE_19,
		 Out_0 => Out_7);


SYNTHESIZED_WIRE_70 <= SYNTHESIZED_WIRE_71 OR SYNTHESIZED_WIRE_21;


SYNTHESIZED_WIRE_71 <= SYNTHESIZED_WIRE_72 OR SYNTHESIZED_WIRE_23;


SYNTHESIZED_WIRE_72 <= SYNTHESIZED_WIRE_73 OR SYNTHESIZED_WIRE_25;


b2v_inst3 : mux2_1
PORT MAP(I_0 => In_2,
		 Sel => SYNTHESIZED_WIRE_74,
		 I_1 => SYNTHESIZED_WIRE_27,
		 Out_0 => Out_2);


SYNTHESIZED_WIRE_73 <= SYNTHESIZED_WIRE_75 OR SYNTHESIZED_WIRE_29;


SYNTHESIZED_WIRE_75 <= SYNTHESIZED_WIRE_76 OR SYNTHESIZED_WIRE_31;


SYNTHESIZED_WIRE_76 <= SYNTHESIZED_WIRE_77 OR SYNTHESIZED_WIRE_33;


SYNTHESIZED_WIRE_77 <= SYNTHESIZED_WIRE_78 OR SYNTHESIZED_WIRE_35;


SYNTHESIZED_WIRE_78 <= SYNTHESIZED_WIRE_79 OR SYNTHESIZED_WIRE_37;


SYNTHESIZED_WIRE_39 <= NOT(In_9);



b2v_inst36 : mux2_1
PORT MAP(I_0 => In_9,
		 Sel => SYNTHESIZED_WIRE_72,
		 I_1 => SYNTHESIZED_WIRE_39,
		 Out_0 => Out_9);


SYNTHESIZED_WIRE_41 <= NOT(In_10);



b2v_inst38 : mux2_1
PORT MAP(I_0 => In_10,
		 Sel => SYNTHESIZED_WIRE_73,
		 I_1 => SYNTHESIZED_WIRE_41,
		 Out_0 => Out_10);


SYNTHESIZED_WIRE_45 <= NOT(In_8);



SYNTHESIZED_WIRE_80 <= SYNTHESIZED_WIRE_74 OR SYNTHESIZED_WIRE_43;


b2v_inst40 : mux2_1
PORT MAP(I_0 => In_8,
		 Sel => SYNTHESIZED_WIRE_71,
		 I_1 => SYNTHESIZED_WIRE_45,
		 Out_0 => Out_8);


SYNTHESIZED_WIRE_47 <= NOT(In_12);



b2v_inst42 : mux2_1
PORT MAP(I_0 => In_12,
		 Sel => SYNTHESIZED_WIRE_76,
		 I_1 => SYNTHESIZED_WIRE_47,
		 Out_0 => Out_12);


SYNTHESIZED_WIRE_49 <= NOT(In_13);



b2v_inst44 : mux2_1
PORT MAP(I_0 => In_13,
		 Sel => SYNTHESIZED_WIRE_77,
		 I_1 => SYNTHESIZED_WIRE_49,
		 Out_0 => Out_13);


SYNTHESIZED_WIRE_51 <= NOT(In_11);



b2v_inst46 : mux2_1
PORT MAP(I_0 => In_11,
		 Sel => SYNTHESIZED_WIRE_75,
		 I_1 => SYNTHESIZED_WIRE_51,
		 Out_0 => Out_11);


SYNTHESIZED_WIRE_53 <= NOT(In_15);



b2v_inst48 : mux2_1
PORT MAP(I_0 => In_15,
		 Sel => SYNTHESIZED_WIRE_79,
		 I_1 => SYNTHESIZED_WIRE_53,
		 Out_0 => Out_15);


SYNTHESIZED_WIRE_64 <= SYNTHESIZED_WIRE_80 OR SYNTHESIZED_WIRE_55;


SYNTHESIZED_WIRE_79 <= SYNTHESIZED_WIRE_81 OR SYNTHESIZED_WIRE_57;


SYNTHESIZED_WIRE_59 <= NOT(In_14);



b2v_inst52 : mux2_1
PORT MAP(I_0 => In_14,
		 Sel => SYNTHESIZED_WIRE_78,
		 I_1 => SYNTHESIZED_WIRE_59,
		 Out_0 => Out_14);


b2v_inst6 : mux2_1
PORT MAP(I_0 => In_1,
		 Sel => SYNTHESIZED_WIRE_80,
		 I_1 => SYNTHESIZED_WIRE_61,
		 Out_0 => Out_1);


SYNTHESIZED_WIRE_63 <= NOT(In_16);



SYNTHESIZED_WIRE_1 <= NOT(In_3);



b2v_inst70 : mux2_1
PORT MAP(I_0 => In_16,
		 Sel => SYNTHESIZED_WIRE_81,
		 I_1 => SYNTHESIZED_WIRE_63,
		 Out_0 => Out_16);


SYNTHESIZED_WIRE_27 <= NOT(In_2);



b2v_inst9 : mux2_1
PORT MAP(I_0 => In_0,
		 Sel => SYNTHESIZED_WIRE_64,
		 I_1 => SYNTHESIZED_WIRE_65,
		 Out_0 => Out_0);


END bdf_type;