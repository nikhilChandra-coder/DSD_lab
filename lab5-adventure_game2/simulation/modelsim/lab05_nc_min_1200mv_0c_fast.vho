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

-- DATE "10/17/2024 16:59:06"

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

ENTITY 	game IS
    PORT (
	clk : IN std_logic;
	n : IN std_logic;
	s : IN std_logic;
	e : IN std_logic;
	w : IN std_logic;
	reset : IN std_logic;
	s6 : BUFFER std_logic;
	win : BUFFER std_logic;
	s5 : BUFFER std_logic;
	d : BUFFER std_logic;
	s4 : BUFFER std_logic;
	s3 : BUFFER std_logic;
	sw : BUFFER std_logic;
	s2 : BUFFER std_logic;
	s1 : BUFFER std_logic;
	s0 : BUFFER std_logic;
	v : BUFFER std_logic
	);
END game;

-- Design Ports Information
-- s6	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- win	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s5	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s4	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sw	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- v	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- w	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- n	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF game IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_n : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_w : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_s6 : std_logic;
SIGNAL ww_win : std_logic;
SIGNAL ww_s5 : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_s4 : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_sw : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_v : std_logic;
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \s6~output_o\ : std_logic;
SIGNAL \win~output_o\ : std_logic;
SIGNAL \s5~output_o\ : std_logic;
SIGNAL \d~output_o\ : std_logic;
SIGNAL \s4~output_o\ : std_logic;
SIGNAL \s3~output_o\ : std_logic;
SIGNAL \sw~output_o\ : std_logic;
SIGNAL \s2~output_o\ : std_logic;
SIGNAL \s1~output_o\ : std_logic;
SIGNAL \s0~output_o\ : std_logic;
SIGNAL \v~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \w~input_o\ : std_logic;
SIGNAL \n~input_o\ : std_logic;
SIGNAL \s~input_o\ : std_logic;
SIGNAL \room_fsm|st2~0_combout\ : std_logic;
SIGNAL \room_fsm|st0~0_combout\ : std_logic;
SIGNAL \room_fsm|st0~1_combout\ : std_logic;
SIGNAL \room_fsm|dff0|q~q\ : std_logic;
SIGNAL \room_fsm|st1~0_combout\ : std_logic;
SIGNAL \room_fsm|st1~1_combout\ : std_logic;
SIGNAL \room_fsm|dff1|q~q\ : std_logic;
SIGNAL \room_fsm|st2~1_combout\ : std_logic;
SIGNAL \room_fsm|st2~2_combout\ : std_logic;
SIGNAL \room_fsm|dff2|q~q\ : std_logic;
SIGNAL \room_fsm|st3~0_combout\ : std_logic;
SIGNAL \room_fsm|st3~1_combout\ : std_logic;
SIGNAL \room_fsm|dff3|q~q\ : std_logic;
SIGNAL \sword_fsm|v1~0_combout\ : std_logic;
SIGNAL \sword_fsm|dff6|q~q\ : std_logic;
SIGNAL \room_fsm|st4~0_combout\ : std_logic;
SIGNAL \room_fsm|dff4|q~q\ : std_logic;
SIGNAL \room_fsm|st6~0_combout\ : std_logic;
SIGNAL \room_fsm|dff6|q~q\ : std_logic;
SIGNAL \room_fsm|st5~0_combout\ : std_logic;
SIGNAL \room_fsm|dff5|q~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_n <= n;
ww_s <= s;
ww_e <= e;
ww_w <= w;
ww_reset <= reset;
s6 <= ww_s6;
win <= ww_win;
s5 <= ww_s5;
d <= ww_d;
s4 <= ww_s4;
s3 <= ww_s3;
sw <= ww_sw;
s2 <= ww_s2;
s1 <= ww_s1;
s0 <= ww_s0;
v <= ww_v;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X65_Y73_N23
\s6~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff6|q~q\,
	devoe => ww_devoe,
	o => \s6~output_o\);

