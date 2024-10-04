-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "10/01/2024 15:12:27"

-- 
-- Device: Altera EP4CE6E22C8L Package TQFP144
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

ENTITY 	lcd IS
    PORT (
	clk : IN std_logic;
	rs : BUFFER std_logic;
	rw : BUFFER std_logic;
	e : BUFFER std_logic;
	data : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END lcd;

-- Design Ports Information
-- rs	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rw	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[0]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[1]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[2]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[3]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[4]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[5]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[6]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data[7]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lcd IS
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
SIGNAL ww_rs : std_logic;
SIGNAL ww_rw : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL ww_data : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rs~output_o\ : std_logic;
SIGNAL \rw~output_o\ : std_logic;
SIGNAL \e~output_o\ : std_logic;
SIGNAL \data[0]~output_o\ : std_logic;
SIGNAL \data[1]~output_o\ : std_logic;
SIGNAL \data[2]~output_o\ : std_logic;
SIGNAL \data[3]~output_o\ : std_logic;
SIGNAL \data[4]~output_o\ : std_logic;
SIGNAL \data[5]~output_o\ : std_logic;
SIGNAL \data[6]~output_o\ : std_logic;
SIGNAL \data[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.init~feeder_combout\ : std_logic;
SIGNAL \counter[0]~23_combout\ : std_logic;
SIGNAL \counter[0]~24\ : std_logic;
SIGNAL \counter[1]~25_combout\ : std_logic;
SIGNAL \counter[1]~26\ : std_logic;
SIGNAL \counter[2]~27_combout\ : std_logic;
SIGNAL \counter[2]~28\ : std_logic;
SIGNAL \counter[3]~29_combout\ : std_logic;
SIGNAL \counter[3]~30\ : std_logic;
SIGNAL \counter[4]~31_combout\ : std_logic;
SIGNAL \counter[4]~32\ : std_logic;
SIGNAL \counter[5]~33_combout\ : std_logic;
SIGNAL \counter[5]~34\ : std_logic;
SIGNAL \counter[6]~35_combout\ : std_logic;
SIGNAL \counter[6]~36\ : std_logic;
SIGNAL \counter[7]~37_combout\ : std_logic;
SIGNAL \counter[7]~38\ : std_logic;
SIGNAL \counter[8]~39_combout\ : std_logic;
SIGNAL \counter[8]~40\ : std_logic;
SIGNAL \counter[9]~41_combout\ : std_logic;
SIGNAL \counter[9]~42\ : std_logic;
SIGNAL \counter[10]~43_combout\ : std_logic;
SIGNAL \counter[10]~44\ : std_logic;
SIGNAL \counter[11]~45_combout\ : std_logic;
SIGNAL \counter[11]~46\ : std_logic;
SIGNAL \counter[12]~47_combout\ : std_logic;
SIGNAL \counter[12]~48\ : std_logic;
SIGNAL \counter[13]~49_combout\ : std_logic;
SIGNAL \counter[13]~50\ : std_logic;
SIGNAL \counter[14]~51_combout\ : std_logic;
SIGNAL \counter[14]~52\ : std_logic;
SIGNAL \counter[15]~53_combout\ : std_logic;
SIGNAL \counter[15]~54\ : std_logic;
SIGNAL \counter[16]~55_combout\ : std_logic;
SIGNAL \counter[16]~56\ : std_logic;
SIGNAL \counter[17]~57_combout\ : std_logic;
SIGNAL \counter[17]~58\ : std_logic;
SIGNAL \counter[18]~59_combout\ : std_logic;
SIGNAL \counter[18]~60\ : std_logic;
SIGNAL \counter[19]~61_combout\ : std_logic;
SIGNAL \counter[19]~62\ : std_logic;
SIGNAL \counter[20]~63_combout\ : std_logic;
SIGNAL \counter[20]~64\ : std_logic;
SIGNAL \counter[21]~65_combout\ : std_logic;
SIGNAL \counter[21]~66\ : std_logic;
SIGNAL \counter[22]~67_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \state.init~q\ : std_logic;
SIGNAL \state.function_set_1~0_combout\ : std_logic;
SIGNAL \state.function_set_1~q\ : std_logic;
SIGNAL \state.function_set_2~feeder_combout\ : std_logic;
SIGNAL \state.function_set_2~q\ : std_logic;
SIGNAL \state.function_set_3~feeder_combout\ : std_logic;
SIGNAL \state.function_set_3~q\ : std_logic;
SIGNAL \state.function_set_4~feeder_combout\ : std_logic;
SIGNAL \state.function_set_4~q\ : std_logic;
SIGNAL \state.display_on~feeder_combout\ : std_logic;
SIGNAL \state.display_on~q\ : std_logic;
SIGNAL \state.clear_display~q\ : std_logic;
SIGNAL \state.entry_mode_set~feeder_combout\ : std_logic;
SIGNAL \state.entry_mode_set~q\ : std_logic;
SIGNAL \state.write_t~q\ : std_logic;
SIGNAL \state.write_e~feeder_combout\ : std_logic;
SIGNAL \state.write_e~q\ : std_logic;
SIGNAL \state.write_space~feeder_combout\ : std_logic;
SIGNAL \state.write_space~q\ : std_logic;
SIGNAL \state.write_a~feeder_combout\ : std_logic;
SIGNAL \state.write_a~q\ : std_logic;
SIGNAL \state.write_m~q\ : std_logic;
SIGNAL \state.write_o~feeder_combout\ : std_logic;
SIGNAL \state.write_o~q\ : std_logic;
SIGNAL \WideOr0~0_combout\ : std_logic;
SIGNAL \WideOr0~combout\ : std_logic;
SIGNAL \rs~reg0_q\ : std_logic;
SIGNAL \WideOr6~0_combout\ : std_logic;
SIGNAL \WideOr6~combout\ : std_logic;
SIGNAL \data[0]~reg0_q\ : std_logic;
SIGNAL \data~0_combout\ : std_logic;
SIGNAL \data[1]~reg0_q\ : std_logic;
SIGNAL \WideOr5~combout\ : std_logic;
SIGNAL \data[2]~reg0_q\ : std_logic;
SIGNAL \WideOr4~0_combout\ : std_logic;
SIGNAL \data[3]~reg0_q\ : std_logic;
SIGNAL \WideOr3~0_combout\ : std_logic;
SIGNAL \data[4]~reg0_q\ : std_logic;
SIGNAL \WideOr5~2_combout\ : std_logic;
SIGNAL \state.finish~0_combout\ : std_logic;
SIGNAL \state.finish~q\ : std_logic;
SIGNAL \WideOr2~combout\ : std_logic;
SIGNAL \data[5]~reg0_q\ : std_logic;
SIGNAL \WideOr0~1_combout\ : std_logic;
SIGNAL \data[6]~reg0_q\ : std_logic;
SIGNAL counter : std_logic_vector(22 DOWNTO 0);
SIGNAL \ALT_INV_LessThan0~5_combout\ : std_logic;

BEGIN

ww_clk <= clk;
rs <= ww_rs;
rw <= ww_rw;
e <= ww_e;
data <= ww_data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_LessThan0~5_combout\ <= NOT \LessThan0~5_combout\;

-- Location: IOOBUF_X34_Y17_N16
\rs~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rs~reg0_q\,
	devoe => ww_devoe,
	o => \rs~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\rw~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \rw~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\e~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \e~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\data[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[0]~reg0_q\,
	devoe => ww_devoe,
	o => \data[0]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\data[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[1]~reg0_q\,
	devoe => ww_devoe,
	o => \data[1]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\data[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[2]~reg0_q\,
	devoe => ww_devoe,
	o => \data[2]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\data[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[3]~reg0_q\,
	devoe => ww_devoe,
	o => \data[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\data[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[4]~reg0_q\,
	devoe => ww_devoe,
	o => \data[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\data[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[5]~reg0_q\,
	devoe => ww_devoe,
	o => \data[5]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\data[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \data[6]~reg0_q\,
	devoe => ww_devoe,
	o => \data[6]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\data[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \data[7]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
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

-- Location: LCCOMB_X21_Y1_N4
\state.init~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.init~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \state.init~feeder_combout\);

-- Location: LCCOMB_X22_Y2_N10
\counter[0]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[0]~23_combout\ = counter(0) $ (VCC)
-- \counter[0]~24\ = CARRY(counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(0),
	datad => VCC,
	combout => \counter[0]~23_combout\,
	cout => \counter[0]~24\);

-- Location: FF_X22_Y2_N11
\counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[0]~23_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(0));

-- Location: LCCOMB_X22_Y2_N12
\counter[1]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[1]~25_combout\ = (counter(1) & (!\counter[0]~24\)) # (!counter(1) & ((\counter[0]~24\) # (GND)))
-- \counter[1]~26\ = CARRY((!\counter[0]~24\) # (!counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(1),
	datad => VCC,
	cin => \counter[0]~24\,
	combout => \counter[1]~25_combout\,
	cout => \counter[1]~26\);

-- Location: FF_X22_Y2_N13
\counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[1]~25_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(1));

-- Location: LCCOMB_X22_Y2_N14
\counter[2]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[2]~27_combout\ = (counter(2) & (\counter[1]~26\ $ (GND))) # (!counter(2) & (!\counter[1]~26\ & VCC))
-- \counter[2]~28\ = CARRY((counter(2) & !\counter[1]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(2),
	datad => VCC,
	cin => \counter[1]~26\,
	combout => \counter[2]~27_combout\,
	cout => \counter[2]~28\);

-- Location: FF_X22_Y2_N15
\counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[2]~27_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(2));

-- Location: LCCOMB_X22_Y2_N16
\counter[3]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[3]~29_combout\ = (counter(3) & (!\counter[2]~28\)) # (!counter(3) & ((\counter[2]~28\) # (GND)))
-- \counter[3]~30\ = CARRY((!\counter[2]~28\) # (!counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(3),
	datad => VCC,
	cin => \counter[2]~28\,
	combout => \counter[3]~29_combout\,
	cout => \counter[3]~30\);

-- Location: FF_X22_Y2_N17
\counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[3]~29_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(3));

-- Location: LCCOMB_X22_Y2_N18
\counter[4]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[4]~31_combout\ = (counter(4) & (\counter[3]~30\ $ (GND))) # (!counter(4) & (!\counter[3]~30\ & VCC))
-- \counter[4]~32\ = CARRY((counter(4) & !\counter[3]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(4),
	datad => VCC,
	cin => \counter[3]~30\,
	combout => \counter[4]~31_combout\,
	cout => \counter[4]~32\);

-- Location: FF_X22_Y2_N19
\counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[4]~31_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(4));

-- Location: LCCOMB_X22_Y2_N20
\counter[5]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[5]~33_combout\ = (counter(5) & (!\counter[4]~32\)) # (!counter(5) & ((\counter[4]~32\) # (GND)))
-- \counter[5]~34\ = CARRY((!\counter[4]~32\) # (!counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(5),
	datad => VCC,
	cin => \counter[4]~32\,
	combout => \counter[5]~33_combout\,
	cout => \counter[5]~34\);

-- Location: FF_X22_Y2_N21
\counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[5]~33_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(5));

-- Location: LCCOMB_X22_Y2_N22
\counter[6]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[6]~35_combout\ = (counter(6) & (\counter[5]~34\ $ (GND))) # (!counter(6) & (!\counter[5]~34\ & VCC))
-- \counter[6]~36\ = CARRY((counter(6) & !\counter[5]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(6),
	datad => VCC,
	cin => \counter[5]~34\,
	combout => \counter[6]~35_combout\,
	cout => \counter[6]~36\);

-- Location: FF_X22_Y2_N23
\counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[6]~35_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(6));

-- Location: LCCOMB_X22_Y2_N24
\counter[7]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[7]~37_combout\ = (counter(7) & (!\counter[6]~36\)) # (!counter(7) & ((\counter[6]~36\) # (GND)))
-- \counter[7]~38\ = CARRY((!\counter[6]~36\) # (!counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(7),
	datad => VCC,
	cin => \counter[6]~36\,
	combout => \counter[7]~37_combout\,
	cout => \counter[7]~38\);

-- Location: FF_X22_Y2_N25
\counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[7]~37_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(7));

-- Location: LCCOMB_X22_Y2_N26
\counter[8]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[8]~39_combout\ = (counter(8) & (\counter[7]~38\ $ (GND))) # (!counter(8) & (!\counter[7]~38\ & VCC))
-- \counter[8]~40\ = CARRY((counter(8) & !\counter[7]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(8),
	datad => VCC,
	cin => \counter[7]~38\,
	combout => \counter[8]~39_combout\,
	cout => \counter[8]~40\);

-- Location: FF_X22_Y2_N27
\counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[8]~39_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(8));

-- Location: LCCOMB_X22_Y2_N28
\counter[9]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[9]~41_combout\ = (counter(9) & (!\counter[8]~40\)) # (!counter(9) & ((\counter[8]~40\) # (GND)))
-- \counter[9]~42\ = CARRY((!\counter[8]~40\) # (!counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(9),
	datad => VCC,
	cin => \counter[8]~40\,
	combout => \counter[9]~41_combout\,
	cout => \counter[9]~42\);

-- Location: FF_X22_Y2_N29
\counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[9]~41_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(9));

-- Location: LCCOMB_X22_Y2_N30
\counter[10]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[10]~43_combout\ = (counter(10) & (\counter[9]~42\ $ (GND))) # (!counter(10) & (!\counter[9]~42\ & VCC))
-- \counter[10]~44\ = CARRY((counter(10) & !\counter[9]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datad => VCC,
	cin => \counter[9]~42\,
	combout => \counter[10]~43_combout\,
	cout => \counter[10]~44\);

-- Location: FF_X22_Y2_N31
\counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[10]~43_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(10));

-- Location: LCCOMB_X22_Y1_N0
\counter[11]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[11]~45_combout\ = (counter(11) & (!\counter[10]~44\)) # (!counter(11) & ((\counter[10]~44\) # (GND)))
-- \counter[11]~46\ = CARRY((!\counter[10]~44\) # (!counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(11),
	datad => VCC,
	cin => \counter[10]~44\,
	combout => \counter[11]~45_combout\,
	cout => \counter[11]~46\);

-- Location: FF_X22_Y1_N1
\counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[11]~45_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(11));

-- Location: LCCOMB_X22_Y1_N2
\counter[12]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[12]~47_combout\ = (counter(12) & (\counter[11]~46\ $ (GND))) # (!counter(12) & (!\counter[11]~46\ & VCC))
-- \counter[12]~48\ = CARRY((counter(12) & !\counter[11]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(12),
	datad => VCC,
	cin => \counter[11]~46\,
	combout => \counter[12]~47_combout\,
	cout => \counter[12]~48\);

-- Location: FF_X22_Y1_N3
\counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[12]~47_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(12));

-- Location: LCCOMB_X22_Y1_N4
\counter[13]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[13]~49_combout\ = (counter(13) & (!\counter[12]~48\)) # (!counter(13) & ((\counter[12]~48\) # (GND)))
-- \counter[13]~50\ = CARRY((!\counter[12]~48\) # (!counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(13),
	datad => VCC,
	cin => \counter[12]~48\,
	combout => \counter[13]~49_combout\,
	cout => \counter[13]~50\);

-- Location: FF_X22_Y1_N5
\counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[13]~49_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(13));

-- Location: LCCOMB_X22_Y1_N6
\counter[14]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[14]~51_combout\ = (counter(14) & (\counter[13]~50\ $ (GND))) # (!counter(14) & (!\counter[13]~50\ & VCC))
-- \counter[14]~52\ = CARRY((counter(14) & !\counter[13]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datad => VCC,
	cin => \counter[13]~50\,
	combout => \counter[14]~51_combout\,
	cout => \counter[14]~52\);

-- Location: FF_X22_Y1_N7
\counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[14]~51_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(14));

-- Location: LCCOMB_X22_Y1_N8
\counter[15]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[15]~53_combout\ = (counter(15) & (!\counter[14]~52\)) # (!counter(15) & ((\counter[14]~52\) # (GND)))
-- \counter[15]~54\ = CARRY((!\counter[14]~52\) # (!counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(15),
	datad => VCC,
	cin => \counter[14]~52\,
	combout => \counter[15]~53_combout\,
	cout => \counter[15]~54\);

-- Location: FF_X22_Y1_N9
\counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[15]~53_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(15));

-- Location: LCCOMB_X22_Y1_N10
\counter[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[16]~55_combout\ = (counter(16) & (\counter[15]~54\ $ (GND))) # (!counter(16) & (!\counter[15]~54\ & VCC))
-- \counter[16]~56\ = CARRY((counter(16) & !\counter[15]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(16),
	datad => VCC,
	cin => \counter[15]~54\,
	combout => \counter[16]~55_combout\,
	cout => \counter[16]~56\);

-- Location: FF_X22_Y1_N11
\counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[16]~55_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(16));

-- Location: LCCOMB_X22_Y1_N12
\counter[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[17]~57_combout\ = (counter(17) & (!\counter[16]~56\)) # (!counter(17) & ((\counter[16]~56\) # (GND)))
-- \counter[17]~58\ = CARRY((!\counter[16]~56\) # (!counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datad => VCC,
	cin => \counter[16]~56\,
	combout => \counter[17]~57_combout\,
	cout => \counter[17]~58\);

-- Location: FF_X22_Y1_N13
\counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[17]~57_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(17));

-- Location: LCCOMB_X22_Y1_N14
\counter[18]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[18]~59_combout\ = (counter(18) & (\counter[17]~58\ $ (GND))) # (!counter(18) & (!\counter[17]~58\ & VCC))
-- \counter[18]~60\ = CARRY((counter(18) & !\counter[17]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(18),
	datad => VCC,
	cin => \counter[17]~58\,
	combout => \counter[18]~59_combout\,
	cout => \counter[18]~60\);

-- Location: FF_X22_Y1_N15
\counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[18]~59_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(18));

-- Location: LCCOMB_X22_Y1_N16
\counter[19]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[19]~61_combout\ = (counter(19) & (!\counter[18]~60\)) # (!counter(19) & ((\counter[18]~60\) # (GND)))
-- \counter[19]~62\ = CARRY((!\counter[18]~60\) # (!counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(19),
	datad => VCC,
	cin => \counter[18]~60\,
	combout => \counter[19]~61_combout\,
	cout => \counter[19]~62\);

-- Location: FF_X22_Y1_N17
\counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[19]~61_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(19));

-- Location: LCCOMB_X22_Y1_N18
\counter[20]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[20]~63_combout\ = (counter(20) & (\counter[19]~62\ $ (GND))) # (!counter(20) & (!\counter[19]~62\ & VCC))
-- \counter[20]~64\ = CARRY((counter(20) & !\counter[19]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datad => VCC,
	cin => \counter[19]~62\,
	combout => \counter[20]~63_combout\,
	cout => \counter[20]~64\);

-- Location: FF_X22_Y1_N19
\counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[20]~63_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(20));

-- Location: LCCOMB_X22_Y1_N20
\counter[21]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[21]~65_combout\ = (counter(21) & (!\counter[20]~64\)) # (!counter(21) & ((\counter[20]~64\) # (GND)))
-- \counter[21]~66\ = CARRY((!\counter[20]~64\) # (!counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => counter(21),
	datad => VCC,
	cin => \counter[20]~64\,
	combout => \counter[21]~65_combout\,
	cout => \counter[21]~66\);

-- Location: FF_X22_Y1_N21
\counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[21]~65_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(21));

-- Location: LCCOMB_X22_Y1_N22
\counter[22]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \counter[22]~67_combout\ = \counter[21]~66\ $ (!counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => counter(22),
	cin => \counter[21]~66\,
	combout => \counter[22]~67_combout\);

-- Location: FF_X22_Y1_N23
\counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \counter[22]~67_combout\,
	sclr => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => counter(22));

