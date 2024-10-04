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

-- DATE "09/22/2024 13:46:56"

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

ENTITY 	sincrono IS
    PORT (
	CLK : IN std_logic;
	D : IN std_logic_vector(1 DOWNTO 0);
	Q : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END sincrono;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF sincrono IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_D : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_DIV|clk_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_DIV|count[0]~25_combout\ : std_logic;
SIGNAL \U_DIV|count[0]~26\ : std_logic;
SIGNAL \U_DIV|count[1]~27_combout\ : std_logic;
SIGNAL \U_DIV|count[1]~28\ : std_logic;
SIGNAL \U_DIV|count[2]~29_combout\ : std_logic;
SIGNAL \U_DIV|count[2]~30\ : std_logic;
SIGNAL \U_DIV|count[3]~31_combout\ : std_logic;
SIGNAL \U_DIV|count[3]~32\ : std_logic;
SIGNAL \U_DIV|count[4]~33_combout\ : std_logic;
SIGNAL \U_DIV|count[4]~34\ : std_logic;
SIGNAL \U_DIV|count[5]~35_combout\ : std_logic;
SIGNAL \U_DIV|count[5]~36\ : std_logic;
SIGNAL \U_DIV|count[6]~37_combout\ : std_logic;
SIGNAL \U_DIV|count[6]~38\ : std_logic;
SIGNAL \U_DIV|count[7]~39_combout\ : std_logic;
SIGNAL \U_DIV|count[7]~40\ : std_logic;
SIGNAL \U_DIV|count[8]~41_combout\ : std_logic;
SIGNAL \U_DIV|count[8]~42\ : std_logic;
SIGNAL \U_DIV|count[9]~43_combout\ : std_logic;
SIGNAL \U_DIV|count[9]~44\ : std_logic;
SIGNAL \U_DIV|count[10]~45_combout\ : std_logic;
SIGNAL \U_DIV|count[10]~46\ : std_logic;
SIGNAL \U_DIV|count[11]~47_combout\ : std_logic;
SIGNAL \U_DIV|count[11]~48\ : std_logic;
SIGNAL \U_DIV|count[12]~49_combout\ : std_logic;
SIGNAL \U_DIV|count[12]~50\ : std_logic;
SIGNAL \U_DIV|count[13]~51_combout\ : std_logic;
SIGNAL \U_DIV|count[13]~52\ : std_logic;
SIGNAL \U_DIV|count[14]~53_combout\ : std_logic;
SIGNAL \U_DIV|count[14]~54\ : std_logic;
SIGNAL \U_DIV|count[15]~55_combout\ : std_logic;
SIGNAL \U_DIV|count[15]~56\ : std_logic;
SIGNAL \U_DIV|count[16]~57_combout\ : std_logic;
SIGNAL \U_DIV|count[16]~58\ : std_logic;
SIGNAL \U_DIV|count[17]~59_combout\ : std_logic;
SIGNAL \U_DIV|count[17]~60\ : std_logic;
SIGNAL \U_DIV|count[18]~61_combout\ : std_logic;
SIGNAL \U_DIV|count[18]~62\ : std_logic;
SIGNAL \U_DIV|count[19]~63_combout\ : std_logic;
SIGNAL \U_DIV|count[19]~64\ : std_logic;
SIGNAL \U_DIV|count[20]~65_combout\ : std_logic;
SIGNAL \U_DIV|count[20]~66\ : std_logic;
SIGNAL \U_DIV|count[21]~67_combout\ : std_logic;
SIGNAL \U_DIV|count[21]~68\ : std_logic;
SIGNAL \U_DIV|count[22]~69_combout\ : std_logic;
SIGNAL \U_DIV|LessThan0~0_combout\ : std_logic;
SIGNAL \U_DIV|count[22]~70\ : std_logic;
SIGNAL \U_DIV|count[23]~71_combout\ : std_logic;
SIGNAL \U_DIV|count[23]~72\ : std_logic;
SIGNAL \U_DIV|count[24]~73_combout\ : std_logic;
SIGNAL \U_DIV|LessThan0~1_combout\ : std_logic;
SIGNAL \U_DIV|LessThan0~4_combout\ : std_logic;
SIGNAL \U_DIV|LessThan0~5_combout\ : std_logic;
SIGNAL \U_DIV|LessThan0~2_combout\ : std_logic;
SIGNAL \U_DIV|LessThan0~3_combout\ : std_logic;
SIGNAL \U_DIV|LessThan0~6_combout\ : std_logic;
SIGNAL \U_DIV|LessThan0~7_combout\ : std_logic;
SIGNAL \U_DIV|LessThan0~8_combout\ : std_logic;
SIGNAL \U_DIV|clk_reg~0_combout\ : std_logic;
SIGNAL \U_DIV|clk_reg~feeder_combout\ : std_logic;
SIGNAL \U_DIV|clk_reg~q\ : std_logic;
SIGNAL \U_DIV|clk_reg~clkctrl_outclk\ : std_logic;
SIGNAL \D[0]~input_o\ : std_logic;
SIGNAL \TFF0|Q_int~0_combout\ : std_logic;
SIGNAL \TFF0|Q_int~q\ : std_logic;
SIGNAL \D[1]~input_o\ : std_logic;
SIGNAL \TFF1|Q_int~0_combout\ : std_logic;
SIGNAL \TFF1|Q_int~q\ : std_logic;
SIGNAL \U_DIV|count\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \U_DIV|ALT_INV_LessThan0~8_combout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_D <= D;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_DIV|clk_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_DIV|clk_reg~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\U_DIV|ALT_INV_LessThan0~8_combout\ <= NOT \U_DIV|LessThan0~8_combout\;

-- Location: IOOBUF_X34_Y9_N9
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TFF0|Q_int~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \TFF1|Q_int~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\CLK~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G2
\CLK~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X5_Y7_N8
\U_DIV|count[0]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[0]~25_combout\ = \U_DIV|count\(0) $ (VCC)
-- \U_DIV|count[0]~26\ = CARRY(\U_DIV|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(0),
	datad => VCC,
	combout => \U_DIV|count[0]~25_combout\,
	cout => \U_DIV|count[0]~26\);

-- Location: FF_X5_Y7_N9
\U_DIV|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[0]~25_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(0));

