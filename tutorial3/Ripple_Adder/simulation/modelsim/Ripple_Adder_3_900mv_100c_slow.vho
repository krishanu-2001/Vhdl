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

-- DATE "02/04/2021 11:50:35"

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

ENTITY 	Ripple_Adder IS
    PORT (
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	C0 : IN std_logic;
	S : OUT std_logic_vector(3 DOWNTO 0);
	C4 : OUT std_logic
	);
END Ripple_Adder;

-- Design Ports Information
-- S[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[2]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[3]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C4	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C0	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Ripple_Adder IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C0 : std_logic;
SIGNAL ww_S : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_C4 : std_logic;
SIGNAL \S[0]~output_o\ : std_logic;
SIGNAL \S[1]~output_o\ : std_logic;
SIGNAL \S[2]~output_o\ : std_logic;
SIGNAL \S[3]~output_o\ : std_logic;
SIGNAL \C4~output_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \C0~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \FA1|S~combout\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \FA2|S~combout\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \FA2|Cout~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \FA3|S~combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \FA4|S~combout\ : std_logic;
SIGNAL \FA4|Cout~0_combout\ : std_logic;
SIGNAL \ALT_INV_B[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_B[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_C0~input_o\ : std_logic;
SIGNAL \ALT_INV_B[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \FA2|ALT_INV_Cout~0_combout\ : std_logic;

BEGIN

ww_A <= A;
ww_B <= B;
ww_C0 <= C0;
S <= ww_S;
C4 <= ww_C4;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_B[3]~input_o\ <= NOT \B[3]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_B[2]~input_o\ <= NOT \B[2]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
\ALT_INV_B[1]~input_o\ <= NOT \B[1]~input_o\;
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_C0~input_o\ <= NOT \C0~input_o\;
\ALT_INV_B[0]~input_o\ <= NOT \B[0]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\FA2|ALT_INV_Cout~0_combout\ <= NOT \FA2|Cout~0_combout\;

-- Location: IOOBUF_X33_Y0_N98
\S[0]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA1|S~combout\,
	devoe => ww_devoe,
	o => \S[0]~output_o\);

-- Location: IOOBUF_X33_Y0_N33
\S[1]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA2|S~combout\,
	devoe => ww_devoe,
	o => \S[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\S[2]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA3|S~combout\,
	devoe => ww_devoe,
	o => \S[2]~output_o\);

-- Location: IOOBUF_X33_Y0_N5
\S[3]~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA4|S~combout\,
	devoe => ww_devoe,
	o => \S[3]~output_o\);

-- Location: IOOBUF_X32_Y0_N98
\C4~output\ : arriaii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \FA4|Cout~0_combout\,
	devoe => ww_devoe,
	o => \C4~output_o\);

-- Location: IOIBUF_X29_Y0_N1
\A[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: IOIBUF_X30_Y0_N94
\C0~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_C0,
	o => \C0~input_o\);

-- Location: IOIBUF_X29_Y0_N94
\B[0]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: LABCELL_X30_Y1_N22
\FA1|S\ : arriaii_lcell_comb
-- Equation(s):
-- \FA1|S~combout\ = !\A[0]~input_o\ $ (!\C0~input_o\ $ (\B[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011010011001011001101001100101100110100110010110011010011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_C0~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	combout => \FA1|S~combout\);

-- Location: IOIBUF_X30_Y0_N63
\B[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N32
\A[1]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: LABCELL_X30_Y1_N20
\FA2|S\ : arriaii_lcell_comb
-- Equation(s):
-- \FA2|S~combout\ = ( \A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\A[0]~input_o\ & (\C0~input_o\ & \B[0]~input_o\)) # (\A[0]~input_o\ & ((\B[0]~input_o\) # (\C0~input_o\))))) ) ) # ( !\A[1]~input_o\ & ( !\B[1]~input_o\ $ (((!\A[0]~input_o\ & ((!\C0~input_o\) # 
-- (!\B[0]~input_o\))) # (\A[0]~input_o\ & (!\C0~input_o\ & !\B[0]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111001111000000111100111100011100001100001111110000110000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_C0~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_B[0]~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \FA2|S~combout\);

-- Location: IOIBUF_X29_Y0_N63
\A[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LABCELL_X30_Y1_N24
\FA2|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \FA2|Cout~0_combout\ = ( \A[1]~input_o\ & ( ((!\A[0]~input_o\ & (\B[0]~input_o\ & \C0~input_o\)) # (\A[0]~input_o\ & ((\C0~input_o\) # (\B[0]~input_o\)))) # (\B[1]~input_o\) ) ) # ( !\A[1]~input_o\ & ( (\B[1]~input_o\ & ((!\A[0]~input_o\ & (\B[0]~input_o\ 
-- & \C0~input_o\)) # (\A[0]~input_o\ & ((\C0~input_o\) # (\B[0]~input_o\))))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000111000000010000011100011111011111110001111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_A[0]~input_o\,
	datab => \ALT_INV_B[0]~input_o\,
	datac => \ALT_INV_B[1]~input_o\,
	datad => \ALT_INV_C0~input_o\,
	dataf => \ALT_INV_A[1]~input_o\,
	combout => \FA2|Cout~0_combout\);

-- Location: IOIBUF_X29_Y0_N32
\B[2]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: LABCELL_X30_Y1_N26
\FA3|S\ : arriaii_lcell_comb
-- Equation(s):
-- \FA3|S~combout\ = ( \B[2]~input_o\ & ( !\A[2]~input_o\ $ (\FA2|Cout~0_combout\) ) ) # ( !\B[2]~input_o\ & ( !\A[2]~input_o\ $ (!\FA2|Cout~0_combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000111111110000000011111111000011110000000011111111000000001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_A[2]~input_o\,
	datad => \FA2|ALT_INV_Cout~0_combout\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \FA3|S~combout\);

-- Location: IOIBUF_X30_Y0_N1
\B[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X32_Y0_N32
\A[3]~input\ : arriaii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LABCELL_X30_Y1_N8
\FA4|S\ : arriaii_lcell_comb
-- Equation(s):
-- \FA4|S~combout\ = ( \A[3]~input_o\ & ( !\B[3]~input_o\ $ (((!\FA2|Cout~0_combout\ & (\B[2]~input_o\ & \A[2]~input_o\)) # (\FA2|Cout~0_combout\ & ((\A[2]~input_o\) # (\B[2]~input_o\))))) ) ) # ( !\A[3]~input_o\ & ( !\B[3]~input_o\ $ 
-- (((!\FA2|Cout~0_combout\ & ((!\B[2]~input_o\) # (!\A[2]~input_o\))) # (\FA2|Cout~0_combout\ & (!\B[2]~input_o\ & !\A[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011011001101100001101100110110011001001100100111100100110010011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FA2|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_B[2]~input_o\,
	datad => \ALT_INV_A[2]~input_o\,
	dataf => \ALT_INV_A[3]~input_o\,
	combout => \FA4|S~combout\);

-- Location: LABCELL_X30_Y1_N10
\FA4|Cout~0\ : arriaii_lcell_comb
-- Equation(s):
-- \FA4|Cout~0_combout\ = ( \B[2]~input_o\ & ( (!\B[3]~input_o\ & (\A[3]~input_o\ & ((\A[2]~input_o\) # (\FA2|Cout~0_combout\)))) # (\B[3]~input_o\ & (((\A[3]~input_o\) # (\A[2]~input_o\)) # (\FA2|Cout~0_combout\))) ) ) # ( !\B[2]~input_o\ & ( 
-- (!\B[3]~input_o\ & (\FA2|Cout~0_combout\ & (\A[2]~input_o\ & \A[3]~input_o\))) # (\B[3]~input_o\ & (((\FA2|Cout~0_combout\ & \A[2]~input_o\)) # (\A[3]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \FA2|ALT_INV_Cout~0_combout\,
	datab => \ALT_INV_B[3]~input_o\,
	datac => \ALT_INV_A[2]~input_o\,
	datad => \ALT_INV_A[3]~input_o\,
	dataf => \ALT_INV_B[2]~input_o\,
	combout => \FA4|Cout~0_combout\);

ww_S(0) <= \S[0]~output_o\;

ww_S(1) <= \S[1]~output_o\;

ww_S(2) <= \S[2]~output_o\;

ww_S(3) <= \S[3]~output_o\;

ww_C4 <= \C4~output_o\;
END structure;


