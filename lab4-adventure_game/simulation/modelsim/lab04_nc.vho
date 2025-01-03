-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
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
-- VERSION "Version 15.0.2 Build 153 07/15/2015 SJ Web Edition"

-- DATE "10/13/2024 21:18:48"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Game IS
    PORT (
	d : OUT std_logic;
	CLK : IN std_logic;
	N : IN std_logic;
	S : IN std_logic;
	E : IN std_logic;
	W : IN std_logic;
	R : IN std_logic;
	win : OUT std_logic;
	s6 : OUT std_logic;
	s5 : OUT std_logic;
	s3 : OUT std_logic;
	s4 : OUT std_logic;
	s2 : OUT std_logic;
	s1 : OUT std_logic;
	s0 : OUT std_logic;
	V : OUT std_logic;
	sw : OUT std_logic
	);
END Game;

-- Design Ports Information
-- d	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- win	=>  Location: PIN_AG12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s6	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5	=>  Location: PIN_AH12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_AE13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_Y12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AF14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- V	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- W	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S	=>  Location: PIN_AC11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- N	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AE14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Game IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_N : std_logic;
SIGNAL ww_S : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_W : std_logic;
SIGNAL ww_R : std_logic;
SIGNAL ww_win : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_V : std_logic;
SIGNAL ww_sw : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \win~output_o\ : std_logic;
SIGNAL \s6~output_o\ : std_logic;
SIGNAL \s5~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \s4~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \V~output_o\ : std_logic;
SIGNAL \sw~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst5|inst43~combout\ : std_logic;
SIGNAL \R~input_o\ : std_logic;
SIGNAL \inst|inst3~combout\ : std_logic;
SIGNAL \inst5|inst40~combout\ : std_logic;
SIGNAL \W~input_o\ : std_logic;
SIGNAL \inst5|inst39~combout\ : std_logic;
SIGNAL \S~input_o\ : std_logic;
SIGNAL \inst5|inst38~combout\ : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \N~input_o\ : std_logic;
SIGNAL \inst5|inst2~0_combout\ : std_logic;
SIGNAL \inst5|inst41~combout\ : std_logic;
SIGNAL \inst5|inst23~combout\ : std_logic;
SIGNAL \inst5|inst17~q\ : std_logic;
SIGNAL \inst5|inst53~0_combout\ : std_logic;
SIGNAL \inst5|inst42~combout\ : std_logic;
SIGNAL \inst5|inst5~combout\ : std_logic;
SIGNAL \inst5|inst18~q\ : std_logic;
SIGNAL \inst5|inst53~1_combout\ : std_logic;
SIGNAL \inst5|inst53~combout\ : std_logic;
SIGNAL \inst5|inst4~combout\ : std_logic;
SIGNAL \inst5|inst13~feeder_combout\ : std_logic;
SIGNAL \inst5|inst13~q\ : std_logic;
SIGNAL \inst5|inst2~1_combout\ : std_logic;
SIGNAL \inst5|inst14~q\ : std_logic;
SIGNAL \inst5|inst~0_combout\ : std_logic;
SIGNAL \inst5|inst~1_combout\ : std_logic;
SIGNAL \inst5|inst15~q\ : std_logic;
SIGNAL \inst5|inst3~combout\ : std_logic;
SIGNAL \inst5|inst16~q\ : std_logic;
SIGNAL \inst|inst2~combout\ : std_logic;
SIGNAL \inst|inst13~q\ : std_logic;
SIGNAL \inst5|inst6~combout\ : std_logic;
SIGNAL \inst5|inst19~q\ : std_logic;

BEGIN

d <= ww_d;
ww_CLK <= CLK;
ww_N <= N;
ww_S <= S;
ww_E <= E;
ww_W <= W;
ww_R <= R;
win <= ww_win;
s6 <= ww_s6;
s5 <= ww_s5;
s3 <= ww_s3;
s4 <= ww_s4;
s2 <= ww_s2;
s1 <= ww_s1;
s0 <= ww_s0;
V <= ww_V;
sw <= ww_sw;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X52_Y0_N16
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst19~q\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X54_Y0_N9
\win~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst18~q\,
	devoe => ww_devoe,
	o => \win~output_o\);

-- Location: IOOBUF_X52_Y0_N9
\s6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst19~q\,
	devoe => ww_devoe,
	o => \s6~output_o\);

-- Location: IOOBUF_X54_Y0_N2
\s5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst18~q\,
	devoe => ww_devoe,
	o => \s5~output_o\);