-- Location: LCCOMB_X5_Y7_N10
\U_DIV|count[1]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[1]~27_combout\ = (\U_DIV|count\(1) & (!\U_DIV|count[0]~26\)) # (!\U_DIV|count\(1) & ((\U_DIV|count[0]~26\) # (GND)))
-- \U_DIV|count[1]~28\ = CARRY((!\U_DIV|count[0]~26\) # (!\U_DIV|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(1),
	datad => VCC,
	cin => \U_DIV|count[0]~26\,
	combout => \U_DIV|count[1]~27_combout\,
	cout => \U_DIV|count[1]~28\);

-- Location: FF_X5_Y7_N11
\U_DIV|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[1]~27_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(1));

-- Location: LCCOMB_X5_Y7_N12
\U_DIV|count[2]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[2]~29_combout\ = (\U_DIV|count\(2) & (\U_DIV|count[1]~28\ $ (GND))) # (!\U_DIV|count\(2) & (!\U_DIV|count[1]~28\ & VCC))
-- \U_DIV|count[2]~30\ = CARRY((\U_DIV|count\(2) & !\U_DIV|count[1]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(2),
	datad => VCC,
	cin => \U_DIV|count[1]~28\,
	combout => \U_DIV|count[2]~29_combout\,
	cout => \U_DIV|count[2]~30\);

-- Location: FF_X5_Y7_N13
\U_DIV|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[2]~29_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(2));

-- Location: LCCOMB_X5_Y7_N14
\U_DIV|count[3]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[3]~31_combout\ = (\U_DIV|count\(3) & (!\U_DIV|count[2]~30\)) # (!\U_DIV|count\(3) & ((\U_DIV|count[2]~30\) # (GND)))
-- \U_DIV|count[3]~32\ = CARRY((!\U_DIV|count[2]~30\) # (!\U_DIV|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(3),
	datad => VCC,
	cin => \U_DIV|count[2]~30\,
	combout => \U_DIV|count[3]~31_combout\,
	cout => \U_DIV|count[3]~32\);

-- Location: FF_X5_Y7_N15
\U_DIV|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[3]~31_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(3));

