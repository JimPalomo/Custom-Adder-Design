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
-- CREATED		"Wed Nov  4 19:24:34 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY decoder3_8 IS 
	PORT
	(
		En :  IN  STD_LOGIC;
		i0 :  IN  STD_LOGIC;
		i1 :  IN  STD_LOGIC;
		i2 :  IN  STD_LOGIC;
		d0 :  OUT  STD_LOGIC;
		d1 :  OUT  STD_LOGIC;
		d2 :  OUT  STD_LOGIC;
		d3 :  OUT  STD_LOGIC;
		d4 :  OUT  STD_LOGIC;
		d5 :  OUT  STD_LOGIC;
		d6 :  OUT  STD_LOGIC;
		d7 :  OUT  STD_LOGIC
	);
END decoder3_8;

ARCHITECTURE bdf_type OF decoder3_8 IS 

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

SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : decoder2_4
PORT MAP(P0 => i0,
		 P1 => i1,
		 En => SYNTHESIZED_WIRE_0,
		 d0 => d0,
		 d1 => d1,
		 d2 => d2,
		 d3 => d3);


b2v_inst1 : decoder2_4
PORT MAP(P0 => i0,
		 P1 => i1,
		 En => SYNTHESIZED_WIRE_1,
		 d0 => d4,
		 d1 => d5,
		 d2 => d6,
		 d3 => d7);


SYNTHESIZED_WIRE_2 <= NOT(i2);



SYNTHESIZED_WIRE_0 <= SYNTHESIZED_WIRE_2 AND En;


SYNTHESIZED_WIRE_1 <= En AND i2;


END bdf_type;