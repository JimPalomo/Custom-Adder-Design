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
-- CREATED		"Wed Nov  4 19:27:50 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY decoder5_32 IS 
	PORT
	(
		En :  IN  STD_LOGIC;
		i0 :  IN  STD_LOGIC;
		i1 :  IN  STD_LOGIC;
		i2 :  IN  STD_LOGIC;
		i3 :  IN  STD_LOGIC;
		i4 :  IN  STD_LOGIC;
		d0 :  OUT  STD_LOGIC;
		d1 :  OUT  STD_LOGIC;
		d2 :  OUT  STD_LOGIC;
		d3 :  OUT  STD_LOGIC;
		d4 :  OUT  STD_LOGIC;
		d5 :  OUT  STD_LOGIC;
		d6 :  OUT  STD_LOGIC;
		d7 :  OUT  STD_LOGIC;
		d8 :  OUT  STD_LOGIC;
		d9 :  OUT  STD_LOGIC;
		d10 :  OUT  STD_LOGIC;
		d11 :  OUT  STD_LOGIC;
		d12 :  OUT  STD_LOGIC;
		d13 :  OUT  STD_LOGIC;
		d14 :  OUT  STD_LOGIC;
		d15 :  OUT  STD_LOGIC;
		d16 :  OUT  STD_LOGIC;
		d17 :  OUT  STD_LOGIC;
		d18 :  OUT  STD_LOGIC;
		d19 :  OUT  STD_LOGIC;
		d20 :  OUT  STD_LOGIC;
		d21 :  OUT  STD_LOGIC;
		d22 :  OUT  STD_LOGIC;
		d23 :  OUT  STD_LOGIC;
		d24 :  OUT  STD_LOGIC;
		d25 :  OUT  STD_LOGIC;
		d26 :  OUT  STD_LOGIC;
		d27 :  OUT  STD_LOGIC;
		d28 :  OUT  STD_LOGIC;
		d29 :  OUT  STD_LOGIC;
		d30 :  OUT  STD_LOGIC;
		d31 :  OUT  STD_LOGIC
	);
END decoder5_32;

ARCHITECTURE bdf_type OF decoder5_32 IS 

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

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : decoder4_16
PORT MAP(i0 => i0,
		 i1 => i1,
		 i2 => i2,
		 i3 => i3,
		 En => SYNTHESIZED_WIRE_0,
		 d0 => d0,
		 d1 => d1,
		 d2 => d2,
		 d3 => d3,
		 d4 => d4,
		 d5 => d5,
		 d6 => d6,
		 d7 => d7,
		 d8 => d8,
		 d9 => d9,
		 d10 => d10,
		 d11 => d11,
		 d12 => d12,
		 d13 => d13,
		 d14 => d14,
		 d15 => d15);


b2v_inst1 : decoder4_16
PORT MAP(i0 => i0,
		 i1 => i1,
		 i2 => i2,
		 i3 => i3,
		 En => SYNTHESIZED_WIRE_1,
		 d0 => d16,
		 d1 => d17,
		 d2 => d18,
		 d3 => d19,
		 d4 => d20,
		 d5 => d21,
		 d6 => d22,
		 d7 => d23,
		 d8 => d24,
		 d9 => d25,
		 d10 => d26,
		 d11 => d27,
		 d12 => d28,
		 d13 => d29,
		 d14 => d30,
		 d15 => d31);


SYNTHESIZED_WIRE_2 <= NOT(i4);



SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_2 AND En;


SYNTHESIZED_WIRE_1 <= En AND i4;


END bdf_type;