-- Location: LCCOMB_X5_Y7_N16
\U_DIV|count[4]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[4]~33_combout\ = (\U_DIV|count\(4) & (\U_DIV|count[3]~32\ $ (GND))) # (!\U_DIV|count\(4) & (!\U_DIV|count[3]~32\ & VCC))
-- \U_DIV|count[4]~34\ = CARRY((\U_DIV|count\(4) & !\U_DIV|count[3]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(4),
	datad => VCC,
	cin => \U_DIV|count[3]~32\,
	combout => \U_DIV|count[4]~33_combout\,
	cout => \U_DIV|count[4]~34\);

-- Location: FF_X5_Y7_N17
\U_DIV|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[4]~33_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(4));

-- Location: LCCOMB_X5_Y7_N18
\U_DIV|count[5]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[5]~35_combout\ = (\U_DIV|count\(5) & (!\U_DIV|count[4]~34\)) # (!\U_DIV|count\(5) & ((\U_DIV|count[4]~34\) # (GND)))
-- \U_DIV|count[5]~36\ = CARRY((!\U_DIV|count[4]~34\) # (!\U_DIV|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(5),
	datad => VCC,
	cin => \U_DIV|count[4]~34\,
	combout => \U_DIV|count[5]~35_combout\,
	cout => \U_DIV|count[5]~36\);

-- Location: FF_X5_Y7_N19
\U_DIV|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[5]~35_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(5));

-- Location: LCCOMB_X5_Y7_N20
\U_DIV|count[6]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[6]~37_combout\ = (\U_DIV|count\(6) & (\U_DIV|count[5]~36\ $ (GND))) # (!\U_DIV|count\(6) & (!\U_DIV|count[5]~36\ & VCC))
-- \U_DIV|count[6]~38\ = CARRY((\U_DIV|count\(6) & !\U_DIV|count[5]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(6),
	datad => VCC,
	cin => \U_DIV|count[5]~36\,
	combout => \U_DIV|count[6]~37_combout\,
	cout => \U_DIV|count[6]~38\);

-- Location: FF_X5_Y7_N21
\U_DIV|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[6]~37_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(6));

-- Location: LCCOMB_X5_Y7_N22
\U_DIV|count[7]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[7]~39_combout\ = (\U_DIV|count\(7) & (!\U_DIV|count[6]~38\)) # (!\U_DIV|count\(7) & ((\U_DIV|count[6]~38\) # (GND)))
-- \U_DIV|count[7]~40\ = CARRY((!\U_DIV|count[6]~38\) # (!\U_DIV|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(7),
	datad => VCC,
	cin => \U_DIV|count[6]~38\,
	combout => \U_DIV|count[7]~39_combout\,
	cout => \U_DIV|count[7]~40\);

-- Location: FF_X5_Y7_N23
\U_DIV|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[7]~39_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(7));

-- Location: LCCOMB_X5_Y7_N24
\U_DIV|count[8]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[8]~41_combout\ = (\U_DIV|count\(8) & (\U_DIV|count[7]~40\ $ (GND))) # (!\U_DIV|count\(8) & (!\U_DIV|count[7]~40\ & VCC))
-- \U_DIV|count[8]~42\ = CARRY((\U_DIV|count\(8) & !\U_DIV|count[7]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(8),
	datad => VCC,
	cin => \U_DIV|count[7]~40\,
	combout => \U_DIV|count[8]~41_combout\,
	cout => \U_DIV|count[8]~42\);

-- Location: FF_X5_Y7_N25
\U_DIV|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[8]~41_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(8));

-- Location: LCCOMB_X5_Y7_N26
\U_DIV|count[9]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[9]~43_combout\ = (\U_DIV|count\(9) & (!\U_DIV|count[8]~42\)) # (!\U_DIV|count\(9) & ((\U_DIV|count[8]~42\) # (GND)))
-- \U_DIV|count[9]~44\ = CARRY((!\U_DIV|count[8]~42\) # (!\U_DIV|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(9),
	datad => VCC,
	cin => \U_DIV|count[8]~42\,
	combout => \U_DIV|count[9]~43_combout\,
	cout => \U_DIV|count[9]~44\);

-- Location: FF_X5_Y7_N27
\U_DIV|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[9]~43_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(9));