-- Location: LCCOMB_X21_Y1_N16
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (!counter(21) & (!counter(20) & ((!counter(18)) # (!counter(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(21),
	datab => counter(19),
	datac => counter(18),
	datad => counter(20),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y1_N24
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (counter(20)) # ((counter(16)) # ((counter(15)) # (counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(20),
	datab => counter(16),
	datac => counter(15),
	datad => counter(21),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y2_N8
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (((!counter(6) & !counter(7))) # (!counter(9))) # (!counter(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(6),
	datab => counter(7),
	datac => counter(8),
	datad => counter(9),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y1_N30
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (counter(13)) # ((counter(11) & ((counter(10)) # (!\LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(10),
	datab => counter(11),
	datac => counter(13),
	datad => \LessThan0~2_combout\,
	combout => \LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y1_N28
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (!\LessThan0~1_combout\ & (((!\LessThan0~3_combout\ & !counter(12))) # (!counter(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(14),
	datab => \LessThan0~1_combout\,
	datac => \LessThan0~3_combout\,
	datad => counter(12),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y1_N26
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = ((\LessThan0~0_combout\) # ((!counter(17) & \LessThan0~4_combout\))) # (!counter(22))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => counter(17),
	datab => counter(22),
	datac => \LessThan0~0_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~5_combout\);

-- Location: FF_X21_Y1_N5
\state.init\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.init~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.init~q\);

-- Location: LCCOMB_X21_Y1_N0
\state.function_set_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.function_set_1~0_combout\ = !\state.init~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.init~q\,
	combout => \state.function_set_1~0_combout\);

-- Location: FF_X21_Y1_N1
\state.function_set_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.function_set_1~0_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.function_set_1~q\);

-- Location: LCCOMB_X21_Y1_N22
\state.function_set_2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.function_set_2~feeder_combout\ = \state.function_set_1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.function_set_1~q\,
	combout => \state.function_set_2~feeder_combout\);

-- Location: FF_X21_Y1_N23
\state.function_set_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.function_set_2~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.function_set_2~q\);

-- Location: LCCOMB_X21_Y1_N10
\state.function_set_3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.function_set_3~feeder_combout\ = \state.function_set_2~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.function_set_2~q\,
	combout => \state.function_set_3~feeder_combout\);

