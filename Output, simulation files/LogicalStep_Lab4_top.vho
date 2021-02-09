-- Copyright (C) 2019  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 19.1.0 Build 670 09/22/2019 SJ Lite Edition"

-- DATE "07/29/2020 12:16:33"

-- 
-- Device: Altera 10M08DAF484C8G Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	LogicalStep_Lab4_top IS
    PORT (
	Clk : IN std_logic;
	rst_n : IN std_logic;
	pb : IN std_logic_vector(3 DOWNTO 0);
	sw : IN std_logic_vector(7 DOWNTO 0);
	leds : OUT std_logic_vector(15 DOWNTO 0)
	);
END LogicalStep_Lab4_top;

ARCHITECTURE structure OF LogicalStep_Lab4_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_rst_n : std_logic;
SIGNAL ww_pb : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sw : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_leds : std_logic_vector(15 DOWNTO 0);
SIGNAL \pb[3]~input_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \leds[4]~output_o\ : std_logic;
SIGNAL \leds[5]~output_o\ : std_logic;
SIGNAL \leds[6]~output_o\ : std_logic;
SIGNAL \leds[7]~output_o\ : std_logic;
SIGNAL \leds[8]~output_o\ : std_logic;
SIGNAL \leds[9]~output_o\ : std_logic;
SIGNAL \leds[10]~output_o\ : std_logic;
SIGNAL \leds[11]~output_o\ : std_logic;
SIGNAL \leds[12]~output_o\ : std_logic;
SIGNAL \leds[13]~output_o\ : std_logic;
SIGNAL \leds[14]~output_o\ : std_logic;
SIGNAL \leds[15]~output_o\ : std_logic;
SIGNAL \Clk~input_o\ : std_logic;
SIGNAL \pb[2]~input_o\ : std_logic;
SIGNAL \mealyinst|current_state.start~0_combout\ : std_logic;
SIGNAL \rst_n~input_o\ : std_logic;
SIGNAL \mealyinst|current_state.start~q\ : std_logic;
SIGNAL \mealyinst|Selector1~0_combout\ : std_logic;
SIGNAL \pb[1]~input_o\ : std_logic;
SIGNAL \sw[7]~input_o\ : std_logic;
SIGNAL \sw[6]~input_o\ : std_logic;
SIGNAL \Counterinst_X|ud_bincounter[1]~5_cout\ : std_logic;
SIGNAL \Counterinst_X|ud_bincounter[1]~6_combout\ : std_logic;
SIGNAL \Counterinst_X|ud_bincounter[1]~7\ : std_logic;
SIGNAL \Counterinst_X|ud_bincounter[2]~9\ : std_logic;
SIGNAL \Counterinst_X|ud_bincounter[3]~10_combout\ : std_logic;
SIGNAL \compinst_X|fourALTB~1_combout\ : std_logic;
SIGNAL \sw[5]~input_o\ : std_logic;
SIGNAL \sw[4]~input_o\ : std_logic;
SIGNAL \compinst_X|fourALTB~2_combout\ : std_logic;
SIGNAL \compinst_X|fourALTB~3_combout\ : std_logic;
SIGNAL \mealyinst|up_down_x~0_combout\ : std_logic;
SIGNAL \mealyinst|up_down_x~1_combout\ : std_logic;
SIGNAL \mealyinst|up_down_x~2_combout\ : std_logic;
SIGNAL \mealyinst|up_down_x~3_combout\ : std_logic;
SIGNAL \compinst_X|fourAEQB~combout\ : std_logic;
SIGNAL \sw[3]~input_o\ : std_logic;
SIGNAL \sw[2]~input_o\ : std_logic;
SIGNAL \Counterinst_Y|ud_bincounter[1]~5_cout\ : std_logic;
SIGNAL \Counterinst_Y|ud_bincounter[1]~6_combout\ : std_logic;
SIGNAL \Counterinst_Y|ud_bincounter[1]~7\ : std_logic;
SIGNAL \Counterinst_Y|ud_bincounter[2]~9\ : std_logic;
SIGNAL \Counterinst_Y|ud_bincounter[3]~10_combout\ : std_logic;
SIGNAL \compinst_Y|fourALTB~1_combout\ : std_logic;
SIGNAL \sw[1]~input_o\ : std_logic;
SIGNAL \sw[0]~input_o\ : std_logic;
SIGNAL \compinst_Y|fourALTB~2_combout\ : std_logic;
SIGNAL \compinst_Y|fourALTB~3_combout\ : std_logic;
SIGNAL \mealyinst|up_down_y~0_combout\ : std_logic;
SIGNAL \mealyinst|up_down_y~1_combout\ : std_logic;
SIGNAL \mealyinst|up_down_y~2_combout\ : std_logic;
SIGNAL \mealyinst|up_down_y~3_combout\ : std_logic;
SIGNAL \mealyinst|up_down_y~combout\ : std_logic;
SIGNAL \Counterinst_Y|process_0~0_combout\ : std_logic;
SIGNAL \Counterinst_Y|ud_bincounter[2]~8_combout\ : std_logic;
SIGNAL \compinst_Y|fourALTB~0_combout\ : std_logic;
SIGNAL \mealyinst|clk_en_y~1_combout\ : std_logic;
SIGNAL \mealyinst|clk_en_y~0_combout\ : std_logic;
SIGNAL \mealyinst|clk_en_y~combout\ : std_logic;
SIGNAL \Counterinst_Y|ud_bincounter[0]~3_combout\ : std_logic;
SIGNAL \compinst_Y|fourAEQB~0_combout\ : std_logic;
SIGNAL \compinst_Y|fourAEQB~combout\ : std_logic;
SIGNAL \mealyinst|up_down_x~4_combout\ : std_logic;
SIGNAL \mealyinst|up_down_x~combout\ : std_logic;
SIGNAL \Counterinst_X|process_0~0_combout\ : std_logic;
SIGNAL \Counterinst_X|ud_bincounter[2]~8_combout\ : std_logic;
SIGNAL \compinst_X|fourALTB~0_combout\ : std_logic;
SIGNAL \mealyinst|clk_en_x~0_combout\ : std_logic;
SIGNAL \mealyinst|clk_en_x~combout\ : std_logic;
SIGNAL \Counterinst_X|ud_bincounter[0]~3_combout\ : std_logic;
SIGNAL \compinst_X|fourAEQB~0_combout\ : std_logic;
SIGNAL \mealyinst|Transition_Section~0_combout\ : std_logic;
SIGNAL \mealyinst|extender_en~0_combout\ : std_logic;
SIGNAL \mealyinst|extender_en~combout\ : std_logic;
SIGNAL \moore1inst|Selector5~0_combout\ : std_logic;
SIGNAL \moore1inst|Selector1~0_combout\ : std_logic;
SIGNAL \moore1inst|left_right~combout\ : std_logic;
SIGNAL \Registerinst1|sreg~3_combout\ : std_logic;
SIGNAL \moore1inst|clk_en~0_combout\ : std_logic;
SIGNAL \moore1inst|Selector8~0_combout\ : std_logic;
SIGNAL \moore1inst|clk_en~combout\ : std_logic;
SIGNAL \Registerinst1|sreg~2_combout\ : std_logic;
SIGNAL \Registerinst1|sreg~0_combout\ : std_logic;
SIGNAL \Registerinst1|sreg~1_combout\ : std_logic;
SIGNAL \moore1inst|TRANSITION_LOGIC~2_combout\ : std_logic;
SIGNAL \moore1inst|TRANSITION_LOGIC~3_combout\ : std_logic;
SIGNAL \moore1inst|Selector6~0_combout\ : std_logic;
SIGNAL \moore1inst|current_state.extending~q\ : std_logic;
SIGNAL \moore1inst|Selector4~0_combout\ : std_logic;
SIGNAL \moore1inst|Selector4~1_combout\ : std_logic;
SIGNAL \moore1inst|current_state.fully_extended~q\ : std_logic;
SIGNAL \moore1inst|TRANSITION_LOGIC~0_combout\ : std_logic;
SIGNAL \moore1inst|TRANSITION_LOGIC~1_combout\ : std_logic;
SIGNAL \moore1inst|Selector5~1_combout\ : std_logic;
SIGNAL \moore1inst|current_state.retracting~q\ : std_logic;
SIGNAL \moore1inst|Selector3~0_combout\ : std_logic;
SIGNAL \moore1inst|current_state.start~q\ : std_logic;
SIGNAL \moore1inst|Selector10~0_combout\ : std_logic;
SIGNAL \moore1inst|EXT_OUT~combout\ : std_logic;
SIGNAL \mealyinst|Selector2~1_combout\ : std_logic;
SIGNAL \mealyinst|Selector2~2_combout\ : std_logic;
SIGNAL \mealyinst|current_state.error~q\ : std_logic;
SIGNAL \mealyinst|Selector0~0_combout\ : std_logic;
SIGNAL \mealyinst|Selector2~0_combout\ : std_logic;
SIGNAL \mealyinst|Selector0~1_combout\ : std_logic;
SIGNAL \mealyinst|current_state.move~q\ : std_logic;
SIGNAL \mealyinst|Selector1~1_combout\ : std_logic;
SIGNAL \mealyinst|Selector1~2_combout\ : std_logic;
SIGNAL \mealyinst|current_state.on_target~q\ : std_logic;
SIGNAL \mealyinst|error_led~0_combout\ : std_logic;
SIGNAL \mealyinst|error_led~combout\ : std_logic;
SIGNAL \pb[0]~input_o\ : std_logic;
SIGNAL \moore1inst|GRAP_ENBL~combout\ : std_logic;
SIGNAL \moore2inst|Selector0~0_combout\ : std_logic;
SIGNAL \moore2inst|current_state.GRAP_OPEN~q\ : std_logic;
SIGNAL \moore2inst|leds1~0_combout\ : std_logic;
SIGNAL \moore2inst|current_state.INIT~0_combout\ : std_logic;
SIGNAL \moore2inst|current_state.INIT~q\ : std_logic;
SIGNAL \moore2inst|leds1~combout\ : std_logic;
SIGNAL \moore2inst|GRAP_ON~combout\ : std_logic;
SIGNAL \Counterinst_X|ud_bincounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Counterinst_Y|ud_bincounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Registerinst1|sreg\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_Clk <= Clk;
ww_rst_n <= rst_n;
ww_pb <= pb;
ww_sw <= sw;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\leds[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \mealyinst|error_led~combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

\leds[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \moore2inst|leds1~combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

\leds[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

\leds[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \moore2inst|GRAP_ON~combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

\leds[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registerinst1|sreg\(0),
	devoe => ww_devoe,
	o => \leds[4]~output_o\);

\leds[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registerinst1|sreg\(1),
	devoe => ww_devoe,
	o => \leds[5]~output_o\);

\leds[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registerinst1|sreg\(2),
	devoe => ww_devoe,
	o => \leds[6]~output_o\);

\leds[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Registerinst1|sreg\(3),
	devoe => ww_devoe,
	o => \leds[7]~output_o\);

\leds[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counterinst_Y|ud_bincounter\(0),
	devoe => ww_devoe,
	o => \leds[8]~output_o\);

\leds[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counterinst_Y|ud_bincounter\(1),
	devoe => ww_devoe,
	o => \leds[9]~output_o\);

\leds[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counterinst_Y|ud_bincounter\(2),
	devoe => ww_devoe,
	o => \leds[10]~output_o\);

\leds[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counterinst_Y|ud_bincounter\(3),
	devoe => ww_devoe,
	o => \leds[11]~output_o\);

\leds[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counterinst_X|ud_bincounter\(0),
	devoe => ww_devoe,
	o => \leds[12]~output_o\);

\leds[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counterinst_X|ud_bincounter\(1),
	devoe => ww_devoe,
	o => \leds[13]~output_o\);

\leds[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counterinst_X|ud_bincounter\(2),
	devoe => ww_devoe,
	o => \leds[14]~output_o\);

\leds[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Counterinst_X|ud_bincounter\(3),
	devoe => ww_devoe,
	o => \leds[15]~output_o\);

\Clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clk,
	o => \Clk~input_o\);

\pb[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(2),
	o => \pb[2]~input_o\);

\mealyinst|current_state.start~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|current_state.start~0_combout\ = (\pb[2]~input_o\) # (\mealyinst|current_state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datab => \mealyinst|current_state.start~q\,
	combout => \mealyinst|current_state.start~0_combout\);

\rst_n~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst_n,
	o => \rst_n~input_o\);

\mealyinst|current_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \mealyinst|current_state.start~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mealyinst|current_state.start~q\);