-- Location: LCCOMB_X5_Y7_N28
\U_DIV|count[10]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[10]~45_combout\ = (\U_DIV|count\(10) & (\U_DIV|count[9]~44\ $ (GND))) # (!\U_DIV|count\(10) & (!\U_DIV|count[9]~44\ & VCC))
-- \U_DIV|count[10]~46\ = CARRY((\U_DIV|count\(10) & !\U_DIV|count[9]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(10),
	datad => VCC,
	cin => \U_DIV|count[9]~44\,
	combout => \U_DIV|count[10]~45_combout\,
	cout => \U_DIV|count[10]~46\);

-- Location: FF_X5_Y7_N29
\U_DIV|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[10]~45_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(10));

-- Location: LCCOMB_X5_Y7_N30
\U_DIV|count[11]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[11]~47_combout\ = (\U_DIV|count\(11) & (!\U_DIV|count[10]~46\)) # (!\U_DIV|count\(11) & ((\U_DIV|count[10]~46\) # (GND)))
-- \U_DIV|count[11]~48\ = CARRY((!\U_DIV|count[10]~46\) # (!\U_DIV|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(11),
	datad => VCC,
	cin => \U_DIV|count[10]~46\,
	combout => \U_DIV|count[11]~47_combout\,
	cout => \U_DIV|count[11]~48\);

-- Location: FF_X5_Y7_N31
\U_DIV|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[11]~47_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(11));

-- Location: LCCOMB_X5_Y6_N0
\U_DIV|count[12]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[12]~49_combout\ = (\U_DIV|count\(12) & (\U_DIV|count[11]~48\ $ (GND))) # (!\U_DIV|count\(12) & (!\U_DIV|count[11]~48\ & VCC))
-- \U_DIV|count[12]~50\ = CARRY((\U_DIV|count\(12) & !\U_DIV|count[11]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(12),
	datad => VCC,
	cin => \U_DIV|count[11]~48\,
	combout => \U_DIV|count[12]~49_combout\,
	cout => \U_DIV|count[12]~50\);

-- Location: FF_X4_Y7_N17
\U_DIV|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_DIV|count[12]~49_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(12));

-- Location: LCCOMB_X5_Y6_N2
\U_DIV|count[13]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[13]~51_combout\ = (\U_DIV|count\(13) & (!\U_DIV|count[12]~50\)) # (!\U_DIV|count\(13) & ((\U_DIV|count[12]~50\) # (GND)))
-- \U_DIV|count[13]~52\ = CARRY((!\U_DIV|count[12]~50\) # (!\U_DIV|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(13),
	datad => VCC,
	cin => \U_DIV|count[12]~50\,
	combout => \U_DIV|count[13]~51_combout\,
	cout => \U_DIV|count[13]~52\);

-- Location: FF_X5_Y6_N3
\U_DIV|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[13]~51_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(13));

-- Location: LCCOMB_X5_Y6_N4
\U_DIV|count[14]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[14]~53_combout\ = (\U_DIV|count\(14) & (\U_DIV|count[13]~52\ $ (GND))) # (!\U_DIV|count\(14) & (!\U_DIV|count[13]~52\ & VCC))
-- \U_DIV|count[14]~54\ = CARRY((\U_DIV|count\(14) & !\U_DIV|count[13]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(14),
	datad => VCC,
	cin => \U_DIV|count[13]~52\,
	combout => \U_DIV|count[14]~53_combout\,
	cout => \U_DIV|count[14]~54\);

-- Location: FF_X4_Y7_N7
\U_DIV|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \U_DIV|count[14]~53_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(14));

-- Location: LCCOMB_X5_Y6_N6
\U_DIV|count[15]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[15]~55_combout\ = (\U_DIV|count\(15) & (!\U_DIV|count[14]~54\)) # (!\U_DIV|count\(15) & ((\U_DIV|count[14]~54\) # (GND)))
-- \U_DIV|count[15]~56\ = CARRY((!\U_DIV|count[14]~54\) # (!\U_DIV|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(15),
	datad => VCC,
	cin => \U_DIV|count[14]~54\,
	combout => \U_DIV|count[15]~55_combout\,
	cout => \U_DIV|count[15]~56\);

