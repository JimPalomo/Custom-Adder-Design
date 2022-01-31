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
-- CREATED		"Mon Nov  9 22:19:21 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY IL_level3_new IS 
	PORT
	(
		NZFlag :  IN  STD_LOGIC;
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
		Out_15 :  OUT  STD_LOGIC
	);
END IL_level3_new;

ARCHITECTURE bdf_type OF IL_level3_new IS 

COMPONENT mux2_1
	PORT(I_0 : IN STD_LOGIC;
		 Sel : IN STD_LOGIC;
		 I_1 : IN STD_LOGIC;
		 Out_0 : OUT STD_LOGIC
	);
END COMPONENT;

COMPONENT decoder4_16
	PORT(i0 : IN STD_LOGIC;
		 i1 : IN STD_LOGIC;
		 i2 : IN STD_LOGIC;
		 i3 : IN STD_LOGIC;
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
		 d15 : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	SYNTHESIZED_WIRE_78 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_79 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_80 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_81 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_82 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_83 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_12 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_84 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_14 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_16 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_18 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_20 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_22 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_24 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_85 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_26 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_86 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_28 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_87 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_30 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_88 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_32 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_89 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_34 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_90 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_36 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_91 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_38 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_92 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_40 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_93 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_44 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_48 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_50 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_52 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_56 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_60 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_64 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_68 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_70 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_74 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_75 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_76 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_77 :  STD_LOGIC;


BEGIN 
SYNTHESIZED_WIRE_93 <= '0';



b2v_inst : mux2_1
PORT MAP(I_0 => In_3,
		 Sel => SYNTHESIZED_WIRE_78,
		 I_1 => SYNTHESIZED_WIRE_1,
		 Out_0 => Out_3);


b2v_inst1 : decoder4_16
PORT MAP(i0 => LSZD_Pos0,
		 i1 => LSZD_Pos1,
		 i2 => LSZD_Pos2,
		 i3 => LSZD_Pos3,
		 En => SYNTHESIZED_WIRE_2,
		 d0 => SYNTHESIZED_WIRE_70,
		 d1 => SYNTHESIZED_WIRE_50,
		 d2 => SYNTHESIZED_WIRE_16,
		 d3 => SYNTHESIZED_WIRE_8,
		 d4 => SYNTHESIZED_WIRE_10,
		 d5 => SYNTHESIZED_WIRE_12,
		 d6 => SYNTHESIZED_WIRE_14,
		 d7 => SYNTHESIZED_WIRE_26,
		 d8 => SYNTHESIZED_WIRE_28,
		 d9 => SYNTHESIZED_WIRE_30,
		 d10 => SYNTHESIZED_WIRE_32,
		 d11 => SYNTHESIZED_WIRE_34,
		 d12 => SYNTHESIZED_WIRE_36,
		 d13 => SYNTHESIZED_WIRE_38,
		 d14 => SYNTHESIZED_WIRE_40,
		 d15 => SYNTHESIZED_WIRE_92);


SYNTHESIZED_WIRE_77 <= NOT(NZFlag);



SYNTHESIZED_WIRE_4 <= NOT(In_1);



b2v_inst12 : mux2_1
PORT MAP(I_0 => In_1,
		 Sel => SYNTHESIZED_WIRE_79,
		 I_1 => SYNTHESIZED_WIRE_4,
		 Out_0 => Out_1);


SYNTHESIZED_WIRE_76 <= NOT(In_0);



b2v_inst14 : mux2_1
PORT MAP(I_0 => In_2,
		 Sel => SYNTHESIZED_WIRE_80,
		 I_1 => SYNTHESIZED_WIRE_6,
		 Out_0 => Out_2);


SYNTHESIZED_WIRE_78 <= SYNTHESIZED_WIRE_81 OR SYNTHESIZED_WIRE_8;


SYNTHESIZED_WIRE_81 <= SYNTHESIZED_WIRE_82 OR SYNTHESIZED_WIRE_10;


SYNTHESIZED_WIRE_82 <= SYNTHESIZED_WIRE_83 OR SYNTHESIZED_WIRE_12;


SYNTHESIZED_WIRE_83 <= SYNTHESIZED_WIRE_84 OR SYNTHESIZED_WIRE_14;


SYNTHESIZED_WIRE_18 <= NOT(In_4);



SYNTHESIZED_WIRE_80 <= SYNTHESIZED_WIRE_78 OR SYNTHESIZED_WIRE_16;


SYNTHESIZED_WIRE_20 <= NOT(In_5);



b2v_inst21 : mux2_1
PORT MAP(I_0 => In_4,
		 Sel => SYNTHESIZED_WIRE_81,
		 I_1 => SYNTHESIZED_WIRE_18,
		 Out_0 => Out_4);


b2v_inst22 : mux2_1
PORT MAP(I_0 => In_5,
		 Sel => SYNTHESIZED_WIRE_82,
		 I_1 => SYNTHESIZED_WIRE_20,
		 Out_0 => Out_5);


SYNTHESIZED_WIRE_22 <= NOT(In_6);



b2v_inst24 : mux2_1
PORT MAP(I_0 => In_6,
		 Sel => SYNTHESIZED_WIRE_83,
		 I_1 => SYNTHESIZED_WIRE_22,
		 Out_0 => Out_6);


SYNTHESIZED_WIRE_24 <= NOT(In_7);



b2v_inst26 : mux2_1
PORT MAP(I_0 => In_7,
		 Sel => SYNTHESIZED_WIRE_84,
		 I_1 => SYNTHESIZED_WIRE_24,
		 Out_0 => Out_7);


SYNTHESIZED_WIRE_84 <= SYNTHESIZED_WIRE_85 OR SYNTHESIZED_WIRE_26;


SYNTHESIZED_WIRE_85 <= SYNTHESIZED_WIRE_86 OR SYNTHESIZED_WIRE_28;


SYNTHESIZED_WIRE_86 <= SYNTHESIZED_WIRE_87 OR SYNTHESIZED_WIRE_30;



SYNTHESIZED_WIRE_87 <= SYNTHESIZED_WIRE_88 OR SYNTHESIZED_WIRE_32;


SYNTHESIZED_WIRE_88 <= SYNTHESIZED_WIRE_89 OR SYNTHESIZED_WIRE_34;


SYNTHESIZED_WIRE_89 <= SYNTHESIZED_WIRE_90 OR SYNTHESIZED_WIRE_36;


SYNTHESIZED_WIRE_90 <= SYNTHESIZED_WIRE_91 OR SYNTHESIZED_WIRE_38;


SYNTHESIZED_WIRE_91 <= SYNTHESIZED_WIRE_92 OR SYNTHESIZED_WIRE_40;


SYNTHESIZED_WIRE_44 <= NOT(SYNTHESIZED_WIRE_93);



b2v_inst36 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_93,
		 Sel => SYNTHESIZED_WIRE_86,
		 I_1 => SYNTHESIZED_WIRE_44,
		 Out_0 => Out_9);