-- Location: IOOBUF_X54_Y0_N16
\s3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst16~q\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X42_Y0_N23
\s4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst17~q\,
	devoe => ww_devoe,
	o => \s4~output_o\);

-- Location: IOOBUF_X52_Y0_N23
\s2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst15~q\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X49_Y0_N16
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst14~q\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X47_Y0_N2
\s0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst13~q\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOOBUF_X45_Y0_N16
\V~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst13~q\,
	devoe => ww_devoe,
	o => \V~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\sw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|inst16~q\,
	devoe => ww_devoe,
	o => \sw~output_o\);

-- Location: IOIBUF_X49_Y0_N22
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: LCCOMB_X48_Y1_N16
\inst5|inst43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst43~combout\ = LCELL((\CLK~input_o\ & !\inst5|inst19~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK~input_o\,
	datad => \inst5|inst19~q\,
	combout => \inst5|inst43~combout\);

-- Location: IOIBUF_X47_Y0_N8
\R~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R,
	o => \R~input_o\);

-- Location: LCCOMB_X48_Y1_N26
\inst|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst3~combout\ = LCELL((\CLK~input_o\ & ((\R~input_o\) # (!\inst|inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \R~input_o\,
	datac => \inst|inst13~q\,
	datad => \CLK~input_o\,
	combout => \inst|inst3~combout\);

-- Location: LCCOMB_X49_Y1_N28
\inst5|inst40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst40~combout\ = LCELL((!\inst5|inst16~q\ & \CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst16~q\,
	datad => \CLK~input_o\,
	combout => \inst5|inst40~combout\);

-- Location: IOIBUF_X45_Y0_N22
\W~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_W,
	o => \W~input_o\);

-- Location: LCCOMB_X50_Y1_N28
\inst5|inst39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst39~combout\ = LCELL((\CLK~input_o\ & !\inst5|inst15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK~input_o\,
	datad => \inst5|inst15~q\,
	combout => \inst5|inst39~combout\);

-- Location: IOIBUF_X49_Y0_N8
\S~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S,
	o => \S~input_o\);

-- Location: LCCOMB_X49_Y1_N10
\inst5|inst38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst38~combout\ = LCELL((\CLK~input_o\ & !\inst5|inst14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLK~input_o\,
	datad => \inst5|inst14~q\,
	combout => \inst5|inst38~combout\);

-- Location: IOIBUF_X52_Y0_N1
\E~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\N~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_N,
	o => \N~input_o\);

-- Location: LCCOMB_X49_Y1_N30
\inst5|inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst2~0_combout\ = (\N~input_o\ & \inst5|inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \N~input_o\,
	datad => \inst5|inst15~q\,
	combout => \inst5|inst2~0_combout\);

-- Location: LCCOMB_X50_Y1_N18
\inst5|inst41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst41~combout\ = LCELL((!\inst5|inst17~q\ & \CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst17~q\,
	datad => \CLK~input_o\,
	combout => \inst5|inst41~combout\);

-- Location: LCCOMB_X50_Y1_N4
\inst5|inst23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst23~combout\ = (\E~input_o\ & (\inst5|inst15~q\ & !\R~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => \inst5|inst15~q\,
	datac => \R~input_o\,
	combout => \inst5|inst23~combout\);

-- Location: FF_X50_Y1_N5
\inst5|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|inst41~combout\,
	d => \inst5|inst23~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst17~q\);

-- Location: LCCOMB_X49_Y1_N26
\inst5|inst53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst53~0_combout\ = (\inst5|inst19~q\) # ((\inst5|inst17~q\) # ((\CLK~input_o\ & !\inst5|inst13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLK~input_o\,
	datab => \inst5|inst13~q\,
	datac => \inst5|inst19~q\,
	datad => \inst5|inst17~q\,
	combout => \inst5|inst53~0_combout\);

-- Location: LCCOMB_X47_Y1_N18
\inst5|inst42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst42~combout\ = LCELL((!\inst5|inst18~q\ & \CLK~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|inst18~q\,
	datad => \CLK~input_o\,
	combout => \inst5|inst42~combout\);

-- Location: LCCOMB_X47_Y1_N28
\inst5|inst5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst5~combout\ = (!\R~input_o\ & (\inst5|inst17~q\ & \inst|inst13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datac => \inst5|inst17~q\,
	datad => \inst|inst13~q\,
	combout => \inst5|inst5~combout\);

-- Location: FF_X47_Y1_N29
\inst5|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|inst42~combout\,
	d => \inst5|inst5~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst18~q\);

-- Location: LCCOMB_X49_Y1_N12
\inst5|inst53~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst53~1_combout\ = (\inst5|inst18~q\) # ((\inst5|inst16~q\) # ((\inst5|inst14~q\) # (\inst5|inst15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|inst18~q\,
	datab => \inst5|inst16~q\,
	datac => \inst5|inst14~q\,
	datad => \inst5|inst15~q\,
	combout => \inst5|inst53~1_combout\);

-- Location: LCCOMB_X49_Y1_N18
\inst5|inst53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst53~combout\ = LCELL((\inst5|inst53~0_combout\) # (\inst5|inst53~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|inst53~0_combout\,
	datad => \inst5|inst53~1_combout\,
	combout => \inst5|inst53~combout\);

-- Location: LCCOMB_X49_Y1_N16
\inst5|inst4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst4~combout\ = (\R~input_o\) # ((\E~input_o\ & \inst5|inst14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datac => \R~input_o\,
	datad => \inst5|inst14~q\,
	combout => \inst5|inst4~combout\);

-- Location: LCCOMB_X48_Y1_N14
\inst5|inst13~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst13~feeder_combout\ = \inst5|inst4~combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst5|inst4~combout\,
	combout => \inst5|inst13~feeder_combout\);