-- Location: FF_X5_Y6_N7
\U_DIV|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[15]~55_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(15));

-- Location: LCCOMB_X5_Y6_N8
\U_DIV|count[16]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[16]~57_combout\ = (\U_DIV|count\(16) & (\U_DIV|count[15]~56\ $ (GND))) # (!\U_DIV|count\(16) & (!\U_DIV|count[15]~56\ & VCC))
-- \U_DIV|count[16]~58\ = CARRY((\U_DIV|count\(16) & !\U_DIV|count[15]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(16),
	datad => VCC,
	cin => \U_DIV|count[15]~56\,
	combout => \U_DIV|count[16]~57_combout\,
	cout => \U_DIV|count[16]~58\);

-- Location: FF_X5_Y6_N9
\U_DIV|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[16]~57_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(16));

-- Location: LCCOMB_X5_Y6_N10
\U_DIV|count[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[17]~59_combout\ = (\U_DIV|count\(17) & (!\U_DIV|count[16]~58\)) # (!\U_DIV|count\(17) & ((\U_DIV|count[16]~58\) # (GND)))
-- \U_DIV|count[17]~60\ = CARRY((!\U_DIV|count[16]~58\) # (!\U_DIV|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(17),
	datad => VCC,
	cin => \U_DIV|count[16]~58\,
	combout => \U_DIV|count[17]~59_combout\,
	cout => \U_DIV|count[17]~60\);

-- Location: FF_X5_Y6_N11
\U_DIV|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[17]~59_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(17));

-- Location: LCCOMB_X5_Y6_N12
\U_DIV|count[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[18]~61_combout\ = (\U_DIV|count\(18) & (\U_DIV|count[17]~60\ $ (GND))) # (!\U_DIV|count\(18) & (!\U_DIV|count[17]~60\ & VCC))
-- \U_DIV|count[18]~62\ = CARRY((\U_DIV|count\(18) & !\U_DIV|count[17]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(18),
	datad => VCC,
	cin => \U_DIV|count[17]~60\,
	combout => \U_DIV|count[18]~61_combout\,
	cout => \U_DIV|count[18]~62\);

-- Location: FF_X5_Y6_N13
\U_DIV|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[18]~61_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(18));

-- Location: LCCOMB_X5_Y6_N14
\U_DIV|count[19]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[19]~63_combout\ = (\U_DIV|count\(19) & (!\U_DIV|count[18]~62\)) # (!\U_DIV|count\(19) & ((\U_DIV|count[18]~62\) # (GND)))
-- \U_DIV|count[19]~64\ = CARRY((!\U_DIV|count[18]~62\) # (!\U_DIV|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(19),
	datad => VCC,
	cin => \U_DIV|count[18]~62\,
	combout => \U_DIV|count[19]~63_combout\,
	cout => \U_DIV|count[19]~64\);

-- Location: FF_X5_Y6_N15
\U_DIV|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[19]~63_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(19));

-- Location: LCCOMB_X5_Y6_N16
\U_DIV|count[20]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[20]~65_combout\ = (\U_DIV|count\(20) & (\U_DIV|count[19]~64\ $ (GND))) # (!\U_DIV|count\(20) & (!\U_DIV|count[19]~64\ & VCC))
-- \U_DIV|count[20]~66\ = CARRY((\U_DIV|count\(20) & !\U_DIV|count[19]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(20),
	datad => VCC,
	cin => \U_DIV|count[19]~64\,
	combout => \U_DIV|count[20]~65_combout\,
	cout => \U_DIV|count[20]~66\);

-- Location: FF_X5_Y6_N17
\U_DIV|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[20]~65_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(20));

-- Location: LCCOMB_X5_Y6_N18
\U_DIV|count[21]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[21]~67_combout\ = (\U_DIV|count\(21) & (!\U_DIV|count[20]~66\)) # (!\U_DIV|count\(21) & ((\U_DIV|count[20]~66\) # (GND)))
-- \U_DIV|count[21]~68\ = CARRY((!\U_DIV|count[20]~66\) # (!\U_DIV|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(21),
	datad => VCC,
	cin => \U_DIV|count[20]~66\,
	combout => \U_DIV|count[21]~67_combout\,
	cout => \U_DIV|count[21]~68\);