-- Location: FF_X21_Y1_N11
\state.function_set_3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.function_set_3~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.function_set_3~q\);

-- Location: LCCOMB_X21_Y1_N2
\state.function_set_4~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.function_set_4~feeder_combout\ = \state.function_set_3~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.function_set_3~q\,
	combout => \state.function_set_4~feeder_combout\);

-- Location: FF_X21_Y1_N3
\state.function_set_4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.function_set_4~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.function_set_4~q\);

-- Location: LCCOMB_X23_Y1_N0
\state.display_on~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.display_on~feeder_combout\ = \state.function_set_4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.function_set_4~q\,
	combout => \state.display_on~feeder_combout\);

-- Location: FF_X23_Y1_N1
\state.display_on\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.display_on~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.display_on~q\);

-- Location: FF_X23_Y1_N13
\state.clear_display\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.display_on~q\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.clear_display~q\);

-- Location: LCCOMB_X23_Y1_N28
\state.entry_mode_set~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.entry_mode_set~feeder_combout\ = \state.clear_display~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.clear_display~q\,
	combout => \state.entry_mode_set~feeder_combout\);

-- Location: FF_X23_Y1_N29
\state.entry_mode_set\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.entry_mode_set~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.entry_mode_set~q\);

-- Location: FF_X23_Y1_N11
\state.write_t\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.entry_mode_set~q\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.write_t~q\);