SYNTHESIZED_WIRE_48 <= NOT(SYNTHESIZED_WIRE_93);



b2v_inst38 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_93,
		 Sel => SYNTHESIZED_WIRE_87,
		 I_1 => SYNTHESIZED_WIRE_48,
		 Out_0 => Out_10);


SYNTHESIZED_WIRE_52 <= NOT(In_8);



SYNTHESIZED_WIRE_79 <= SYNTHESIZED_WIRE_80 OR SYNTHESIZED_WIRE_50;


b2v_inst40 : mux2_1
PORT MAP(I_0 => In_8,
		 Sel => SYNTHESIZED_WIRE_85,
		 I_1 => SYNTHESIZED_WIRE_52,
		 Out_0 => Out_8);


SYNTHESIZED_WIRE_56 <= NOT(SYNTHESIZED_WIRE_93);



b2v_inst42 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_93,
		 Sel => SYNTHESIZED_WIRE_89,
		 I_1 => SYNTHESIZED_WIRE_56,
		 Out_0 => Out_12);


SYNTHESIZED_WIRE_60 <= NOT(SYNTHESIZED_WIRE_93);



b2v_inst44 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_93,
		 Sel => SYNTHESIZED_WIRE_90,
		 I_1 => SYNTHESIZED_WIRE_60,
		 Out_0 => Out_13);


SYNTHESIZED_WIRE_64 <= NOT(SYNTHESIZED_WIRE_93);



b2v_inst46 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_93,
		 Sel => SYNTHESIZED_WIRE_88,
		 I_1 => SYNTHESIZED_WIRE_64,
		 Out_0 => Out_11);


SYNTHESIZED_WIRE_68 <= NOT(SYNTHESIZED_WIRE_93);



b2v_inst48 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_93,
		 Sel => SYNTHESIZED_WIRE_92,
		 I_1 => SYNTHESIZED_WIRE_68,
		 Out_0 => Out_15);


SYNTHESIZED_WIRE_75 <= SYNTHESIZED_WIRE_79 OR SYNTHESIZED_WIRE_70;


SYNTHESIZED_WIRE_74 <= NOT(SYNTHESIZED_WIRE_93);



b2v_inst52 : mux2_1
PORT MAP(I_0 => SYNTHESIZED_WIRE_93,
		 Sel => SYNTHESIZED_WIRE_91,
		 I_1 => SYNTHESIZED_WIRE_74,
		 Out_0 => Out_14);


b2v_inst6 : mux2_1
PORT MAP(I_0 => In_0,
		 Sel => SYNTHESIZED_WIRE_75,
		 I_1 => SYNTHESIZED_WIRE_76,
		 Out_0 => Out_0);


SYNTHESIZED_WIRE_1 <= NOT(In_3);



SYNTHESIZED_WIRE_6 <= NOT(In_2);



SYNTHESIZED_WIRE_2 <= SYNTHESIZED_WIRE_77 AND Cout_0;


END bdf_type;