-- Location: FF_X5_Y6_N19
\U_DIV|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[21]~67_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(21));

-- Location: LCCOMB_X5_Y6_N20
\U_DIV|count[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[22]~69_combout\ = (\U_DIV|count\(22) & (\U_DIV|count[21]~68\ $ (GND))) # (!\U_DIV|count\(22) & (!\U_DIV|count[21]~68\ & VCC))
-- \U_DIV|count[22]~70\ = CARRY((\U_DIV|count\(22) & !\U_DIV|count[21]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(22),
	datad => VCC,
	cin => \U_DIV|count[21]~68\,
	combout => \U_DIV|count[22]~69_combout\,
	cout => \U_DIV|count[22]~70\);

-- Location: FF_X5_Y6_N21
\U_DIV|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[22]~69_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(22));

-- Location: LCCOMB_X5_Y6_N30
\U_DIV|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|LessThan0~0_combout\ = ((!\U_DIV|count\(22)) # (!\U_DIV|count\(21))) # (!\U_DIV|count\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(20),
	datac => \U_DIV|count\(21),
	datad => \U_DIV|count\(22),
	combout => \U_DIV|LessThan0~0_combout\);

-- Location: LCCOMB_X5_Y6_N22
\U_DIV|count[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[23]~71_combout\ = (\U_DIV|count\(23) & (!\U_DIV|count[22]~70\)) # (!\U_DIV|count\(23) & ((\U_DIV|count[22]~70\) # (GND)))
-- \U_DIV|count[23]~72\ = CARRY((!\U_DIV|count[22]~70\) # (!\U_DIV|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(23),
	datad => VCC,
	cin => \U_DIV|count[22]~70\,
	combout => \U_DIV|count[23]~71_combout\,
	cout => \U_DIV|count[23]~72\);

-- Location: FF_X5_Y6_N23
\U_DIV|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[23]~71_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(23));

-- Location: LCCOMB_X5_Y6_N24
\U_DIV|count[24]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|count[24]~73_combout\ = \U_DIV|count[23]~72\ $ (!\U_DIV|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_DIV|count\(24),
	cin => \U_DIV|count[23]~72\,
	combout => \U_DIV|count[24]~73_combout\);

-- Location: FF_X5_Y6_N25
\U_DIV|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|count[24]~73_combout\,
	sclr => \U_DIV|ALT_INV_LessThan0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|count\(24));

-- Location: LCCOMB_X5_Y6_N28
\U_DIV|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|LessThan0~1_combout\ = (((!\U_DIV|count\(16) & !\U_DIV|count\(17))) # (!\U_DIV|count\(19))) # (!\U_DIV|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(18),
	datab => \U_DIV|count\(19),
	datac => \U_DIV|count\(16),
	datad => \U_DIV|count\(17),
	combout => \U_DIV|LessThan0~1_combout\);

