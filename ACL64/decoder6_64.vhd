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
-- CREATED		"Wed Nov  4 19:34:48 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY decoder6_64 IS 
	PORT
	(
		En :  IN  STD_LOGIC;
		i0 :  IN  STD_LOGIC;
		i1 :  IN  STD_LOGIC;
		i2 :  IN  STD_LOGIC;
		i3 :  IN  STD_LOGIC;
		i4 :  IN  STD_LOGIC;
		i5 :  IN  STD_LOGIC;
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
		d31 :  OUT  STD_LOGIC;
		d32 :  OUT  STD_LOGIC;
		d33 :  OUT  STD_LOGIC;
		d34 :  OUT  STD_LOGIC;
		d35 :  OUT  STD_LOGIC;
		d36 :  OUT  STD_LOGIC;
		d37 :  OUT  STD_LOGIC;
		d38 :  OUT  STD_LOGIC;
		d39 :  OUT  STD_LOGIC;
		d40 :  OUT  STD_LOGIC;
		d41 :  OUT  STD_LOGIC;
		d42 :  OUT  STD_LOGIC;
		d43 :  OUT  STD_LOGIC;
		d44 :  OUT  STD_LOGIC;
		d45 :  OUT  STD_LOGIC;
		d46 :  OUT  STD_LOGIC;
		d47 :  OUT  STD_LOGIC;
		d48 :  OUT  STD_LOGIC;
		d49 :  OUT  STD_LOGIC;
		d50 :  OUT  STD_LOGIC;
		d51 :  OUT  STD_LOGIC;
		d52 :  OUT  STD_LOGIC;
		d53 :  OUT  STD_LOGIC;
		d54 :  OUT  STD_LOGIC;
		d55 :  OUT  STD_LOGIC;
		d56 :  OUT  STD_LOGIC;
		d57 :  OUT  STD_LOGIC;
		d58 :  OUT  STD_LOGIC;
		d59 :  OUT  STD_LOGIC;
		d60 :  OUT  STD_LOGIC;
		d61 :  OUT  STD_LOGIC;
		d62 :  OUT  STD_LOGIC;
		d63 :  OUT  STD_LOGIC
	);
END decoder6_64;

ARCHITECTURE bdf_type OF decoder6_64 IS 

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

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : decoder5_32
PORT MAP(i0 => i0,
		 i1 => i1,
		 i2 => i2,
		 i3 => i3,
		 i4 => i4,
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
		 d15 => d15,
		 d16 => d16,
		 d17 => d17,
		 d18 => d18,
		 d19 => d19,
		 d20 => d20,
		 d21 => d21,
		 d22 => d22,
		 d23 => d23,
		 d24 => d24,
		 d25 => d25,
		 d26 => d26,
		 d27 => d27,
		 d28 => d28,
		 d29 => d29,
		 d30 => d30,
		 d31 => d31);


b2v_inst2 : decoder5_32
PORT MAP(i0 => i0,
		 i1 => i1,
		 i2 => i2,
		 i3 => i3,
		 i4 => i4,
		 En => SYNTHESIZED_WIRE_1,
		 d0 => d32,
		 d1 => d33,
		 d2 => d34,
		 d3 => d35,
		 d4 => d36,
		 d5 => d37,
		 d6 => d38,
		 d7 => d39,
		 d8 => d40,
		 d9 => d41,
		 d10 => d42,
		 d11 => d43,
		 d12 => d44,
		 d13 => d45,
		 d14 => d46,
		 d15 => d47,
		 d16 => d48,
		 d17 => d49,
		 d18 => d50,
		 d19 => d51,
		 d20 => d52,
		 d21 => d53,
		 d22 => d54,
		 d23 => d55,
		 d24 => d56,
		 d25 => d57,
		 d26 => d58,
		 d27 => d59,
		 d28 => d60,
		 d29 => d61,
		 d30 => d62,
		 d31 => d63);


SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_2 AND En;


SYNTHESIZED_WIRE_1 <= En AND i5;


SYNTHESIZED_WIRE_2 <= NOT(i5);



END bdf_type;