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

-- DATE "02/12/2021 09:12:13"

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

ENTITY 	HA IS
    PORT (
	X : IN std_logic;
	Y : IN std_logic;
	S : OUT std_logic;
	C : OUT std_logic
	);
END HA;

-- Design Ports Information
-- S	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF HA IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X : std_logic;
SIGNAL ww_Y : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL \S~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \X~input_o\ : std_logic;
SIGNAL \Y~input_o\ : std_logic;
SIGNAL \S~0_combout\ : std_logic;
SIGNAL \C~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y~input_o\ : std_logic;
SIGNAL \ALT_INV_X~input_o\ : std_logic;

BEGIN

ww_X <= X;
ww_Y <= Y;
S <= ww_S;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_Y~input_o\ <= NOT \Y~input_o\;
\ALT_INV_X~input_o\ <= NOT \X~input_o\;

-- Location: IOOBUF_X30_Y0_N98
\S~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \S~0_combout\,
	devoe => ww_devoe,
	o => \S~output_o\);

-- Location: IOOBUF_X30_Y0_N67
\C~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \C~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOIBUF_X30_Y0_N1
\X~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X,
	o => \X~input_o\);

-- Location: IOIBUF_X30_Y0_N32
\Y~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Y,
	o => \Y~input_o\);

-- Location: LABCELL_X30_Y1_N22
\S~0\ : arriaii_lcell_comb
-- Equation(s):
-- \S~0_combout\ = !\X~input_o\ $ (!\Y~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011001100110011001100110011001100110",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X~input_o\,
	datab => \ALT_INV_Y~input_o\,
	combout => \S~0_combout\);

-- Location: LABCELL_X30_Y1_N20
\C~0\ : arriaii_lcell_comb
-- Equation(s):
-- \C~0_combout\ = (\X~input_o\ & \Y~input_o\)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100010001000100010001000100010001000100010001000100010001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_X~input_o\,
	datab => \ALT_INV_Y~input_o\,
	combout => \C~0_combout\);

ww_S <= \S~output_o\;

ww_C <= \C~output_o\;
END structure;