-- Location: IOOBUF_X67_Y73_N16
\win~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff5|q~q\,
	devoe => ww_devoe,
	o => \win~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\s5~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff5|q~q\,
	devoe => ww_devoe,
	o => \s5~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\d~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff6|q~q\,
	devoe => ww_devoe,
	o => \d~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\s4~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff4|q~q\,
	devoe => ww_devoe,
	o => \s4~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\s3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff3|q~q\,
	devoe => ww_devoe,
	o => \s3~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\sw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff3|q~q\,
	devoe => ww_devoe,
	o => \sw~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\s2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff2|q~q\,
	devoe => ww_devoe,
	o => \s2~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\s1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff1|q~q\,
	devoe => ww_devoe,
	o => \s1~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\s0~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \room_fsm|dff0|q~q\,
	devoe => ww_devoe,
	o => \s0~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\v~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \sword_fsm|dff6|q~q\,
	devoe => ww_devoe,
	o => \v~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X115_Y14_N8
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\e~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\w~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_w,
	o => \w~input_o\);

-- Location: IOIBUF_X115_Y13_N8
\n~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_n,
	o => \n~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\s~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s,
	o => \s~input_o\);

-- Location: LCCOMB_X87_Y69_N18
\room_fsm|st2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st2~0_combout\ = (\room_fsm|dff2|q~q\ & (((!\s~input_o\) # (!\w~input_o\)) # (!\e~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~input_o\,
	datab => \w~input_o\,
	datac => \s~input_o\,
	datad => \room_fsm|dff2|q~q\,
	combout => \room_fsm|st2~0_combout\);

-- Location: LCCOMB_X87_Y69_N20
\room_fsm|st0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st0~0_combout\ = (\e~input_o\ & (\w~input_o\ & ((\room_fsm|dff1|q~q\)))) # (!\e~input_o\ & ((\room_fsm|dff0|q~q\) # ((\w~input_o\ & \room_fsm|dff1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~input_o\,
	datab => \w~input_o\,
	datac => \room_fsm|dff0|q~q\,
	datad => \room_fsm|dff1|q~q\,
	combout => \room_fsm|st0~0_combout\);

-- Location: LCCOMB_X87_Y69_N8
\room_fsm|st0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st0~1_combout\ = (\reset~input_o\) # (\room_fsm|st0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \room_fsm|st0~0_combout\,
	combout => \room_fsm|st0~1_combout\);

-- Location: FF_X87_Y69_N9
\room_fsm|dff0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_fsm|st0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_fsm|dff0|q~q\);

-- Location: LCCOMB_X87_Y69_N2
\room_fsm|st1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st1~0_combout\ = (\e~input_o\ & ((\room_fsm|dff0|q~q\) # ((!\s~input_o\ & \room_fsm|dff1|q~q\)))) # (!\e~input_o\ & (!\s~input_o\ & ((\room_fsm|dff1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~input_o\,
	datab => \s~input_o\,
	datac => \room_fsm|dff0|q~q\,
	datad => \room_fsm|dff1|q~q\,
	combout => \room_fsm|st1~0_combout\);

-- Location: LCCOMB_X87_Y69_N10
\room_fsm|st1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st1~1_combout\ = (!\reset~input_o\ & ((\room_fsm|st1~0_combout\) # ((\n~input_o\ & \room_fsm|dff2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \reset~input_o\,
	datac => \room_fsm|dff2|q~q\,
	datad => \room_fsm|st1~0_combout\,
	combout => \room_fsm|st1~1_combout\);

-- Location: FF_X87_Y69_N11
\room_fsm|dff1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_fsm|st1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_fsm|dff1|q~q\);

-- Location: LCCOMB_X87_Y69_N16
\room_fsm|st2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st2~1_combout\ = (\e~input_o\ & ((\room_fsm|dff3|q~q\) # ((\s~input_o\ & \room_fsm|dff1|q~q\)))) # (!\e~input_o\ & (\s~input_o\ & ((\room_fsm|dff1|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~input_o\,
	datab => \s~input_o\,
	datac => \room_fsm|dff3|q~q\,
	datad => \room_fsm|dff1|q~q\,
	combout => \room_fsm|st2~1_combout\);

-- Location: LCCOMB_X87_Y69_N12
\room_fsm|st2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st2~2_combout\ = (!\reset~input_o\ & ((\room_fsm|st2~1_combout\) # ((!\n~input_o\ & \room_fsm|st2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \n~input_o\,
	datab => \room_fsm|st2~0_combout\,
	datac => \reset~input_o\,
	datad => \room_fsm|st2~1_combout\,
	combout => \room_fsm|st2~2_combout\);

-- Location: FF_X87_Y69_N13
\room_fsm|dff2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_fsm|st2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_fsm|dff2|q~q\);

-- Location: LCCOMB_X87_Y69_N24
\room_fsm|st3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st3~0_combout\ = (\e~input_o\ & (\w~input_o\ & ((\room_fsm|dff2|q~q\)))) # (!\e~input_o\ & ((\room_fsm|dff3|q~q\) # ((\w~input_o\ & \room_fsm|dff2|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~input_o\,
	datab => \w~input_o\,
	datac => \room_fsm|dff3|q~q\,
	datad => \room_fsm|dff2|q~q\,
	combout => \room_fsm|st3~0_combout\);

-- Location: LCCOMB_X87_Y69_N26
\room_fsm|st3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st3~1_combout\ = (!\reset~input_o\ & \room_fsm|st3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \room_fsm|st3~0_combout\,
	combout => \room_fsm|st3~1_combout\);

-- Location: FF_X87_Y69_N27
\room_fsm|dff3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_fsm|st3~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_fsm|dff3|q~q\);