-- Location: LCCOMB_X21_Y1_N6
\state.write_e~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.write_e~feeder_combout\ = \state.write_t~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.write_t~q\,
	combout => \state.write_e~feeder_combout\);

-- Location: FF_X21_Y1_N7
\state.write_e\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.write_e~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.write_e~q\);

-- Location: LCCOMB_X23_Y1_N20
\state.write_space~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.write_space~feeder_combout\ = \state.write_e~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.write_e~q\,
	combout => \state.write_space~feeder_combout\);

-- Location: FF_X23_Y1_N21
\state.write_space\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.write_space~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.write_space~q\);

-- Location: LCCOMB_X23_Y1_N4
\state.write_a~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.write_a~feeder_combout\ = \state.write_space~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \state.write_space~q\,
	combout => \state.write_a~feeder_combout\);

-- Location: FF_X23_Y1_N5
\state.write_a\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.write_a~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.write_a~q\);

-- Location: FF_X23_Y1_N19
\state.write_m\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \state.write_a~q\,
	sload => VCC,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.write_m~q\);

-- Location: LCCOMB_X23_Y1_N6
\state.write_o~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.write_o~feeder_combout\ = \state.write_m~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.write_m~q\,
	combout => \state.write_o~feeder_combout\);

-- Location: FF_X23_Y1_N7
\state.write_o\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.write_o~feeder_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.write_o~q\);