\mealyinst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|Selector1~0_combout\ = (\pb[2]~input_o\ & !\mealyinst|current_state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[2]~input_o\,
	datad => \mealyinst|current_state.start~q\,
	combout => \mealyinst|Selector1~0_combout\);

\pb[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(1),
	o => \pb[1]~input_o\);

\sw[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(7),
	o => \sw[7]~input_o\);

\sw[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(6),
	o => \sw[6]~input_o\);

\Counterinst_X|ud_bincounter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_X|ud_bincounter[1]~5_cout\ = CARRY(\Counterinst_X|ud_bincounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_X|ud_bincounter\(0),
	datad => VCC,
	cout => \Counterinst_X|ud_bincounter[1]~5_cout\);

\Counterinst_X|ud_bincounter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_X|ud_bincounter[1]~6_combout\ = (\Counterinst_X|ud_bincounter\(1) & ((\Counterinst_X|process_0~0_combout\ & (!\Counterinst_X|ud_bincounter[1]~5_cout\)) # (!\Counterinst_X|process_0~0_combout\ & (\Counterinst_X|ud_bincounter[1]~5_cout\ & 
-- VCC)))) # (!\Counterinst_X|ud_bincounter\(1) & ((\Counterinst_X|process_0~0_combout\ & ((\Counterinst_X|ud_bincounter[1]~5_cout\) # (GND))) # (!\Counterinst_X|process_0~0_combout\ & (!\Counterinst_X|ud_bincounter[1]~5_cout\))))
-- \Counterinst_X|ud_bincounter[1]~7\ = CARRY((\Counterinst_X|ud_bincounter\(1) & (\Counterinst_X|process_0~0_combout\ & !\Counterinst_X|ud_bincounter[1]~5_cout\)) # (!\Counterinst_X|ud_bincounter\(1) & ((\Counterinst_X|process_0~0_combout\) # 
-- (!\Counterinst_X|ud_bincounter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_X|ud_bincounter\(1),
	datab => \Counterinst_X|process_0~0_combout\,
	datad => VCC,
	cin => \Counterinst_X|ud_bincounter[1]~5_cout\,
	combout => \Counterinst_X|ud_bincounter[1]~6_combout\,
	cout => \Counterinst_X|ud_bincounter[1]~7\);

\Counterinst_X|ud_bincounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Counterinst_X|ud_bincounter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealyinst|clk_en_x~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counterinst_X|ud_bincounter\(1));