-- Location: LCCOMB_X87_Y69_N22
\sword_fsm|v1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sword_fsm|v1~0_combout\ = (!\reset~input_o\ & \room_fsm|dff3|q~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \room_fsm|dff3|q~q\,
	combout => \sword_fsm|v1~0_combout\);

-- Location: FF_X87_Y69_N23
\sword_fsm|dff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \sword_fsm|v1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sword_fsm|dff6|q~q\);

-- Location: LCCOMB_X87_Y69_N28
\room_fsm|st4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st4~0_combout\ = (\e~input_o\ & (\s~input_o\ & (\room_fsm|dff2|q~q\ & !\reset~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \e~input_o\,
	datab => \s~input_o\,
	datac => \room_fsm|dff2|q~q\,
	datad => \reset~input_o\,
	combout => \room_fsm|st4~0_combout\);

-- Location: FF_X87_Y69_N29
\room_fsm|dff4|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_fsm|st4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_fsm|dff4|q~q\);

-- Location: LCCOMB_X87_Y69_N0
\room_fsm|st6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st6~0_combout\ = (!\reset~input_o\ & ((\room_fsm|dff6|q~q\) # ((!\sword_fsm|dff6|q~q\ & \room_fsm|dff4|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sword_fsm|dff6|q~q\,
	datab => \reset~input_o\,
	datac => \room_fsm|dff6|q~q\,
	datad => \room_fsm|dff4|q~q\,
	combout => \room_fsm|st6~0_combout\);

-- Location: FF_X87_Y69_N1
\room_fsm|dff6|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_fsm|st6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_fsm|dff6|q~q\);

-- Location: LCCOMB_X87_Y69_N6
\room_fsm|st5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \room_fsm|st5~0_combout\ = (!\reset~input_o\ & ((\room_fsm|dff5|q~q\) # ((\sword_fsm|dff6|q~q\ & \room_fsm|dff4|q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sword_fsm|dff6|q~q\,
	datab => \reset~input_o\,
	datac => \room_fsm|dff5|q~q\,
	datad => \room_fsm|dff4|q~q\,
	combout => \room_fsm|st5~0_combout\);

-- Location: FF_X87_Y69_N7
\room_fsm|dff5|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \room_fsm|st5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \room_fsm|dff5|q~q\);

ww_s6 <= \s6~output_o\;

ww_win <= \win~output_o\;

ww_s5 <= \s5~output_o\;

ww_d <= \d~output_o\;

ww_s4 <= \s4~output_o\;

ww_s3 <= \s3~output_o\;

ww_sw <= \sw~output_o\;

ww_s2 <= \s2~output_o\;

ww_s1 <= \s1~output_o\;

ww_s0 <= \s0~output_o\;

ww_v <= \v~output_o\;
END structure;