-- Location: LCCOMB_X23_Y1_N18
\WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~0_combout\ = (!\state.write_o~q\ & (!\state.write_e~q\ & (!\state.write_m~q\ & !\state.write_t~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_o~q\,
	datab => \state.write_e~q\,
	datac => \state.write_m~q\,
	datad => \state.write_t~q\,
	combout => \WideOr0~0_combout\);

-- Location: LCCOMB_X23_Y1_N2
WideOr0 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~combout\ = (\state.write_space~q\) # ((\state.write_a~q\) # (!\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.write_space~q\,
	datac => \state.write_a~q\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~combout\);

-- Location: FF_X23_Y1_N3
\rs~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr0~combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rs~reg0_q\);

-- Location: LCCOMB_X23_Y1_N12
\WideOr6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~0_combout\ = (\state.write_m~q\) # ((\state.write_e~q\) # ((\state.clear_display~q\) # (\state.write_o~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_m~q\,
	datab => \state.write_e~q\,
	datac => \state.clear_display~q\,
	datad => \state.write_o~q\,
	combout => \WideOr6~0_combout\);

-- Location: LCCOMB_X23_Y1_N8
WideOr6 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr6~combout\ = (\state.write_a~q\) # (\WideOr6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.write_a~q\,
	datad => \WideOr6~0_combout\,
	combout => \WideOr6~combout\);