\Counterinst_X|ud_bincounter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_X|ud_bincounter[2]~8_combout\ = ((\Counterinst_X|ud_bincounter\(2) $ (\Counterinst_X|process_0~0_combout\ $ (\Counterinst_X|ud_bincounter[1]~7\)))) # (GND)
-- \Counterinst_X|ud_bincounter[2]~9\ = CARRY((\Counterinst_X|ud_bincounter\(2) & ((!\Counterinst_X|ud_bincounter[1]~7\) # (!\Counterinst_X|process_0~0_combout\))) # (!\Counterinst_X|ud_bincounter\(2) & (!\Counterinst_X|process_0~0_combout\ & 
-- !\Counterinst_X|ud_bincounter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_X|ud_bincounter\(2),
	datab => \Counterinst_X|process_0~0_combout\,
	datad => VCC,
	cin => \Counterinst_X|ud_bincounter[1]~7\,
	combout => \Counterinst_X|ud_bincounter[2]~8_combout\,
	cout => \Counterinst_X|ud_bincounter[2]~9\);

\Counterinst_X|ud_bincounter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_X|ud_bincounter[3]~10_combout\ = \Counterinst_X|ud_bincounter\(3) $ (\Counterinst_X|process_0~0_combout\ $ (!\Counterinst_X|ud_bincounter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_X|ud_bincounter\(3),
	datab => \Counterinst_X|process_0~0_combout\,
	cin => \Counterinst_X|ud_bincounter[2]~9\,
	combout => \Counterinst_X|ud_bincounter[3]~10_combout\);

\Counterinst_X|ud_bincounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Counterinst_X|ud_bincounter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealyinst|clk_en_x~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counterinst_X|ud_bincounter\(3));

\compinst_X|fourALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_X|fourALTB~1_combout\ = (\sw[7]~input_o\ & (((\sw[6]~input_o\ & !\Counterinst_X|ud_bincounter\(2))) # (!\Counterinst_X|ud_bincounter\(3)))) # (!\sw[7]~input_o\ & (\sw[6]~input_o\ & (!\Counterinst_X|ud_bincounter\(2) & 
-- !\Counterinst_X|ud_bincounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[7]~input_o\,
	datab => \sw[6]~input_o\,
	datac => \Counterinst_X|ud_bincounter\(2),
	datad => \Counterinst_X|ud_bincounter\(3),
	combout => \compinst_X|fourALTB~1_combout\);

\sw[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(5),
	o => \sw[5]~input_o\);

\sw[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(4),
	o => \sw[4]~input_o\);

\compinst_X|fourALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_X|fourALTB~2_combout\ = (\sw[5]~input_o\ & (((\sw[4]~input_o\ & !\Counterinst_X|ud_bincounter\(0))) # (!\Counterinst_X|ud_bincounter\(1)))) # (!\sw[5]~input_o\ & (\sw[4]~input_o\ & (!\Counterinst_X|ud_bincounter\(0) & 
-- !\Counterinst_X|ud_bincounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[5]~input_o\,
	datab => \sw[4]~input_o\,
	datac => \Counterinst_X|ud_bincounter\(0),
	datad => \Counterinst_X|ud_bincounter\(1),
	combout => \compinst_X|fourALTB~2_combout\);

\compinst_X|fourALTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_X|fourALTB~3_combout\ = (\compinst_X|fourALTB~1_combout\) # ((\compinst_X|fourALTB~0_combout\ & \compinst_X|fourALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compinst_X|fourALTB~1_combout\,
	datab => \compinst_X|fourALTB~0_combout\,
	datac => \compinst_X|fourALTB~2_combout\,
	combout => \compinst_X|fourALTB~3_combout\);

\mealyinst|up_down_x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_x~0_combout\ = (\mealyinst|current_state.move~q\ & (\mealyinst|Transition_Section~0_combout\ & !\pb[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.move~q\,
	datab => \mealyinst|Transition_Section~0_combout\,
	datad => \pb[2]~input_o\,
	combout => \mealyinst|up_down_x~0_combout\);

\mealyinst|up_down_x~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_x~1_combout\ = (\Counterinst_X|ud_bincounter\(3) & (((\Counterinst_X|ud_bincounter\(2) & !\sw[6]~input_o\)) # (!\sw[7]~input_o\))) # (!\Counterinst_X|ud_bincounter\(3) & (\Counterinst_X|ud_bincounter\(2) & (!\sw[6]~input_o\ & 
-- !\sw[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_X|ud_bincounter\(3),
	datab => \Counterinst_X|ud_bincounter\(2),
	datac => \sw[6]~input_o\,
	datad => \sw[7]~input_o\,
	combout => \mealyinst|up_down_x~1_combout\);

\mealyinst|up_down_x~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_x~2_combout\ = (\Counterinst_X|ud_bincounter\(1) & (((\Counterinst_X|ud_bincounter\(0) & !\sw[4]~input_o\)) # (!\sw[5]~input_o\))) # (!\Counterinst_X|ud_bincounter\(1) & (\Counterinst_X|ud_bincounter\(0) & (!\sw[4]~input_o\ & 
-- !\sw[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_X|ud_bincounter\(1),
	datab => \Counterinst_X|ud_bincounter\(0),
	datac => \sw[4]~input_o\,
	datad => \sw[5]~input_o\,
	combout => \mealyinst|up_down_x~2_combout\);

\mealyinst|up_down_x~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_x~3_combout\ = (\compinst_X|fourALTB~3_combout\) # ((\mealyinst|up_down_x~1_combout\) # ((\compinst_X|fourALTB~0_combout\ & \mealyinst|up_down_x~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compinst_X|fourALTB~3_combout\,
	datab => \mealyinst|up_down_x~1_combout\,
	datac => \compinst_X|fourALTB~0_combout\,
	datad => \mealyinst|up_down_x~2_combout\,
	combout => \mealyinst|up_down_x~3_combout\);

\compinst_X|fourAEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_X|fourAEQB~combout\ = (\compinst_X|fourAEQB~0_combout\) # (!\compinst_X|fourALTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compinst_X|fourAEQB~0_combout\,
	datad => \compinst_X|fourALTB~0_combout\,
	combout => \compinst_X|fourAEQB~combout\);

\sw[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(3),
	o => \sw[3]~input_o\);

\sw[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(2),
	o => \sw[2]~input_o\);

\Counterinst_Y|ud_bincounter[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_Y|ud_bincounter[1]~5_cout\ = CARRY(\Counterinst_Y|ud_bincounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_Y|ud_bincounter\(0),
	datad => VCC,
	cout => \Counterinst_Y|ud_bincounter[1]~5_cout\);

\Counterinst_Y|ud_bincounter[1]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_Y|ud_bincounter[1]~6_combout\ = (\Counterinst_Y|ud_bincounter\(1) & ((\Counterinst_Y|process_0~0_combout\ & (!\Counterinst_Y|ud_bincounter[1]~5_cout\)) # (!\Counterinst_Y|process_0~0_combout\ & (\Counterinst_Y|ud_bincounter[1]~5_cout\ & 
-- VCC)))) # (!\Counterinst_Y|ud_bincounter\(1) & ((\Counterinst_Y|process_0~0_combout\ & ((\Counterinst_Y|ud_bincounter[1]~5_cout\) # (GND))) # (!\Counterinst_Y|process_0~0_combout\ & (!\Counterinst_Y|ud_bincounter[1]~5_cout\))))
-- \Counterinst_Y|ud_bincounter[1]~7\ = CARRY((\Counterinst_Y|ud_bincounter\(1) & (\Counterinst_Y|process_0~0_combout\ & !\Counterinst_Y|ud_bincounter[1]~5_cout\)) # (!\Counterinst_Y|ud_bincounter\(1) & ((\Counterinst_Y|process_0~0_combout\) # 
-- (!\Counterinst_Y|ud_bincounter[1]~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_Y|ud_bincounter\(1),
	datab => \Counterinst_Y|process_0~0_combout\,
	datad => VCC,
	cin => \Counterinst_Y|ud_bincounter[1]~5_cout\,
	combout => \Counterinst_Y|ud_bincounter[1]~6_combout\,
	cout => \Counterinst_Y|ud_bincounter[1]~7\);

\Counterinst_Y|ud_bincounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Counterinst_Y|ud_bincounter[1]~6_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealyinst|clk_en_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counterinst_Y|ud_bincounter\(1));

\Counterinst_Y|ud_bincounter[2]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_Y|ud_bincounter[2]~8_combout\ = ((\Counterinst_Y|ud_bincounter\(2) $ (\Counterinst_Y|process_0~0_combout\ $ (\Counterinst_Y|ud_bincounter[1]~7\)))) # (GND)
-- \Counterinst_Y|ud_bincounter[2]~9\ = CARRY((\Counterinst_Y|ud_bincounter\(2) & ((!\Counterinst_Y|ud_bincounter[1]~7\) # (!\Counterinst_Y|process_0~0_combout\))) # (!\Counterinst_Y|ud_bincounter\(2) & (!\Counterinst_Y|process_0~0_combout\ & 
-- !\Counterinst_Y|ud_bincounter[1]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_Y|ud_bincounter\(2),
	datab => \Counterinst_Y|process_0~0_combout\,
	datad => VCC,
	cin => \Counterinst_Y|ud_bincounter[1]~7\,
	combout => \Counterinst_Y|ud_bincounter[2]~8_combout\,
	cout => \Counterinst_Y|ud_bincounter[2]~9\);

\Counterinst_Y|ud_bincounter[3]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_Y|ud_bincounter[3]~10_combout\ = \Counterinst_Y|ud_bincounter\(3) $ (\Counterinst_Y|process_0~0_combout\ $ (!\Counterinst_Y|ud_bincounter[2]~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_Y|ud_bincounter\(3),
	datab => \Counterinst_Y|process_0~0_combout\,
	cin => \Counterinst_Y|ud_bincounter[2]~9\,
	combout => \Counterinst_Y|ud_bincounter[3]~10_combout\);

\Counterinst_Y|ud_bincounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Counterinst_Y|ud_bincounter[3]~10_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealyinst|clk_en_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counterinst_Y|ud_bincounter\(3));

\compinst_Y|fourALTB~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_Y|fourALTB~1_combout\ = (\sw[3]~input_o\ & (((\sw[2]~input_o\ & !\Counterinst_Y|ud_bincounter\(2))) # (!\Counterinst_Y|ud_bincounter\(3)))) # (!\sw[3]~input_o\ & (\sw[2]~input_o\ & (!\Counterinst_Y|ud_bincounter\(2) & 
-- !\Counterinst_Y|ud_bincounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[3]~input_o\,
	datab => \sw[2]~input_o\,
	datac => \Counterinst_Y|ud_bincounter\(2),
	datad => \Counterinst_Y|ud_bincounter\(3),
	combout => \compinst_Y|fourALTB~1_combout\);

\sw[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(1),
	o => \sw[1]~input_o\);

\sw[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_sw(0),
	o => \sw[0]~input_o\);

\compinst_Y|fourALTB~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_Y|fourALTB~2_combout\ = (\sw[1]~input_o\ & (((\sw[0]~input_o\ & !\Counterinst_Y|ud_bincounter\(0))) # (!\Counterinst_Y|ud_bincounter\(1)))) # (!\sw[1]~input_o\ & (\sw[0]~input_o\ & (!\Counterinst_Y|ud_bincounter\(0) & 
-- !\Counterinst_Y|ud_bincounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sw[1]~input_o\,
	datab => \sw[0]~input_o\,
	datac => \Counterinst_Y|ud_bincounter\(0),
	datad => \Counterinst_Y|ud_bincounter\(1),
	combout => \compinst_Y|fourALTB~2_combout\);

\compinst_Y|fourALTB~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_Y|fourALTB~3_combout\ = (\compinst_Y|fourALTB~1_combout\) # ((\compinst_Y|fourALTB~0_combout\ & \compinst_Y|fourALTB~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compinst_Y|fourALTB~1_combout\,
	datab => \compinst_Y|fourALTB~0_combout\,
	datac => \compinst_Y|fourALTB~2_combout\,
	combout => \compinst_Y|fourALTB~3_combout\);

\mealyinst|up_down_y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_y~0_combout\ = (\Counterinst_Y|ud_bincounter\(3) & (((\Counterinst_Y|ud_bincounter\(2) & !\sw[2]~input_o\)) # (!\sw[3]~input_o\))) # (!\Counterinst_Y|ud_bincounter\(3) & (\Counterinst_Y|ud_bincounter\(2) & (!\sw[2]~input_o\ & 
-- !\sw[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_Y|ud_bincounter\(3),
	datab => \Counterinst_Y|ud_bincounter\(2),
	datac => \sw[2]~input_o\,
	datad => \sw[3]~input_o\,
	combout => \mealyinst|up_down_y~0_combout\);

\mealyinst|up_down_y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_y~1_combout\ = (\Counterinst_Y|ud_bincounter\(1) & (((\Counterinst_Y|ud_bincounter\(0) & !\sw[0]~input_o\)) # (!\sw[1]~input_o\))) # (!\Counterinst_Y|ud_bincounter\(1) & (\Counterinst_Y|ud_bincounter\(0) & (!\sw[0]~input_o\ & 
-- !\sw[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_Y|ud_bincounter\(1),
	datab => \Counterinst_Y|ud_bincounter\(0),
	datac => \sw[0]~input_o\,
	datad => \sw[1]~input_o\,
	combout => \mealyinst|up_down_y~1_combout\);

\mealyinst|up_down_y~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_y~2_combout\ = (\compinst_Y|fourALTB~3_combout\) # ((\mealyinst|up_down_y~0_combout\) # ((\compinst_Y|fourALTB~0_combout\ & \mealyinst|up_down_y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compinst_Y|fourALTB~3_combout\,
	datab => \mealyinst|up_down_y~0_combout\,
	datac => \compinst_Y|fourALTB~0_combout\,
	datad => \mealyinst|up_down_y~1_combout\,
	combout => \mealyinst|up_down_y~2_combout\);

\mealyinst|up_down_y~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_y~3_combout\ = (\mealyinst|up_down_y~2_combout\ & (\mealyinst|up_down_x~0_combout\ & ((\compinst_Y|fourAEQB~combout\) # (!\compinst_X|fourAEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|up_down_y~2_combout\,
	datab => \mealyinst|up_down_x~0_combout\,
	datac => \compinst_Y|fourAEQB~combout\,
	datad => \compinst_X|fourAEQB~combout\,
	combout => \mealyinst|up_down_y~3_combout\);

\mealyinst|up_down_y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_y~combout\ = (\mealyinst|up_down_y~3_combout\ & (\compinst_Y|fourALTB~3_combout\)) # (!\mealyinst|up_down_y~3_combout\ & ((\mealyinst|up_down_y~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compinst_Y|fourALTB~3_combout\,
	datac => \mealyinst|up_down_y~combout\,
	datad => \mealyinst|up_down_y~3_combout\,
	combout => \mealyinst|up_down_y~combout\);

\Counterinst_Y|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_Y|process_0~0_combout\ = (\mealyinst|clk_en_y~combout\ & \mealyinst|up_down_y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|clk_en_y~combout\,
	datab => \mealyinst|up_down_y~combout\,
	combout => \Counterinst_Y|process_0~0_combout\);

\Counterinst_Y|ud_bincounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Counterinst_Y|ud_bincounter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealyinst|clk_en_y~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counterinst_Y|ud_bincounter\(2));

\compinst_Y|fourALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_Y|fourALTB~0_combout\ = (\Counterinst_Y|ud_bincounter\(2) & (\sw[2]~input_o\ & (\Counterinst_Y|ud_bincounter\(3) $ (!\sw[3]~input_o\)))) # (!\Counterinst_Y|ud_bincounter\(2) & (!\sw[2]~input_o\ & (\Counterinst_Y|ud_bincounter\(3) $ 
-- (!\sw[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_Y|ud_bincounter\(2),
	datab => \Counterinst_Y|ud_bincounter\(3),
	datac => \sw[3]~input_o\,
	datad => \sw[2]~input_o\,
	combout => \compinst_Y|fourALTB~0_combout\);

\mealyinst|clk_en_y~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|clk_en_y~1_combout\ = (\mealyinst|current_state.move~q\ & ((\compinst_Y|fourAEQB~0_combout\) # (!\compinst_Y|fourALTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.move~q\,
	datab => \compinst_Y|fourAEQB~0_combout\,
	datad => \compinst_Y|fourALTB~0_combout\,
	combout => \mealyinst|clk_en_y~1_combout\);

\mealyinst|clk_en_y~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|clk_en_y~0_combout\ = (\mealyinst|current_state.move~q\ & (((!\pb[2]~input_o\)))) # (!\mealyinst|current_state.move~q\ & ((\mealyinst|current_state.on_target~q\) # ((\mealyinst|current_state.error~q\ & !\pb[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.on_target~q\,
	datab => \mealyinst|current_state.error~q\,
	datac => \mealyinst|current_state.move~q\,
	datad => \pb[2]~input_o\,
	combout => \mealyinst|clk_en_y~0_combout\);

\mealyinst|clk_en_y\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|clk_en_y~combout\ = (\mealyinst|current_state.start~q\ & ((\mealyinst|clk_en_y~0_combout\ & (\mealyinst|clk_en_y~1_combout\)) # (!\mealyinst|clk_en_y~0_combout\ & ((\mealyinst|clk_en_y~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|clk_en_y~1_combout\,
	datab => \mealyinst|clk_en_y~combout\,
	datac => \mealyinst|clk_en_y~0_combout\,
	datad => \mealyinst|current_state.start~q\,
	combout => \mealyinst|clk_en_y~combout\);

\Counterinst_Y|ud_bincounter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_Y|ud_bincounter[0]~3_combout\ = \Counterinst_Y|ud_bincounter\(0) $ (\mealyinst|clk_en_y~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counterinst_Y|ud_bincounter\(0),
	datad => \mealyinst|clk_en_y~combout\,
	combout => \Counterinst_Y|ud_bincounter[0]~3_combout\);

\Counterinst_Y|ud_bincounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Counterinst_Y|ud_bincounter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counterinst_Y|ud_bincounter\(0));

\compinst_Y|fourAEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_Y|fourAEQB~0_combout\ = (\Counterinst_Y|ud_bincounter\(0) & ((\Counterinst_Y|ud_bincounter\(1) $ (\sw[1]~input_o\)) # (!\sw[0]~input_o\))) # (!\Counterinst_Y|ud_bincounter\(0) & ((\sw[0]~input_o\) # (\Counterinst_Y|ud_bincounter\(1) $ 
-- (\sw[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_Y|ud_bincounter\(0),
	datab => \sw[0]~input_o\,
	datac => \Counterinst_Y|ud_bincounter\(1),
	datad => \sw[1]~input_o\,
	combout => \compinst_Y|fourAEQB~0_combout\);

\compinst_Y|fourAEQB\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_Y|fourAEQB~combout\ = (\compinst_Y|fourAEQB~0_combout\) # (!\compinst_Y|fourALTB~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compinst_Y|fourAEQB~0_combout\,
	datad => \compinst_Y|fourALTB~0_combout\,
	combout => \compinst_Y|fourAEQB~combout\);

\mealyinst|up_down_x~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_x~4_combout\ = (\mealyinst|up_down_x~0_combout\ & (\mealyinst|up_down_x~3_combout\ & ((\compinst_X|fourAEQB~combout\) # (!\compinst_Y|fourAEQB~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|up_down_x~0_combout\,
	datab => \mealyinst|up_down_x~3_combout\,
	datac => \compinst_X|fourAEQB~combout\,
	datad => \compinst_Y|fourAEQB~combout\,
	combout => \mealyinst|up_down_x~4_combout\);

\mealyinst|up_down_x\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|up_down_x~combout\ = (\mealyinst|up_down_x~4_combout\ & (\compinst_X|fourALTB~3_combout\)) # (!\mealyinst|up_down_x~4_combout\ & ((\mealyinst|up_down_x~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \compinst_X|fourALTB~3_combout\,
	datac => \mealyinst|up_down_x~combout\,
	datad => \mealyinst|up_down_x~4_combout\,
	combout => \mealyinst|up_down_x~combout\);

\Counterinst_X|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_X|process_0~0_combout\ = (\mealyinst|clk_en_x~combout\ & \mealyinst|up_down_x~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|clk_en_x~combout\,
	datab => \mealyinst|up_down_x~combout\,
	combout => \Counterinst_X|process_0~0_combout\);

\Counterinst_X|ud_bincounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Counterinst_X|ud_bincounter[2]~8_combout\,
	clrn => \rst_n~input_o\,
	ena => \mealyinst|clk_en_x~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counterinst_X|ud_bincounter\(2));

\compinst_X|fourALTB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_X|fourALTB~0_combout\ = (\Counterinst_X|ud_bincounter\(2) & (\sw[6]~input_o\ & (\Counterinst_X|ud_bincounter\(3) $ (!\sw[7]~input_o\)))) # (!\Counterinst_X|ud_bincounter\(2) & (!\sw[6]~input_o\ & (\Counterinst_X|ud_bincounter\(3) $ 
-- (!\sw[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_X|ud_bincounter\(2),
	datab => \Counterinst_X|ud_bincounter\(3),
	datac => \sw[7]~input_o\,
	datad => \sw[6]~input_o\,
	combout => \compinst_X|fourALTB~0_combout\);

\mealyinst|clk_en_x~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|clk_en_x~0_combout\ = (\mealyinst|current_state.move~q\ & ((\compinst_X|fourAEQB~0_combout\) # (!\compinst_X|fourALTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.move~q\,
	datab => \compinst_X|fourAEQB~0_combout\,
	datac => \compinst_X|fourALTB~0_combout\,
	combout => \mealyinst|clk_en_x~0_combout\);

\mealyinst|clk_en_x\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|clk_en_x~combout\ = (\mealyinst|current_state.start~q\ & ((\mealyinst|clk_en_y~0_combout\ & (\mealyinst|clk_en_x~0_combout\)) # (!\mealyinst|clk_en_y~0_combout\ & ((\mealyinst|clk_en_x~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|clk_en_x~0_combout\,
	datab => \mealyinst|clk_en_x~combout\,
	datac => \mealyinst|clk_en_y~0_combout\,
	datad => \mealyinst|current_state.start~q\,
	combout => \mealyinst|clk_en_x~combout\);

\Counterinst_X|ud_bincounter[0]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Counterinst_X|ud_bincounter[0]~3_combout\ = \Counterinst_X|ud_bincounter\(0) $ (\mealyinst|clk_en_x~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Counterinst_X|ud_bincounter\(0),
	datad => \mealyinst|clk_en_x~combout\,
	combout => \Counterinst_X|ud_bincounter[0]~3_combout\);

\Counterinst_X|ud_bincounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Counterinst_X|ud_bincounter[0]~3_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Counterinst_X|ud_bincounter\(0));

\compinst_X|fourAEQB~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \compinst_X|fourAEQB~0_combout\ = (\Counterinst_X|ud_bincounter\(0) & ((\Counterinst_X|ud_bincounter\(1) $ (\sw[5]~input_o\)) # (!\sw[4]~input_o\))) # (!\Counterinst_X|ud_bincounter\(0) & ((\sw[4]~input_o\) # (\Counterinst_X|ud_bincounter\(1) $ 
-- (\sw[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Counterinst_X|ud_bincounter\(0),
	datab => \sw[4]~input_o\,
	datac => \Counterinst_X|ud_bincounter\(1),
	datad => \sw[5]~input_o\,
	combout => \compinst_X|fourAEQB~0_combout\);

\mealyinst|Transition_Section~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|Transition_Section~0_combout\ = (\compinst_X|fourAEQB~0_combout\) # ((\compinst_Y|fourAEQB~0_combout\) # ((!\compinst_Y|fourALTB~0_combout\) # (!\compinst_X|fourALTB~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \compinst_X|fourAEQB~0_combout\,
	datab => \compinst_Y|fourAEQB~0_combout\,
	datac => \compinst_X|fourALTB~0_combout\,
	datad => \compinst_Y|fourALTB~0_combout\,
	combout => \mealyinst|Transition_Section~0_combout\);

\mealyinst|extender_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|extender_en~0_combout\ = (\mealyinst|current_state.move~q\ & ((!\mealyinst|Transition_Section~0_combout\))) # (!\mealyinst|current_state.move~q\ & (\mealyinst|current_state.on_target~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.on_target~q\,
	datac => \mealyinst|current_state.move~q\,
	datad => \mealyinst|Transition_Section~0_combout\,
	combout => \mealyinst|extender_en~0_combout\);

\mealyinst|extender_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|extender_en~combout\ = (\mealyinst|current_state.start~q\ & ((\mealyinst|clk_en_y~0_combout\ & (\mealyinst|extender_en~0_combout\)) # (!\mealyinst|clk_en_y~0_combout\ & ((\mealyinst|extender_en~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|extender_en~0_combout\,
	datab => \mealyinst|extender_en~combout\,
	datac => \mealyinst|clk_en_y~0_combout\,
	datad => \mealyinst|current_state.start~q\,
	combout => \mealyinst|extender_en~combout\);

\moore1inst|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|Selector5~0_combout\ = (\pb[1]~input_o\ & \mealyinst|extender_en~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \mealyinst|extender_en~combout\,
	combout => \moore1inst|Selector5~0_combout\);

\moore1inst|Selector1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|Selector1~0_combout\ = (\pb[1]~input_o\) # ((\moore1inst|current_state.fully_extended~q\) # (!\moore1inst|current_state.start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \moore1inst|current_state.fully_extended~q\,
	datad => \moore1inst|current_state.start~q\,
	combout => \moore1inst|Selector1~0_combout\);

\moore1inst|left_right\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|left_right~combout\ = (\moore1inst|Selector1~0_combout\ & ((\moore1inst|left_right~combout\))) # (!\moore1inst|Selector1~0_combout\ & (!\moore1inst|current_state.retracting~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moore1inst|current_state.retracting~q\,
	datac => \moore1inst|left_right~combout\,
	datad => \moore1inst|Selector1~0_combout\,
	combout => \moore1inst|left_right~combout\);

\Registerinst1|sreg~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registerinst1|sreg~3_combout\ = (\Registerinst1|sreg\(2)) # (\moore1inst|left_right~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registerinst1|sreg\(2),
	datab => \moore1inst|left_right~combout\,
	combout => \Registerinst1|sreg~3_combout\);

\moore1inst|clk_en~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|clk_en~0_combout\ = (\moore1inst|current_state.fully_extended~q\) # (!\moore1inst|current_state.start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore1inst|current_state.fully_extended~q\,
	datad => \moore1inst|current_state.start~q\,
	combout => \moore1inst|clk_en~0_combout\);

\moore1inst|Selector8~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|Selector8~0_combout\ = (\moore1inst|current_state.fully_extended~q\) # ((!\moore1inst|current_state.start~q\) # (!\pb[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore1inst|current_state.fully_extended~q\,
	datac => \pb[1]~input_o\,
	datad => \moore1inst|current_state.start~q\,
	combout => \moore1inst|Selector8~0_combout\);

\moore1inst|clk_en\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|clk_en~combout\ = (\moore1inst|Selector8~0_combout\ & (!\moore1inst|clk_en~0_combout\)) # (!\moore1inst|Selector8~0_combout\ & ((\moore1inst|clk_en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moore1inst|clk_en~0_combout\,
	datac => \moore1inst|clk_en~combout\,
	datad => \moore1inst|Selector8~0_combout\,
	combout => \moore1inst|clk_en~combout\);

\Registerinst1|sreg[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Registerinst1|sreg~3_combout\,
	clrn => \rst_n~input_o\,
	ena => \moore1inst|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registerinst1|sreg\(3));

\Registerinst1|sreg~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registerinst1|sreg~2_combout\ = (\moore1inst|left_right~combout\ & (\Registerinst1|sreg\(3))) # (!\moore1inst|left_right~combout\ & ((\Registerinst1|sreg\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registerinst1|sreg\(3),
	datab => \Registerinst1|sreg\(1),
	datad => \moore1inst|left_right~combout\,
	combout => \Registerinst1|sreg~2_combout\);

\Registerinst1|sreg[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Registerinst1|sreg~2_combout\,
	clrn => \rst_n~input_o\,
	ena => \moore1inst|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registerinst1|sreg\(2));

\Registerinst1|sreg~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registerinst1|sreg~0_combout\ = (\Registerinst1|sreg\(1) & \moore1inst|left_right~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registerinst1|sreg\(1),
	datab => \moore1inst|left_right~combout\,
	combout => \Registerinst1|sreg~0_combout\);

\Registerinst1|sreg[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Registerinst1|sreg~0_combout\,
	clrn => \rst_n~input_o\,
	ena => \moore1inst|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registerinst1|sreg\(0));

\Registerinst1|sreg~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \Registerinst1|sreg~1_combout\ = (\moore1inst|left_right~combout\ & (\Registerinst1|sreg\(2))) # (!\moore1inst|left_right~combout\ & ((\Registerinst1|sreg\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registerinst1|sreg\(2),
	datab => \Registerinst1|sreg\(0),
	datad => \moore1inst|left_right~combout\,
	combout => \Registerinst1|sreg~1_combout\);

\Registerinst1|sreg[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \Registerinst1|sreg~1_combout\,
	clrn => \rst_n~input_o\,
	ena => \moore1inst|clk_en~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \Registerinst1|sreg\(1));

\moore1inst|TRANSITION_LOGIC~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|TRANSITION_LOGIC~2_combout\ = (\Registerinst1|sreg\(1) & (\Registerinst1|sreg\(2) & (\Registerinst1|sreg\(3) & \mealyinst|extender_en~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registerinst1|sreg\(1),
	datab => \Registerinst1|sreg\(2),
	datac => \Registerinst1|sreg\(3),
	datad => \mealyinst|extender_en~combout\,
	combout => \moore1inst|TRANSITION_LOGIC~2_combout\);

\moore1inst|TRANSITION_LOGIC~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|TRANSITION_LOGIC~3_combout\ = (\Registerinst1|sreg\(0) & \moore1inst|TRANSITION_LOGIC~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registerinst1|sreg\(0),
	datab => \moore1inst|TRANSITION_LOGIC~2_combout\,
	combout => \moore1inst|TRANSITION_LOGIC~3_combout\);

\moore1inst|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|Selector6~0_combout\ = (\moore1inst|Selector5~0_combout\ & (((\moore1inst|current_state.extending~q\ & !\moore1inst|TRANSITION_LOGIC~3_combout\)) # (!\moore1inst|current_state.start~q\))) # (!\moore1inst|Selector5~0_combout\ & 
-- (\moore1inst|current_state.extending~q\ & ((!\moore1inst|TRANSITION_LOGIC~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore1inst|Selector5~0_combout\,
	datab => \moore1inst|current_state.extending~q\,
	datac => \moore1inst|current_state.start~q\,
	datad => \moore1inst|TRANSITION_LOGIC~3_combout\,
	combout => \moore1inst|Selector6~0_combout\);

\moore1inst|current_state.extending\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \moore1inst|Selector6~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moore1inst|current_state.extending~q\);

\moore1inst|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|Selector4~0_combout\ = (\moore1inst|current_state.extending~q\ & \Registerinst1|sreg\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore1inst|current_state.extending~q\,
	datab => \Registerinst1|sreg\(0),
	combout => \moore1inst|Selector4~0_combout\);

\moore1inst|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|Selector4~1_combout\ = (\moore1inst|current_state.fully_extended~q\ & (((\moore1inst|TRANSITION_LOGIC~2_combout\ & \moore1inst|Selector4~0_combout\)) # (!\moore1inst|Selector5~0_combout\))) # (!\moore1inst|current_state.fully_extended~q\ & 
-- (((\moore1inst|TRANSITION_LOGIC~2_combout\ & \moore1inst|Selector4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore1inst|current_state.fully_extended~q\,
	datab => \moore1inst|Selector5~0_combout\,
	datac => \moore1inst|TRANSITION_LOGIC~2_combout\,
	datad => \moore1inst|Selector4~0_combout\,
	combout => \moore1inst|Selector4~1_combout\);

\moore1inst|current_state.fully_extended\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \moore1inst|Selector4~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moore1inst|current_state.fully_extended~q\);

\moore1inst|TRANSITION_LOGIC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|TRANSITION_LOGIC~0_combout\ = (!\Registerinst1|sreg\(1) & !\Registerinst1|sreg\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registerinst1|sreg\(1),
	datab => \Registerinst1|sreg\(2),
	combout => \moore1inst|TRANSITION_LOGIC~0_combout\);

\moore1inst|TRANSITION_LOGIC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|TRANSITION_LOGIC~1_combout\ = (!\Registerinst1|sreg\(0) & (\mealyinst|extender_en~combout\ & (!\Registerinst1|sreg\(3) & \moore1inst|TRANSITION_LOGIC~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Registerinst1|sreg\(0),
	datab => \mealyinst|extender_en~combout\,
	datac => \Registerinst1|sreg\(3),
	datad => \moore1inst|TRANSITION_LOGIC~0_combout\,
	combout => \moore1inst|TRANSITION_LOGIC~1_combout\);

\moore1inst|Selector5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|Selector5~1_combout\ = (\moore1inst|current_state.fully_extended~q\ & ((\moore1inst|Selector5~0_combout\) # ((\moore1inst|current_state.retracting~q\ & !\moore1inst|TRANSITION_LOGIC~1_combout\)))) # 
-- (!\moore1inst|current_state.fully_extended~q\ & (((\moore1inst|current_state.retracting~q\ & !\moore1inst|TRANSITION_LOGIC~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore1inst|current_state.fully_extended~q\,
	datab => \moore1inst|Selector5~0_combout\,
	datac => \moore1inst|current_state.retracting~q\,
	datad => \moore1inst|TRANSITION_LOGIC~1_combout\,
	combout => \moore1inst|Selector5~1_combout\);

\moore1inst|current_state.retracting\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \moore1inst|Selector5~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moore1inst|current_state.retracting~q\);

\moore1inst|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|Selector3~0_combout\ = (\moore1inst|current_state.retracting~q\ & (!\moore1inst|TRANSITION_LOGIC~1_combout\ & ((\moore1inst|current_state.start~q\) # (\moore1inst|Selector5~0_combout\)))) # (!\moore1inst|current_state.retracting~q\ & 
-- (((\moore1inst|current_state.start~q\) # (\moore1inst|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore1inst|current_state.retracting~q\,
	datab => \moore1inst|TRANSITION_LOGIC~1_combout\,
	datac => \moore1inst|current_state.start~q\,
	datad => \moore1inst|Selector5~0_combout\,
	combout => \moore1inst|Selector3~0_combout\);

\moore1inst|current_state.start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \moore1inst|Selector3~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moore1inst|current_state.start~q\);

\moore1inst|Selector10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|Selector10~0_combout\ = (\pb[1]~input_o\ & ((\moore1inst|current_state.retracting~q\) # (\moore1inst|current_state.extending~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[1]~input_o\,
	datab => \moore1inst|current_state.retracting~q\,
	datac => \moore1inst|current_state.extending~q\,
	combout => \moore1inst|Selector10~0_combout\);

\moore1inst|EXT_OUT\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|EXT_OUT~combout\ = (\moore1inst|Selector10~0_combout\ & ((\moore1inst|EXT_OUT~combout\))) # (!\moore1inst|Selector10~0_combout\ & (\moore1inst|current_state.start~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moore1inst|current_state.start~q\,
	datac => \moore1inst|EXT_OUT~combout\,
	datad => \moore1inst|Selector10~0_combout\,
	combout => \moore1inst|EXT_OUT~combout\);

\mealyinst|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|Selector2~1_combout\ = (\mealyinst|current_state.move~q\) # ((\mealyinst|current_state.on_target~q\ & \pb[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.move~q\,
	datab => \mealyinst|current_state.on_target~q\,
	datac => \pb[2]~input_o\,
	combout => \mealyinst|Selector2~1_combout\);

\mealyinst|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|Selector2~2_combout\ = (\moore1inst|EXT_OUT~combout\ & ((\mealyinst|current_state.error~q\) # ((\mealyinst|Transition_Section~0_combout\ & \mealyinst|Selector2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore1inst|EXT_OUT~combout\,
	datab => \mealyinst|current_state.error~q\,
	datac => \mealyinst|Transition_Section~0_combout\,
	datad => \mealyinst|Selector2~1_combout\,
	combout => \mealyinst|Selector2~2_combout\);

\mealyinst|current_state.error\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \mealyinst|Selector2~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mealyinst|current_state.error~q\);

\mealyinst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|Selector0~0_combout\ = (\mealyinst|Selector1~0_combout\) # ((!\moore1inst|EXT_OUT~combout\ & ((\mealyinst|current_state.move~q\) # (\mealyinst|current_state.error~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|Selector1~0_combout\,
	datab => \mealyinst|current_state.move~q\,
	datac => \mealyinst|current_state.error~q\,
	datad => \moore1inst|EXT_OUT~combout\,
	combout => \mealyinst|Selector0~0_combout\);

\mealyinst|Selector2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|Selector2~0_combout\ = (\mealyinst|current_state.on_target~q\ & \pb[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.on_target~q\,
	datab => \pb[2]~input_o\,
	combout => \mealyinst|Selector2~0_combout\);

\mealyinst|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|Selector0~1_combout\ = (\mealyinst|Transition_Section~0_combout\ & ((\mealyinst|Selector0~0_combout\) # ((\mealyinst|Selector2~0_combout\ & !\moore1inst|EXT_OUT~combout\)))) # (!\mealyinst|Transition_Section~0_combout\ & 
-- (((\mealyinst|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|Selector0~0_combout\,
	datab => \mealyinst|Selector2~0_combout\,
	datac => \mealyinst|Transition_Section~0_combout\,
	datad => \moore1inst|EXT_OUT~combout\,
	combout => \mealyinst|Selector0~1_combout\);

\mealyinst|current_state.move\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \mealyinst|Selector0~1_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mealyinst|current_state.move~q\);

\mealyinst|Selector1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|Selector1~1_combout\ = (\mealyinst|current_state.move~q\) # ((\mealyinst|Selector1~0_combout\) # ((\mealyinst|current_state.error~q\ & !\moore1inst|EXT_OUT~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.move~q\,
	datab => \mealyinst|Selector1~0_combout\,
	datac => \mealyinst|current_state.error~q\,
	datad => \moore1inst|EXT_OUT~combout\,
	combout => \mealyinst|Selector1~1_combout\);

\mealyinst|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|Selector1~2_combout\ = (\mealyinst|current_state.on_target~q\ & (((\mealyinst|Selector1~1_combout\ & !\mealyinst|Transition_Section~0_combout\)) # (!\pb[2]~input_o\))) # (!\mealyinst|current_state.on_target~q\ & (\mealyinst|Selector1~1_combout\ 
-- & ((!\mealyinst|Transition_Section~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.on_target~q\,
	datab => \mealyinst|Selector1~1_combout\,
	datac => \pb[2]~input_o\,
	datad => \mealyinst|Transition_Section~0_combout\,
	combout => \mealyinst|Selector1~2_combout\);

\mealyinst|current_state.on_target\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \mealyinst|Selector1~2_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \mealyinst|current_state.on_target~q\);

\mealyinst|error_led~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|error_led~0_combout\ = (\mealyinst|current_state.on_target~q\) # (\mealyinst|current_state.move~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|current_state.on_target~q\,
	datab => \mealyinst|current_state.move~q\,
	combout => \mealyinst|error_led~0_combout\);

\mealyinst|error_led\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \mealyinst|error_led~combout\ = (\mealyinst|current_state.start~q\ & ((\mealyinst|clk_en_y~0_combout\ & (!\mealyinst|error_led~0_combout\)) # (!\mealyinst|clk_en_y~0_combout\ & ((\mealyinst|error_led~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mealyinst|error_led~0_combout\,
	datab => \mealyinst|error_led~combout\,
	datac => \mealyinst|clk_en_y~0_combout\,
	datad => \mealyinst|current_state.start~q\,
	combout => \mealyinst|error_led~combout\);

\pb[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(0),
	o => \pb[0]~input_o\);

\moore1inst|GRAP_ENBL\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore1inst|GRAP_ENBL~combout\ = (\moore1inst|Selector10~0_combout\ & ((\moore1inst|GRAP_ENBL~combout\))) # (!\moore1inst|Selector10~0_combout\ & (\moore1inst|current_state.fully_extended~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moore1inst|current_state.fully_extended~q\,
	datac => \moore1inst|GRAP_ENBL~combout\,
	datad => \moore1inst|Selector10~0_combout\,
	combout => \moore1inst|GRAP_ENBL~combout\);

\moore2inst|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore2inst|Selector0~0_combout\ = \moore2inst|current_state.GRAP_OPEN~q\ $ (((\pb[0]~input_o\ & \moore1inst|GRAP_ENBL~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pb[0]~input_o\,
	datab => \moore1inst|GRAP_ENBL~combout\,
	datac => \moore2inst|current_state.GRAP_OPEN~q\,
	combout => \moore2inst|Selector0~0_combout\);

\moore2inst|current_state.GRAP_OPEN\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \moore2inst|Selector0~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moore2inst|current_state.GRAP_OPEN~q\);

\moore2inst|leds1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore2inst|leds1~0_combout\ = (\moore2inst|current_state.GRAP_OPEN~q\ & !\pb[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore2inst|current_state.GRAP_OPEN~q\,
	datad => \pb[0]~input_o\,
	combout => \moore2inst|leds1~0_combout\);

\moore2inst|current_state.INIT~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore2inst|current_state.INIT~0_combout\ = (\moore2inst|current_state.INIT~q\) # ((\pb[0]~input_o\ & \moore1inst|GRAP_ENBL~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore2inst|current_state.INIT~q\,
	datab => \pb[0]~input_o\,
	datac => \moore1inst|GRAP_ENBL~combout\,
	combout => \moore2inst|current_state.INIT~0_combout\);

\moore2inst|current_state.INIT\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clk~input_o\,
	d => \moore2inst|current_state.INIT~0_combout\,
	clrn => \rst_n~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \moore2inst|current_state.INIT~q\);

\moore2inst|leds1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore2inst|leds1~combout\ = (\moore2inst|current_state.INIT~q\ & ((\moore2inst|leds1~combout\) # (\moore2inst|leds1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \moore2inst|leds1~combout\,
	datac => \moore2inst|leds1~0_combout\,
	datad => \moore2inst|current_state.INIT~q\,
	combout => \moore2inst|leds1~combout\);

\moore2inst|GRAP_ON\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \moore2inst|GRAP_ON~combout\ = (\moore2inst|current_state.INIT~q\ & ((\pb[0]~input_o\ & ((\moore2inst|GRAP_ON~combout\))) # (!\pb[0]~input_o\ & (\moore2inst|current_state.GRAP_OPEN~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \moore2inst|current_state.GRAP_OPEN~q\,
	datab => \moore2inst|GRAP_ON~combout\,
	datac => \pb[0]~input_o\,
	datad => \moore2inst|current_state.INIT~q\,
	combout => \moore2inst|GRAP_ON~combout\);

\pb[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_pb(3),
	o => \pb[3]~input_o\);

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_leds(4) <= \leds[4]~output_o\;

ww_leds(5) <= \leds[5]~output_o\;

ww_leds(6) <= \leds[6]~output_o\;

ww_leds(7) <= \leds[7]~output_o\;

ww_leds(8) <= \leds[8]~output_o\;

ww_leds(9) <= \leds[9]~output_o\;

ww_leds(10) <= \leds[10]~output_o\;

ww_leds(11) <= \leds[11]~output_o\;

ww_leds(12) <= \leds[12]~output_o\;

ww_leds(13) <= \leds[13]~output_o\;

ww_leds(14) <= \leds[14]~output_o\;

ww_leds(15) <= \leds[15]~output_o\;
END structure;