-- Location: LCCOMB_X6_Y7_N4
\U_DIV|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|LessThan0~4_combout\ = (!\U_DIV|count\(9) & (!\U_DIV|count\(7) & (!\U_DIV|count\(10) & !\U_DIV|count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(9),
	datab => \U_DIV|count\(7),
	datac => \U_DIV|count\(10),
	datad => \U_DIV|count\(8),
	combout => \U_DIV|LessThan0~4_combout\);

-- Location: LCCOMB_X5_Y7_N4
\U_DIV|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|LessThan0~5_combout\ = (((!\U_DIV|count\(13)) # (!\U_DIV|count\(12))) # (!\U_DIV|count\(14))) # (!\U_DIV|count\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(11),
	datab => \U_DIV|count\(14),
	datac => \U_DIV|count\(12),
	datad => \U_DIV|count\(13),
	combout => \U_DIV|LessThan0~5_combout\);

-- Location: LCCOMB_X6_Y7_N28
\U_DIV|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|LessThan0~2_combout\ = (((!\U_DIV|count\(1)) # (!\U_DIV|count\(0))) # (!\U_DIV|count\(2))) # (!\U_DIV|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(3),
	datab => \U_DIV|count\(2),
	datac => \U_DIV|count\(0),
	datad => \U_DIV|count\(1),
	combout => \U_DIV|LessThan0~2_combout\);

-- Location: LCCOMB_X6_Y7_N6
\U_DIV|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|LessThan0~3_combout\ = ((\U_DIV|LessThan0~2_combout\) # (!\U_DIV|count\(4))) # (!\U_DIV|count\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DIV|count\(5),
	datac => \U_DIV|count\(4),
	datad => \U_DIV|LessThan0~2_combout\,
	combout => \U_DIV|LessThan0~3_combout\);

-- Location: LCCOMB_X5_Y7_N2
\U_DIV|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|LessThan0~6_combout\ = (\U_DIV|LessThan0~5_combout\) # ((\U_DIV|LessThan0~4_combout\ & (!\U_DIV|count\(6) & \U_DIV|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|LessThan0~4_combout\,
	datab => \U_DIV|count\(6),
	datac => \U_DIV|LessThan0~5_combout\,
	datad => \U_DIV|LessThan0~3_combout\,
	combout => \U_DIV|LessThan0~6_combout\);

-- Location: LCCOMB_X5_Y7_N0
\U_DIV|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|LessThan0~7_combout\ = (\U_DIV|LessThan0~1_combout\) # ((!\U_DIV|count\(17) & (!\U_DIV|count\(15) & \U_DIV|LessThan0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|count\(17),
	datab => \U_DIV|count\(15),
	datac => \U_DIV|LessThan0~1_combout\,
	datad => \U_DIV|LessThan0~6_combout\,
	combout => \U_DIV|LessThan0~7_combout\);

-- Location: LCCOMB_X5_Y7_N6
\U_DIV|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|LessThan0~8_combout\ = ((!\U_DIV|count\(23) & ((\U_DIV|LessThan0~0_combout\) # (\U_DIV|LessThan0~7_combout\)))) # (!\U_DIV|count\(24))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|LessThan0~0_combout\,
	datab => \U_DIV|count\(23),
	datac => \U_DIV|count\(24),
	datad => \U_DIV|LessThan0~7_combout\,
	combout => \U_DIV|LessThan0~8_combout\);

-- Location: LCCOMB_X1_Y7_N14
\U_DIV|clk_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|clk_reg~0_combout\ = \U_DIV|clk_reg~q\ $ (!\U_DIV|LessThan0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIV|clk_reg~q\,
	datad => \U_DIV|LessThan0~8_combout\,
	combout => \U_DIV|clk_reg~0_combout\);

-- Location: LCCOMB_X1_Y7_N10
\U_DIV|clk_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIV|clk_reg~feeder_combout\ = \U_DIV|clk_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \U_DIV|clk_reg~0_combout\,
	combout => \U_DIV|clk_reg~feeder_combout\);

-- Location: FF_X1_Y7_N11
\U_DIV|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIV|clk_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIV|clk_reg~q\);

-- Location: CLKCTRL_G1
\U_DIV|clk_reg~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_DIV|clk_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_DIV|clk_reg~clkctrl_outclk\);

-- Location: IOIBUF_X34_Y12_N15
\D[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(0),
	o => \D[0]~input_o\);

-- Location: LCCOMB_X33_Y12_N8
\TFF0|Q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TFF0|Q_int~0_combout\ = \TFF0|Q_int~q\ $ (\D[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TFF0|Q_int~q\,
	datad => \D[0]~input_o\,
	combout => \TFF0|Q_int~0_combout\);

-- Location: FF_X33_Y12_N9
\TFF0|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_DIV|clk_reg~clkctrl_outclk\,
	d => \TFF0|Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFF0|Q_int~q\);

-- Location: IOIBUF_X34_Y12_N22
\D[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D(1),
	o => \D[1]~input_o\);

-- Location: LCCOMB_X33_Y12_N14
\TFF1|Q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \TFF1|Q_int~0_combout\ = \TFF1|Q_int~q\ $ (\D[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \TFF1|Q_int~q\,
	datad => \D[1]~input_o\,
	combout => \TFF1|Q_int~0_combout\);

-- Location: FF_X33_Y12_N15
\TFF1|Q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_DIV|clk_reg~clkctrl_outclk\,
	d => \TFF1|Q_int~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \TFF1|Q_int~q\);

ww_Q(0) <= \Q[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;
END structure;


