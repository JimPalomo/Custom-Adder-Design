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
-- CREATED		"Wed Oct 14 12:57:02 2020"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY rca4b IS 
	PORT
	(
		C_in :  IN  STD_LOGIC;
		A :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		B :  IN  STD_LOGIC_VECTOR(3 DOWNTO 0);
		Sum :  OUT  STD_LOGIC_VECTOR(4 DOWNTO 0)
	);
END rca4b;

ARCHITECTURE bdf_type OF rca4b IS 

COMPONENT fa
	PORT(A : IN STD_LOGIC;
		 B : IN STD_LOGIC;
		 C_in : IN STD_LOGIC;
		 C_out : OUT STD_LOGIC;
		 Sum : OUT STD_LOGIC
	);
END COMPONENT;

SIGNAL	Sum_ALTERA_SYNTHESIZED :  STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_2 :  STD_LOGIC;


BEGIN 



b2v_inst : fa
PORT MAP(A => A(1),
		 B => B(1),
		 C_in => SYNTHESIZED_WIRE_0,
		 C_out => SYNTHESIZED_WIRE_1,
		 Sum => Sum_ALTERA_SYNTHESIZED(1));


b2v_inst1 : fa
PORT MAP(A => A(2),
		 B => B(2),
		 C_in => SYNTHESIZED_WIRE_1,
		 C_out => SYNTHESIZED_WIRE_2,
		 Sum => Sum_ALTERA_SYNTHESIZED(2));


b2v_inst2 : fa
PORT MAP(A => A(3),
		 B => B(3),
		 C_in => SYNTHESIZED_WIRE_2,
		 C_out => Sum_ALTERA_SYNTHESIZED(4),
		 Sum => Sum_ALTERA_SYNTHESIZED(3));


b2v_inst3 : fa
PORT MAP(A => A(0),
		 B => B(0),
		 C_in => C_in,
		 C_out => SYNTHESIZED_WIRE_0,
		 Sum => Sum_ALTERA_SYNTHESIZED(0));

Sum <= Sum_ALTERA_SYNTHESIZED;

END bdf_type;