-- Location: FF_X23_Y1_N9
\data[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr6~combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data[0]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N24
\data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \data~0_combout\ = (\state.entry_mode_set~q\) # (\state.write_o~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.entry_mode_set~q\,
	datad => \state.write_o~q\,
	combout => \data~0_combout\);

-- Location: FF_X23_Y1_N25
\data[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \data~0_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data[1]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N16
WideOr5 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~combout\ = (\state.display_on~q\) # ((\state.entry_mode_set~q\) # (!\WideOr0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \state.display_on~q\,
	datac => \state.entry_mode_set~q\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr5~combout\);

-- Location: FF_X23_Y1_N17
\data[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr5~combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data[2]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N26
\WideOr4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr4~0_combout\ = (\state.function_set_4~q\) # ((\state.display_on~q\) # ((\state.write_m~q\) # (\state.write_o~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.function_set_4~q\,
	datab => \state.display_on~q\,
	datac => \state.write_m~q\,
	datad => \state.write_o~q\,
	combout => \WideOr4~0_combout\);

-- Location: FF_X23_Y1_N27
\data[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr4~0_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data[3]~reg0_q\);

-- Location: LCCOMB_X21_Y1_N20
\WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr3~0_combout\ = (\state.function_set_2~q\) # ((\state.function_set_1~q\) # ((\state.write_t~q\) # (!\state.init~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.function_set_2~q\,
	datab => \state.function_set_1~q\,
	datac => \state.init~q\,
	datad => \state.write_t~q\,
	combout => \WideOr3~0_combout\);