-- Location: FF_X48_Y1_N15
\inst5|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|inst53~combout\,
	d => \inst5|inst13~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst13~q\);

-- Location: LCCOMB_X49_Y1_N22
\inst5|inst2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst2~1_combout\ = (!\R~input_o\ & ((\inst5|inst2~0_combout\) # ((\E~input_o\ & \inst5|inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E~input_o\,
	datab => \R~input_o\,
	datac => \inst5|inst2~0_combout\,
	datad => \inst5|inst13~q\,
	combout => \inst5|inst2~1_combout\);

-- Location: FF_X49_Y1_N23
\inst5|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|inst38~combout\,
	d => \inst5|inst2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst14~q\);

-- Location: LCCOMB_X49_Y1_N24
\inst5|inst~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst~0_combout\ = (\W~input_o\ & ((\inst5|inst16~q\) # ((\S~input_o\ & \inst5|inst14~q\)))) # (!\W~input_o\ & (\S~input_o\ & (\inst5|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \S~input_o\,
	datac => \inst5|inst14~q\,
	datad => \inst5|inst16~q\,
	combout => \inst5|inst~0_combout\);

-- Location: LCCOMB_X50_Y1_N24
\inst5|inst~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst~1_combout\ = (!\R~input_o\ & \inst5|inst~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~input_o\,
	datad => \inst5|inst~0_combout\,
	combout => \inst5|inst~1_combout\);

-- Location: FF_X50_Y1_N25
\inst5|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|inst39~combout\,
	d => \inst5|inst~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst15~q\);

-- Location: LCCOMB_X49_Y1_N20
\inst5|inst3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst3~combout\ = (\W~input_o\ & (!\R~input_o\ & \inst5|inst15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \W~input_o\,
	datab => \R~input_o\,
	datad => \inst5|inst15~q\,
	combout => \inst5|inst3~combout\);

-- Location: FF_X49_Y1_N21
\inst5|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|inst40~combout\,
	d => \inst5|inst3~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst16~q\);

-- Location: LCCOMB_X49_Y1_N14
\inst|inst2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|inst2~combout\ = (!\R~input_o\ & \inst5|inst16~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \R~input_o\,
	datad => \inst5|inst16~q\,
	combout => \inst|inst2~combout\);

-- Location: FF_X48_Y1_N27
\inst|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|inst3~combout\,
	asdata => \inst|inst2~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst13~q\);

-- Location: LCCOMB_X47_Y1_N24
\inst5|inst6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|inst6~combout\ = (!\R~input_o\ & (!\inst|inst13~q\ & \inst5|inst17~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \R~input_o\,
	datab => \inst|inst13~q\,
	datac => \inst5|inst17~q\,
	combout => \inst5|inst6~combout\);

-- Location: FF_X47_Y1_N25
\inst5|inst19\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|inst43~combout\,
	d => \inst5|inst6~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|inst19~q\);

ww_d <= \d~output_o\;

ww_win <= \win~output_o\;

ww_s6 <= \s6~output_o\;

ww_s5 <= \s5~output_o\;

ww_s3 <= \s3~output_o\;

ww_s4 <= \s4~output_o\;

ww_s2 <= \s2~output_o\;

ww_s1 <= \s1~output_o\;

ww_s0 <= \s0~output_o\;

ww_V <= \V~output_o\;

ww_sw <= \sw~output_o\;
END structure;


