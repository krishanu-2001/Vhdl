-- Copyright (C) 1991-2014 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus II License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 14.1.0 Build 186 12/03/2014 SJ Web Edition"

-- DATE "02/04/2021 09:36:43"

-- 
-- Device: Altera EP2AGX45CU17I3 Package UFBGA358
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ARRIAII;
LIBRARY IEEE;
USE ARRIAII.ARRIAII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Tutorial4 IS
    PORT (
	O : OUT std_logic;
	A : IN std_logic;
	C : IN std_logic;
	B : IN std_logic
	);
END Tutorial4;

-- Design Ports Information
-- O	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_U3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Tutorial4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_O : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL \O~output_o\ : std_logic;
SIGNAL \A~input_o\ : std_logic;
SIGNAL \C~input_o\ : std_logic;
SIGNAL \B~input_o\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;
SIGNAL \ALT_INV_A~input_o\ : std_logic;
SIGNAL \ALT_INV_B~input_o\ : std_logic;
SIGNAL \ALT_INV_C~input_o\ : std_logic;

BEGIN

O <= ww_O;
ww_A <= A;
ww_C <= C;
ww_B <= B;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_A~input_o\ <= NOT \A~input_o\;
\ALT_INV_B~input_o\ <= NOT \B~input_o\;
\ALT_INV_C~input_o\ <= NOT \C~input_o\;

-- Location: IOOBUF_X47_Y0_N67
\O~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \O~output_o\);

-- Location: IOIBUF_X47_Y0_N1
\A~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A,
	o => \A~input_o\);

-- Location: IOIBUF_X47_Y0_N94
\C~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C,
	o => \C~input_o\);

-- Location: IOIBUF_X47_Y0_N32
\B~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B,
	o => \B~input_o\);

-- Location: LABCELL_X47_Y1_N22
\inst2~0\ : arriaii_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = ( \C~input_o\ & ( \B~input_o\ ) ) # ( !\C~input_o\ & ( \B~input_o\ & ( \A~input_o\ ) ) ) # ( !\C~input_o\ & ( !\B~input_o\ & ( \A~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000000000000000000000111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \ALT_INV_A~input_o\,
	datae => \ALT_INV_C~input_o\,
	dataf => \ALT_INV_B~input_o\,
	combout => \inst2~0_combout\);

ww_O <= \O~output_o\;
END structure;