-- Location: FF_X21_Y1_N21
\data[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr3~0_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data[4]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N10
\WideOr5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr5~2_combout\ = (!\state.entry_mode_set~q\ & !\state.display_on~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.entry_mode_set~q\,
	datad => \state.display_on~q\,
	combout => \WideOr5~2_combout\);

-- Location: LCCOMB_X23_Y1_N14
\state.finish~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \state.finish~0_combout\ = (\state.finish~q\) # ((\state.write_o~q\ & !\LessThan0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.write_o~q\,
	datac => \state.finish~q\,
	datad => \LessThan0~5_combout\,
	combout => \state.finish~0_combout\);

-- Location: FF_X23_Y1_N15
\state.finish\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \state.finish~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.finish~q\);

-- Location: LCCOMB_X23_Y1_N30
WideOr2 : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr2~combout\ = (\WideOr5~2_combout\ & (!\state.clear_display~q\ & (!\state.finish~q\ & !\state.write_t~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \WideOr5~2_combout\,
	datab => \state.clear_display~q\,
	datac => \state.finish~q\,
	datad => \state.write_t~q\,
	combout => \WideOr2~combout\);

-- Location: FF_X23_Y1_N31
\data[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr2~combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data[5]~reg0_q\);

-- Location: LCCOMB_X23_Y1_N22
\WideOr0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \WideOr0~1_combout\ = (\state.write_a~q\) # (!\WideOr0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.write_a~q\,
	datad => \WideOr0~0_combout\,
	combout => \WideOr0~1_combout\);

-- Location: FF_X23_Y1_N23
\data[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \WideOr0~1_combout\,
	ena => \ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \data[6]~reg0_q\);

ww_rs <= \rs~output_o\;

ww_rw <= \rw~output_o\;

ww_e <= \e~output_o\;

ww_data(0) <= \data[0]~output_o\;

ww_data(1) <= \data[1]~output_o\;

ww_data(2) <= \data[2]~output_o\;

ww_data(3) <= \data[3]~output_o\;

ww_data(4) <= \data[4]~output_o\;

ww_data(5) <= \data[5]~output_o\;

ww_data(6) <= \data[6]~output_o\;

ww_data(7) <= \data[7]~output_o\;
END structure;


