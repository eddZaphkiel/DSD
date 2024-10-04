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

-- DATE "09/25/2024 00:14:31"

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

ENTITY 	decoregistro IS
    PORT (
	CLK : IN std_logic;
	COLUMNAS : IN std_logic_vector(3 DOWNTO 0);
	FILAS : BUFFER std_logic_vector(3 DOWNTO 0);
	SEGMENTOS : BUFFER std_logic_vector(6 DOWNTO 0);
	KEY_PRESSED : BUFFER std_logic;
	SET : IN std_logic;
	CLR : IN std_logic;
	SEGMENTO : BUFFER std_logic;
	CTRL : BUFFER std_logic
	);
END decoregistro;

-- Design Ports Information
-- FILAS[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FILAS[1]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FILAS[2]	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FILAS[3]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTOS[0]	=>  Location: PIN_128,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTOS[1]	=>  Location: PIN_121,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTOS[2]	=>  Location: PIN_125,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTOS[3]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTOS[4]	=>  Location: PIN_132,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTOS[5]	=>  Location: PIN_126,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTOS[6]	=>  Location: PIN_124,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY_PRESSED	=>  Location: PIN_28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SEGMENTO	=>  Location: PIN_137,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTRL	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COLUMNAS[0]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COLUMNAS[3]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COLUMNAS[2]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COLUMNAS[1]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF decoregistro IS
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
SIGNAL ww_COLUMNAS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FILAS : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SEGMENTOS : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_KEY_PRESSED : std_logic;
SIGNAL ww_SET : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_SEGMENTO : std_logic;
SIGNAL ww_CTRL : std_logic;
SIGNAL \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \keypad_inst|Div1ms|clk_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \keypad_inst|Div10ms|clk_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FILAS[0]~output_o\ : std_logic;
SIGNAL \FILAS[1]~output_o\ : std_logic;
SIGNAL \FILAS[2]~output_o\ : std_logic;
SIGNAL \FILAS[3]~output_o\ : std_logic;
SIGNAL \SEGMENTOS[0]~output_o\ : std_logic;
SIGNAL \SEGMENTOS[1]~output_o\ : std_logic;
SIGNAL \SEGMENTOS[2]~output_o\ : std_logic;
SIGNAL \SEGMENTOS[3]~output_o\ : std_logic;
SIGNAL \SEGMENTOS[4]~output_o\ : std_logic;
SIGNAL \SEGMENTOS[5]~output_o\ : std_logic;
SIGNAL \SEGMENTOS[6]~output_o\ : std_logic;
SIGNAL \KEY_PRESSED~output_o\ : std_logic;
SIGNAL \SEGMENTO~output_o\ : std_logic;
SIGNAL \CTRL~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[0]~18_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[0]~19\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[1]~20_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[1]~21\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[2]~22_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[2]~23\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[3]~24_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[3]~25\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[4]~26_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[4]~27\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[5]~28_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[5]~29\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[6]~30_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[6]~31\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[7]~32_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[7]~33\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[8]~34_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[8]~35\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[9]~36_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[9]~37\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[10]~38_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[10]~39\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[11]~40_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[11]~41\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[12]~42_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[12]~43\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[13]~44_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[13]~45\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[14]~46_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[14]~47\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[15]~48_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[15]~49\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[16]~50_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[16]~51\ : std_logic;
SIGNAL \keypad_inst|Div10ms|count[17]~52_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|LessThan0~0_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|LessThan0~2_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|LessThan0~3_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|LessThan0~1_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|LessThan0~4_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|LessThan0~5_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|clk_reg~0_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|clk_reg~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|Div10ms|clk_reg~q\ : std_logic;
SIGNAL \keypad_inst|Div10ms|clk_reg~clkctrl_outclk\ : std_logic;
SIGNAL \keypad_inst|FILA[0]~1_combout\ : std_logic;
SIGNAL \keypad_inst|FILA[1]~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux2~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux2~1_combout\ : std_logic;
SIGNAL \keypad_inst|Mux2~2_combout\ : std_logic;
SIGNAL \keypad_inst|Mux0~0_combout\ : std_logic;
SIGNAL \CLR~input_o\ : std_logic;
SIGNAL \debouncer_clr_inst|count[0]~20_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[19]~42_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[0]~21\ : std_logic;
SIGNAL \debouncer_clr_inst|count[1]~22_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[1]~23\ : std_logic;
SIGNAL \debouncer_clr_inst|count[2]~24_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[2]~25\ : std_logic;
SIGNAL \debouncer_clr_inst|count[3]~26_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[3]~27\ : std_logic;
SIGNAL \debouncer_clr_inst|count[4]~28_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[4]~29\ : std_logic;
SIGNAL \debouncer_clr_inst|count[5]~30_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[5]~31\ : std_logic;
SIGNAL \debouncer_clr_inst|count[6]~32_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[6]~33\ : std_logic;
SIGNAL \debouncer_clr_inst|count[7]~34_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[7]~35\ : std_logic;
SIGNAL \debouncer_clr_inst|count[8]~36_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[8]~37\ : std_logic;
SIGNAL \debouncer_clr_inst|count[9]~38_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[9]~39\ : std_logic;
SIGNAL \debouncer_clr_inst|count[10]~40_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[10]~41\ : std_logic;
SIGNAL \debouncer_clr_inst|count[11]~43_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[11]~44\ : std_logic;
SIGNAL \debouncer_clr_inst|count[12]~45_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[12]~46\ : std_logic;
SIGNAL \debouncer_clr_inst|count[13]~47_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[13]~48\ : std_logic;
SIGNAL \debouncer_clr_inst|count[14]~49_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[14]~50\ : std_logic;
SIGNAL \debouncer_clr_inst|count[15]~51_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[15]~52\ : std_logic;
SIGNAL \debouncer_clr_inst|count[16]~53_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[16]~54\ : std_logic;
SIGNAL \debouncer_clr_inst|count[17]~55_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[17]~56\ : std_logic;
SIGNAL \debouncer_clr_inst|count[18]~57_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|count[18]~58\ : std_logic;
SIGNAL \debouncer_clr_inst|count[19]~59_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|button_out~0_combout\ : std_logic;
SIGNAL \debouncer_clr_inst|button_out~q\ : std_logic;
SIGNAL \SET~input_o\ : std_logic;
SIGNAL \debouncer_set_inst|count[0]~24_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[14]~68_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[0]~25\ : std_logic;
SIGNAL \debouncer_set_inst|count[1]~26_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[1]~27\ : std_logic;
SIGNAL \debouncer_set_inst|count[2]~28_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[2]~29\ : std_logic;
SIGNAL \debouncer_set_inst|count[3]~30_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[3]~31\ : std_logic;
SIGNAL \debouncer_set_inst|count[4]~32_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[4]~33\ : std_logic;
SIGNAL \debouncer_set_inst|count[5]~34_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[5]~35\ : std_logic;
SIGNAL \debouncer_set_inst|count[6]~36_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[6]~37\ : std_logic;
SIGNAL \debouncer_set_inst|count[7]~38_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[7]~39\ : std_logic;
SIGNAL \debouncer_set_inst|count[8]~40_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[8]~41\ : std_logic;
SIGNAL \debouncer_set_inst|count[9]~42_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[9]~43\ : std_logic;
SIGNAL \debouncer_set_inst|count[10]~44_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[10]~45\ : std_logic;
SIGNAL \debouncer_set_inst|count[11]~46_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[11]~47\ : std_logic;
SIGNAL \debouncer_set_inst|count[12]~48_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[12]~49\ : std_logic;
SIGNAL \debouncer_set_inst|count[13]~50_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[13]~51\ : std_logic;
SIGNAL \debouncer_set_inst|count[14]~52_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[14]~53\ : std_logic;
SIGNAL \debouncer_set_inst|count[15]~54_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[15]~55\ : std_logic;
SIGNAL \debouncer_set_inst|count[16]~56_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[16]~57\ : std_logic;
SIGNAL \debouncer_set_inst|count[17]~58_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[17]~59\ : std_logic;
SIGNAL \debouncer_set_inst|count[18]~60_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[18]~61\ : std_logic;
SIGNAL \debouncer_set_inst|count[19]~62_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[19]~63\ : std_logic;
SIGNAL \debouncer_set_inst|count[20]~64_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[20]~65\ : std_logic;
SIGNAL \debouncer_set_inst|count[21]~66_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[21]~67\ : std_logic;
SIGNAL \debouncer_set_inst|count[22]~69_combout\ : std_logic;
SIGNAL \debouncer_set_inst|count[22]~70\ : std_logic;
SIGNAL \debouncer_set_inst|count[23]~71_combout\ : std_logic;
SIGNAL \debouncer_set_inst|LessThan0~5_combout\ : std_logic;
SIGNAL \debouncer_set_inst|LessThan0~3_combout\ : std_logic;
SIGNAL \debouncer_set_inst|LessThan0~1_combout\ : std_logic;
SIGNAL \debouncer_set_inst|LessThan0~2_combout\ : std_logic;
SIGNAL \debouncer_set_inst|LessThan0~0_combout\ : std_logic;
SIGNAL \debouncer_set_inst|LessThan0~4_combout\ : std_logic;
SIGNAL \debouncer_set_inst|LessThan0~6_combout\ : std_logic;
SIGNAL \debouncer_set_inst|button_out~0_combout\ : std_logic;
SIGNAL \debouncer_set_inst|button_out~q\ : std_logic;
SIGNAL \controler_inst|q_reg~0_combout\ : std_logic;
SIGNAL \controler_inst|q_reg~q\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[0]~15_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[13]~42\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[14]~43_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|LessThan0~0_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|LessThan0~1_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|LessThan0~2_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|LessThan0~3_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|LessThan0~4_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[0]~16\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[1]~17_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[1]~18\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[2]~19_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[2]~20\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[3]~21_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[3]~22\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[4]~23_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[4]~24\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[5]~25_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[5]~26\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[6]~27_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[6]~28\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[7]~29_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[7]~30\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[8]~31_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[8]~32\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[9]~33_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[9]~34\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[10]~35_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[10]~36\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[11]~37_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[11]~38\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[12]~39_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[12]~40\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count[13]~41_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|clk_reg~0_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|clk_reg~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|Div1ms|clk_reg~q\ : std_logic;
SIGNAL \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\ : std_logic;
SIGNAL \COLUMNAS[2]~input_o\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][0]~q\ : std_logic;
SIGNAL \keypad_inst|Mux24~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux24~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][1]~q\ : std_logic;
SIGNAL \keypad_inst|Mux23~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux23~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][2]~q\ : std_logic;
SIGNAL \keypad_inst|Mux22~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux22~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][3]~q\ : std_logic;
SIGNAL \keypad_inst|Equal5~0_combout\ : std_logic;
SIGNAL \COLUMNAS[3]~input_o\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][0]~q\ : std_logic;
SIGNAL \keypad_inst|Mux31~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux31~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][1]~q\ : std_logic;
SIGNAL \keypad_inst|Mux30~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux30~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][2]~q\ : std_logic;
SIGNAL \keypad_inst|Mux29~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux29~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][3]~q\ : std_logic;
SIGNAL \keypad_inst|Equal4~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][3]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][3]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][3]~q\ : std_logic;
SIGNAL \keypad_inst|Mux28~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux28~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][4]~q\ : std_logic;
SIGNAL \keypad_inst|Mux27~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][4]~q\ : std_logic;
SIGNAL \keypad_inst|Mux27~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][5]~q\ : std_logic;
SIGNAL \keypad_inst|Mux26~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux26~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][6]~q\ : std_logic;
SIGNAL \keypad_inst|Mux25~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux25~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[4][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal4~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][3]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][3]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][3]~q\ : std_logic;
SIGNAL \keypad_inst|Mux21~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux21~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][4]~q\ : std_logic;
SIGNAL \keypad_inst|Mux20~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux20~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][5]~q\ : std_logic;
SIGNAL \keypad_inst|Mux19~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux19~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][6]~q\ : std_logic;
SIGNAL \keypad_inst|Mux18~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux18~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[5][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal5~1_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~24_combout\ : std_logic;
SIGNAL \COLUMNAS[1]~input_o\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[2][0]~q\ : std_logic;
SIGNAL \keypad_inst|Mux17~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux17~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[2][1]~q\ : std_logic;
SIGNAL \keypad_inst|Mux16~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux16~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[2][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][2]~q\ : std_logic;
SIGNAL \keypad_inst|Mux15~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][2]~q\ : std_logic;
SIGNAL \keypad_inst|Mux15~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][3]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][3]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[2][3]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][3]~q\ : std_logic;
SIGNAL \keypad_inst|Mux14~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux14~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][4]~q\ : std_logic;
SIGNAL \keypad_inst|process_2~3_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[2][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][4]~q\ : std_logic;
SIGNAL \keypad_inst|Mux13~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux13~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[2][5]~q\ : std_logic;
SIGNAL \keypad_inst|Mux12~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux12~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[2][6]~q\ : std_logic;
SIGNAL \keypad_inst|Mux11~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux11~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[6][7]~q\ : std_logic;
SIGNAL \keypad_inst|process_2~4_combout\ : std_logic;
SIGNAL \keypad_inst|Equal2~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[2][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal2~1_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~5_combout\ : std_logic;
SIGNAL \COLUMNAS[0]~input_o\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][0]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][0]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][0]~q\ : std_logic;
SIGNAL \keypad_inst|Mux10~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux10~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][1]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][1]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][1]~q\ : std_logic;
SIGNAL \keypad_inst|Mux9~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux9~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][2]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][2]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][2]~q\ : std_logic;
SIGNAL \keypad_inst|Mux8~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux8~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][3]~q\ : std_logic;
SIGNAL \keypad_inst|Equal3~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][3]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][3]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][3]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][3]~q\ : std_logic;
SIGNAL \keypad_inst|Mux7~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux7~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][4]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][4]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][4]~q\ : std_logic;
SIGNAL \keypad_inst|Mux6~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux6~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][5]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][5]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][5]~q\ : std_logic;
SIGNAL \keypad_inst|Mux5~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux5~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][6]~q\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][6]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][6]~q\ : std_logic;
SIGNAL \keypad_inst|Mux4~0_combout\ : std_logic;
SIGNAL \keypad_inst|Mux4~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[3][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal3~1_combout\ : std_logic;
SIGNAL \keypad_inst|Equal3~2_combout\ : std_logic;
SIGNAL \keypad_inst|Equal1~0_combout\ : std_logic;
SIGNAL \keypad_inst|Equal0~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[0][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal0~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[1][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal1~1_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~2_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~6_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~14_combout\ : std_logic;
SIGNAL \keypad_inst|Equal10~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[10][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal10~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[7][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal7~1_combout\ : std_logic;
SIGNAL \keypad_inst|Equal7~0_combout\ : std_logic;
SIGNAL \keypad_inst|Equal7~2_combout\ : std_logic;
SIGNAL \keypad_inst|Equal8~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[8][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal8~1_combout\ : std_logic;
SIGNAL \keypad_inst|Equal9~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[9][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal9~1_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~12_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~13_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES[0]~0_combout\ : std_logic;
SIGNAL \keypad_inst|Equal15~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][7]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[15][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal15~0_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[14][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal14~0_combout\ : std_logic;
SIGNAL \keypad_inst|Equal14~1_combout\ : std_logic;
SIGNAL \keypad_inst|Equal12~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[12][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal12~0_combout\ : std_logic;
SIGNAL \keypad_inst|Equal13~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[13][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal13~0_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES~4_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES~5_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES~6_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~8_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~9_combout\ : std_logic;
SIGNAL \keypad_inst|Equal11~1_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][7]~feeder_combout\ : std_logic;
SIGNAL \keypad_inst|REG_B[11][7]~q\ : std_logic;
SIGNAL \keypad_inst|Equal11~0_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~7_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~10_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~15_combout\ : std_logic;
SIGNAL \keypad_inst|Equal4~2_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~16_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~17_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES[1]~1_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES~7_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~18_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~20_combout\ : std_logic;
SIGNAL \keypad_inst|Equal5~2_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~19_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~21_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES[2]~2_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES~8_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~22_combout\ : std_logic;
SIGNAL \keypad_inst|process_2~23_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES[3]~3_combout\ : std_logic;
SIGNAL \keypad_inst|Equal12~2_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES~9_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES~10_combout\ : std_logic;
SIGNAL \keypad_inst|BOTON_PRES~11_combout\ : std_logic;
SIGNAL \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \keypad_inst|process_2~11_combout\ : std_logic;
SIGNAL \keypad_inst|IND~q\ : std_logic;
SIGNAL \keypad_inst|Div1ms|count\ : std_logic_vector(14 DOWNTO 0);
SIGNAL \keypad_inst|Div10ms|count\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \debouncer_set_inst|count\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \debouncer_clr_inst|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \keypad_inst|FILA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \keypad_inst|BOTON_PRES\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\ : std_logic;
SIGNAL \keypad_inst|ALT_INV_process_2~10_combout\ : std_logic;
SIGNAL \controler_inst|ALT_INV_q_reg~q\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_COLUMNAS <= COLUMNAS;
FILAS <= ww_FILAS;
SEGMENTOS <= ww_SEGMENTOS;
KEY_PRESSED <= ww_KEY_PRESSED;
ww_SET <= SET;
ww_CLR <= CLR;
SEGMENTO <= ww_SEGMENTO;
CTRL <= ww_CTRL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\keypad_inst|BOTON_PRES\(7) & \keypad_inst|BOTON_PRES\(6) & \keypad_inst|BOTON_PRES\(5) & \keypad_inst|BOTON_PRES\(4) & \keypad_inst|BOTON_PRES\(3) & 
\keypad_inst|BOTON_PRES\(2) & \keypad_inst|BOTON_PRES\(1) & \keypad_inst|BOTON_PRES\(0));

\decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a1\ <= \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a2\ <= \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a3\ <= \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a4\ <= \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a5\ <= \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a6\ <= \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);

\keypad_inst|Div1ms|clk_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \keypad_inst|Div1ms|clk_reg~q\);

\keypad_inst|Div10ms|clk_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \keypad_inst|Div10ms|clk_reg~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\ <= NOT \keypad_inst|Div10ms|LessThan0~5_combout\;
\keypad_inst|ALT_INV_process_2~10_combout\ <= NOT \keypad_inst|process_2~10_combout\;
\controler_inst|ALT_INV_q_reg~q\ <= NOT \controler_inst|q_reg~q\;

-- Location: IOOBUF_X23_Y0_N16
\FILAS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad_inst|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \FILAS[0]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\FILAS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad_inst|Mux2~1_combout\,
	devoe => ww_devoe,
	o => \FILAS[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\FILAS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad_inst|Mux2~2_combout\,
	devoe => ww_devoe,
	o => \FILAS[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\FILAS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad_inst|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \FILAS[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\SEGMENTOS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0~portadataout\,
	devoe => ww_devoe,
	o => \SEGMENTOS[0]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\SEGMENTOS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \SEGMENTOS[1]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\SEGMENTOS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \SEGMENTOS[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\SEGMENTOS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \SEGMENTOS[3]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\SEGMENTOS[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \SEGMENTOS[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\SEGMENTOS[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a5\,
	devoe => ww_devoe,
	o => \SEGMENTOS[5]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\SEGMENTOS[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a6\,
	devoe => ww_devoe,
	o => \SEGMENTOS[6]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\KEY_PRESSED~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \keypad_inst|IND~q\,
	devoe => ww_devoe,
	o => \KEY_PRESSED~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\SEGMENTO~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SEGMENTO~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\CTRL~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \controler_inst|q_reg~q\,
	devoe => ww_devoe,
	o => \CTRL~output_o\);

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

-- Location: LCCOMB_X33_Y12_N14
\keypad_inst|Div10ms|count[0]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[0]~18_combout\ = \keypad_inst|Div10ms|count\(0) $ (VCC)
-- \keypad_inst|Div10ms|count[0]~19\ = CARRY(\keypad_inst|Div10ms|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(0),
	datad => VCC,
	combout => \keypad_inst|Div10ms|count[0]~18_combout\,
	cout => \keypad_inst|Div10ms|count[0]~19\);

-- Location: FF_X33_Y12_N15
\keypad_inst|Div10ms|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[0]~18_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(0));

-- Location: LCCOMB_X33_Y12_N16
\keypad_inst|Div10ms|count[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[1]~20_combout\ = (\keypad_inst|Div10ms|count\(1) & (!\keypad_inst|Div10ms|count[0]~19\)) # (!\keypad_inst|Div10ms|count\(1) & ((\keypad_inst|Div10ms|count[0]~19\) # (GND)))
-- \keypad_inst|Div10ms|count[1]~21\ = CARRY((!\keypad_inst|Div10ms|count[0]~19\) # (!\keypad_inst|Div10ms|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(1),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[0]~19\,
	combout => \keypad_inst|Div10ms|count[1]~20_combout\,
	cout => \keypad_inst|Div10ms|count[1]~21\);

-- Location: FF_X33_Y12_N17
\keypad_inst|Div10ms|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[1]~20_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(1));

-- Location: LCCOMB_X33_Y12_N18
\keypad_inst|Div10ms|count[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[2]~22_combout\ = (\keypad_inst|Div10ms|count\(2) & (\keypad_inst|Div10ms|count[1]~21\ $ (GND))) # (!\keypad_inst|Div10ms|count\(2) & (!\keypad_inst|Div10ms|count[1]~21\ & VCC))
-- \keypad_inst|Div10ms|count[2]~23\ = CARRY((\keypad_inst|Div10ms|count\(2) & !\keypad_inst|Div10ms|count[1]~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(2),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[1]~21\,
	combout => \keypad_inst|Div10ms|count[2]~22_combout\,
	cout => \keypad_inst|Div10ms|count[2]~23\);

-- Location: FF_X33_Y12_N19
\keypad_inst|Div10ms|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[2]~22_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(2));

-- Location: LCCOMB_X33_Y12_N20
\keypad_inst|Div10ms|count[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[3]~24_combout\ = (\keypad_inst|Div10ms|count\(3) & (!\keypad_inst|Div10ms|count[2]~23\)) # (!\keypad_inst|Div10ms|count\(3) & ((\keypad_inst|Div10ms|count[2]~23\) # (GND)))
-- \keypad_inst|Div10ms|count[3]~25\ = CARRY((!\keypad_inst|Div10ms|count[2]~23\) # (!\keypad_inst|Div10ms|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(3),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[2]~23\,
	combout => \keypad_inst|Div10ms|count[3]~24_combout\,
	cout => \keypad_inst|Div10ms|count[3]~25\);

-- Location: FF_X33_Y12_N21
\keypad_inst|Div10ms|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[3]~24_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(3));

-- Location: LCCOMB_X33_Y12_N22
\keypad_inst|Div10ms|count[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[4]~26_combout\ = (\keypad_inst|Div10ms|count\(4) & (\keypad_inst|Div10ms|count[3]~25\ $ (GND))) # (!\keypad_inst|Div10ms|count\(4) & (!\keypad_inst|Div10ms|count[3]~25\ & VCC))
-- \keypad_inst|Div10ms|count[4]~27\ = CARRY((\keypad_inst|Div10ms|count\(4) & !\keypad_inst|Div10ms|count[3]~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(4),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[3]~25\,
	combout => \keypad_inst|Div10ms|count[4]~26_combout\,
	cout => \keypad_inst|Div10ms|count[4]~27\);

-- Location: FF_X33_Y12_N23
\keypad_inst|Div10ms|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[4]~26_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(4));

-- Location: LCCOMB_X33_Y12_N24
\keypad_inst|Div10ms|count[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[5]~28_combout\ = (\keypad_inst|Div10ms|count\(5) & (!\keypad_inst|Div10ms|count[4]~27\)) # (!\keypad_inst|Div10ms|count\(5) & ((\keypad_inst|Div10ms|count[4]~27\) # (GND)))
-- \keypad_inst|Div10ms|count[5]~29\ = CARRY((!\keypad_inst|Div10ms|count[4]~27\) # (!\keypad_inst|Div10ms|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(5),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[4]~27\,
	combout => \keypad_inst|Div10ms|count[5]~28_combout\,
	cout => \keypad_inst|Div10ms|count[5]~29\);

-- Location: FF_X33_Y12_N25
\keypad_inst|Div10ms|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[5]~28_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(5));

-- Location: LCCOMB_X33_Y12_N26
\keypad_inst|Div10ms|count[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[6]~30_combout\ = (\keypad_inst|Div10ms|count\(6) & (\keypad_inst|Div10ms|count[5]~29\ $ (GND))) # (!\keypad_inst|Div10ms|count\(6) & (!\keypad_inst|Div10ms|count[5]~29\ & VCC))
-- \keypad_inst|Div10ms|count[6]~31\ = CARRY((\keypad_inst|Div10ms|count\(6) & !\keypad_inst|Div10ms|count[5]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(6),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[5]~29\,
	combout => \keypad_inst|Div10ms|count[6]~30_combout\,
	cout => \keypad_inst|Div10ms|count[6]~31\);

-- Location: FF_X33_Y12_N27
\keypad_inst|Div10ms|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[6]~30_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(6));

-- Location: LCCOMB_X33_Y12_N28
\keypad_inst|Div10ms|count[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[7]~32_combout\ = (\keypad_inst|Div10ms|count\(7) & (!\keypad_inst|Div10ms|count[6]~31\)) # (!\keypad_inst|Div10ms|count\(7) & ((\keypad_inst|Div10ms|count[6]~31\) # (GND)))
-- \keypad_inst|Div10ms|count[7]~33\ = CARRY((!\keypad_inst|Div10ms|count[6]~31\) # (!\keypad_inst|Div10ms|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(7),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[6]~31\,
	combout => \keypad_inst|Div10ms|count[7]~32_combout\,
	cout => \keypad_inst|Div10ms|count[7]~33\);

-- Location: FF_X33_Y12_N29
\keypad_inst|Div10ms|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[7]~32_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(7));

-- Location: LCCOMB_X33_Y12_N30
\keypad_inst|Div10ms|count[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[8]~34_combout\ = (\keypad_inst|Div10ms|count\(8) & (\keypad_inst|Div10ms|count[7]~33\ $ (GND))) # (!\keypad_inst|Div10ms|count\(8) & (!\keypad_inst|Div10ms|count[7]~33\ & VCC))
-- \keypad_inst|Div10ms|count[8]~35\ = CARRY((\keypad_inst|Div10ms|count\(8) & !\keypad_inst|Div10ms|count[7]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(8),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[7]~33\,
	combout => \keypad_inst|Div10ms|count[8]~34_combout\,
	cout => \keypad_inst|Div10ms|count[8]~35\);

-- Location: FF_X33_Y12_N31
\keypad_inst|Div10ms|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[8]~34_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(8));

-- Location: LCCOMB_X33_Y11_N0
\keypad_inst|Div10ms|count[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[9]~36_combout\ = (\keypad_inst|Div10ms|count\(9) & (!\keypad_inst|Div10ms|count[8]~35\)) # (!\keypad_inst|Div10ms|count\(9) & ((\keypad_inst|Div10ms|count[8]~35\) # (GND)))
-- \keypad_inst|Div10ms|count[9]~37\ = CARRY((!\keypad_inst|Div10ms|count[8]~35\) # (!\keypad_inst|Div10ms|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(9),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[8]~35\,
	combout => \keypad_inst|Div10ms|count[9]~36_combout\,
	cout => \keypad_inst|Div10ms|count[9]~37\);

-- Location: FF_X33_Y11_N1
\keypad_inst|Div10ms|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[9]~36_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(9));

-- Location: LCCOMB_X33_Y11_N2
\keypad_inst|Div10ms|count[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[10]~38_combout\ = (\keypad_inst|Div10ms|count\(10) & (\keypad_inst|Div10ms|count[9]~37\ $ (GND))) # (!\keypad_inst|Div10ms|count\(10) & (!\keypad_inst|Div10ms|count[9]~37\ & VCC))
-- \keypad_inst|Div10ms|count[10]~39\ = CARRY((\keypad_inst|Div10ms|count\(10) & !\keypad_inst|Div10ms|count[9]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(10),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[9]~37\,
	combout => \keypad_inst|Div10ms|count[10]~38_combout\,
	cout => \keypad_inst|Div10ms|count[10]~39\);

-- Location: FF_X33_Y11_N3
\keypad_inst|Div10ms|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[10]~38_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(10));

-- Location: LCCOMB_X33_Y11_N4
\keypad_inst|Div10ms|count[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[11]~40_combout\ = (\keypad_inst|Div10ms|count\(11) & (!\keypad_inst|Div10ms|count[10]~39\)) # (!\keypad_inst|Div10ms|count\(11) & ((\keypad_inst|Div10ms|count[10]~39\) # (GND)))
-- \keypad_inst|Div10ms|count[11]~41\ = CARRY((!\keypad_inst|Div10ms|count[10]~39\) # (!\keypad_inst|Div10ms|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(11),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[10]~39\,
	combout => \keypad_inst|Div10ms|count[11]~40_combout\,
	cout => \keypad_inst|Div10ms|count[11]~41\);

-- Location: FF_X33_Y11_N5
\keypad_inst|Div10ms|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[11]~40_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(11));

-- Location: LCCOMB_X33_Y11_N6
\keypad_inst|Div10ms|count[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[12]~42_combout\ = (\keypad_inst|Div10ms|count\(12) & (\keypad_inst|Div10ms|count[11]~41\ $ (GND))) # (!\keypad_inst|Div10ms|count\(12) & (!\keypad_inst|Div10ms|count[11]~41\ & VCC))
-- \keypad_inst|Div10ms|count[12]~43\ = CARRY((\keypad_inst|Div10ms|count\(12) & !\keypad_inst|Div10ms|count[11]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(12),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[11]~41\,
	combout => \keypad_inst|Div10ms|count[12]~42_combout\,
	cout => \keypad_inst|Div10ms|count[12]~43\);

-- Location: FF_X33_Y11_N7
\keypad_inst|Div10ms|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[12]~42_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(12));

-- Location: LCCOMB_X33_Y11_N8
\keypad_inst|Div10ms|count[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[13]~44_combout\ = (\keypad_inst|Div10ms|count\(13) & (!\keypad_inst|Div10ms|count[12]~43\)) # (!\keypad_inst|Div10ms|count\(13) & ((\keypad_inst|Div10ms|count[12]~43\) # (GND)))
-- \keypad_inst|Div10ms|count[13]~45\ = CARRY((!\keypad_inst|Div10ms|count[12]~43\) # (!\keypad_inst|Div10ms|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(13),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[12]~43\,
	combout => \keypad_inst|Div10ms|count[13]~44_combout\,
	cout => \keypad_inst|Div10ms|count[13]~45\);

-- Location: FF_X33_Y11_N9
\keypad_inst|Div10ms|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[13]~44_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(13));

-- Location: LCCOMB_X33_Y11_N10
\keypad_inst|Div10ms|count[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[14]~46_combout\ = (\keypad_inst|Div10ms|count\(14) & (\keypad_inst|Div10ms|count[13]~45\ $ (GND))) # (!\keypad_inst|Div10ms|count\(14) & (!\keypad_inst|Div10ms|count[13]~45\ & VCC))
-- \keypad_inst|Div10ms|count[14]~47\ = CARRY((\keypad_inst|Div10ms|count\(14) & !\keypad_inst|Div10ms|count[13]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(14),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[13]~45\,
	combout => \keypad_inst|Div10ms|count[14]~46_combout\,
	cout => \keypad_inst|Div10ms|count[14]~47\);

-- Location: FF_X33_Y11_N11
\keypad_inst|Div10ms|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[14]~46_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(14));

-- Location: LCCOMB_X33_Y11_N12
\keypad_inst|Div10ms|count[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[15]~48_combout\ = (\keypad_inst|Div10ms|count\(15) & (!\keypad_inst|Div10ms|count[14]~47\)) # (!\keypad_inst|Div10ms|count\(15) & ((\keypad_inst|Div10ms|count[14]~47\) # (GND)))
-- \keypad_inst|Div10ms|count[15]~49\ = CARRY((!\keypad_inst|Div10ms|count[14]~47\) # (!\keypad_inst|Div10ms|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(15),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[14]~47\,
	combout => \keypad_inst|Div10ms|count[15]~48_combout\,
	cout => \keypad_inst|Div10ms|count[15]~49\);

-- Location: FF_X33_Y11_N13
\keypad_inst|Div10ms|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[15]~48_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(15));

-- Location: LCCOMB_X33_Y11_N14
\keypad_inst|Div10ms|count[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[16]~50_combout\ = (\keypad_inst|Div10ms|count\(16) & (\keypad_inst|Div10ms|count[15]~49\ $ (GND))) # (!\keypad_inst|Div10ms|count\(16) & (!\keypad_inst|Div10ms|count[15]~49\ & VCC))
-- \keypad_inst|Div10ms|count[16]~51\ = CARRY((\keypad_inst|Div10ms|count\(16) & !\keypad_inst|Div10ms|count[15]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|count\(16),
	datad => VCC,
	cin => \keypad_inst|Div10ms|count[15]~49\,
	combout => \keypad_inst|Div10ms|count[16]~50_combout\,
	cout => \keypad_inst|Div10ms|count[16]~51\);

-- Location: FF_X33_Y11_N15
\keypad_inst|Div10ms|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[16]~50_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(16));

-- Location: LCCOMB_X33_Y11_N16
\keypad_inst|Div10ms|count[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|count[17]~52_combout\ = \keypad_inst|Div10ms|count\(17) $ (\keypad_inst|Div10ms|count[16]~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(17),
	cin => \keypad_inst|Div10ms|count[16]~51\,
	combout => \keypad_inst|Div10ms|count[17]~52_combout\);

-- Location: FF_X33_Y11_N17
\keypad_inst|Div10ms|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|count[17]~52_combout\,
	sclr => \keypad_inst|Div10ms|ALT_INV_LessThan0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|count\(17));

-- Location: LCCOMB_X33_Y11_N26
\keypad_inst|Div10ms|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|LessThan0~0_combout\ = (\keypad_inst|Div10ms|count\(14) & (\keypad_inst|Div10ms|count\(17) & (\keypad_inst|Div10ms|count\(16) & \keypad_inst|Div10ms|count\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(14),
	datab => \keypad_inst|Div10ms|count\(17),
	datac => \keypad_inst|Div10ms|count\(16),
	datad => \keypad_inst|Div10ms|count\(15),
	combout => \keypad_inst|Div10ms|LessThan0~0_combout\);

-- Location: LCCOMB_X33_Y12_N6
\keypad_inst|Div10ms|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|LessThan0~2_combout\ = (((!\keypad_inst|Div10ms|count\(1)) # (!\keypad_inst|Div10ms|count\(0))) # (!\keypad_inst|Div10ms|count\(2))) # (!\keypad_inst|Div10ms|count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(3),
	datab => \keypad_inst|Div10ms|count\(2),
	datac => \keypad_inst|Div10ms|count\(0),
	datad => \keypad_inst|Div10ms|count\(1),
	combout => \keypad_inst|Div10ms|LessThan0~2_combout\);

-- Location: LCCOMB_X33_Y12_N4
\keypad_inst|Div10ms|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|LessThan0~3_combout\ = (!\keypad_inst|Div10ms|count\(4) & (!\keypad_inst|Div10ms|count\(6) & !\keypad_inst|Div10ms|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(4),
	datac => \keypad_inst|Div10ms|count\(6),
	datad => \keypad_inst|Div10ms|count\(5),
	combout => \keypad_inst|Div10ms|LessThan0~3_combout\);

-- Location: LCCOMB_X33_Y12_N2
\keypad_inst|Div10ms|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|LessThan0~1_combout\ = (!\keypad_inst|Div10ms|count\(11) & (!\keypad_inst|Div10ms|count\(8) & (!\keypad_inst|Div10ms|count\(9) & !\keypad_inst|Div10ms|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(11),
	datab => \keypad_inst|Div10ms|count\(8),
	datac => \keypad_inst|Div10ms|count\(9),
	datad => \keypad_inst|Div10ms|count\(10),
	combout => \keypad_inst|Div10ms|LessThan0~1_combout\);

-- Location: LCCOMB_X33_Y12_N0
\keypad_inst|Div10ms|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|LessThan0~4_combout\ = (\keypad_inst|Div10ms|LessThan0~1_combout\ & (((\keypad_inst|Div10ms|LessThan0~2_combout\ & \keypad_inst|Div10ms|LessThan0~3_combout\)) # (!\keypad_inst|Div10ms|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|LessThan0~2_combout\,
	datab => \keypad_inst|Div10ms|count\(7),
	datac => \keypad_inst|Div10ms|LessThan0~3_combout\,
	datad => \keypad_inst|Div10ms|LessThan0~1_combout\,
	combout => \keypad_inst|Div10ms|LessThan0~4_combout\);

-- Location: LCCOMB_X33_Y12_N12
\keypad_inst|Div10ms|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|LessThan0~5_combout\ = ((!\keypad_inst|Div10ms|count\(13) & ((\keypad_inst|Div10ms|LessThan0~4_combout\) # (!\keypad_inst|Div10ms|count\(12))))) # (!\keypad_inst|Div10ms|LessThan0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div10ms|count\(12),
	datab => \keypad_inst|Div10ms|count\(13),
	datac => \keypad_inst|Div10ms|LessThan0~0_combout\,
	datad => \keypad_inst|Div10ms|LessThan0~4_combout\,
	combout => \keypad_inst|Div10ms|LessThan0~5_combout\);

-- Location: LCCOMB_X33_Y12_N10
\keypad_inst|Div10ms|clk_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|clk_reg~0_combout\ = \keypad_inst|Div10ms|clk_reg~q\ $ (!\keypad_inst|Div10ms|LessThan0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|clk_reg~q\,
	datad => \keypad_inst|Div10ms|LessThan0~5_combout\,
	combout => \keypad_inst|Div10ms|clk_reg~0_combout\);

-- Location: LCCOMB_X33_Y12_N8
\keypad_inst|Div10ms|clk_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div10ms|clk_reg~feeder_combout\ = \keypad_inst|Div10ms|clk_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div10ms|clk_reg~0_combout\,
	combout => \keypad_inst|Div10ms|clk_reg~feeder_combout\);

-- Location: FF_X33_Y12_N9
\keypad_inst|Div10ms|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div10ms|clk_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div10ms|clk_reg~q\);

-- Location: CLKCTRL_G6
\keypad_inst|Div10ms|clk_reg~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \keypad_inst|Div10ms|clk_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \keypad_inst|Div10ms|clk_reg~clkctrl_outclk\);

-- Location: LCCOMB_X19_Y9_N28
\keypad_inst|FILA[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|FILA[0]~1_combout\ = !\keypad_inst|FILA\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|FILA\(0),
	combout => \keypad_inst|FILA[0]~1_combout\);

-- Location: FF_X19_Y9_N29
\keypad_inst|FILA[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div10ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|FILA[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|FILA\(0));

-- Location: LCCOMB_X19_Y9_N30
\keypad_inst|FILA[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|FILA[1]~0_combout\ = \keypad_inst|FILA\(1) $ (\keypad_inst|FILA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|FILA\(1),
	datad => \keypad_inst|FILA\(0),
	combout => \keypad_inst|FILA[1]~0_combout\);

-- Location: FF_X19_Y9_N31
\keypad_inst|FILA[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div10ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|FILA[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|FILA\(1));

-- Location: LCCOMB_X21_Y10_N12
\keypad_inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux2~0_combout\ = (\keypad_inst|FILA\(1) & \keypad_inst|FILA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datad => \keypad_inst|FILA\(0),
	combout => \keypad_inst|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y10_N28
\keypad_inst|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux2~1_combout\ = (\keypad_inst|FILA\(1) & !\keypad_inst|FILA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|FILA\(0),
	combout => \keypad_inst|Mux2~1_combout\);

-- Location: LCCOMB_X19_Y9_N24
\keypad_inst|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux2~2_combout\ = (!\keypad_inst|FILA\(1) & \keypad_inst|FILA\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|FILA\(1),
	datad => \keypad_inst|FILA\(0),
	combout => \keypad_inst|Mux2~2_combout\);

-- Location: LCCOMB_X19_Y9_N18
\keypad_inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux0~0_combout\ = (!\keypad_inst|FILA\(0) & !\keypad_inst|FILA\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|FILA\(0),
	datac => \keypad_inst|FILA\(1),
	combout => \keypad_inst|Mux0~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\CLR~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR,
	o => \CLR~input_o\);

-- Location: LCCOMB_X30_Y12_N12
\debouncer_clr_inst|count[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[0]~20_combout\ = \debouncer_clr_inst|count\(0) $ (VCC)
-- \debouncer_clr_inst|count[0]~21\ = CARRY(\debouncer_clr_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(0),
	datad => VCC,
	combout => \debouncer_clr_inst|count[0]~20_combout\,
	cout => \debouncer_clr_inst|count[0]~21\);

-- Location: LCCOMB_X30_Y11_N26
\debouncer_clr_inst|count[19]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[19]~42_combout\ = (\debouncer_clr_inst|button_out~q\ $ (!\CLR~input_o\)) # (!\debouncer_clr_inst|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|button_out~q\,
	datac => \CLR~input_o\,
	datad => \debouncer_clr_inst|LessThan0~4_combout\,
	combout => \debouncer_clr_inst|count[19]~42_combout\);

-- Location: FF_X30_Y12_N13
\debouncer_clr_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[0]~20_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(0));

-- Location: LCCOMB_X30_Y12_N14
\debouncer_clr_inst|count[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[1]~22_combout\ = (\debouncer_clr_inst|count\(1) & (!\debouncer_clr_inst|count[0]~21\)) # (!\debouncer_clr_inst|count\(1) & ((\debouncer_clr_inst|count[0]~21\) # (GND)))
-- \debouncer_clr_inst|count[1]~23\ = CARRY((!\debouncer_clr_inst|count[0]~21\) # (!\debouncer_clr_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(1),
	datad => VCC,
	cin => \debouncer_clr_inst|count[0]~21\,
	combout => \debouncer_clr_inst|count[1]~22_combout\,
	cout => \debouncer_clr_inst|count[1]~23\);

-- Location: FF_X30_Y12_N15
\debouncer_clr_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[1]~22_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(1));

-- Location: LCCOMB_X30_Y12_N16
\debouncer_clr_inst|count[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[2]~24_combout\ = (\debouncer_clr_inst|count\(2) & (\debouncer_clr_inst|count[1]~23\ $ (GND))) # (!\debouncer_clr_inst|count\(2) & (!\debouncer_clr_inst|count[1]~23\ & VCC))
-- \debouncer_clr_inst|count[2]~25\ = CARRY((\debouncer_clr_inst|count\(2) & !\debouncer_clr_inst|count[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(2),
	datad => VCC,
	cin => \debouncer_clr_inst|count[1]~23\,
	combout => \debouncer_clr_inst|count[2]~24_combout\,
	cout => \debouncer_clr_inst|count[2]~25\);

-- Location: FF_X30_Y12_N17
\debouncer_clr_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[2]~24_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(2));

-- Location: LCCOMB_X30_Y12_N18
\debouncer_clr_inst|count[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[3]~26_combout\ = (\debouncer_clr_inst|count\(3) & (!\debouncer_clr_inst|count[2]~25\)) # (!\debouncer_clr_inst|count\(3) & ((\debouncer_clr_inst|count[2]~25\) # (GND)))
-- \debouncer_clr_inst|count[3]~27\ = CARRY((!\debouncer_clr_inst|count[2]~25\) # (!\debouncer_clr_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(3),
	datad => VCC,
	cin => \debouncer_clr_inst|count[2]~25\,
	combout => \debouncer_clr_inst|count[3]~26_combout\,
	cout => \debouncer_clr_inst|count[3]~27\);

-- Location: FF_X30_Y12_N19
\debouncer_clr_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[3]~26_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(3));

-- Location: LCCOMB_X30_Y12_N20
\debouncer_clr_inst|count[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[4]~28_combout\ = (\debouncer_clr_inst|count\(4) & (\debouncer_clr_inst|count[3]~27\ $ (GND))) # (!\debouncer_clr_inst|count\(4) & (!\debouncer_clr_inst|count[3]~27\ & VCC))
-- \debouncer_clr_inst|count[4]~29\ = CARRY((\debouncer_clr_inst|count\(4) & !\debouncer_clr_inst|count[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(4),
	datad => VCC,
	cin => \debouncer_clr_inst|count[3]~27\,
	combout => \debouncer_clr_inst|count[4]~28_combout\,
	cout => \debouncer_clr_inst|count[4]~29\);

-- Location: FF_X30_Y12_N21
\debouncer_clr_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[4]~28_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(4));

-- Location: LCCOMB_X30_Y12_N22
\debouncer_clr_inst|count[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[5]~30_combout\ = (\debouncer_clr_inst|count\(5) & (!\debouncer_clr_inst|count[4]~29\)) # (!\debouncer_clr_inst|count\(5) & ((\debouncer_clr_inst|count[4]~29\) # (GND)))
-- \debouncer_clr_inst|count[5]~31\ = CARRY((!\debouncer_clr_inst|count[4]~29\) # (!\debouncer_clr_inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(5),
	datad => VCC,
	cin => \debouncer_clr_inst|count[4]~29\,
	combout => \debouncer_clr_inst|count[5]~30_combout\,
	cout => \debouncer_clr_inst|count[5]~31\);

-- Location: FF_X30_Y12_N23
\debouncer_clr_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[5]~30_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(5));

-- Location: LCCOMB_X30_Y12_N24
\debouncer_clr_inst|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[6]~32_combout\ = (\debouncer_clr_inst|count\(6) & (\debouncer_clr_inst|count[5]~31\ $ (GND))) # (!\debouncer_clr_inst|count\(6) & (!\debouncer_clr_inst|count[5]~31\ & VCC))
-- \debouncer_clr_inst|count[6]~33\ = CARRY((\debouncer_clr_inst|count\(6) & !\debouncer_clr_inst|count[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(6),
	datad => VCC,
	cin => \debouncer_clr_inst|count[5]~31\,
	combout => \debouncer_clr_inst|count[6]~32_combout\,
	cout => \debouncer_clr_inst|count[6]~33\);

-- Location: FF_X30_Y12_N25
\debouncer_clr_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[6]~32_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(6));

-- Location: LCCOMB_X30_Y12_N26
\debouncer_clr_inst|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[7]~34_combout\ = (\debouncer_clr_inst|count\(7) & (!\debouncer_clr_inst|count[6]~33\)) # (!\debouncer_clr_inst|count\(7) & ((\debouncer_clr_inst|count[6]~33\) # (GND)))
-- \debouncer_clr_inst|count[7]~35\ = CARRY((!\debouncer_clr_inst|count[6]~33\) # (!\debouncer_clr_inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(7),
	datad => VCC,
	cin => \debouncer_clr_inst|count[6]~33\,
	combout => \debouncer_clr_inst|count[7]~34_combout\,
	cout => \debouncer_clr_inst|count[7]~35\);

-- Location: FF_X30_Y12_N27
\debouncer_clr_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[7]~34_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(7));

-- Location: LCCOMB_X30_Y12_N28
\debouncer_clr_inst|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[8]~36_combout\ = (\debouncer_clr_inst|count\(8) & (\debouncer_clr_inst|count[7]~35\ $ (GND))) # (!\debouncer_clr_inst|count\(8) & (!\debouncer_clr_inst|count[7]~35\ & VCC))
-- \debouncer_clr_inst|count[8]~37\ = CARRY((\debouncer_clr_inst|count\(8) & !\debouncer_clr_inst|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(8),
	datad => VCC,
	cin => \debouncer_clr_inst|count[7]~35\,
	combout => \debouncer_clr_inst|count[8]~36_combout\,
	cout => \debouncer_clr_inst|count[8]~37\);

-- Location: FF_X30_Y12_N29
\debouncer_clr_inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[8]~36_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(8));

-- Location: LCCOMB_X30_Y12_N30
\debouncer_clr_inst|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[9]~38_combout\ = (\debouncer_clr_inst|count\(9) & (!\debouncer_clr_inst|count[8]~37\)) # (!\debouncer_clr_inst|count\(9) & ((\debouncer_clr_inst|count[8]~37\) # (GND)))
-- \debouncer_clr_inst|count[9]~39\ = CARRY((!\debouncer_clr_inst|count[8]~37\) # (!\debouncer_clr_inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(9),
	datad => VCC,
	cin => \debouncer_clr_inst|count[8]~37\,
	combout => \debouncer_clr_inst|count[9]~38_combout\,
	cout => \debouncer_clr_inst|count[9]~39\);

-- Location: FF_X30_Y12_N31
\debouncer_clr_inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[9]~38_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(9));

-- Location: LCCOMB_X30_Y11_N0
\debouncer_clr_inst|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[10]~40_combout\ = (\debouncer_clr_inst|count\(10) & (\debouncer_clr_inst|count[9]~39\ $ (GND))) # (!\debouncer_clr_inst|count\(10) & (!\debouncer_clr_inst|count[9]~39\ & VCC))
-- \debouncer_clr_inst|count[10]~41\ = CARRY((\debouncer_clr_inst|count\(10) & !\debouncer_clr_inst|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(10),
	datad => VCC,
	cin => \debouncer_clr_inst|count[9]~39\,
	combout => \debouncer_clr_inst|count[10]~40_combout\,
	cout => \debouncer_clr_inst|count[10]~41\);

-- Location: FF_X30_Y11_N1
\debouncer_clr_inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[10]~40_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(10));

-- Location: LCCOMB_X30_Y11_N2
\debouncer_clr_inst|count[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[11]~43_combout\ = (\debouncer_clr_inst|count\(11) & (!\debouncer_clr_inst|count[10]~41\)) # (!\debouncer_clr_inst|count\(11) & ((\debouncer_clr_inst|count[10]~41\) # (GND)))
-- \debouncer_clr_inst|count[11]~44\ = CARRY((!\debouncer_clr_inst|count[10]~41\) # (!\debouncer_clr_inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(11),
	datad => VCC,
	cin => \debouncer_clr_inst|count[10]~41\,
	combout => \debouncer_clr_inst|count[11]~43_combout\,
	cout => \debouncer_clr_inst|count[11]~44\);

-- Location: FF_X30_Y11_N3
\debouncer_clr_inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[11]~43_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(11));

-- Location: LCCOMB_X30_Y11_N4
\debouncer_clr_inst|count[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[12]~45_combout\ = (\debouncer_clr_inst|count\(12) & (\debouncer_clr_inst|count[11]~44\ $ (GND))) # (!\debouncer_clr_inst|count\(12) & (!\debouncer_clr_inst|count[11]~44\ & VCC))
-- \debouncer_clr_inst|count[12]~46\ = CARRY((\debouncer_clr_inst|count\(12) & !\debouncer_clr_inst|count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(12),
	datad => VCC,
	cin => \debouncer_clr_inst|count[11]~44\,
	combout => \debouncer_clr_inst|count[12]~45_combout\,
	cout => \debouncer_clr_inst|count[12]~46\);

-- Location: FF_X30_Y11_N5
\debouncer_clr_inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[12]~45_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(12));

-- Location: LCCOMB_X30_Y11_N6
\debouncer_clr_inst|count[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[13]~47_combout\ = (\debouncer_clr_inst|count\(13) & (!\debouncer_clr_inst|count[12]~46\)) # (!\debouncer_clr_inst|count\(13) & ((\debouncer_clr_inst|count[12]~46\) # (GND)))
-- \debouncer_clr_inst|count[13]~48\ = CARRY((!\debouncer_clr_inst|count[12]~46\) # (!\debouncer_clr_inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(13),
	datad => VCC,
	cin => \debouncer_clr_inst|count[12]~46\,
	combout => \debouncer_clr_inst|count[13]~47_combout\,
	cout => \debouncer_clr_inst|count[13]~48\);

-- Location: FF_X30_Y11_N7
\debouncer_clr_inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[13]~47_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(13));

-- Location: LCCOMB_X30_Y11_N8
\debouncer_clr_inst|count[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[14]~49_combout\ = (\debouncer_clr_inst|count\(14) & (\debouncer_clr_inst|count[13]~48\ $ (GND))) # (!\debouncer_clr_inst|count\(14) & (!\debouncer_clr_inst|count[13]~48\ & VCC))
-- \debouncer_clr_inst|count[14]~50\ = CARRY((\debouncer_clr_inst|count\(14) & !\debouncer_clr_inst|count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(14),
	datad => VCC,
	cin => \debouncer_clr_inst|count[13]~48\,
	combout => \debouncer_clr_inst|count[14]~49_combout\,
	cout => \debouncer_clr_inst|count[14]~50\);

-- Location: FF_X30_Y11_N9
\debouncer_clr_inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[14]~49_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(14));

-- Location: LCCOMB_X30_Y11_N10
\debouncer_clr_inst|count[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[15]~51_combout\ = (\debouncer_clr_inst|count\(15) & (!\debouncer_clr_inst|count[14]~50\)) # (!\debouncer_clr_inst|count\(15) & ((\debouncer_clr_inst|count[14]~50\) # (GND)))
-- \debouncer_clr_inst|count[15]~52\ = CARRY((!\debouncer_clr_inst|count[14]~50\) # (!\debouncer_clr_inst|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(15),
	datad => VCC,
	cin => \debouncer_clr_inst|count[14]~50\,
	combout => \debouncer_clr_inst|count[15]~51_combout\,
	cout => \debouncer_clr_inst|count[15]~52\);

-- Location: FF_X30_Y11_N11
\debouncer_clr_inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[15]~51_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(15));

-- Location: LCCOMB_X30_Y11_N12
\debouncer_clr_inst|count[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[16]~53_combout\ = (\debouncer_clr_inst|count\(16) & (\debouncer_clr_inst|count[15]~52\ $ (GND))) # (!\debouncer_clr_inst|count\(16) & (!\debouncer_clr_inst|count[15]~52\ & VCC))
-- \debouncer_clr_inst|count[16]~54\ = CARRY((\debouncer_clr_inst|count\(16) & !\debouncer_clr_inst|count[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(16),
	datad => VCC,
	cin => \debouncer_clr_inst|count[15]~52\,
	combout => \debouncer_clr_inst|count[16]~53_combout\,
	cout => \debouncer_clr_inst|count[16]~54\);

-- Location: FF_X30_Y11_N13
\debouncer_clr_inst|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[16]~53_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(16));

-- Location: LCCOMB_X30_Y11_N14
\debouncer_clr_inst|count[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[17]~55_combout\ = (\debouncer_clr_inst|count\(17) & (!\debouncer_clr_inst|count[16]~54\)) # (!\debouncer_clr_inst|count\(17) & ((\debouncer_clr_inst|count[16]~54\) # (GND)))
-- \debouncer_clr_inst|count[17]~56\ = CARRY((!\debouncer_clr_inst|count[16]~54\) # (!\debouncer_clr_inst|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(17),
	datad => VCC,
	cin => \debouncer_clr_inst|count[16]~54\,
	combout => \debouncer_clr_inst|count[17]~55_combout\,
	cout => \debouncer_clr_inst|count[17]~56\);

-- Location: FF_X30_Y11_N15
\debouncer_clr_inst|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[17]~55_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(17));

-- Location: LCCOMB_X30_Y11_N16
\debouncer_clr_inst|count[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[18]~57_combout\ = (\debouncer_clr_inst|count\(18) & (\debouncer_clr_inst|count[17]~56\ $ (GND))) # (!\debouncer_clr_inst|count\(18) & (!\debouncer_clr_inst|count[17]~56\ & VCC))
-- \debouncer_clr_inst|count[18]~58\ = CARRY((\debouncer_clr_inst|count\(18) & !\debouncer_clr_inst|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(18),
	datad => VCC,
	cin => \debouncer_clr_inst|count[17]~56\,
	combout => \debouncer_clr_inst|count[18]~57_combout\,
	cout => \debouncer_clr_inst|count[18]~58\);

-- Location: FF_X30_Y11_N17
\debouncer_clr_inst|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[18]~57_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(18));

-- Location: LCCOMB_X30_Y11_N18
\debouncer_clr_inst|count[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|count[19]~59_combout\ = \debouncer_clr_inst|count[18]~58\ $ (\debouncer_clr_inst|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \debouncer_clr_inst|count\(19),
	cin => \debouncer_clr_inst|count[18]~58\,
	combout => \debouncer_clr_inst|count[19]~59_combout\);

-- Location: FF_X30_Y11_N19
\debouncer_clr_inst|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|count[19]~59_combout\,
	sclr => \debouncer_clr_inst|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|count\(19));

-- Location: LCCOMB_X30_Y11_N22
\debouncer_clr_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|LessThan0~3_combout\ = (((!\debouncer_clr_inst|count\(14) & !\debouncer_clr_inst|count\(15))) # (!\debouncer_clr_inst|count\(17))) # (!\debouncer_clr_inst|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(16),
	datab => \debouncer_clr_inst|count\(17),
	datac => \debouncer_clr_inst|count\(14),
	datad => \debouncer_clr_inst|count\(15),
	combout => \debouncer_clr_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y11_N30
\debouncer_clr_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|LessThan0~0_combout\ = (!\debouncer_clr_inst|count\(13) & (!\debouncer_clr_inst|count\(10) & (!\debouncer_clr_inst|count\(12) & !\debouncer_clr_inst|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(13),
	datab => \debouncer_clr_inst|count\(10),
	datac => \debouncer_clr_inst|count\(12),
	datad => \debouncer_clr_inst|count\(11),
	combout => \debouncer_clr_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y12_N8
\debouncer_clr_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|LessThan0~1_combout\ = (!\debouncer_clr_inst|count\(8) & (!\debouncer_clr_inst|count\(7) & !\debouncer_clr_inst|count\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|count\(8),
	datac => \debouncer_clr_inst|count\(7),
	datad => \debouncer_clr_inst|count\(6),
	combout => \debouncer_clr_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y11_N24
\debouncer_clr_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|LessThan0~2_combout\ = (!\debouncer_clr_inst|count\(15) & (\debouncer_clr_inst|LessThan0~0_combout\ & ((\debouncer_clr_inst|LessThan0~1_combout\) # (!\debouncer_clr_inst|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(15),
	datab => \debouncer_clr_inst|count\(9),
	datac => \debouncer_clr_inst|LessThan0~0_combout\,
	datad => \debouncer_clr_inst|LessThan0~1_combout\,
	combout => \debouncer_clr_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y11_N28
\debouncer_clr_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|LessThan0~4_combout\ = (((\debouncer_clr_inst|LessThan0~3_combout\) # (\debouncer_clr_inst|LessThan0~2_combout\)) # (!\debouncer_clr_inst|count\(18))) # (!\debouncer_clr_inst|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_clr_inst|count\(19),
	datab => \debouncer_clr_inst|count\(18),
	datac => \debouncer_clr_inst|LessThan0~3_combout\,
	datad => \debouncer_clr_inst|LessThan0~2_combout\,
	combout => \debouncer_clr_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X30_Y11_N20
\debouncer_clr_inst|button_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_clr_inst|button_out~0_combout\ = (\debouncer_clr_inst|LessThan0~4_combout\ & ((\debouncer_clr_inst|button_out~q\))) # (!\debouncer_clr_inst|LessThan0~4_combout\ & (\CLR~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR~input_o\,
	datac => \debouncer_clr_inst|button_out~q\,
	datad => \debouncer_clr_inst|LessThan0~4_combout\,
	combout => \debouncer_clr_inst|button_out~0_combout\);

-- Location: FF_X30_Y11_N21
\debouncer_clr_inst|button_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_clr_inst|button_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_clr_inst|button_out~q\);

-- Location: IOIBUF_X34_Y12_N22
\SET~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET,
	o => \SET~input_o\);

-- Location: LCCOMB_X32_Y12_N8
\debouncer_set_inst|count[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[0]~24_combout\ = \debouncer_set_inst|count\(0) $ (VCC)
-- \debouncer_set_inst|count[0]~25\ = CARRY(\debouncer_set_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(0),
	datad => VCC,
	combout => \debouncer_set_inst|count[0]~24_combout\,
	cout => \debouncer_set_inst|count[0]~25\);

-- Location: LCCOMB_X32_Y12_N2
\debouncer_set_inst|count[14]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[14]~68_combout\ = (\SET~input_o\ $ (!\debouncer_set_inst|button_out~q\)) # (!\debouncer_set_inst|LessThan0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SET~input_o\,
	datac => \debouncer_set_inst|button_out~q\,
	datad => \debouncer_set_inst|LessThan0~6_combout\,
	combout => \debouncer_set_inst|count[14]~68_combout\);

-- Location: FF_X32_Y12_N9
\debouncer_set_inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[0]~24_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(0));

-- Location: LCCOMB_X32_Y12_N10
\debouncer_set_inst|count[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[1]~26_combout\ = (\debouncer_set_inst|count\(1) & (!\debouncer_set_inst|count[0]~25\)) # (!\debouncer_set_inst|count\(1) & ((\debouncer_set_inst|count[0]~25\) # (GND)))
-- \debouncer_set_inst|count[1]~27\ = CARRY((!\debouncer_set_inst|count[0]~25\) # (!\debouncer_set_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(1),
	datad => VCC,
	cin => \debouncer_set_inst|count[0]~25\,
	combout => \debouncer_set_inst|count[1]~26_combout\,
	cout => \debouncer_set_inst|count[1]~27\);

-- Location: FF_X32_Y12_N11
\debouncer_set_inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[1]~26_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(1));

-- Location: LCCOMB_X32_Y12_N12
\debouncer_set_inst|count[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[2]~28_combout\ = (\debouncer_set_inst|count\(2) & (\debouncer_set_inst|count[1]~27\ $ (GND))) # (!\debouncer_set_inst|count\(2) & (!\debouncer_set_inst|count[1]~27\ & VCC))
-- \debouncer_set_inst|count[2]~29\ = CARRY((\debouncer_set_inst|count\(2) & !\debouncer_set_inst|count[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(2),
	datad => VCC,
	cin => \debouncer_set_inst|count[1]~27\,
	combout => \debouncer_set_inst|count[2]~28_combout\,
	cout => \debouncer_set_inst|count[2]~29\);

-- Location: FF_X32_Y12_N13
\debouncer_set_inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[2]~28_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(2));

-- Location: LCCOMB_X32_Y12_N14
\debouncer_set_inst|count[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[3]~30_combout\ = (\debouncer_set_inst|count\(3) & (!\debouncer_set_inst|count[2]~29\)) # (!\debouncer_set_inst|count\(3) & ((\debouncer_set_inst|count[2]~29\) # (GND)))
-- \debouncer_set_inst|count[3]~31\ = CARRY((!\debouncer_set_inst|count[2]~29\) # (!\debouncer_set_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(3),
	datad => VCC,
	cin => \debouncer_set_inst|count[2]~29\,
	combout => \debouncer_set_inst|count[3]~30_combout\,
	cout => \debouncer_set_inst|count[3]~31\);

-- Location: FF_X32_Y12_N15
\debouncer_set_inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[3]~30_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(3));

-- Location: LCCOMB_X32_Y12_N16
\debouncer_set_inst|count[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[4]~32_combout\ = (\debouncer_set_inst|count\(4) & (\debouncer_set_inst|count[3]~31\ $ (GND))) # (!\debouncer_set_inst|count\(4) & (!\debouncer_set_inst|count[3]~31\ & VCC))
-- \debouncer_set_inst|count[4]~33\ = CARRY((\debouncer_set_inst|count\(4) & !\debouncer_set_inst|count[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(4),
	datad => VCC,
	cin => \debouncer_set_inst|count[3]~31\,
	combout => \debouncer_set_inst|count[4]~32_combout\,
	cout => \debouncer_set_inst|count[4]~33\);

-- Location: FF_X32_Y12_N17
\debouncer_set_inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[4]~32_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(4));

-- Location: LCCOMB_X32_Y12_N18
\debouncer_set_inst|count[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[5]~34_combout\ = (\debouncer_set_inst|count\(5) & (!\debouncer_set_inst|count[4]~33\)) # (!\debouncer_set_inst|count\(5) & ((\debouncer_set_inst|count[4]~33\) # (GND)))
-- \debouncer_set_inst|count[5]~35\ = CARRY((!\debouncer_set_inst|count[4]~33\) # (!\debouncer_set_inst|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(5),
	datad => VCC,
	cin => \debouncer_set_inst|count[4]~33\,
	combout => \debouncer_set_inst|count[5]~34_combout\,
	cout => \debouncer_set_inst|count[5]~35\);

-- Location: FF_X32_Y12_N19
\debouncer_set_inst|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[5]~34_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(5));

-- Location: LCCOMB_X32_Y12_N20
\debouncer_set_inst|count[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[6]~36_combout\ = (\debouncer_set_inst|count\(6) & (\debouncer_set_inst|count[5]~35\ $ (GND))) # (!\debouncer_set_inst|count\(6) & (!\debouncer_set_inst|count[5]~35\ & VCC))
-- \debouncer_set_inst|count[6]~37\ = CARRY((\debouncer_set_inst|count\(6) & !\debouncer_set_inst|count[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(6),
	datad => VCC,
	cin => \debouncer_set_inst|count[5]~35\,
	combout => \debouncer_set_inst|count[6]~36_combout\,
	cout => \debouncer_set_inst|count[6]~37\);

-- Location: FF_X32_Y12_N21
\debouncer_set_inst|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[6]~36_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(6));

-- Location: LCCOMB_X32_Y12_N22
\debouncer_set_inst|count[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[7]~38_combout\ = (\debouncer_set_inst|count\(7) & (!\debouncer_set_inst|count[6]~37\)) # (!\debouncer_set_inst|count\(7) & ((\debouncer_set_inst|count[6]~37\) # (GND)))
-- \debouncer_set_inst|count[7]~39\ = CARRY((!\debouncer_set_inst|count[6]~37\) # (!\debouncer_set_inst|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(7),
	datad => VCC,
	cin => \debouncer_set_inst|count[6]~37\,
	combout => \debouncer_set_inst|count[7]~38_combout\,
	cout => \debouncer_set_inst|count[7]~39\);

-- Location: FF_X32_Y12_N23
\debouncer_set_inst|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[7]~38_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(7));

-- Location: LCCOMB_X32_Y12_N24
\debouncer_set_inst|count[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[8]~40_combout\ = (\debouncer_set_inst|count\(8) & (\debouncer_set_inst|count[7]~39\ $ (GND))) # (!\debouncer_set_inst|count\(8) & (!\debouncer_set_inst|count[7]~39\ & VCC))
-- \debouncer_set_inst|count[8]~41\ = CARRY((\debouncer_set_inst|count\(8) & !\debouncer_set_inst|count[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(8),
	datad => VCC,
	cin => \debouncer_set_inst|count[7]~39\,
	combout => \debouncer_set_inst|count[8]~40_combout\,
	cout => \debouncer_set_inst|count[8]~41\);

-- Location: FF_X32_Y12_N25
\debouncer_set_inst|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[8]~40_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(8));

-- Location: LCCOMB_X32_Y12_N26
\debouncer_set_inst|count[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[9]~42_combout\ = (\debouncer_set_inst|count\(9) & (!\debouncer_set_inst|count[8]~41\)) # (!\debouncer_set_inst|count\(9) & ((\debouncer_set_inst|count[8]~41\) # (GND)))
-- \debouncer_set_inst|count[9]~43\ = CARRY((!\debouncer_set_inst|count[8]~41\) # (!\debouncer_set_inst|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(9),
	datad => VCC,
	cin => \debouncer_set_inst|count[8]~41\,
	combout => \debouncer_set_inst|count[9]~42_combout\,
	cout => \debouncer_set_inst|count[9]~43\);

-- Location: FF_X32_Y12_N27
\debouncer_set_inst|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[9]~42_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(9));

-- Location: LCCOMB_X32_Y12_N28
\debouncer_set_inst|count[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[10]~44_combout\ = (\debouncer_set_inst|count\(10) & (\debouncer_set_inst|count[9]~43\ $ (GND))) # (!\debouncer_set_inst|count\(10) & (!\debouncer_set_inst|count[9]~43\ & VCC))
-- \debouncer_set_inst|count[10]~45\ = CARRY((\debouncer_set_inst|count\(10) & !\debouncer_set_inst|count[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(10),
	datad => VCC,
	cin => \debouncer_set_inst|count[9]~43\,
	combout => \debouncer_set_inst|count[10]~44_combout\,
	cout => \debouncer_set_inst|count[10]~45\);

-- Location: FF_X32_Y12_N29
\debouncer_set_inst|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[10]~44_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(10));

-- Location: LCCOMB_X32_Y12_N30
\debouncer_set_inst|count[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[11]~46_combout\ = (\debouncer_set_inst|count\(11) & (!\debouncer_set_inst|count[10]~45\)) # (!\debouncer_set_inst|count\(11) & ((\debouncer_set_inst|count[10]~45\) # (GND)))
-- \debouncer_set_inst|count[11]~47\ = CARRY((!\debouncer_set_inst|count[10]~45\) # (!\debouncer_set_inst|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(11),
	datad => VCC,
	cin => \debouncer_set_inst|count[10]~45\,
	combout => \debouncer_set_inst|count[11]~46_combout\,
	cout => \debouncer_set_inst|count[11]~47\);

-- Location: FF_X32_Y12_N31
\debouncer_set_inst|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[11]~46_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(11));

-- Location: LCCOMB_X32_Y11_N0
\debouncer_set_inst|count[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[12]~48_combout\ = (\debouncer_set_inst|count\(12) & (\debouncer_set_inst|count[11]~47\ $ (GND))) # (!\debouncer_set_inst|count\(12) & (!\debouncer_set_inst|count[11]~47\ & VCC))
-- \debouncer_set_inst|count[12]~49\ = CARRY((\debouncer_set_inst|count\(12) & !\debouncer_set_inst|count[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(12),
	datad => VCC,
	cin => \debouncer_set_inst|count[11]~47\,
	combout => \debouncer_set_inst|count[12]~48_combout\,
	cout => \debouncer_set_inst|count[12]~49\);

-- Location: FF_X32_Y11_N1
\debouncer_set_inst|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[12]~48_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(12));

-- Location: LCCOMB_X32_Y11_N2
\debouncer_set_inst|count[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[13]~50_combout\ = (\debouncer_set_inst|count\(13) & (!\debouncer_set_inst|count[12]~49\)) # (!\debouncer_set_inst|count\(13) & ((\debouncer_set_inst|count[12]~49\) # (GND)))
-- \debouncer_set_inst|count[13]~51\ = CARRY((!\debouncer_set_inst|count[12]~49\) # (!\debouncer_set_inst|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(13),
	datad => VCC,
	cin => \debouncer_set_inst|count[12]~49\,
	combout => \debouncer_set_inst|count[13]~50_combout\,
	cout => \debouncer_set_inst|count[13]~51\);

-- Location: FF_X32_Y11_N3
\debouncer_set_inst|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[13]~50_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(13));

-- Location: LCCOMB_X32_Y11_N4
\debouncer_set_inst|count[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[14]~52_combout\ = (\debouncer_set_inst|count\(14) & (\debouncer_set_inst|count[13]~51\ $ (GND))) # (!\debouncer_set_inst|count\(14) & (!\debouncer_set_inst|count[13]~51\ & VCC))
-- \debouncer_set_inst|count[14]~53\ = CARRY((\debouncer_set_inst|count\(14) & !\debouncer_set_inst|count[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(14),
	datad => VCC,
	cin => \debouncer_set_inst|count[13]~51\,
	combout => \debouncer_set_inst|count[14]~52_combout\,
	cout => \debouncer_set_inst|count[14]~53\);

-- Location: FF_X32_Y11_N5
\debouncer_set_inst|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[14]~52_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(14));

-- Location: LCCOMB_X32_Y11_N6
\debouncer_set_inst|count[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[15]~54_combout\ = (\debouncer_set_inst|count\(15) & (!\debouncer_set_inst|count[14]~53\)) # (!\debouncer_set_inst|count\(15) & ((\debouncer_set_inst|count[14]~53\) # (GND)))
-- \debouncer_set_inst|count[15]~55\ = CARRY((!\debouncer_set_inst|count[14]~53\) # (!\debouncer_set_inst|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(15),
	datad => VCC,
	cin => \debouncer_set_inst|count[14]~53\,
	combout => \debouncer_set_inst|count[15]~54_combout\,
	cout => \debouncer_set_inst|count[15]~55\);

-- Location: FF_X32_Y11_N7
\debouncer_set_inst|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[15]~54_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(15));

-- Location: LCCOMB_X32_Y11_N8
\debouncer_set_inst|count[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[16]~56_combout\ = (\debouncer_set_inst|count\(16) & (\debouncer_set_inst|count[15]~55\ $ (GND))) # (!\debouncer_set_inst|count\(16) & (!\debouncer_set_inst|count[15]~55\ & VCC))
-- \debouncer_set_inst|count[16]~57\ = CARRY((\debouncer_set_inst|count\(16) & !\debouncer_set_inst|count[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(16),
	datad => VCC,
	cin => \debouncer_set_inst|count[15]~55\,
	combout => \debouncer_set_inst|count[16]~56_combout\,
	cout => \debouncer_set_inst|count[16]~57\);

-- Location: FF_X32_Y11_N9
\debouncer_set_inst|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[16]~56_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(16));

-- Location: LCCOMB_X32_Y11_N10
\debouncer_set_inst|count[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[17]~58_combout\ = (\debouncer_set_inst|count\(17) & (!\debouncer_set_inst|count[16]~57\)) # (!\debouncer_set_inst|count\(17) & ((\debouncer_set_inst|count[16]~57\) # (GND)))
-- \debouncer_set_inst|count[17]~59\ = CARRY((!\debouncer_set_inst|count[16]~57\) # (!\debouncer_set_inst|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(17),
	datad => VCC,
	cin => \debouncer_set_inst|count[16]~57\,
	combout => \debouncer_set_inst|count[17]~58_combout\,
	cout => \debouncer_set_inst|count[17]~59\);

-- Location: FF_X32_Y11_N11
\debouncer_set_inst|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[17]~58_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(17));

-- Location: LCCOMB_X32_Y11_N12
\debouncer_set_inst|count[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[18]~60_combout\ = (\debouncer_set_inst|count\(18) & (\debouncer_set_inst|count[17]~59\ $ (GND))) # (!\debouncer_set_inst|count\(18) & (!\debouncer_set_inst|count[17]~59\ & VCC))
-- \debouncer_set_inst|count[18]~61\ = CARRY((\debouncer_set_inst|count\(18) & !\debouncer_set_inst|count[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(18),
	datad => VCC,
	cin => \debouncer_set_inst|count[17]~59\,
	combout => \debouncer_set_inst|count[18]~60_combout\,
	cout => \debouncer_set_inst|count[18]~61\);

-- Location: FF_X32_Y11_N13
\debouncer_set_inst|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[18]~60_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(18));

-- Location: LCCOMB_X32_Y11_N14
\debouncer_set_inst|count[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[19]~62_combout\ = (\debouncer_set_inst|count\(19) & (!\debouncer_set_inst|count[18]~61\)) # (!\debouncer_set_inst|count\(19) & ((\debouncer_set_inst|count[18]~61\) # (GND)))
-- \debouncer_set_inst|count[19]~63\ = CARRY((!\debouncer_set_inst|count[18]~61\) # (!\debouncer_set_inst|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(19),
	datad => VCC,
	cin => \debouncer_set_inst|count[18]~61\,
	combout => \debouncer_set_inst|count[19]~62_combout\,
	cout => \debouncer_set_inst|count[19]~63\);

-- Location: FF_X32_Y11_N15
\debouncer_set_inst|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[19]~62_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(19));

-- Location: LCCOMB_X32_Y11_N16
\debouncer_set_inst|count[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[20]~64_combout\ = (\debouncer_set_inst|count\(20) & (\debouncer_set_inst|count[19]~63\ $ (GND))) # (!\debouncer_set_inst|count\(20) & (!\debouncer_set_inst|count[19]~63\ & VCC))
-- \debouncer_set_inst|count[20]~65\ = CARRY((\debouncer_set_inst|count\(20) & !\debouncer_set_inst|count[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(20),
	datad => VCC,
	cin => \debouncer_set_inst|count[19]~63\,
	combout => \debouncer_set_inst|count[20]~64_combout\,
	cout => \debouncer_set_inst|count[20]~65\);

-- Location: FF_X32_Y11_N17
\debouncer_set_inst|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[20]~64_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(20));

-- Location: LCCOMB_X32_Y11_N18
\debouncer_set_inst|count[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[21]~66_combout\ = (\debouncer_set_inst|count\(21) & (!\debouncer_set_inst|count[20]~65\)) # (!\debouncer_set_inst|count\(21) & ((\debouncer_set_inst|count[20]~65\) # (GND)))
-- \debouncer_set_inst|count[21]~67\ = CARRY((!\debouncer_set_inst|count[20]~65\) # (!\debouncer_set_inst|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(21),
	datad => VCC,
	cin => \debouncer_set_inst|count[20]~65\,
	combout => \debouncer_set_inst|count[21]~66_combout\,
	cout => \debouncer_set_inst|count[21]~67\);

-- Location: FF_X32_Y11_N19
\debouncer_set_inst|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[21]~66_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(21));

-- Location: LCCOMB_X32_Y11_N20
\debouncer_set_inst|count[22]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[22]~69_combout\ = (\debouncer_set_inst|count\(22) & (\debouncer_set_inst|count[21]~67\ $ (GND))) # (!\debouncer_set_inst|count\(22) & (!\debouncer_set_inst|count[21]~67\ & VCC))
-- \debouncer_set_inst|count[22]~70\ = CARRY((\debouncer_set_inst|count\(22) & !\debouncer_set_inst|count[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(22),
	datad => VCC,
	cin => \debouncer_set_inst|count[21]~67\,
	combout => \debouncer_set_inst|count[22]~69_combout\,
	cout => \debouncer_set_inst|count[22]~70\);

-- Location: FF_X32_Y11_N21
\debouncer_set_inst|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[22]~69_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(22));

-- Location: LCCOMB_X32_Y11_N22
\debouncer_set_inst|count[23]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|count[23]~71_combout\ = \debouncer_set_inst|count\(23) $ (\debouncer_set_inst|count[22]~70\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(23),
	cin => \debouncer_set_inst|count[22]~70\,
	combout => \debouncer_set_inst|count[23]~71_combout\);

-- Location: FF_X32_Y11_N23
\debouncer_set_inst|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|count[23]~71_combout\,
	sclr => \debouncer_set_inst|count[14]~68_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|count\(23));

-- Location: LCCOMB_X31_Y11_N4
\debouncer_set_inst|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|LessThan0~5_combout\ = (!\debouncer_set_inst|count\(22) & (!\debouncer_set_inst|count\(21) & ((!\debouncer_set_inst|count\(20)) # (!\debouncer_set_inst|count\(19)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(22),
	datab => \debouncer_set_inst|count\(21),
	datac => \debouncer_set_inst|count\(19),
	datad => \debouncer_set_inst|count\(20),
	combout => \debouncer_set_inst|LessThan0~5_combout\);

-- Location: LCCOMB_X32_Y11_N28
\debouncer_set_inst|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|LessThan0~3_combout\ = ((!\debouncer_set_inst|count\(13) & (!\debouncer_set_inst|count\(12) & !\debouncer_set_inst|count\(14)))) # (!\debouncer_set_inst|count\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(13),
	datab => \debouncer_set_inst|count\(12),
	datac => \debouncer_set_inst|count\(15),
	datad => \debouncer_set_inst|count\(14),
	combout => \debouncer_set_inst|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y12_N6
\debouncer_set_inst|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|LessThan0~1_combout\ = (((!\debouncer_set_inst|count\(8) & !\debouncer_set_inst|count\(7))) # (!\debouncer_set_inst|count\(10))) # (!\debouncer_set_inst|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(9),
	datab => \debouncer_set_inst|count\(8),
	datac => \debouncer_set_inst|count\(7),
	datad => \debouncer_set_inst|count\(10),
	combout => \debouncer_set_inst|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y11_N26
\debouncer_set_inst|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|LessThan0~2_combout\ = (!\debouncer_set_inst|count\(13) & (!\debouncer_set_inst|count\(14) & (!\debouncer_set_inst|count\(11) & \debouncer_set_inst|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(13),
	datab => \debouncer_set_inst|count\(14),
	datac => \debouncer_set_inst|count\(11),
	datad => \debouncer_set_inst|LessThan0~1_combout\,
	combout => \debouncer_set_inst|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y11_N24
\debouncer_set_inst|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|LessThan0~0_combout\ = (!\debouncer_set_inst|count\(16) & (!\debouncer_set_inst|count\(17) & (!\debouncer_set_inst|count\(21) & !\debouncer_set_inst|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(16),
	datab => \debouncer_set_inst|count\(17),
	datac => \debouncer_set_inst|count\(21),
	datad => \debouncer_set_inst|count\(22),
	combout => \debouncer_set_inst|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y11_N30
\debouncer_set_inst|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|LessThan0~4_combout\ = (!\debouncer_set_inst|count\(18) & (\debouncer_set_inst|LessThan0~0_combout\ & ((\debouncer_set_inst|LessThan0~3_combout\) # (\debouncer_set_inst|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \debouncer_set_inst|count\(18),
	datab => \debouncer_set_inst|LessThan0~3_combout\,
	datac => \debouncer_set_inst|LessThan0~2_combout\,
	datad => \debouncer_set_inst|LessThan0~0_combout\,
	combout => \debouncer_set_inst|LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y12_N0
\debouncer_set_inst|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|LessThan0~6_combout\ = ((\debouncer_set_inst|LessThan0~5_combout\) # (\debouncer_set_inst|LessThan0~4_combout\)) # (!\debouncer_set_inst|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_set_inst|count\(23),
	datac => \debouncer_set_inst|LessThan0~5_combout\,
	datad => \debouncer_set_inst|LessThan0~4_combout\,
	combout => \debouncer_set_inst|LessThan0~6_combout\);

-- Location: LCCOMB_X32_Y12_N4
\debouncer_set_inst|button_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \debouncer_set_inst|button_out~0_combout\ = (\debouncer_set_inst|LessThan0~6_combout\ & ((\debouncer_set_inst|button_out~q\))) # (!\debouncer_set_inst|LessThan0~6_combout\ & (\SET~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SET~input_o\,
	datac => \debouncer_set_inst|button_out~q\,
	datad => \debouncer_set_inst|LessThan0~6_combout\,
	combout => \debouncer_set_inst|button_out~0_combout\);

-- Location: FF_X32_Y12_N5
\debouncer_set_inst|button_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \debouncer_set_inst|button_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \debouncer_set_inst|button_out~q\);

-- Location: LCCOMB_X31_Y12_N8
\controler_inst|q_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \controler_inst|q_reg~0_combout\ = (\debouncer_set_inst|button_out~q\) # ((!\debouncer_clr_inst|button_out~q\ & \controler_inst|q_reg~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \debouncer_clr_inst|button_out~q\,
	datac => \controler_inst|q_reg~q\,
	datad => \debouncer_set_inst|button_out~q\,
	combout => \controler_inst|q_reg~0_combout\);

-- Location: FF_X31_Y12_N9
\controler_inst|q_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \controler_inst|q_reg~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \controler_inst|q_reg~q\);

-- Location: LCCOMB_X18_Y16_N0
\keypad_inst|Div1ms|count[0]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[0]~15_combout\ = \keypad_inst|Div1ms|count\(0) $ (VCC)
-- \keypad_inst|Div1ms|count[0]~16\ = CARRY(\keypad_inst|Div1ms|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(0),
	datad => VCC,
	combout => \keypad_inst|Div1ms|count[0]~15_combout\,
	cout => \keypad_inst|Div1ms|count[0]~16\);

-- Location: LCCOMB_X18_Y16_N26
\keypad_inst|Div1ms|count[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[13]~41_combout\ = (\keypad_inst|Div1ms|count\(13) & (!\keypad_inst|Div1ms|count[12]~40\)) # (!\keypad_inst|Div1ms|count\(13) & ((\keypad_inst|Div1ms|count[12]~40\) # (GND)))
-- \keypad_inst|Div1ms|count[13]~42\ = CARRY((!\keypad_inst|Div1ms|count[12]~40\) # (!\keypad_inst|Div1ms|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(13),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[12]~40\,
	combout => \keypad_inst|Div1ms|count[13]~41_combout\,
	cout => \keypad_inst|Div1ms|count[13]~42\);

-- Location: LCCOMB_X18_Y16_N28
\keypad_inst|Div1ms|count[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[14]~43_combout\ = \keypad_inst|Div1ms|count[13]~42\ $ (!\keypad_inst|Div1ms|count\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Div1ms|count\(14),
	cin => \keypad_inst|Div1ms|count[13]~42\,
	combout => \keypad_inst|Div1ms|count[14]~43_combout\);

-- Location: FF_X18_Y16_N29
\keypad_inst|Div1ms|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[14]~43_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(14));

-- Location: LCCOMB_X19_Y16_N16
\keypad_inst|Div1ms|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|LessThan0~0_combout\ = (!\keypad_inst|Div1ms|count\(9) & (!\keypad_inst|Div1ms|count\(10) & (!\keypad_inst|Div1ms|count\(11) & !\keypad_inst|Div1ms|count\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(9),
	datab => \keypad_inst|Div1ms|count\(10),
	datac => \keypad_inst|Div1ms|count\(11),
	datad => \keypad_inst|Div1ms|count\(12),
	combout => \keypad_inst|Div1ms|LessThan0~0_combout\);

-- Location: LCCOMB_X19_Y16_N24
\keypad_inst|Div1ms|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|LessThan0~1_combout\ = (!\keypad_inst|Div1ms|count\(3) & (((!\keypad_inst|Div1ms|count\(1)) # (!\keypad_inst|Div1ms|count\(2))) # (!\keypad_inst|Div1ms|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(0),
	datab => \keypad_inst|Div1ms|count\(3),
	datac => \keypad_inst|Div1ms|count\(2),
	datad => \keypad_inst|Div1ms|count\(1),
	combout => \keypad_inst|Div1ms|LessThan0~1_combout\);

-- Location: LCCOMB_X19_Y16_N28
\keypad_inst|Div1ms|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|LessThan0~2_combout\ = (\keypad_inst|Div1ms|count\(6)) # ((\keypad_inst|Div1ms|count\(5) & ((\keypad_inst|Div1ms|count\(4)) # (!\keypad_inst|Div1ms|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(4),
	datab => \keypad_inst|Div1ms|count\(5),
	datac => \keypad_inst|Div1ms|count\(6),
	datad => \keypad_inst|Div1ms|LessThan0~1_combout\,
	combout => \keypad_inst|Div1ms|LessThan0~2_combout\);

-- Location: LCCOMB_X19_Y16_N18
\keypad_inst|Div1ms|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|LessThan0~3_combout\ = (\keypad_inst|Div1ms|LessThan0~0_combout\ & (((!\keypad_inst|Div1ms|LessThan0~2_combout\) # (!\keypad_inst|Div1ms|count\(8))) # (!\keypad_inst|Div1ms|count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(7),
	datab => \keypad_inst|Div1ms|LessThan0~0_combout\,
	datac => \keypad_inst|Div1ms|count\(8),
	datad => \keypad_inst|Div1ms|LessThan0~2_combout\,
	combout => \keypad_inst|Div1ms|LessThan0~3_combout\);

-- Location: LCCOMB_X18_Y16_N30
\keypad_inst|Div1ms|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|LessThan0~4_combout\ = (\keypad_inst|Div1ms|count\(14) & (\keypad_inst|Div1ms|count\(13) & !\keypad_inst|Div1ms|LessThan0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(14),
	datac => \keypad_inst|Div1ms|count\(13),
	datad => \keypad_inst|Div1ms|LessThan0~3_combout\,
	combout => \keypad_inst|Div1ms|LessThan0~4_combout\);

-- Location: FF_X18_Y16_N1
\keypad_inst|Div1ms|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[0]~15_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(0));

-- Location: LCCOMB_X18_Y16_N2
\keypad_inst|Div1ms|count[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[1]~17_combout\ = (\keypad_inst|Div1ms|count\(1) & (!\keypad_inst|Div1ms|count[0]~16\)) # (!\keypad_inst|Div1ms|count\(1) & ((\keypad_inst|Div1ms|count[0]~16\) # (GND)))
-- \keypad_inst|Div1ms|count[1]~18\ = CARRY((!\keypad_inst|Div1ms|count[0]~16\) # (!\keypad_inst|Div1ms|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(1),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[0]~16\,
	combout => \keypad_inst|Div1ms|count[1]~17_combout\,
	cout => \keypad_inst|Div1ms|count[1]~18\);

-- Location: FF_X18_Y16_N3
\keypad_inst|Div1ms|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[1]~17_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(1));

-- Location: LCCOMB_X18_Y16_N4
\keypad_inst|Div1ms|count[2]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[2]~19_combout\ = (\keypad_inst|Div1ms|count\(2) & (\keypad_inst|Div1ms|count[1]~18\ $ (GND))) # (!\keypad_inst|Div1ms|count\(2) & (!\keypad_inst|Div1ms|count[1]~18\ & VCC))
-- \keypad_inst|Div1ms|count[2]~20\ = CARRY((\keypad_inst|Div1ms|count\(2) & !\keypad_inst|Div1ms|count[1]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(2),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[1]~18\,
	combout => \keypad_inst|Div1ms|count[2]~19_combout\,
	cout => \keypad_inst|Div1ms|count[2]~20\);

-- Location: FF_X18_Y16_N5
\keypad_inst|Div1ms|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[2]~19_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(2));

-- Location: LCCOMB_X18_Y16_N6
\keypad_inst|Div1ms|count[3]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[3]~21_combout\ = (\keypad_inst|Div1ms|count\(3) & (!\keypad_inst|Div1ms|count[2]~20\)) # (!\keypad_inst|Div1ms|count\(3) & ((\keypad_inst|Div1ms|count[2]~20\) # (GND)))
-- \keypad_inst|Div1ms|count[3]~22\ = CARRY((!\keypad_inst|Div1ms|count[2]~20\) # (!\keypad_inst|Div1ms|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(3),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[2]~20\,
	combout => \keypad_inst|Div1ms|count[3]~21_combout\,
	cout => \keypad_inst|Div1ms|count[3]~22\);

-- Location: FF_X18_Y16_N7
\keypad_inst|Div1ms|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[3]~21_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(3));

-- Location: LCCOMB_X18_Y16_N8
\keypad_inst|Div1ms|count[4]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[4]~23_combout\ = (\keypad_inst|Div1ms|count\(4) & (\keypad_inst|Div1ms|count[3]~22\ $ (GND))) # (!\keypad_inst|Div1ms|count\(4) & (!\keypad_inst|Div1ms|count[3]~22\ & VCC))
-- \keypad_inst|Div1ms|count[4]~24\ = CARRY((\keypad_inst|Div1ms|count\(4) & !\keypad_inst|Div1ms|count[3]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(4),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[3]~22\,
	combout => \keypad_inst|Div1ms|count[4]~23_combout\,
	cout => \keypad_inst|Div1ms|count[4]~24\);

-- Location: FF_X18_Y16_N9
\keypad_inst|Div1ms|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[4]~23_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(4));

-- Location: LCCOMB_X18_Y16_N10
\keypad_inst|Div1ms|count[5]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[5]~25_combout\ = (\keypad_inst|Div1ms|count\(5) & (!\keypad_inst|Div1ms|count[4]~24\)) # (!\keypad_inst|Div1ms|count\(5) & ((\keypad_inst|Div1ms|count[4]~24\) # (GND)))
-- \keypad_inst|Div1ms|count[5]~26\ = CARRY((!\keypad_inst|Div1ms|count[4]~24\) # (!\keypad_inst|Div1ms|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(5),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[4]~24\,
	combout => \keypad_inst|Div1ms|count[5]~25_combout\,
	cout => \keypad_inst|Div1ms|count[5]~26\);

-- Location: FF_X18_Y16_N11
\keypad_inst|Div1ms|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[5]~25_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(5));

-- Location: LCCOMB_X18_Y16_N12
\keypad_inst|Div1ms|count[6]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[6]~27_combout\ = (\keypad_inst|Div1ms|count\(6) & (\keypad_inst|Div1ms|count[5]~26\ $ (GND))) # (!\keypad_inst|Div1ms|count\(6) & (!\keypad_inst|Div1ms|count[5]~26\ & VCC))
-- \keypad_inst|Div1ms|count[6]~28\ = CARRY((\keypad_inst|Div1ms|count\(6) & !\keypad_inst|Div1ms|count[5]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(6),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[5]~26\,
	combout => \keypad_inst|Div1ms|count[6]~27_combout\,
	cout => \keypad_inst|Div1ms|count[6]~28\);

-- Location: FF_X18_Y16_N13
\keypad_inst|Div1ms|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[6]~27_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(6));

-- Location: LCCOMB_X18_Y16_N14
\keypad_inst|Div1ms|count[7]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[7]~29_combout\ = (\keypad_inst|Div1ms|count\(7) & (!\keypad_inst|Div1ms|count[6]~28\)) # (!\keypad_inst|Div1ms|count\(7) & ((\keypad_inst|Div1ms|count[6]~28\) # (GND)))
-- \keypad_inst|Div1ms|count[7]~30\ = CARRY((!\keypad_inst|Div1ms|count[6]~28\) # (!\keypad_inst|Div1ms|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(7),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[6]~28\,
	combout => \keypad_inst|Div1ms|count[7]~29_combout\,
	cout => \keypad_inst|Div1ms|count[7]~30\);

-- Location: FF_X18_Y16_N15
\keypad_inst|Div1ms|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[7]~29_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(7));

-- Location: LCCOMB_X18_Y16_N16
\keypad_inst|Div1ms|count[8]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[8]~31_combout\ = (\keypad_inst|Div1ms|count\(8) & (\keypad_inst|Div1ms|count[7]~30\ $ (GND))) # (!\keypad_inst|Div1ms|count\(8) & (!\keypad_inst|Div1ms|count[7]~30\ & VCC))
-- \keypad_inst|Div1ms|count[8]~32\ = CARRY((\keypad_inst|Div1ms|count\(8) & !\keypad_inst|Div1ms|count[7]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(8),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[7]~30\,
	combout => \keypad_inst|Div1ms|count[8]~31_combout\,
	cout => \keypad_inst|Div1ms|count[8]~32\);

-- Location: FF_X18_Y16_N17
\keypad_inst|Div1ms|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[8]~31_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(8));

-- Location: LCCOMB_X18_Y16_N18
\keypad_inst|Div1ms|count[9]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[9]~33_combout\ = (\keypad_inst|Div1ms|count\(9) & (!\keypad_inst|Div1ms|count[8]~32\)) # (!\keypad_inst|Div1ms|count\(9) & ((\keypad_inst|Div1ms|count[8]~32\) # (GND)))
-- \keypad_inst|Div1ms|count[9]~34\ = CARRY((!\keypad_inst|Div1ms|count[8]~32\) # (!\keypad_inst|Div1ms|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(9),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[8]~32\,
	combout => \keypad_inst|Div1ms|count[9]~33_combout\,
	cout => \keypad_inst|Div1ms|count[9]~34\);

-- Location: FF_X18_Y16_N19
\keypad_inst|Div1ms|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[9]~33_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(9));

-- Location: LCCOMB_X18_Y16_N20
\keypad_inst|Div1ms|count[10]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[10]~35_combout\ = (\keypad_inst|Div1ms|count\(10) & (\keypad_inst|Div1ms|count[9]~34\ $ (GND))) # (!\keypad_inst|Div1ms|count\(10) & (!\keypad_inst|Div1ms|count[9]~34\ & VCC))
-- \keypad_inst|Div1ms|count[10]~36\ = CARRY((\keypad_inst|Div1ms|count\(10) & !\keypad_inst|Div1ms|count[9]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(10),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[9]~34\,
	combout => \keypad_inst|Div1ms|count[10]~35_combout\,
	cout => \keypad_inst|Div1ms|count[10]~36\);

-- Location: FF_X18_Y16_N21
\keypad_inst|Div1ms|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[10]~35_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(10));

-- Location: LCCOMB_X18_Y16_N22
\keypad_inst|Div1ms|count[11]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[11]~37_combout\ = (\keypad_inst|Div1ms|count\(11) & (!\keypad_inst|Div1ms|count[10]~36\)) # (!\keypad_inst|Div1ms|count\(11) & ((\keypad_inst|Div1ms|count[10]~36\) # (GND)))
-- \keypad_inst|Div1ms|count[11]~38\ = CARRY((!\keypad_inst|Div1ms|count[10]~36\) # (!\keypad_inst|Div1ms|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(11),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[10]~36\,
	combout => \keypad_inst|Div1ms|count[11]~37_combout\,
	cout => \keypad_inst|Div1ms|count[11]~38\);

-- Location: FF_X18_Y16_N23
\keypad_inst|Div1ms|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[11]~37_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(11));

-- Location: LCCOMB_X18_Y16_N24
\keypad_inst|Div1ms|count[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|count[12]~39_combout\ = (\keypad_inst|Div1ms|count\(12) & (\keypad_inst|Div1ms|count[11]~38\ $ (GND))) # (!\keypad_inst|Div1ms|count\(12) & (!\keypad_inst|Div1ms|count[11]~38\ & VCC))
-- \keypad_inst|Div1ms|count[12]~40\ = CARRY((\keypad_inst|Div1ms|count\(12) & !\keypad_inst|Div1ms|count[11]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Div1ms|count\(12),
	datad => VCC,
	cin => \keypad_inst|Div1ms|count[11]~38\,
	combout => \keypad_inst|Div1ms|count[12]~39_combout\,
	cout => \keypad_inst|Div1ms|count[12]~40\);

-- Location: FF_X18_Y16_N25
\keypad_inst|Div1ms|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[12]~39_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(12));

-- Location: FF_X18_Y16_N27
\keypad_inst|Div1ms|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|count[13]~41_combout\,
	sclr => \keypad_inst|Div1ms|LessThan0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|count\(13));

-- Location: LCCOMB_X19_Y16_N26
\keypad_inst|Div1ms|clk_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|clk_reg~0_combout\ = \keypad_inst|Div1ms|clk_reg~q\ $ (((\keypad_inst|Div1ms|count\(13) & (\keypad_inst|Div1ms|count\(14) & !\keypad_inst|Div1ms|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|count\(13),
	datab => \keypad_inst|Div1ms|count\(14),
	datac => \keypad_inst|Div1ms|clk_reg~q\,
	datad => \keypad_inst|Div1ms|LessThan0~3_combout\,
	combout => \keypad_inst|Div1ms|clk_reg~0_combout\);

-- Location: LCCOMB_X19_Y16_N22
\keypad_inst|Div1ms|clk_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Div1ms|clk_reg~feeder_combout\ = \keypad_inst|Div1ms|clk_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Div1ms|clk_reg~0_combout\,
	combout => \keypad_inst|Div1ms|clk_reg~feeder_combout\);

-- Location: FF_X19_Y16_N23
\keypad_inst|Div1ms|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|Div1ms|clk_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|Div1ms|clk_reg~q\);

-- Location: CLKCTRL_G8
\keypad_inst|Div1ms|clk_reg~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \keypad_inst|Div1ms|clk_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\);

-- Location: IOIBUF_X28_Y0_N1
\COLUMNAS[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COLUMNAS(2),
	o => \COLUMNAS[2]~input_o\);

-- Location: LCCOMB_X21_Y9_N30
\keypad_inst|REG_B[5][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[5][0]~feeder_combout\ = \COLUMNAS[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COLUMNAS[2]~input_o\,
	combout => \keypad_inst|REG_B[5][0]~feeder_combout\);

-- Location: FF_X21_Y9_N31
\keypad_inst|REG_B[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[5][0]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[5][0]~q\);

-- Location: LCCOMB_X21_Y10_N2
\keypad_inst|REG_B[13][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[13][0]~feeder_combout\ = \COLUMNAS[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COLUMNAS[2]~input_o\,
	combout => \keypad_inst|REG_B[13][0]~feeder_combout\);

-- Location: FF_X21_Y10_N3
\keypad_inst|REG_B[13][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[13][0]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[13][0]~q\);

-- Location: FF_X22_Y9_N1
\keypad_inst|REG_B[9][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \COLUMNAS[2]~input_o\,
	sload => VCC,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[9][0]~q\);

-- Location: FF_X21_Y9_N25
\keypad_inst|REG_B[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \COLUMNAS[2]~input_o\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[1][0]~q\);

-- Location: LCCOMB_X21_Y9_N24
\keypad_inst|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux24~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|FILA\(0) & (\keypad_inst|REG_B[5][0]~q\)) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[1][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[5][0]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[1][0]~q\,
	datad => \keypad_inst|FILA\(0),
	combout => \keypad_inst|Mux24~0_combout\);

-- Location: LCCOMB_X22_Y9_N0
\keypad_inst|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux24~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux24~0_combout\ & (\keypad_inst|REG_B[13][0]~q\)) # (!\keypad_inst|Mux24~0_combout\ & ((\keypad_inst|REG_B[9][0]~q\))))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[13][0]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[9][0]~q\,
	datad => \keypad_inst|Mux24~0_combout\,
	combout => \keypad_inst|Mux24~1_combout\);

-- Location: FF_X21_Y9_N9
\keypad_inst|REG_B[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux24~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[5][1]~q\);

-- Location: LCCOMB_X21_Y10_N24
\keypad_inst|REG_B[13][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[13][1]~feeder_combout\ = \keypad_inst|Mux24~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux24~1_combout\,
	combout => \keypad_inst|REG_B[13][1]~feeder_combout\);

-- Location: FF_X21_Y10_N25
\keypad_inst|REG_B[13][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[13][1]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[13][1]~q\);

-- Location: FF_X21_Y9_N7
\keypad_inst|REG_B[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux24~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[1][1]~q\);

-- Location: LCCOMB_X22_Y9_N14
\keypad_inst|REG_B[9][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[9][1]~feeder_combout\ = \keypad_inst|Mux24~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux24~1_combout\,
	combout => \keypad_inst|REG_B[9][1]~feeder_combout\);

-- Location: FF_X22_Y9_N15
\keypad_inst|REG_B[9][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[9][1]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[9][1]~q\);

-- Location: LCCOMB_X21_Y9_N6
\keypad_inst|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux23~0_combout\ = (\keypad_inst|FILA\(0) & (\keypad_inst|FILA\(1))) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[9][1]~q\))) # (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[1][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[1][1]~q\,
	datad => \keypad_inst|REG_B[9][1]~q\,
	combout => \keypad_inst|Mux23~0_combout\);

-- Location: LCCOMB_X21_Y9_N0
\keypad_inst|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux23~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux23~0_combout\ & ((\keypad_inst|REG_B[13][1]~q\))) # (!\keypad_inst|Mux23~0_combout\ & (\keypad_inst|REG_B[5][1]~q\)))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|REG_B[5][1]~q\,
	datac => \keypad_inst|REG_B[13][1]~q\,
	datad => \keypad_inst|Mux23~0_combout\,
	combout => \keypad_inst|Mux23~1_combout\);

-- Location: LCCOMB_X21_Y10_N10
\keypad_inst|REG_B[13][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[13][2]~feeder_combout\ = \keypad_inst|Mux23~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux23~1_combout\,
	combout => \keypad_inst|REG_B[13][2]~feeder_combout\);

-- Location: FF_X21_Y10_N11
\keypad_inst|REG_B[13][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[13][2]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[13][2]~q\);

-- Location: LCCOMB_X22_Y9_N10
\keypad_inst|REG_B[9][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[9][2]~feeder_combout\ = \keypad_inst|Mux23~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux23~1_combout\,
	combout => \keypad_inst|REG_B[9][2]~feeder_combout\);

-- Location: FF_X22_Y9_N11
\keypad_inst|REG_B[9][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[9][2]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[9][2]~q\);

-- Location: FF_X21_Y9_N1
\keypad_inst|REG_B[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux23~1_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[1][2]~q\);

-- Location: LCCOMB_X21_Y9_N18
\keypad_inst|REG_B[5][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[5][2]~feeder_combout\ = \keypad_inst|Mux23~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux23~1_combout\,
	combout => \keypad_inst|REG_B[5][2]~feeder_combout\);

-- Location: FF_X21_Y9_N19
\keypad_inst|REG_B[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[5][2]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[5][2]~q\);

-- Location: LCCOMB_X21_Y9_N4
\keypad_inst|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux22~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[5][2]~q\))) # (!\keypad_inst|FILA\(0) & (\keypad_inst|REG_B[1][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[1][2]~q\,
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|REG_B[5][2]~q\,
	combout => \keypad_inst|Mux22~0_combout\);

-- Location: LCCOMB_X21_Y10_N4
\keypad_inst|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux22~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux22~0_combout\ & (\keypad_inst|REG_B[13][2]~q\)) # (!\keypad_inst|Mux22~0_combout\ & ((\keypad_inst|REG_B[9][2]~q\))))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[13][2]~q\,
	datac => \keypad_inst|REG_B[9][2]~q\,
	datad => \keypad_inst|Mux22~0_combout\,
	combout => \keypad_inst|Mux22~1_combout\);

-- Location: LCCOMB_X21_Y9_N20
\keypad_inst|REG_B[5][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[5][3]~feeder_combout\ = \keypad_inst|Mux22~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux22~1_combout\,
	combout => \keypad_inst|REG_B[5][3]~feeder_combout\);

-- Location: FF_X21_Y9_N21
\keypad_inst|REG_B[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[5][3]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[5][3]~q\);

-- Location: LCCOMB_X21_Y9_N8
\keypad_inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal5~0_combout\ = (\keypad_inst|REG_B[5][0]~q\ & (\keypad_inst|REG_B[5][3]~q\ & (\keypad_inst|REG_B[5][1]~q\ & \keypad_inst|REG_B[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[5][0]~q\,
	datab => \keypad_inst|REG_B[5][3]~q\,
	datac => \keypad_inst|REG_B[5][1]~q\,
	datad => \keypad_inst|REG_B[5][2]~q\,
	combout => \keypad_inst|Equal5~0_combout\);

-- Location: IOIBUF_X25_Y0_N1
\COLUMNAS[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COLUMNAS(3),
	o => \COLUMNAS[3]~input_o\);

-- Location: FF_X16_Y10_N9
\keypad_inst|REG_B[8][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \COLUMNAS[3]~input_o\,
	sload => VCC,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[8][0]~q\);

-- Location: LCCOMB_X21_Y10_N26
\keypad_inst|REG_B[12][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[12][0]~feeder_combout\ = \COLUMNAS[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COLUMNAS[3]~input_o\,
	combout => \keypad_inst|REG_B[12][0]~feeder_combout\);

-- Location: FF_X21_Y10_N27
\keypad_inst|REG_B[12][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[12][0]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[12][0]~q\);

-- Location: FF_X18_Y9_N17
\keypad_inst|REG_B[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \COLUMNAS[3]~input_o\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[4][0]~q\);

-- Location: FF_X18_Y9_N29
\keypad_inst|REG_B[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \COLUMNAS[3]~input_o\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[0][0]~q\);

-- Location: LCCOMB_X18_Y9_N16
\keypad_inst|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux31~0_combout\ = (\keypad_inst|FILA\(1) & (\keypad_inst|FILA\(0))) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|FILA\(0) & (\keypad_inst|REG_B[4][0]~q\)) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|FILA\(0),
	datac => \keypad_inst|REG_B[4][0]~q\,
	datad => \keypad_inst|REG_B[0][0]~q\,
	combout => \keypad_inst|Mux31~0_combout\);

-- Location: LCCOMB_X21_Y10_N6
\keypad_inst|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux31~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux31~0_combout\ & ((\keypad_inst|REG_B[12][0]~q\))) # (!\keypad_inst|Mux31~0_combout\ & (\keypad_inst|REG_B[8][0]~q\)))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux31~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[8][0]~q\,
	datac => \keypad_inst|REG_B[12][0]~q\,
	datad => \keypad_inst|Mux31~0_combout\,
	combout => \keypad_inst|Mux31~1_combout\);

-- Location: LCCOMB_X18_Y9_N22
\keypad_inst|REG_B[4][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[4][1]~feeder_combout\ = \keypad_inst|Mux31~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux31~1_combout\,
	combout => \keypad_inst|REG_B[4][1]~feeder_combout\);

-- Location: FF_X18_Y9_N23
\keypad_inst|REG_B[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[4][1]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[4][1]~q\);

-- Location: LCCOMB_X21_Y10_N0
\keypad_inst|REG_B[12][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[12][1]~feeder_combout\ = \keypad_inst|Mux31~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux31~1_combout\,
	combout => \keypad_inst|REG_B[12][1]~feeder_combout\);

-- Location: FF_X21_Y10_N1
\keypad_inst|REG_B[12][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[12][1]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[12][1]~q\);

-- Location: LCCOMB_X16_Y10_N26
\keypad_inst|REG_B[8][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[8][1]~feeder_combout\ = \keypad_inst|Mux31~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux31~1_combout\,
	combout => \keypad_inst|REG_B[8][1]~feeder_combout\);

-- Location: FF_X16_Y10_N27
\keypad_inst|REG_B[8][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[8][1]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[8][1]~q\);

-- Location: LCCOMB_X18_Y9_N10
\keypad_inst|REG_B[0][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[0][1]~feeder_combout\ = \keypad_inst|Mux31~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux31~1_combout\,
	combout => \keypad_inst|REG_B[0][1]~feeder_combout\);

-- Location: FF_X18_Y9_N11
\keypad_inst|REG_B[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[0][1]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[0][1]~q\);

-- Location: LCCOMB_X18_Y9_N12
\keypad_inst|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux30~0_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[4][1]~q\) # ((\keypad_inst|FILA\(1))))) # (!\keypad_inst|FILA\(0) & (((\keypad_inst|REG_B[0][1]~q\ & !\keypad_inst|FILA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[4][1]~q\,
	datab => \keypad_inst|FILA\(0),
	datac => \keypad_inst|REG_B[0][1]~q\,
	datad => \keypad_inst|FILA\(1),
	combout => \keypad_inst|Mux30~0_combout\);

-- Location: LCCOMB_X21_Y10_N30
\keypad_inst|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux30~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux30~0_combout\ & (\keypad_inst|REG_B[12][1]~q\)) # (!\keypad_inst|Mux30~0_combout\ & ((\keypad_inst|REG_B[8][1]~q\))))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[12][1]~q\,
	datac => \keypad_inst|REG_B[8][1]~q\,
	datad => \keypad_inst|Mux30~0_combout\,
	combout => \keypad_inst|Mux30~1_combout\);

-- Location: FF_X21_Y10_N31
\keypad_inst|REG_B[12][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux30~1_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[12][2]~q\);

-- Location: FF_X18_Y9_N5
\keypad_inst|REG_B[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux30~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[4][2]~q\);

-- Location: LCCOMB_X19_Y10_N22
\keypad_inst|REG_B[0][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[0][2]~feeder_combout\ = \keypad_inst|Mux30~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux30~1_combout\,
	combout => \keypad_inst|REG_B[0][2]~feeder_combout\);

-- Location: FF_X19_Y10_N23
\keypad_inst|REG_B[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[0][2]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[0][2]~q\);

-- Location: LCCOMB_X16_Y10_N16
\keypad_inst|REG_B[8][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[8][2]~feeder_combout\ = \keypad_inst|Mux30~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux30~1_combout\,
	combout => \keypad_inst|REG_B[8][2]~feeder_combout\);

-- Location: FF_X16_Y10_N17
\keypad_inst|REG_B[8][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[8][2]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[8][2]~q\);

-- Location: LCCOMB_X19_Y10_N24
\keypad_inst|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux29~0_combout\ = (\keypad_inst|FILA\(0) & (((\keypad_inst|FILA\(1))))) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[8][2]~q\))) # (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[0][2]~q\,
	datab => \keypad_inst|FILA\(0),
	datac => \keypad_inst|FILA\(1),
	datad => \keypad_inst|REG_B[8][2]~q\,
	combout => \keypad_inst|Mux29~0_combout\);

-- Location: LCCOMB_X19_Y9_N22
\keypad_inst|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux29~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux29~0_combout\ & (\keypad_inst|REG_B[12][2]~q\)) # (!\keypad_inst|Mux29~0_combout\ & ((\keypad_inst|REG_B[4][2]~q\))))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[12][2]~q\,
	datab => \keypad_inst|REG_B[4][2]~q\,
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|Mux29~0_combout\,
	combout => \keypad_inst|Mux29~1_combout\);

-- Location: FF_X18_Y9_N19
\keypad_inst|REG_B[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux29~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[4][3]~q\);

-- Location: LCCOMB_X18_Y9_N4
\keypad_inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal4~0_combout\ = (\keypad_inst|REG_B[4][1]~q\ & (\keypad_inst|REG_B[4][3]~q\ & (\keypad_inst|REG_B[4][2]~q\ & \keypad_inst|REG_B[4][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[4][1]~q\,
	datab => \keypad_inst|REG_B[4][3]~q\,
	datac => \keypad_inst|REG_B[4][2]~q\,
	datad => \keypad_inst|REG_B[4][0]~q\,
	combout => \keypad_inst|Equal4~0_combout\);

-- Location: LCCOMB_X21_Y10_N20
\keypad_inst|REG_B[12][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[12][3]~feeder_combout\ = \keypad_inst|Mux29~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux29~1_combout\,
	combout => \keypad_inst|REG_B[12][3]~feeder_combout\);

-- Location: FF_X21_Y10_N21
\keypad_inst|REG_B[12][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[12][3]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[12][3]~q\);

-- Location: LCCOMB_X16_Y10_N10
\keypad_inst|REG_B[8][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[8][3]~feeder_combout\ = \keypad_inst|Mux29~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux29~1_combout\,
	combout => \keypad_inst|REG_B[8][3]~feeder_combout\);

-- Location: FF_X16_Y10_N11
\keypad_inst|REG_B[8][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[8][3]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[8][3]~q\);

-- Location: FF_X18_Y9_N1
\keypad_inst|REG_B[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux29~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[0][3]~q\);

-- Location: LCCOMB_X18_Y9_N18
\keypad_inst|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux28~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[4][3]~q\))) # (!\keypad_inst|FILA\(0) & (\keypad_inst|REG_B[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[0][3]~q\,
	datac => \keypad_inst|REG_B[4][3]~q\,
	datad => \keypad_inst|FILA\(0),
	combout => \keypad_inst|Mux28~0_combout\);

-- Location: LCCOMB_X16_Y10_N4
\keypad_inst|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux28~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux28~0_combout\ & (\keypad_inst|REG_B[12][3]~q\)) # (!\keypad_inst|Mux28~0_combout\ & ((\keypad_inst|REG_B[8][3]~q\))))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[12][3]~q\,
	datab => \keypad_inst|REG_B[8][3]~q\,
	datac => \keypad_inst|FILA\(1),
	datad => \keypad_inst|Mux28~0_combout\,
	combout => \keypad_inst|Mux28~1_combout\);

-- Location: LCCOMB_X16_Y10_N12
\keypad_inst|REG_B[12][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[12][4]~feeder_combout\ = \keypad_inst|Mux28~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux28~1_combout\,
	combout => \keypad_inst|REG_B[12][4]~feeder_combout\);

-- Location: FF_X16_Y10_N13
\keypad_inst|REG_B[12][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[12][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[12][4]~q\);

-- Location: LCCOMB_X16_Y10_N6
\keypad_inst|REG_B[8][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[8][4]~feeder_combout\ = \keypad_inst|Mux28~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux28~1_combout\,
	combout => \keypad_inst|REG_B[8][4]~feeder_combout\);

-- Location: FF_X16_Y10_N7
\keypad_inst|REG_B[8][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[8][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[8][4]~q\);

-- Location: FF_X18_Y10_N1
\keypad_inst|REG_B[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux28~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[0][4]~q\);

-- Location: LCCOMB_X18_Y10_N0
\keypad_inst|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux27~0_combout\ = (\keypad_inst|FILA\(0) & (((\keypad_inst|FILA\(1))))) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[8][4]~q\)) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[8][4]~q\,
	datab => \keypad_inst|FILA\(0),
	datac => \keypad_inst|REG_B[0][4]~q\,
	datad => \keypad_inst|FILA\(1),
	combout => \keypad_inst|Mux27~0_combout\);

-- Location: LCCOMB_X18_Y9_N20
\keypad_inst|REG_B[4][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[4][4]~feeder_combout\ = \keypad_inst|Mux28~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux28~1_combout\,
	combout => \keypad_inst|REG_B[4][4]~feeder_combout\);

-- Location: FF_X18_Y9_N21
\keypad_inst|REG_B[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[4][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[4][4]~q\);

-- Location: LCCOMB_X18_Y10_N14
\keypad_inst|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux27~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux27~0_combout\ & (\keypad_inst|REG_B[12][4]~q\)) # (!\keypad_inst|Mux27~0_combout\ & ((\keypad_inst|REG_B[4][4]~q\))))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|REG_B[12][4]~q\,
	datac => \keypad_inst|Mux27~0_combout\,
	datad => \keypad_inst|REG_B[4][4]~q\,
	combout => \keypad_inst|Mux27~1_combout\);

-- Location: LCCOMB_X16_Y10_N0
\keypad_inst|REG_B[8][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[8][5]~feeder_combout\ = \keypad_inst|Mux27~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux27~1_combout\,
	combout => \keypad_inst|REG_B[8][5]~feeder_combout\);

-- Location: FF_X16_Y10_N1
\keypad_inst|REG_B[8][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[8][5]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[8][5]~q\);

-- Location: LCCOMB_X16_Y10_N18
\keypad_inst|REG_B[12][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[12][5]~feeder_combout\ = \keypad_inst|Mux27~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux27~1_combout\,
	combout => \keypad_inst|REG_B[12][5]~feeder_combout\);

-- Location: FF_X16_Y10_N19
\keypad_inst|REG_B[12][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[12][5]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[12][5]~q\);

-- Location: FF_X18_Y10_N15
\keypad_inst|REG_B[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux27~1_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[4][5]~q\);

-- Location: FF_X18_Y10_N19
\keypad_inst|REG_B[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux27~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[0][5]~q\);

-- Location: LCCOMB_X18_Y10_N18
\keypad_inst|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux26~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|FILA\(0) & (\keypad_inst|REG_B[4][5]~q\)) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[0][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[4][5]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[0][5]~q\,
	datad => \keypad_inst|FILA\(0),
	combout => \keypad_inst|Mux26~0_combout\);

-- Location: LCCOMB_X16_Y10_N30
\keypad_inst|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux26~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux26~0_combout\ & ((\keypad_inst|REG_B[12][5]~q\))) # (!\keypad_inst|Mux26~0_combout\ & (\keypad_inst|REG_B[8][5]~q\)))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[8][5]~q\,
	datab => \keypad_inst|REG_B[12][5]~q\,
	datac => \keypad_inst|FILA\(1),
	datad => \keypad_inst|Mux26~0_combout\,
	combout => \keypad_inst|Mux26~1_combout\);

-- Location: LCCOMB_X18_Y9_N26
\keypad_inst|REG_B[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[4][6]~feeder_combout\ = \keypad_inst|Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux26~1_combout\,
	combout => \keypad_inst|REG_B[4][6]~feeder_combout\);

-- Location: FF_X18_Y9_N27
\keypad_inst|REG_B[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[4][6]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[4][6]~q\);

-- Location: LCCOMB_X16_Y10_N24
\keypad_inst|REG_B[12][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[12][6]~feeder_combout\ = \keypad_inst|Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux26~1_combout\,
	combout => \keypad_inst|REG_B[12][6]~feeder_combout\);

-- Location: FF_X16_Y10_N25
\keypad_inst|REG_B[12][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[12][6]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[12][6]~q\);

-- Location: FF_X18_Y10_N17
\keypad_inst|REG_B[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux26~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[0][6]~q\);

-- Location: LCCOMB_X16_Y10_N14
\keypad_inst|REG_B[8][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[8][6]~feeder_combout\ = \keypad_inst|Mux26~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux26~1_combout\,
	combout => \keypad_inst|REG_B[8][6]~feeder_combout\);

-- Location: FF_X16_Y10_N15
\keypad_inst|REG_B[8][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[8][6]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[8][6]~q\);

-- Location: LCCOMB_X18_Y10_N16
\keypad_inst|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux25~0_combout\ = (\keypad_inst|FILA\(0) & (\keypad_inst|FILA\(1))) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[8][6]~q\))) # (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[0][6]~q\,
	datad => \keypad_inst|REG_B[8][6]~q\,
	combout => \keypad_inst|Mux25~0_combout\);

-- Location: LCCOMB_X17_Y10_N4
\keypad_inst|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux25~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux25~0_combout\ & (\keypad_inst|REG_B[12][6]~q\)) # (!\keypad_inst|Mux25~0_combout\ & ((\keypad_inst|REG_B[4][6]~q\))))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|REG_B[12][6]~q\,
	datac => \keypad_inst|REG_B[4][6]~q\,
	datad => \keypad_inst|Mux25~0_combout\,
	combout => \keypad_inst|Mux25~1_combout\);

-- Location: FF_X18_Y9_N9
\keypad_inst|REG_B[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux25~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[4][7]~q\);

-- Location: LCCOMB_X18_Y9_N8
\keypad_inst|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal4~1_combout\ = (\keypad_inst|REG_B[4][6]~q\ & (\keypad_inst|REG_B[4][4]~q\ & (\keypad_inst|REG_B[4][7]~q\ & \keypad_inst|REG_B[4][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[4][6]~q\,
	datab => \keypad_inst|REG_B[4][4]~q\,
	datac => \keypad_inst|REG_B[4][7]~q\,
	datad => \keypad_inst|REG_B[4][5]~q\,
	combout => \keypad_inst|Equal4~1_combout\);

-- Location: FF_X21_Y10_N5
\keypad_inst|REG_B[13][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux22~1_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[13][3]~q\);

-- Location: FF_X21_Y9_N11
\keypad_inst|REG_B[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux22~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[1][3]~q\);

-- Location: LCCOMB_X22_Y9_N28
\keypad_inst|REG_B[9][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[9][3]~feeder_combout\ = \keypad_inst|Mux22~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux22~1_combout\,
	combout => \keypad_inst|REG_B[9][3]~feeder_combout\);

-- Location: FF_X22_Y9_N29
\keypad_inst|REG_B[9][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[9][3]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[9][3]~q\);

-- Location: LCCOMB_X21_Y9_N2
\keypad_inst|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux21~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0)) # (\keypad_inst|REG_B[9][3]~q\)))) # (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[1][3]~q\ & (!\keypad_inst|FILA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[1][3]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|REG_B[9][3]~q\,
	combout => \keypad_inst|Mux21~0_combout\);

-- Location: LCCOMB_X21_Y10_N22
\keypad_inst|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux21~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux21~0_combout\ & ((\keypad_inst|REG_B[13][3]~q\))) # (!\keypad_inst|Mux21~0_combout\ & (\keypad_inst|REG_B[5][3]~q\)))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|REG_B[5][3]~q\,
	datac => \keypad_inst|REG_B[13][3]~q\,
	datad => \keypad_inst|Mux21~0_combout\,
	combout => \keypad_inst|Mux21~1_combout\);

-- Location: FF_X21_Y10_N23
\keypad_inst|REG_B[13][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux21~1_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[13][4]~q\);

-- Location: LCCOMB_X19_Y10_N8
\keypad_inst|REG_B[9][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[9][4]~feeder_combout\ = \keypad_inst|Mux21~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux21~1_combout\,
	combout => \keypad_inst|REG_B[9][4]~feeder_combout\);

-- Location: FF_X19_Y10_N9
\keypad_inst|REG_B[9][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[9][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[9][4]~q\);

-- Location: LCCOMB_X18_Y10_N8
\keypad_inst|REG_B[5][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[5][4]~feeder_combout\ = \keypad_inst|Mux21~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux21~1_combout\,
	combout => \keypad_inst|REG_B[5][4]~feeder_combout\);

-- Location: FF_X18_Y10_N9
\keypad_inst|REG_B[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[5][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[5][4]~q\);

-- Location: LCCOMB_X18_Y10_N12
\keypad_inst|REG_B[1][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[1][4]~feeder_combout\ = \keypad_inst|Mux21~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux21~1_combout\,
	combout => \keypad_inst|REG_B[1][4]~feeder_combout\);

-- Location: FF_X18_Y10_N13
\keypad_inst|REG_B[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[1][4]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[1][4]~q\);

-- Location: LCCOMB_X18_Y10_N26
\keypad_inst|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux20~0_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[5][4]~q\) # ((\keypad_inst|FILA\(1))))) # (!\keypad_inst|FILA\(0) & (((!\keypad_inst|FILA\(1) & \keypad_inst|REG_B[1][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[5][4]~q\,
	datab => \keypad_inst|FILA\(0),
	datac => \keypad_inst|FILA\(1),
	datad => \keypad_inst|REG_B[1][4]~q\,
	combout => \keypad_inst|Mux20~0_combout\);

-- Location: LCCOMB_X21_Y10_N28
\keypad_inst|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux20~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux20~0_combout\ & (\keypad_inst|REG_B[13][4]~q\)) # (!\keypad_inst|Mux20~0_combout\ & ((\keypad_inst|REG_B[9][4]~q\))))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[13][4]~q\,
	datac => \keypad_inst|REG_B[9][4]~q\,
	datad => \keypad_inst|Mux20~0_combout\,
	combout => \keypad_inst|Mux20~1_combout\);

-- Location: FF_X21_Y10_N29
\keypad_inst|REG_B[13][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux20~1_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[13][5]~q\);

-- Location: FF_X21_Y10_N15
\keypad_inst|REG_B[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux20~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[5][5]~q\);

-- Location: LCCOMB_X19_Y10_N26
\keypad_inst|REG_B[9][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[9][5]~feeder_combout\ = \keypad_inst|Mux20~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux20~1_combout\,
	combout => \keypad_inst|REG_B[9][5]~feeder_combout\);

-- Location: FF_X19_Y10_N27
\keypad_inst|REG_B[9][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[9][5]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[9][5]~q\);

-- Location: LCCOMB_X19_Y10_N4
\keypad_inst|REG_B[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[1][5]~feeder_combout\ = \keypad_inst|Mux20~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux20~1_combout\,
	combout => \keypad_inst|REG_B[1][5]~feeder_combout\);

-- Location: FF_X19_Y10_N5
\keypad_inst|REG_B[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[1][5]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[1][5]~q\);

-- Location: LCCOMB_X19_Y10_N6
\keypad_inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux19~0_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[9][5]~q\) # ((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & (((!\keypad_inst|FILA\(0) & \keypad_inst|REG_B[1][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[9][5]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|REG_B[1][5]~q\,
	combout => \keypad_inst|Mux19~0_combout\);

-- Location: LCCOMB_X21_Y10_N14
\keypad_inst|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux19~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux19~0_combout\ & (\keypad_inst|REG_B[13][5]~q\)) # (!\keypad_inst|Mux19~0_combout\ & ((\keypad_inst|REG_B[5][5]~q\))))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|REG_B[13][5]~q\,
	datac => \keypad_inst|REG_B[5][5]~q\,
	datad => \keypad_inst|Mux19~0_combout\,
	combout => \keypad_inst|Mux19~1_combout\);

-- Location: LCCOMB_X18_Y10_N22
\keypad_inst|REG_B[5][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[5][6]~feeder_combout\ = \keypad_inst|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux19~1_combout\,
	combout => \keypad_inst|REG_B[5][6]~feeder_combout\);

-- Location: FF_X18_Y10_N23
\keypad_inst|REG_B[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[5][6]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[5][6]~q\);

-- Location: LCCOMB_X19_Y10_N0
\keypad_inst|REG_B[9][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[9][6]~feeder_combout\ = \keypad_inst|Mux19~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux19~1_combout\,
	combout => \keypad_inst|REG_B[9][6]~feeder_combout\);

-- Location: FF_X19_Y10_N1
\keypad_inst|REG_B[9][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[9][6]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[9][6]~q\);

-- Location: FF_X21_Y10_N13
\keypad_inst|REG_B[13][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux19~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[13][6]~q\);

-- Location: FF_X18_Y10_N11
\keypad_inst|REG_B[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux19~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[1][6]~q\);

-- Location: LCCOMB_X18_Y10_N10
\keypad_inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux18~0_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[5][6]~q\) # ((\keypad_inst|FILA\(1))))) # (!\keypad_inst|FILA\(0) & (((\keypad_inst|REG_B[1][6]~q\ & !\keypad_inst|FILA\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[5][6]~q\,
	datab => \keypad_inst|FILA\(0),
	datac => \keypad_inst|REG_B[1][6]~q\,
	datad => \keypad_inst|FILA\(1),
	combout => \keypad_inst|Mux18~0_combout\);

-- Location: LCCOMB_X19_Y10_N16
\keypad_inst|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux18~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux18~0_combout\ & ((\keypad_inst|REG_B[13][6]~q\))) # (!\keypad_inst|Mux18~0_combout\ & (\keypad_inst|REG_B[9][6]~q\)))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[9][6]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[13][6]~q\,
	datad => \keypad_inst|Mux18~0_combout\,
	combout => \keypad_inst|Mux18~1_combout\);

-- Location: FF_X18_Y9_N7
\keypad_inst|REG_B[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux18~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[5][7]~q\);

-- Location: LCCOMB_X18_Y9_N6
\keypad_inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal5~1_combout\ = (\keypad_inst|REG_B[5][6]~q\ & (\keypad_inst|REG_B[5][4]~q\ & (\keypad_inst|REG_B[5][7]~q\ & \keypad_inst|REG_B[5][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[5][6]~q\,
	datab => \keypad_inst|REG_B[5][4]~q\,
	datac => \keypad_inst|REG_B[5][7]~q\,
	datad => \keypad_inst|REG_B[5][5]~q\,
	combout => \keypad_inst|Equal5~1_combout\);

-- Location: LCCOMB_X18_Y9_N30
\keypad_inst|process_2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~24_combout\ = (\keypad_inst|Equal5~0_combout\ & ((\keypad_inst|Equal5~1_combout\) # ((\keypad_inst|Equal4~0_combout\ & \keypad_inst|Equal4~1_combout\)))) # (!\keypad_inst|Equal5~0_combout\ & (\keypad_inst|Equal4~0_combout\ & 
-- (\keypad_inst|Equal4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal5~0_combout\,
	datab => \keypad_inst|Equal4~0_combout\,
	datac => \keypad_inst|Equal4~1_combout\,
	datad => \keypad_inst|Equal5~1_combout\,
	combout => \keypad_inst|process_2~24_combout\);

-- Location: IOIBUF_X30_Y0_N8
\COLUMNAS[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COLUMNAS(1),
	o => \COLUMNAS[1]~input_o\);

-- Location: LCCOMB_X19_Y9_N20
\keypad_inst|REG_B[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[6][0]~feeder_combout\ = \COLUMNAS[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COLUMNAS[1]~input_o\,
	combout => \keypad_inst|REG_B[6][0]~feeder_combout\);

-- Location: FF_X19_Y9_N21
\keypad_inst|REG_B[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[6][0]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[6][0]~q\);

-- Location: LCCOMB_X22_Y9_N22
\keypad_inst|REG_B[14][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[14][0]~feeder_combout\ = \COLUMNAS[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COLUMNAS[1]~input_o\,
	combout => \keypad_inst|REG_B[14][0]~feeder_combout\);

-- Location: FF_X22_Y9_N23
\keypad_inst|REG_B[14][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[14][0]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[14][0]~q\);

-- Location: LCCOMB_X22_Y9_N18
\keypad_inst|REG_B[10][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[10][0]~feeder_combout\ = \COLUMNAS[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COLUMNAS[1]~input_o\,
	combout => \keypad_inst|REG_B[10][0]~feeder_combout\);

-- Location: FF_X22_Y9_N19
\keypad_inst|REG_B[10][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[10][0]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[10][0]~q\);

-- Location: FF_X21_Y9_N13
\keypad_inst|REG_B[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \COLUMNAS[1]~input_o\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[2][0]~q\);

-- Location: LCCOMB_X21_Y9_N12
\keypad_inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux17~0_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[10][0]~q\) # ((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & (((\keypad_inst|REG_B[2][0]~q\ & !\keypad_inst|FILA\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[10][0]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[2][0]~q\,
	datad => \keypad_inst|FILA\(0),
	combout => \keypad_inst|Mux17~0_combout\);

-- Location: LCCOMB_X22_Y9_N26
\keypad_inst|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux17~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux17~0_combout\ & ((\keypad_inst|REG_B[14][0]~q\))) # (!\keypad_inst|Mux17~0_combout\ & (\keypad_inst|REG_B[6][0]~q\)))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|REG_B[6][0]~q\,
	datac => \keypad_inst|REG_B[14][0]~q\,
	datad => \keypad_inst|Mux17~0_combout\,
	combout => \keypad_inst|Mux17~1_combout\);

-- Location: LCCOMB_X19_Y9_N26
\keypad_inst|REG_B[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[6][1]~feeder_combout\ = \keypad_inst|Mux17~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux17~1_combout\,
	combout => \keypad_inst|REG_B[6][1]~feeder_combout\);

-- Location: FF_X19_Y9_N27
\keypad_inst|REG_B[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[6][1]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[6][1]~q\);

-- Location: LCCOMB_X22_Y9_N24
\keypad_inst|REG_B[14][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[14][1]~feeder_combout\ = \keypad_inst|Mux17~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux17~1_combout\,
	combout => \keypad_inst|REG_B[14][1]~feeder_combout\);

-- Location: FF_X22_Y9_N25
\keypad_inst|REG_B[14][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[14][1]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[14][1]~q\);

-- Location: FF_X22_Y9_N17
\keypad_inst|REG_B[10][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux17~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[10][1]~q\);

-- Location: FF_X21_Y9_N23
\keypad_inst|REG_B[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux17~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[2][1]~q\);

-- Location: LCCOMB_X21_Y9_N22
\keypad_inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux16~0_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1)) # ((\keypad_inst|REG_B[6][1]~q\)))) # (!\keypad_inst|FILA\(0) & (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[2][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[2][1]~q\,
	datad => \keypad_inst|REG_B[6][1]~q\,
	combout => \keypad_inst|Mux16~0_combout\);

-- Location: LCCOMB_X22_Y9_N6
\keypad_inst|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux16~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux16~0_combout\ & (\keypad_inst|REG_B[14][1]~q\)) # (!\keypad_inst|Mux16~0_combout\ & ((\keypad_inst|REG_B[10][1]~q\))))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[14][1]~q\,
	datac => \keypad_inst|REG_B[10][1]~q\,
	datad => \keypad_inst|Mux16~0_combout\,
	combout => \keypad_inst|Mux16~1_combout\);

-- Location: LCCOMB_X19_Y9_N12
\keypad_inst|REG_B[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[6][2]~feeder_combout\ = \keypad_inst|Mux16~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux16~1_combout\,
	combout => \keypad_inst|REG_B[6][2]~feeder_combout\);

-- Location: FF_X19_Y9_N13
\keypad_inst|REG_B[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[6][2]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[6][2]~q\);

-- Location: FF_X21_Y9_N17
\keypad_inst|REG_B[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux16~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[2][2]~q\);

-- Location: FF_X22_Y9_N7
\keypad_inst|REG_B[10][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux16~1_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[10][2]~q\);

-- Location: LCCOMB_X21_Y9_N16
\keypad_inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux15~0_combout\ = (\keypad_inst|FILA\(0) & (\keypad_inst|FILA\(1))) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[10][2]~q\))) # (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[2][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[2][2]~q\,
	datad => \keypad_inst|REG_B[10][2]~q\,
	combout => \keypad_inst|Mux15~0_combout\);

-- Location: LCCOMB_X22_Y9_N2
\keypad_inst|REG_B[14][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[14][2]~feeder_combout\ = \keypad_inst|Mux16~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux16~1_combout\,
	combout => \keypad_inst|REG_B[14][2]~feeder_combout\);

-- Location: FF_X22_Y9_N3
\keypad_inst|REG_B[14][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[14][2]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[14][2]~q\);

-- Location: LCCOMB_X22_Y9_N12
\keypad_inst|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux15~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux15~0_combout\ & ((\keypad_inst|REG_B[14][2]~q\))) # (!\keypad_inst|Mux15~0_combout\ & (\keypad_inst|REG_B[6][2]~q\)))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|REG_B[6][2]~q\,
	datac => \keypad_inst|Mux15~0_combout\,
	datad => \keypad_inst|REG_B[14][2]~q\,
	combout => \keypad_inst|Mux15~1_combout\);

-- Location: LCCOMB_X22_Y9_N4
\keypad_inst|REG_B[10][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[10][3]~feeder_combout\ = \keypad_inst|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux15~1_combout\,
	combout => \keypad_inst|REG_B[10][3]~feeder_combout\);

-- Location: FF_X22_Y9_N5
\keypad_inst|REG_B[10][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[10][3]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[10][3]~q\);

-- Location: FF_X22_Y9_N13
\keypad_inst|REG_B[14][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux15~1_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[14][3]~q\);

-- Location: FF_X21_Y9_N15
\keypad_inst|REG_B[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux15~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[2][3]~q\);

-- Location: LCCOMB_X19_Y9_N14
\keypad_inst|REG_B[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[6][3]~feeder_combout\ = \keypad_inst|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux15~1_combout\,
	combout => \keypad_inst|REG_B[6][3]~feeder_combout\);

-- Location: FF_X19_Y9_N15
\keypad_inst|REG_B[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[6][3]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[6][3]~q\);

-- Location: LCCOMB_X21_Y9_N14
\keypad_inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux14~0_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1)) # ((\keypad_inst|REG_B[6][3]~q\)))) # (!\keypad_inst|FILA\(0) & (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[2][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[2][3]~q\,
	datad => \keypad_inst|REG_B[6][3]~q\,
	combout => \keypad_inst|Mux14~0_combout\);

-- Location: LCCOMB_X17_Y10_N30
\keypad_inst|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux14~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux14~0_combout\ & ((\keypad_inst|REG_B[14][3]~q\))) # (!\keypad_inst|Mux14~0_combout\ & (\keypad_inst|REG_B[10][3]~q\)))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[10][3]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[14][3]~q\,
	datad => \keypad_inst|Mux14~0_combout\,
	combout => \keypad_inst|Mux14~1_combout\);

-- Location: LCCOMB_X18_Y9_N14
\keypad_inst|REG_B[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[6][4]~feeder_combout\ = \keypad_inst|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux14~1_combout\,
	combout => \keypad_inst|REG_B[6][4]~feeder_combout\);

-- Location: FF_X18_Y9_N15
\keypad_inst|REG_B[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[6][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[6][4]~q\);

-- Location: LCCOMB_X19_Y9_N10
\keypad_inst|process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~3_combout\ = (\keypad_inst|REG_B[6][1]~q\ & (\keypad_inst|REG_B[6][0]~q\ & (\keypad_inst|REG_B[6][2]~q\ & \keypad_inst|REG_B[6][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[6][1]~q\,
	datab => \keypad_inst|REG_B[6][0]~q\,
	datac => \keypad_inst|REG_B[6][2]~q\,
	datad => \keypad_inst|REG_B[6][4]~q\,
	combout => \keypad_inst|process_2~3_combout\);

-- Location: LCCOMB_X17_Y10_N20
\keypad_inst|REG_B[14][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[14][4]~feeder_combout\ = \keypad_inst|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux14~1_combout\,
	combout => \keypad_inst|REG_B[14][4]~feeder_combout\);

-- Location: FF_X17_Y10_N21
\keypad_inst|REG_B[14][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[14][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[14][4]~q\);

-- Location: FF_X18_Y10_N3
\keypad_inst|REG_B[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux14~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[2][4]~q\);

-- Location: LCCOMB_X17_Y10_N6
\keypad_inst|REG_B[10][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[10][4]~feeder_combout\ = \keypad_inst|Mux14~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux14~1_combout\,
	combout => \keypad_inst|REG_B[10][4]~feeder_combout\);

-- Location: FF_X17_Y10_N7
\keypad_inst|REG_B[10][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[10][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[10][4]~q\);

-- Location: LCCOMB_X18_Y10_N2
\keypad_inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux13~0_combout\ = (\keypad_inst|FILA\(0) & (\keypad_inst|FILA\(1))) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[10][4]~q\))) # (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[2][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[2][4]~q\,
	datad => \keypad_inst|REG_B[10][4]~q\,
	combout => \keypad_inst|Mux13~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\keypad_inst|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux13~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux13~0_combout\ & ((\keypad_inst|REG_B[14][4]~q\))) # (!\keypad_inst|Mux13~0_combout\ & (\keypad_inst|REG_B[6][4]~q\)))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[6][4]~q\,
	datab => \keypad_inst|REG_B[14][4]~q\,
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|Mux13~0_combout\,
	combout => \keypad_inst|Mux13~1_combout\);

-- Location: LCCOMB_X19_Y9_N0
\keypad_inst|REG_B[6][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[6][5]~feeder_combout\ = \keypad_inst|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux13~1_combout\,
	combout => \keypad_inst|REG_B[6][5]~feeder_combout\);

-- Location: FF_X19_Y9_N1
\keypad_inst|REG_B[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[6][5]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[6][5]~q\);

-- Location: FF_X17_Y10_N3
\keypad_inst|REG_B[14][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux13~1_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[14][5]~q\);

-- Location: LCCOMB_X17_Y10_N0
\keypad_inst|REG_B[10][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[10][5]~feeder_combout\ = \keypad_inst|Mux13~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux13~1_combout\,
	combout => \keypad_inst|REG_B[10][5]~feeder_combout\);

-- Location: FF_X17_Y10_N1
\keypad_inst|REG_B[10][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[10][5]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[10][5]~q\);

-- Location: FF_X18_Y10_N25
\keypad_inst|REG_B[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux13~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[2][5]~q\);

-- Location: LCCOMB_X18_Y10_N24
\keypad_inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux12~0_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1)) # ((\keypad_inst|REG_B[6][5]~q\)))) # (!\keypad_inst|FILA\(0) & (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[2][5]~q\,
	datad => \keypad_inst|REG_B[6][5]~q\,
	combout => \keypad_inst|Mux12~0_combout\);

-- Location: LCCOMB_X17_Y10_N8
\keypad_inst|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux12~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux12~0_combout\ & (\keypad_inst|REG_B[14][5]~q\)) # (!\keypad_inst|Mux12~0_combout\ & ((\keypad_inst|REG_B[10][5]~q\))))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[14][5]~q\,
	datac => \keypad_inst|REG_B[10][5]~q\,
	datad => \keypad_inst|Mux12~0_combout\,
	combout => \keypad_inst|Mux12~1_combout\);

-- Location: FF_X17_Y10_N9
\keypad_inst|REG_B[14][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux12~1_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[14][6]~q\);

-- Location: LCCOMB_X19_Y9_N6
\keypad_inst|REG_B[6][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[6][6]~feeder_combout\ = \keypad_inst|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux12~1_combout\,
	combout => \keypad_inst|REG_B[6][6]~feeder_combout\);

-- Location: FF_X19_Y9_N7
\keypad_inst|REG_B[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[6][6]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[6][6]~q\);

-- Location: LCCOMB_X17_Y10_N26
\keypad_inst|REG_B[10][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[10][6]~feeder_combout\ = \keypad_inst|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux12~1_combout\,
	combout => \keypad_inst|REG_B[10][6]~feeder_combout\);

-- Location: FF_X17_Y10_N27
\keypad_inst|REG_B[10][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[10][6]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[10][6]~q\);

-- Location: FF_X18_Y10_N7
\keypad_inst|REG_B[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux12~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[2][6]~q\);

-- Location: LCCOMB_X18_Y10_N6
\keypad_inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux11~0_combout\ = (\keypad_inst|FILA\(0) & (((\keypad_inst|FILA\(1))))) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[10][6]~q\)) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[2][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[10][6]~q\,
	datab => \keypad_inst|FILA\(0),
	datac => \keypad_inst|REG_B[2][6]~q\,
	datad => \keypad_inst|FILA\(1),
	combout => \keypad_inst|Mux11~0_combout\);

-- Location: LCCOMB_X17_Y10_N10
\keypad_inst|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux11~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux11~0_combout\ & (\keypad_inst|REG_B[14][6]~q\)) # (!\keypad_inst|Mux11~0_combout\ & ((\keypad_inst|REG_B[6][6]~q\))))) # (!\keypad_inst|FILA\(0) & 
-- (((\keypad_inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|REG_B[14][6]~q\,
	datac => \keypad_inst|REG_B[6][6]~q\,
	datad => \keypad_inst|Mux11~0_combout\,
	combout => \keypad_inst|Mux11~1_combout\);

-- Location: FF_X19_Y9_N17
\keypad_inst|REG_B[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux11~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[6][7]~q\);

-- Location: LCCOMB_X19_Y9_N16
\keypad_inst|process_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~4_combout\ = (\keypad_inst|REG_B[6][3]~q\ & (\keypad_inst|REG_B[6][5]~q\ & (\keypad_inst|REG_B[6][7]~q\ & \keypad_inst|REG_B[6][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[6][3]~q\,
	datab => \keypad_inst|REG_B[6][5]~q\,
	datac => \keypad_inst|REG_B[6][7]~q\,
	datad => \keypad_inst|REG_B[6][6]~q\,
	combout => \keypad_inst|process_2~4_combout\);

-- Location: LCCOMB_X21_Y9_N28
\keypad_inst|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal2~0_combout\ = (\keypad_inst|REG_B[2][0]~q\ & (\keypad_inst|REG_B[2][3]~q\ & (\keypad_inst|REG_B[2][1]~q\ & \keypad_inst|REG_B[2][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[2][0]~q\,
	datab => \keypad_inst|REG_B[2][3]~q\,
	datac => \keypad_inst|REG_B[2][1]~q\,
	datad => \keypad_inst|REG_B[2][2]~q\,
	combout => \keypad_inst|Equal2~0_combout\);

-- Location: FF_X18_Y10_N29
\keypad_inst|REG_B[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux11~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[2][7]~q\);

-- Location: LCCOMB_X18_Y10_N28
\keypad_inst|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal2~1_combout\ = (\keypad_inst|REG_B[2][6]~q\ & (\keypad_inst|REG_B[2][4]~q\ & (\keypad_inst|REG_B[2][7]~q\ & \keypad_inst|REG_B[2][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[2][6]~q\,
	datab => \keypad_inst|REG_B[2][4]~q\,
	datac => \keypad_inst|REG_B[2][7]~q\,
	datad => \keypad_inst|REG_B[2][5]~q\,
	combout => \keypad_inst|Equal2~1_combout\);

-- Location: LCCOMB_X17_Y9_N16
\keypad_inst|process_2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~5_combout\ = (\keypad_inst|process_2~3_combout\ & ((\keypad_inst|process_2~4_combout\) # ((\keypad_inst|Equal2~0_combout\ & \keypad_inst|Equal2~1_combout\)))) # (!\keypad_inst|process_2~3_combout\ & (((\keypad_inst|Equal2~0_combout\ 
-- & \keypad_inst|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~3_combout\,
	datab => \keypad_inst|process_2~4_combout\,
	datac => \keypad_inst|Equal2~0_combout\,
	datad => \keypad_inst|Equal2~1_combout\,
	combout => \keypad_inst|process_2~5_combout\);

-- Location: IOIBUF_X32_Y0_N22
\COLUMNAS[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_COLUMNAS(0),
	o => \COLUMNAS[0]~input_o\);

-- Location: LCCOMB_X16_Y8_N8
\keypad_inst|REG_B[15][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[15][0]~feeder_combout\ = \COLUMNAS[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COLUMNAS[0]~input_o\,
	combout => \keypad_inst|REG_B[15][0]~feeder_combout\);

-- Location: FF_X16_Y8_N9
\keypad_inst|REG_B[15][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[15][0]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[15][0]~q\);

-- Location: LCCOMB_X19_Y10_N20
\keypad_inst|REG_B[11][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[11][0]~feeder_combout\ = \COLUMNAS[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COLUMNAS[0]~input_o\,
	combout => \keypad_inst|REG_B[11][0]~feeder_combout\);

-- Location: FF_X19_Y10_N21
\keypad_inst|REG_B[11][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[11][0]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[11][0]~q\);

-- Location: LCCOMB_X16_Y9_N26
\keypad_inst|REG_B[7][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[7][0]~feeder_combout\ = \COLUMNAS[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \COLUMNAS[0]~input_o\,
	combout => \keypad_inst|REG_B[7][0]~feeder_combout\);

-- Location: FF_X16_Y9_N27
\keypad_inst|REG_B[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[7][0]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[7][0]~q\);

-- Location: LCCOMB_X16_Y8_N4
\keypad_inst|REG_B[3][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[3][0]~feeder_combout\ = \COLUMNAS[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \COLUMNAS[0]~input_o\,
	combout => \keypad_inst|REG_B[3][0]~feeder_combout\);

-- Location: FF_X16_Y8_N5
\keypad_inst|REG_B[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[3][0]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[3][0]~q\);

-- Location: LCCOMB_X16_Y8_N28
\keypad_inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux10~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|FILA\(0) & (\keypad_inst|REG_B[7][0]~q\)) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[3][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[7][0]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|REG_B[3][0]~q\,
	combout => \keypad_inst|Mux10~0_combout\);

-- Location: LCCOMB_X16_Y8_N22
\keypad_inst|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux10~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux10~0_combout\ & (\keypad_inst|REG_B[15][0]~q\)) # (!\keypad_inst|Mux10~0_combout\ & ((\keypad_inst|REG_B[11][0]~q\))))) # (!\keypad_inst|FILA\(1) & 
-- (((\keypad_inst|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[15][0]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[11][0]~q\,
	datad => \keypad_inst|Mux10~0_combout\,
	combout => \keypad_inst|Mux10~1_combout\);

-- Location: LCCOMB_X16_Y8_N26
\keypad_inst|REG_B[3][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[3][1]~feeder_combout\ = \keypad_inst|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Mux10~1_combout\,
	combout => \keypad_inst|REG_B[3][1]~feeder_combout\);

-- Location: FF_X16_Y8_N27
\keypad_inst|REG_B[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[3][1]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[3][1]~q\);

-- Location: LCCOMB_X16_Y8_N14
\keypad_inst|REG_B[15][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[15][1]~feeder_combout\ = \keypad_inst|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux10~1_combout\,
	combout => \keypad_inst|REG_B[15][1]~feeder_combout\);

-- Location: FF_X16_Y8_N15
\keypad_inst|REG_B[15][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[15][1]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[15][1]~q\);

-- Location: FF_X16_Y9_N25
\keypad_inst|REG_B[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux10~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[7][1]~q\);

-- Location: LCCOMB_X19_Y10_N14
\keypad_inst|REG_B[11][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[11][1]~feeder_combout\ = \keypad_inst|Mux10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux10~1_combout\,
	combout => \keypad_inst|REG_B[11][1]~feeder_combout\);

-- Location: FF_X19_Y10_N15
\keypad_inst|REG_B[11][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[11][1]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[11][1]~q\);

-- Location: LCCOMB_X16_Y8_N0
\keypad_inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux9~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0)) # (\keypad_inst|REG_B[11][1]~q\)))) # (!\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[3][1]~q\ & (!\keypad_inst|FILA\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[3][1]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|REG_B[11][1]~q\,
	combout => \keypad_inst|Mux9~0_combout\);

-- Location: LCCOMB_X16_Y8_N12
\keypad_inst|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux9~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux9~0_combout\ & (\keypad_inst|REG_B[15][1]~q\)) # (!\keypad_inst|Mux9~0_combout\ & ((\keypad_inst|REG_B[7][1]~q\))))) # (!\keypad_inst|FILA\(0) & (((\keypad_inst|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|REG_B[15][1]~q\,
	datac => \keypad_inst|REG_B[7][1]~q\,
	datad => \keypad_inst|Mux9~0_combout\,
	combout => \keypad_inst|Mux9~1_combout\);

-- Location: FF_X16_Y8_N13
\keypad_inst|REG_B[15][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux9~1_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[15][2]~q\);

-- Location: LCCOMB_X19_Y10_N12
\keypad_inst|REG_B[11][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[11][2]~feeder_combout\ = \keypad_inst|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux9~1_combout\,
	combout => \keypad_inst|REG_B[11][2]~feeder_combout\);

-- Location: FF_X19_Y10_N13
\keypad_inst|REG_B[11][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[11][2]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[11][2]~q\);

-- Location: LCCOMB_X16_Y9_N14
\keypad_inst|REG_B[7][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[7][2]~feeder_combout\ = \keypad_inst|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux9~1_combout\,
	combout => \keypad_inst|REG_B[7][2]~feeder_combout\);

-- Location: FF_X16_Y9_N15
\keypad_inst|REG_B[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[7][2]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[7][2]~q\);

-- Location: LCCOMB_X16_Y8_N16
\keypad_inst|REG_B[3][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[3][2]~feeder_combout\ = \keypad_inst|Mux9~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux9~1_combout\,
	combout => \keypad_inst|REG_B[3][2]~feeder_combout\);

-- Location: FF_X16_Y8_N17
\keypad_inst|REG_B[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[3][2]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[3][2]~q\);

-- Location: LCCOMB_X16_Y8_N2
\keypad_inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux8~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|FILA\(0) & (\keypad_inst|REG_B[7][2]~q\)) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[3][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[7][2]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|REG_B[3][2]~q\,
	combout => \keypad_inst|Mux8~0_combout\);

-- Location: LCCOMB_X16_Y8_N20
\keypad_inst|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux8~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux8~0_combout\ & (\keypad_inst|REG_B[15][2]~q\)) # (!\keypad_inst|Mux8~0_combout\ & ((\keypad_inst|REG_B[11][2]~q\))))) # (!\keypad_inst|FILA\(1) & (((\keypad_inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[15][2]~q\,
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[11][2]~q\,
	datad => \keypad_inst|Mux8~0_combout\,
	combout => \keypad_inst|Mux8~1_combout\);

-- Location: LCCOMB_X16_Y8_N18
\keypad_inst|REG_B[3][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[3][3]~feeder_combout\ = \keypad_inst|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Mux8~1_combout\,
	combout => \keypad_inst|REG_B[3][3]~feeder_combout\);

-- Location: FF_X16_Y8_N19
\keypad_inst|REG_B[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[3][3]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[3][3]~q\);

-- Location: LCCOMB_X16_Y8_N24
\keypad_inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal3~0_combout\ = (\keypad_inst|REG_B[3][1]~q\ & (\keypad_inst|REG_B[3][3]~q\ & (\keypad_inst|REG_B[3][0]~q\ & \keypad_inst|REG_B[3][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[3][1]~q\,
	datab => \keypad_inst|REG_B[3][3]~q\,
	datac => \keypad_inst|REG_B[3][0]~q\,
	datad => \keypad_inst|REG_B[3][2]~q\,
	combout => \keypad_inst|Equal3~0_combout\);

-- Location: LCCOMB_X16_Y8_N10
\keypad_inst|REG_B[15][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[15][3]~feeder_combout\ = \keypad_inst|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux8~1_combout\,
	combout => \keypad_inst|REG_B[15][3]~feeder_combout\);

-- Location: FF_X16_Y8_N11
\keypad_inst|REG_B[15][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[15][3]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[15][3]~q\);

-- Location: LCCOMB_X16_Y9_N28
\keypad_inst|REG_B[7][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[7][3]~feeder_combout\ = \keypad_inst|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux8~1_combout\,
	combout => \keypad_inst|REG_B[7][3]~feeder_combout\);

-- Location: FF_X16_Y9_N29
\keypad_inst|REG_B[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[7][3]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[7][3]~q\);

-- Location: LCCOMB_X19_Y10_N18
\keypad_inst|REG_B[11][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[11][3]~feeder_combout\ = \keypad_inst|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux8~1_combout\,
	combout => \keypad_inst|REG_B[11][3]~feeder_combout\);

-- Location: FF_X19_Y10_N19
\keypad_inst|REG_B[11][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[11][3]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[11][3]~q\);

-- Location: LCCOMB_X16_Y8_N30
\keypad_inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux7~0_combout\ = (\keypad_inst|FILA\(0) & (\keypad_inst|FILA\(1))) # (!\keypad_inst|FILA\(0) & ((\keypad_inst|FILA\(1) & (\keypad_inst|REG_B[11][3]~q\)) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[3][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(0),
	datab => \keypad_inst|FILA\(1),
	datac => \keypad_inst|REG_B[11][3]~q\,
	datad => \keypad_inst|REG_B[3][3]~q\,
	combout => \keypad_inst|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y8_N30
\keypad_inst|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux7~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux7~0_combout\ & (\keypad_inst|REG_B[15][3]~q\)) # (!\keypad_inst|Mux7~0_combout\ & ((\keypad_inst|REG_B[7][3]~q\))))) # (!\keypad_inst|FILA\(0) & (((\keypad_inst|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[15][3]~q\,
	datab => \keypad_inst|REG_B[7][3]~q\,
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|Mux7~0_combout\,
	combout => \keypad_inst|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y8_N18
\keypad_inst|REG_B[11][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[11][4]~feeder_combout\ = \keypad_inst|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux7~1_combout\,
	combout => \keypad_inst|REG_B[11][4]~feeder_combout\);

-- Location: FF_X19_Y8_N19
\keypad_inst|REG_B[11][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[11][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[11][4]~q\);

-- Location: LCCOMB_X17_Y8_N12
\keypad_inst|REG_B[15][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[15][4]~feeder_combout\ = \keypad_inst|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux7~1_combout\,
	combout => \keypad_inst|REG_B[15][4]~feeder_combout\);

-- Location: FF_X17_Y8_N13
\keypad_inst|REG_B[15][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[15][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[15][4]~q\);

-- Location: LCCOMB_X18_Y8_N28
\keypad_inst|REG_B[3][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[3][4]~feeder_combout\ = \keypad_inst|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux7~1_combout\,
	combout => \keypad_inst|REG_B[3][4]~feeder_combout\);

-- Location: FF_X18_Y8_N29
\keypad_inst|REG_B[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[3][4]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[3][4]~q\);

-- Location: LCCOMB_X16_Y9_N0
\keypad_inst|REG_B[7][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[7][4]~feeder_combout\ = \keypad_inst|Mux7~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux7~1_combout\,
	combout => \keypad_inst|REG_B[7][4]~feeder_combout\);

-- Location: FF_X16_Y9_N1
\keypad_inst|REG_B[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[7][4]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[7][4]~q\);

-- Location: LCCOMB_X18_Y8_N12
\keypad_inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux6~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[7][4]~q\))) # (!\keypad_inst|FILA\(0) & (\keypad_inst|REG_B[3][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[3][4]~q\,
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|REG_B[7][4]~q\,
	combout => \keypad_inst|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y8_N18
\keypad_inst|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux6~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux6~0_combout\ & ((\keypad_inst|REG_B[15][4]~q\))) # (!\keypad_inst|Mux6~0_combout\ & (\keypad_inst|REG_B[11][4]~q\)))) # (!\keypad_inst|FILA\(1) & (((\keypad_inst|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[11][4]~q\,
	datac => \keypad_inst|REG_B[15][4]~q\,
	datad => \keypad_inst|Mux6~0_combout\,
	combout => \keypad_inst|Mux6~1_combout\);

-- Location: LCCOMB_X18_Y8_N6
\keypad_inst|REG_B[3][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[3][5]~feeder_combout\ = \keypad_inst|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Mux6~1_combout\,
	combout => \keypad_inst|REG_B[3][5]~feeder_combout\);

-- Location: FF_X18_Y8_N7
\keypad_inst|REG_B[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[3][5]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[3][5]~q\);

-- Location: LCCOMB_X18_Y8_N8
\keypad_inst|REG_B[15][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[15][5]~feeder_combout\ = \keypad_inst|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Mux6~1_combout\,
	combout => \keypad_inst|REG_B[15][5]~feeder_combout\);

-- Location: FF_X18_Y8_N9
\keypad_inst|REG_B[15][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[15][5]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[15][5]~q\);

-- Location: LCCOMB_X16_Y9_N6
\keypad_inst|REG_B[7][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[7][5]~feeder_combout\ = \keypad_inst|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux6~1_combout\,
	combout => \keypad_inst|REG_B[7][5]~feeder_combout\);

-- Location: FF_X16_Y9_N7
\keypad_inst|REG_B[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[7][5]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[7][5]~q\);

-- Location: LCCOMB_X19_Y8_N12
\keypad_inst|REG_B[11][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[11][5]~feeder_combout\ = \keypad_inst|Mux6~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux6~1_combout\,
	combout => \keypad_inst|REG_B[11][5]~feeder_combout\);

-- Location: FF_X19_Y8_N13
\keypad_inst|REG_B[11][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[11][5]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[11][5]~q\);

-- Location: LCCOMB_X18_Y8_N16
\keypad_inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux5~0_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|REG_B[11][5]~q\) # ((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & (((!\keypad_inst|FILA\(0) & \keypad_inst|REG_B[3][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[11][5]~q\,
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|REG_B[3][5]~q\,
	combout => \keypad_inst|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y8_N30
\keypad_inst|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux5~1_combout\ = (\keypad_inst|FILA\(0) & ((\keypad_inst|Mux5~0_combout\ & (\keypad_inst|REG_B[15][5]~q\)) # (!\keypad_inst|Mux5~0_combout\ & ((\keypad_inst|REG_B[7][5]~q\))))) # (!\keypad_inst|FILA\(0) & (((\keypad_inst|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[15][5]~q\,
	datab => \keypad_inst|FILA\(0),
	datac => \keypad_inst|REG_B[7][5]~q\,
	datad => \keypad_inst|Mux5~0_combout\,
	combout => \keypad_inst|Mux5~1_combout\);

-- Location: LCCOMB_X19_Y8_N14
\keypad_inst|REG_B[11][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[11][6]~feeder_combout\ = \keypad_inst|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Mux5~1_combout\,
	combout => \keypad_inst|REG_B[11][6]~feeder_combout\);

-- Location: FF_X19_Y8_N15
\keypad_inst|REG_B[11][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[11][6]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[11][6]~q\);

-- Location: FF_X18_Y8_N23
\keypad_inst|REG_B[15][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux5~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[15][6]~q\);

-- Location: LCCOMB_X18_Y8_N24
\keypad_inst|REG_B[3][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[3][6]~feeder_combout\ = \keypad_inst|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Mux5~1_combout\,
	combout => \keypad_inst|REG_B[3][6]~feeder_combout\);

-- Location: FF_X18_Y8_N25
\keypad_inst|REG_B[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[3][6]~feeder_combout\,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[3][6]~q\);

-- Location: LCCOMB_X16_Y9_N12
\keypad_inst|REG_B[7][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[7][6]~feeder_combout\ = \keypad_inst|Mux5~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux5~1_combout\,
	combout => \keypad_inst|REG_B[7][6]~feeder_combout\);

-- Location: FF_X16_Y9_N13
\keypad_inst|REG_B[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[7][6]~feeder_combout\,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[7][6]~q\);

-- Location: LCCOMB_X18_Y8_N20
\keypad_inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux4~0_combout\ = (\keypad_inst|FILA\(1) & (((\keypad_inst|FILA\(0))))) # (!\keypad_inst|FILA\(1) & ((\keypad_inst|FILA\(0) & ((\keypad_inst|REG_B[7][6]~q\))) # (!\keypad_inst|FILA\(0) & (\keypad_inst|REG_B[3][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[3][6]~q\,
	datac => \keypad_inst|FILA\(0),
	datad => \keypad_inst|REG_B[7][6]~q\,
	combout => \keypad_inst|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y8_N10
\keypad_inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Mux4~1_combout\ = (\keypad_inst|FILA\(1) & ((\keypad_inst|Mux4~0_combout\ & ((\keypad_inst|REG_B[15][6]~q\))) # (!\keypad_inst|Mux4~0_combout\ & (\keypad_inst|REG_B[11][6]~q\)))) # (!\keypad_inst|FILA\(1) & (((\keypad_inst|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|FILA\(1),
	datab => \keypad_inst|REG_B[11][6]~q\,
	datac => \keypad_inst|REG_B[15][6]~q\,
	datad => \keypad_inst|Mux4~0_combout\,
	combout => \keypad_inst|Mux4~1_combout\);

-- Location: FF_X18_Y8_N15
\keypad_inst|REG_B[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux4~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[3][7]~q\);

-- Location: LCCOMB_X18_Y8_N14
\keypad_inst|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal3~1_combout\ = (\keypad_inst|REG_B[3][5]~q\ & (\keypad_inst|REG_B[3][4]~q\ & (\keypad_inst|REG_B[3][7]~q\ & \keypad_inst|REG_B[3][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[3][5]~q\,
	datab => \keypad_inst|REG_B[3][4]~q\,
	datac => \keypad_inst|REG_B[3][7]~q\,
	datad => \keypad_inst|REG_B[3][6]~q\,
	combout => \keypad_inst|Equal3~1_combout\);

-- Location: LCCOMB_X17_Y9_N8
\keypad_inst|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal3~2_combout\ = (\keypad_inst|Equal3~0_combout\ & \keypad_inst|Equal3~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Equal3~0_combout\,
	datad => \keypad_inst|Equal3~1_combout\,
	combout => \keypad_inst|Equal3~2_combout\);

-- Location: LCCOMB_X21_Y9_N10
\keypad_inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal1~0_combout\ = (\keypad_inst|REG_B[1][1]~q\ & (\keypad_inst|REG_B[1][0]~q\ & (\keypad_inst|REG_B[1][3]~q\ & \keypad_inst|REG_B[1][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[1][1]~q\,
	datab => \keypad_inst|REG_B[1][0]~q\,
	datac => \keypad_inst|REG_B[1][3]~q\,
	datad => \keypad_inst|REG_B[1][2]~q\,
	combout => \keypad_inst|Equal1~0_combout\);

-- Location: LCCOMB_X18_Y9_N0
\keypad_inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal0~0_combout\ = (\keypad_inst|REG_B[0][1]~q\ & (\keypad_inst|REG_B[0][0]~q\ & (\keypad_inst|REG_B[0][3]~q\ & \keypad_inst|REG_B[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[0][1]~q\,
	datab => \keypad_inst|REG_B[0][0]~q\,
	datac => \keypad_inst|REG_B[0][3]~q\,
	datad => \keypad_inst|REG_B[0][2]~q\,
	combout => \keypad_inst|Equal0~0_combout\);

-- Location: FF_X18_Y10_N31
\keypad_inst|REG_B[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux25~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[0][7]~q\);

-- Location: LCCOMB_X18_Y10_N30
\keypad_inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal0~1_combout\ = (\keypad_inst|REG_B[0][6]~q\ & (\keypad_inst|REG_B[0][4]~q\ & (\keypad_inst|REG_B[0][7]~q\ & \keypad_inst|REG_B[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[0][6]~q\,
	datab => \keypad_inst|REG_B[0][4]~q\,
	datac => \keypad_inst|REG_B[0][7]~q\,
	datad => \keypad_inst|REG_B[0][5]~q\,
	combout => \keypad_inst|Equal0~1_combout\);

-- Location: FF_X18_Y10_N5
\keypad_inst|REG_B[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux18~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[1][7]~q\);

-- Location: LCCOMB_X18_Y10_N4
\keypad_inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal1~1_combout\ = (\keypad_inst|REG_B[1][5]~q\ & (\keypad_inst|REG_B[1][6]~q\ & (\keypad_inst|REG_B[1][7]~q\ & \keypad_inst|REG_B[1][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[1][5]~q\,
	datab => \keypad_inst|REG_B[1][6]~q\,
	datac => \keypad_inst|REG_B[1][7]~q\,
	datad => \keypad_inst|REG_B[1][4]~q\,
	combout => \keypad_inst|Equal1~1_combout\);

-- Location: LCCOMB_X17_Y9_N10
\keypad_inst|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~2_combout\ = (\keypad_inst|Equal1~0_combout\ & (!\keypad_inst|Equal1~1_combout\ & ((!\keypad_inst|Equal0~1_combout\) # (!\keypad_inst|Equal0~0_combout\)))) # (!\keypad_inst|Equal1~0_combout\ & (((!\keypad_inst|Equal0~1_combout\)) # 
-- (!\keypad_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal1~0_combout\,
	datab => \keypad_inst|Equal0~0_combout\,
	datac => \keypad_inst|Equal0~1_combout\,
	datad => \keypad_inst|Equal1~1_combout\,
	combout => \keypad_inst|process_2~2_combout\);

-- Location: LCCOMB_X17_Y9_N6
\keypad_inst|process_2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~6_combout\ = (\keypad_inst|process_2~24_combout\) # ((\keypad_inst|process_2~5_combout\) # ((\keypad_inst|Equal3~2_combout\) # (!\keypad_inst|process_2~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~24_combout\,
	datab => \keypad_inst|process_2~5_combout\,
	datac => \keypad_inst|Equal3~2_combout\,
	datad => \keypad_inst|process_2~2_combout\,
	combout => \keypad_inst|process_2~6_combout\);

-- Location: LCCOMB_X17_Y9_N14
\keypad_inst|process_2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~14_combout\ = (\keypad_inst|Equal3~2_combout\ & (\keypad_inst|process_2~2_combout\ & ((!\keypad_inst|Equal2~1_combout\) # (!\keypad_inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal2~0_combout\,
	datab => \keypad_inst|Equal2~1_combout\,
	datac => \keypad_inst|Equal3~2_combout\,
	datad => \keypad_inst|process_2~2_combout\,
	combout => \keypad_inst|process_2~14_combout\);

-- Location: LCCOMB_X22_Y9_N8
\keypad_inst|Equal10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal10~1_combout\ = (\keypad_inst|REG_B[10][2]~q\ & (\keypad_inst|REG_B[10][0]~q\ & (\keypad_inst|REG_B[10][3]~q\ & \keypad_inst|REG_B[10][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[10][2]~q\,
	datab => \keypad_inst|REG_B[10][0]~q\,
	datac => \keypad_inst|REG_B[10][3]~q\,
	datad => \keypad_inst|REG_B[10][1]~q\,
	combout => \keypad_inst|Equal10~1_combout\);

-- Location: FF_X17_Y10_N13
\keypad_inst|REG_B[10][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux11~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[10][7]~q\);

-- Location: LCCOMB_X17_Y10_N12
\keypad_inst|Equal10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal10~0_combout\ = (\keypad_inst|REG_B[10][6]~q\ & (\keypad_inst|REG_B[10][4]~q\ & (\keypad_inst|REG_B[10][7]~q\ & \keypad_inst|REG_B[10][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[10][6]~q\,
	datab => \keypad_inst|REG_B[10][4]~q\,
	datac => \keypad_inst|REG_B[10][7]~q\,
	datad => \keypad_inst|REG_B[10][5]~q\,
	combout => \keypad_inst|Equal10~0_combout\);

-- Location: FF_X16_Y9_N31
\keypad_inst|REG_B[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux4~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[7][7]~q\);

-- Location: LCCOMB_X16_Y9_N30
\keypad_inst|Equal7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal7~1_combout\ = (\keypad_inst|REG_B[7][5]~q\ & (\keypad_inst|REG_B[7][4]~q\ & (\keypad_inst|REG_B[7][7]~q\ & \keypad_inst|REG_B[7][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[7][5]~q\,
	datab => \keypad_inst|REG_B[7][4]~q\,
	datac => \keypad_inst|REG_B[7][7]~q\,
	datad => \keypad_inst|REG_B[7][6]~q\,
	combout => \keypad_inst|Equal7~1_combout\);

-- Location: LCCOMB_X16_Y9_N18
\keypad_inst|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal7~0_combout\ = (\keypad_inst|REG_B[7][0]~q\ & (\keypad_inst|REG_B[7][1]~q\ & (\keypad_inst|REG_B[7][2]~q\ & \keypad_inst|REG_B[7][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[7][0]~q\,
	datab => \keypad_inst|REG_B[7][1]~q\,
	datac => \keypad_inst|REG_B[7][2]~q\,
	datad => \keypad_inst|REG_B[7][3]~q\,
	combout => \keypad_inst|Equal7~0_combout\);

-- Location: LCCOMB_X16_Y9_N24
\keypad_inst|Equal7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal7~2_combout\ = (\keypad_inst|Equal7~1_combout\ & \keypad_inst|Equal7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal7~1_combout\,
	datad => \keypad_inst|Equal7~0_combout\,
	combout => \keypad_inst|Equal7~2_combout\);

-- Location: LCCOMB_X16_Y10_N28
\keypad_inst|Equal8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal8~0_combout\ = (\keypad_inst|REG_B[8][1]~q\ & (\keypad_inst|REG_B[8][2]~q\ & (\keypad_inst|REG_B[8][0]~q\ & \keypad_inst|REG_B[8][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[8][1]~q\,
	datab => \keypad_inst|REG_B[8][2]~q\,
	datac => \keypad_inst|REG_B[8][0]~q\,
	datad => \keypad_inst|REG_B[8][3]~q\,
	combout => \keypad_inst|Equal8~0_combout\);

-- Location: FF_X16_Y10_N21
\keypad_inst|REG_B[8][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux25~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[8][7]~q\);

-- Location: LCCOMB_X16_Y10_N20
\keypad_inst|Equal8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal8~1_combout\ = (\keypad_inst|REG_B[8][4]~q\ & (\keypad_inst|REG_B[8][5]~q\ & (\keypad_inst|REG_B[8][7]~q\ & \keypad_inst|REG_B[8][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[8][4]~q\,
	datab => \keypad_inst|REG_B[8][5]~q\,
	datac => \keypad_inst|REG_B[8][7]~q\,
	datad => \keypad_inst|REG_B[8][6]~q\,
	combout => \keypad_inst|Equal8~1_combout\);

-- Location: LCCOMB_X22_Y9_N30
\keypad_inst|Equal9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal9~0_combout\ = (\keypad_inst|REG_B[9][3]~q\ & (\keypad_inst|REG_B[9][0]~q\ & (\keypad_inst|REG_B[9][1]~q\ & \keypad_inst|REG_B[9][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[9][3]~q\,
	datab => \keypad_inst|REG_B[9][0]~q\,
	datac => \keypad_inst|REG_B[9][1]~q\,
	datad => \keypad_inst|REG_B[9][2]~q\,
	combout => \keypad_inst|Equal9~0_combout\);

-- Location: FF_X19_Y10_N11
\keypad_inst|REG_B[9][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux18~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[9][7]~q\);

-- Location: LCCOMB_X19_Y10_N10
\keypad_inst|Equal9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal9~1_combout\ = (\keypad_inst|REG_B[9][5]~q\ & (\keypad_inst|REG_B[9][4]~q\ & (\keypad_inst|REG_B[9][7]~q\ & \keypad_inst|REG_B[9][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[9][5]~q\,
	datab => \keypad_inst|REG_B[9][4]~q\,
	datac => \keypad_inst|REG_B[9][7]~q\,
	datad => \keypad_inst|REG_B[9][6]~q\,
	combout => \keypad_inst|Equal9~1_combout\);

-- Location: LCCOMB_X16_Y9_N8
\keypad_inst|process_2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~12_combout\ = (\keypad_inst|Equal8~0_combout\ & (!\keypad_inst|Equal8~1_combout\ & ((!\keypad_inst|Equal9~1_combout\) # (!\keypad_inst|Equal9~0_combout\)))) # (!\keypad_inst|Equal8~0_combout\ & (((!\keypad_inst|Equal9~1_combout\) # 
-- (!\keypad_inst|Equal9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal8~0_combout\,
	datab => \keypad_inst|Equal8~1_combout\,
	datac => \keypad_inst|Equal9~0_combout\,
	datad => \keypad_inst|Equal9~1_combout\,
	combout => \keypad_inst|process_2~12_combout\);

-- Location: LCCOMB_X16_Y9_N2
\keypad_inst|process_2~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~13_combout\ = (\keypad_inst|Equal7~2_combout\) # ((\keypad_inst|process_2~12_combout\ & ((!\keypad_inst|Equal10~0_combout\) # (!\keypad_inst|Equal10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal10~1_combout\,
	datab => \keypad_inst|Equal10~0_combout\,
	datac => \keypad_inst|Equal7~2_combout\,
	datad => \keypad_inst|process_2~12_combout\,
	combout => \keypad_inst|process_2~13_combout\);

-- Location: LCCOMB_X17_Y9_N20
\keypad_inst|BOTON_PRES[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES[0]~0_combout\ = (\keypad_inst|process_2~6_combout\ & (\keypad_inst|process_2~14_combout\)) # (!\keypad_inst|process_2~6_combout\ & ((\keypad_inst|process_2~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~6_combout\,
	datab => \keypad_inst|process_2~14_combout\,
	datad => \keypad_inst|process_2~13_combout\,
	combout => \keypad_inst|BOTON_PRES[0]~0_combout\);

-- Location: LCCOMB_X16_Y8_N6
\keypad_inst|Equal15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal15~1_combout\ = (\keypad_inst|REG_B[15][2]~q\ & (\keypad_inst|REG_B[15][0]~q\ & (\keypad_inst|REG_B[15][1]~q\ & \keypad_inst|REG_B[15][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[15][2]~q\,
	datab => \keypad_inst|REG_B[15][0]~q\,
	datac => \keypad_inst|REG_B[15][1]~q\,
	datad => \keypad_inst|REG_B[15][3]~q\,
	combout => \keypad_inst|Equal15~1_combout\);

-- Location: LCCOMB_X18_Y8_N0
\keypad_inst|REG_B[15][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[15][7]~feeder_combout\ = \keypad_inst|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Mux4~1_combout\,
	combout => \keypad_inst|REG_B[15][7]~feeder_combout\);

-- Location: FF_X18_Y8_N1
\keypad_inst|REG_B[15][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[15][7]~feeder_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[15][7]~q\);

-- Location: LCCOMB_X18_Y8_N2
\keypad_inst|Equal15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal15~0_combout\ = (\keypad_inst|REG_B[15][6]~q\ & (\keypad_inst|REG_B[15][7]~q\ & (\keypad_inst|REG_B[15][5]~q\ & \keypad_inst|REG_B[15][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[15][6]~q\,
	datab => \keypad_inst|REG_B[15][7]~q\,
	datac => \keypad_inst|REG_B[15][5]~q\,
	datad => \keypad_inst|REG_B[15][4]~q\,
	combout => \keypad_inst|Equal15~0_combout\);

-- Location: FF_X17_Y10_N11
\keypad_inst|REG_B[14][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|Mux11~1_combout\,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[14][7]~q\);

-- Location: LCCOMB_X17_Y10_N22
\keypad_inst|Equal14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal14~0_combout\ = (\keypad_inst|REG_B[14][7]~q\ & (\keypad_inst|REG_B[14][4]~q\ & (\keypad_inst|REG_B[14][6]~q\ & \keypad_inst|REG_B[14][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[14][7]~q\,
	datab => \keypad_inst|REG_B[14][4]~q\,
	datac => \keypad_inst|REG_B[14][6]~q\,
	datad => \keypad_inst|REG_B[14][5]~q\,
	combout => \keypad_inst|Equal14~0_combout\);

-- Location: LCCOMB_X22_Y9_N20
\keypad_inst|Equal14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal14~1_combout\ = (\keypad_inst|REG_B[14][3]~q\ & (\keypad_inst|REG_B[14][2]~q\ & (\keypad_inst|REG_B[14][0]~q\ & \keypad_inst|REG_B[14][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[14][3]~q\,
	datab => \keypad_inst|REG_B[14][2]~q\,
	datac => \keypad_inst|REG_B[14][0]~q\,
	datad => \keypad_inst|REG_B[14][1]~q\,
	combout => \keypad_inst|Equal14~1_combout\);

-- Location: LCCOMB_X21_Y10_N8
\keypad_inst|Equal12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal12~1_combout\ = (\keypad_inst|REG_B[12][2]~q\ & (\keypad_inst|REG_B[12][3]~q\ & (\keypad_inst|REG_B[12][0]~q\ & \keypad_inst|REG_B[12][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[12][2]~q\,
	datab => \keypad_inst|REG_B[12][3]~q\,
	datac => \keypad_inst|REG_B[12][0]~q\,
	datad => \keypad_inst|REG_B[12][1]~q\,
	combout => \keypad_inst|Equal12~1_combout\);

-- Location: FF_X16_Y10_N23
\keypad_inst|REG_B[12][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux25~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[12][7]~q\);

-- Location: LCCOMB_X16_Y10_N22
\keypad_inst|Equal12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal12~0_combout\ = (\keypad_inst|REG_B[12][4]~q\ & (\keypad_inst|REG_B[12][6]~q\ & (\keypad_inst|REG_B[12][7]~q\ & \keypad_inst|REG_B[12][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[12][4]~q\,
	datab => \keypad_inst|REG_B[12][6]~q\,
	datac => \keypad_inst|REG_B[12][7]~q\,
	datad => \keypad_inst|REG_B[12][5]~q\,
	combout => \keypad_inst|Equal12~0_combout\);

-- Location: LCCOMB_X21_Y10_N16
\keypad_inst|Equal13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal13~1_combout\ = (\keypad_inst|REG_B[13][2]~q\ & (\keypad_inst|REG_B[13][0]~q\ & (\keypad_inst|REG_B[13][3]~q\ & \keypad_inst|REG_B[13][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[13][2]~q\,
	datab => \keypad_inst|REG_B[13][0]~q\,
	datac => \keypad_inst|REG_B[13][3]~q\,
	datad => \keypad_inst|REG_B[13][1]~q\,
	combout => \keypad_inst|Equal13~1_combout\);

-- Location: FF_X21_Y10_N19
\keypad_inst|REG_B[13][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	asdata => \keypad_inst|Mux18~1_combout\,
	sload => VCC,
	ena => \keypad_inst|Mux2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[13][7]~q\);

-- Location: LCCOMB_X21_Y10_N18
\keypad_inst|Equal13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal13~0_combout\ = (\keypad_inst|REG_B[13][6]~q\ & (\keypad_inst|REG_B[13][5]~q\ & (\keypad_inst|REG_B[13][7]~q\ & \keypad_inst|REG_B[13][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[13][6]~q\,
	datab => \keypad_inst|REG_B[13][5]~q\,
	datac => \keypad_inst|REG_B[13][7]~q\,
	datad => \keypad_inst|REG_B[13][4]~q\,
	combout => \keypad_inst|Equal13~0_combout\);

-- Location: LCCOMB_X17_Y10_N16
\keypad_inst|BOTON_PRES~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES~4_combout\ = (\keypad_inst|Equal12~1_combout\ & (!\keypad_inst|Equal12~0_combout\ & ((!\keypad_inst|Equal13~0_combout\) # (!\keypad_inst|Equal13~1_combout\)))) # (!\keypad_inst|Equal12~1_combout\ & 
-- (((!\keypad_inst|Equal13~0_combout\) # (!\keypad_inst|Equal13~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal12~1_combout\,
	datab => \keypad_inst|Equal12~0_combout\,
	datac => \keypad_inst|Equal13~1_combout\,
	datad => \keypad_inst|Equal13~0_combout\,
	combout => \keypad_inst|BOTON_PRES~4_combout\);

-- Location: LCCOMB_X17_Y10_N24
\keypad_inst|BOTON_PRES~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES~5_combout\ = (\keypad_inst|BOTON_PRES~4_combout\ & ((!\keypad_inst|Equal14~1_combout\) # (!\keypad_inst|Equal14~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal14~0_combout\,
	datac => \keypad_inst|Equal14~1_combout\,
	datad => \keypad_inst|BOTON_PRES~4_combout\,
	combout => \keypad_inst|BOTON_PRES~5_combout\);

-- Location: LCCOMB_X17_Y10_N18
\keypad_inst|BOTON_PRES~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES~6_combout\ = (\keypad_inst|Equal15~1_combout\ & (\keypad_inst|Equal15~0_combout\ & \keypad_inst|BOTON_PRES~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal15~1_combout\,
	datac => \keypad_inst|Equal15~0_combout\,
	datad => \keypad_inst|BOTON_PRES~5_combout\,
	combout => \keypad_inst|BOTON_PRES~6_combout\);

-- Location: LCCOMB_X16_Y9_N16
\keypad_inst|process_2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~8_combout\ = (\keypad_inst|Equal7~1_combout\ & (!\keypad_inst|Equal7~0_combout\ & ((!\keypad_inst|Equal8~1_combout\) # (!\keypad_inst|Equal8~0_combout\)))) # (!\keypad_inst|Equal7~1_combout\ & (((!\keypad_inst|Equal8~1_combout\) # 
-- (!\keypad_inst|Equal8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal7~1_combout\,
	datab => \keypad_inst|Equal7~0_combout\,
	datac => \keypad_inst|Equal8~0_combout\,
	datad => \keypad_inst|Equal8~1_combout\,
	combout => \keypad_inst|process_2~8_combout\);

-- Location: LCCOMB_X16_Y9_N10
\keypad_inst|process_2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~9_combout\ = (\keypad_inst|process_2~8_combout\ & ((!\keypad_inst|Equal9~1_combout\) # (!\keypad_inst|Equal9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal9~0_combout\,
	datac => \keypad_inst|Equal9~1_combout\,
	datad => \keypad_inst|process_2~8_combout\,
	combout => \keypad_inst|process_2~9_combout\);

-- Location: LCCOMB_X19_Y10_N30
\keypad_inst|Equal11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal11~1_combout\ = (\keypad_inst|REG_B[11][2]~q\ & (\keypad_inst|REG_B[11][3]~q\ & (\keypad_inst|REG_B[11][1]~q\ & \keypad_inst|REG_B[11][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[11][2]~q\,
	datab => \keypad_inst|REG_B[11][3]~q\,
	datac => \keypad_inst|REG_B[11][1]~q\,
	datad => \keypad_inst|REG_B[11][0]~q\,
	combout => \keypad_inst|Equal11~1_combout\);

-- Location: LCCOMB_X19_Y8_N16
\keypad_inst|REG_B[11][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|REG_B[11][7]~feeder_combout\ = \keypad_inst|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \keypad_inst|Mux4~1_combout\,
	combout => \keypad_inst|REG_B[11][7]~feeder_combout\);

-- Location: FF_X19_Y8_N17
\keypad_inst|REG_B[11][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \keypad_inst|Div1ms|clk_reg~clkctrl_outclk\,
	d => \keypad_inst|REG_B[11][7]~feeder_combout\,
	ena => \keypad_inst|Mux2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|REG_B[11][7]~q\);

-- Location: LCCOMB_X19_Y8_N0
\keypad_inst|Equal11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal11~0_combout\ = (\keypad_inst|REG_B[11][5]~q\ & (\keypad_inst|REG_B[11][7]~q\ & (\keypad_inst|REG_B[11][6]~q\ & \keypad_inst|REG_B[11][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|REG_B[11][5]~q\,
	datab => \keypad_inst|REG_B[11][7]~q\,
	datac => \keypad_inst|REG_B[11][6]~q\,
	datad => \keypad_inst|REG_B[11][4]~q\,
	combout => \keypad_inst|Equal11~0_combout\);

-- Location: LCCOMB_X19_Y9_N8
\keypad_inst|process_2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~7_combout\ = (\keypad_inst|Equal11~1_combout\ & ((\keypad_inst|Equal11~0_combout\) # ((\keypad_inst|Equal10~1_combout\ & \keypad_inst|Equal10~0_combout\)))) # (!\keypad_inst|Equal11~1_combout\ & (((\keypad_inst|Equal10~1_combout\ & 
-- \keypad_inst|Equal10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal11~1_combout\,
	datab => \keypad_inst|Equal11~0_combout\,
	datac => \keypad_inst|Equal10~1_combout\,
	datad => \keypad_inst|Equal10~0_combout\,
	combout => \keypad_inst|process_2~7_combout\);

-- Location: LCCOMB_X17_Y9_N0
\keypad_inst|process_2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~10_combout\ = ((\keypad_inst|process_2~7_combout\) # (\keypad_inst|process_2~6_combout\)) # (!\keypad_inst|process_2~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~9_combout\,
	datac => \keypad_inst|process_2~7_combout\,
	datad => \keypad_inst|process_2~6_combout\,
	combout => \keypad_inst|process_2~10_combout\);

-- Location: FF_X17_Y9_N21
\keypad_inst|BOTON_PRES[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|BOTON_PRES[0]~0_combout\,
	asdata => \keypad_inst|BOTON_PRES~6_combout\,
	sload => \keypad_inst|ALT_INV_process_2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|BOTON_PRES\(0));

-- Location: LCCOMB_X16_Y9_N20
\keypad_inst|process_2~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~15_combout\ = (\keypad_inst|Equal10~0_combout\ & (\keypad_inst|Equal10~1_combout\ & \keypad_inst|process_2~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal10~0_combout\,
	datac => \keypad_inst|Equal10~1_combout\,
	datad => \keypad_inst|process_2~9_combout\,
	combout => \keypad_inst|process_2~15_combout\);

-- Location: LCCOMB_X18_Y9_N28
\keypad_inst|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal4~2_combout\ = (\keypad_inst|Equal4~1_combout\ & \keypad_inst|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \keypad_inst|Equal4~1_combout\,
	datad => \keypad_inst|Equal4~0_combout\,
	combout => \keypad_inst|Equal4~2_combout\);

-- Location: LCCOMB_X18_Y9_N24
\keypad_inst|process_2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~16_combout\ = (!\keypad_inst|Equal4~2_combout\ & (!\keypad_inst|Equal3~2_combout\ & ((!\keypad_inst|Equal5~0_combout\) # (!\keypad_inst|Equal5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal5~1_combout\,
	datab => \keypad_inst|Equal5~0_combout\,
	datac => \keypad_inst|Equal4~2_combout\,
	datad => \keypad_inst|Equal3~2_combout\,
	combout => \keypad_inst|process_2~16_combout\);

-- Location: LCCOMB_X17_Y9_N12
\keypad_inst|process_2~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~17_combout\ = (\keypad_inst|process_2~2_combout\ & ((\keypad_inst|process_2~16_combout\) # ((\keypad_inst|Equal2~1_combout\ & \keypad_inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~2_combout\,
	datab => \keypad_inst|Equal2~1_combout\,
	datac => \keypad_inst|Equal2~0_combout\,
	datad => \keypad_inst|process_2~16_combout\,
	combout => \keypad_inst|process_2~17_combout\);

-- Location: LCCOMB_X17_Y9_N30
\keypad_inst|BOTON_PRES[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES[1]~1_combout\ = (\keypad_inst|process_2~6_combout\ & ((\keypad_inst|process_2~17_combout\))) # (!\keypad_inst|process_2~6_combout\ & (\keypad_inst|process_2~15_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~6_combout\,
	datab => \keypad_inst|process_2~15_combout\,
	datad => \keypad_inst|process_2~17_combout\,
	combout => \keypad_inst|BOTON_PRES[1]~1_combout\);

-- Location: LCCOMB_X17_Y10_N28
\keypad_inst|BOTON_PRES~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES~7_combout\ = (\keypad_inst|Equal14~0_combout\ & (\keypad_inst|Equal14~1_combout\ & \keypad_inst|BOTON_PRES~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal14~0_combout\,
	datac => \keypad_inst|Equal14~1_combout\,
	datad => \keypad_inst|BOTON_PRES~4_combout\,
	combout => \keypad_inst|BOTON_PRES~7_combout\);

-- Location: FF_X17_Y9_N31
\keypad_inst|BOTON_PRES[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|BOTON_PRES[1]~1_combout\,
	asdata => \keypad_inst|BOTON_PRES~7_combout\,
	sload => \keypad_inst|ALT_INV_process_2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|BOTON_PRES\(1));

-- Location: LCCOMB_X16_Y9_N22
\keypad_inst|process_2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~18_combout\ = (\keypad_inst|Equal9~1_combout\ & (\keypad_inst|Equal9~0_combout\ & \keypad_inst|process_2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal9~1_combout\,
	datac => \keypad_inst|Equal9~0_combout\,
	datad => \keypad_inst|process_2~8_combout\,
	combout => \keypad_inst|process_2~18_combout\);

-- Location: LCCOMB_X17_Y9_N18
\keypad_inst|process_2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~20_combout\ = (\keypad_inst|Equal3~2_combout\) # (((\keypad_inst|Equal2~0_combout\ & \keypad_inst|Equal2~1_combout\)) # (!\keypad_inst|process_2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal2~0_combout\,
	datab => \keypad_inst|Equal2~1_combout\,
	datac => \keypad_inst|Equal3~2_combout\,
	datad => \keypad_inst|process_2~2_combout\,
	combout => \keypad_inst|process_2~20_combout\);

-- Location: LCCOMB_X21_Y9_N26
\keypad_inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal5~2_combout\ = (\keypad_inst|Equal5~0_combout\ & \keypad_inst|Equal5~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \keypad_inst|Equal5~0_combout\,
	datad => \keypad_inst|Equal5~1_combout\,
	combout => \keypad_inst|Equal5~2_combout\);

-- Location: LCCOMB_X18_Y10_N20
\keypad_inst|process_2~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~19_combout\ = (\keypad_inst|Equal1~0_combout\ & (\keypad_inst|Equal1~1_combout\ & ((!\keypad_inst|Equal0~0_combout\) # (!\keypad_inst|Equal0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal1~0_combout\,
	datab => \keypad_inst|Equal1~1_combout\,
	datac => \keypad_inst|Equal0~1_combout\,
	datad => \keypad_inst|Equal0~0_combout\,
	combout => \keypad_inst|process_2~19_combout\);

-- Location: LCCOMB_X17_Y9_N2
\keypad_inst|process_2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~21_combout\ = (\keypad_inst|process_2~19_combout\) # ((!\keypad_inst|Equal4~2_combout\ & (!\keypad_inst|process_2~20_combout\ & \keypad_inst|Equal5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal4~2_combout\,
	datab => \keypad_inst|process_2~20_combout\,
	datac => \keypad_inst|Equal5~2_combout\,
	datad => \keypad_inst|process_2~19_combout\,
	combout => \keypad_inst|process_2~21_combout\);

-- Location: LCCOMB_X17_Y9_N24
\keypad_inst|BOTON_PRES[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES[2]~2_combout\ = (\keypad_inst|process_2~6_combout\ & ((\keypad_inst|process_2~21_combout\))) # (!\keypad_inst|process_2~6_combout\ & (\keypad_inst|process_2~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~6_combout\,
	datab => \keypad_inst|process_2~18_combout\,
	datad => \keypad_inst|process_2~21_combout\,
	combout => \keypad_inst|BOTON_PRES[2]~2_combout\);

-- Location: LCCOMB_X17_Y10_N14
\keypad_inst|BOTON_PRES~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES~8_combout\ = (\keypad_inst|Equal13~0_combout\ & (\keypad_inst|Equal13~1_combout\ & ((!\keypad_inst|Equal12~0_combout\) # (!\keypad_inst|Equal12~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal13~0_combout\,
	datab => \keypad_inst|Equal13~1_combout\,
	datac => \keypad_inst|Equal12~1_combout\,
	datad => \keypad_inst|Equal12~0_combout\,
	combout => \keypad_inst|BOTON_PRES~8_combout\);

-- Location: FF_X17_Y9_N25
\keypad_inst|BOTON_PRES[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|BOTON_PRES[2]~2_combout\,
	asdata => \keypad_inst|BOTON_PRES~8_combout\,
	sload => \keypad_inst|ALT_INV_process_2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|BOTON_PRES\(2));

-- Location: LCCOMB_X16_Y10_N2
\keypad_inst|process_2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~22_combout\ = (\keypad_inst|Equal8~0_combout\ & (\keypad_inst|Equal8~1_combout\ & ((!\keypad_inst|Equal7~1_combout\) # (!\keypad_inst|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal7~0_combout\,
	datab => \keypad_inst|Equal8~0_combout\,
	datac => \keypad_inst|Equal7~1_combout\,
	datad => \keypad_inst|Equal8~1_combout\,
	combout => \keypad_inst|process_2~22_combout\);

-- Location: LCCOMB_X18_Y9_N2
\keypad_inst|process_2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~23_combout\ = (\keypad_inst|Equal0~0_combout\ & ((\keypad_inst|Equal0~1_combout\) # ((\keypad_inst|Equal4~2_combout\ & !\keypad_inst|process_2~20_combout\)))) # (!\keypad_inst|Equal0~0_combout\ & (((\keypad_inst|Equal4~2_combout\ & 
-- !\keypad_inst|process_2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal0~0_combout\,
	datab => \keypad_inst|Equal0~1_combout\,
	datac => \keypad_inst|Equal4~2_combout\,
	datad => \keypad_inst|process_2~20_combout\,
	combout => \keypad_inst|process_2~23_combout\);

-- Location: LCCOMB_X17_Y9_N22
\keypad_inst|BOTON_PRES[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES[3]~3_combout\ = (\keypad_inst|process_2~6_combout\ & ((\keypad_inst|process_2~23_combout\))) # (!\keypad_inst|process_2~6_combout\ & (\keypad_inst|process_2~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~6_combout\,
	datab => \keypad_inst|process_2~22_combout\,
	datad => \keypad_inst|process_2~23_combout\,
	combout => \keypad_inst|BOTON_PRES[3]~3_combout\);

-- Location: LCCOMB_X16_Y10_N8
\keypad_inst|Equal12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|Equal12~2_combout\ = (\keypad_inst|Equal12~0_combout\ & \keypad_inst|Equal12~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal12~0_combout\,
	datad => \keypad_inst|Equal12~1_combout\,
	combout => \keypad_inst|Equal12~2_combout\);

-- Location: FF_X17_Y9_N23
\keypad_inst|BOTON_PRES[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|BOTON_PRES[3]~3_combout\,
	asdata => \keypad_inst|Equal12~2_combout\,
	sload => \keypad_inst|ALT_INV_process_2~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|BOTON_PRES\(3));

-- Location: LCCOMB_X17_Y9_N26
\keypad_inst|BOTON_PRES~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES~9_combout\ = (!\keypad_inst|process_2~10_combout\ & (((\keypad_inst|Equal15~1_combout\ & \keypad_inst|Equal15~0_combout\)) # (!\keypad_inst|BOTON_PRES~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal15~1_combout\,
	datab => \keypad_inst|Equal15~0_combout\,
	datac => \keypad_inst|BOTON_PRES~5_combout\,
	datad => \keypad_inst|process_2~10_combout\,
	combout => \keypad_inst|BOTON_PRES~9_combout\);

-- Location: FF_X17_Y9_N27
\keypad_inst|BOTON_PRES[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|BOTON_PRES~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|BOTON_PRES\(4));

-- Location: LCCOMB_X16_Y9_N4
\keypad_inst|BOTON_PRES~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES~10_combout\ = (!\keypad_inst|Equal7~2_combout\ & (!\keypad_inst|process_2~6_combout\ & ((\keypad_inst|process_2~7_combout\) # (!\keypad_inst|process_2~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~9_combout\,
	datab => \keypad_inst|process_2~7_combout\,
	datac => \keypad_inst|Equal7~2_combout\,
	datad => \keypad_inst|process_2~6_combout\,
	combout => \keypad_inst|BOTON_PRES~10_combout\);

-- Location: FF_X16_Y9_N5
\keypad_inst|BOTON_PRES[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|BOTON_PRES~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|BOTON_PRES\(5));

-- Location: LCCOMB_X17_Y9_N4
\keypad_inst|BOTON_PRES~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|BOTON_PRES~11_combout\ = (\keypad_inst|process_2~10_combout\ & ((\keypad_inst|process_2~6_combout\ & ((!\keypad_inst|process_2~20_combout\))) # (!\keypad_inst|process_2~6_combout\ & (\keypad_inst|Equal7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|process_2~6_combout\,
	datab => \keypad_inst|Equal7~2_combout\,
	datac => \keypad_inst|process_2~20_combout\,
	datad => \keypad_inst|process_2~10_combout\,
	combout => \keypad_inst|BOTON_PRES~11_combout\);

-- Location: FF_X17_Y9_N5
\keypad_inst|BOTON_PRES[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|BOTON_PRES~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|BOTON_PRES\(6));

-- Location: FF_X17_Y9_N19
\keypad_inst|BOTON_PRES[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|process_2~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|BOTON_PRES\(7));

-- Location: M9K_X15_Y9_N0
\decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F00",
	mem_init1 => X"1FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC0079001FC007F001FC0024001FC003000020007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F0",
	mem_init0 => X"01FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC0019001FC007F001FC0012001FC00020000C007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC0038001FC007F001FC0000001FC001000118007F001FC007F001FC007F001FC007F001FC0006001FC007F001FC0040001FC000E00084007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F001FC007F",
	clk0_core_clock_enable => "ena0",
	clk0_input_clock_enable => "ena0",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "decoregistro.decoregistro0.rtl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "decoder:decoder_inst|altsyncram:Mux6_rtl_0|altsyncram_pe11:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 7,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \CLK~inputclkctrl_outclk\,
	ena0 => \controler_inst|ALT_INV_q_reg~q\,
	portaaddr => \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \decoder_inst|Mux6_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X17_Y9_N28
\keypad_inst|process_2~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \keypad_inst|process_2~11_combout\ = ((\keypad_inst|process_2~10_combout\) # ((\keypad_inst|Equal15~1_combout\ & \keypad_inst|Equal15~0_combout\))) # (!\keypad_inst|BOTON_PRES~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \keypad_inst|Equal15~1_combout\,
	datab => \keypad_inst|Equal15~0_combout\,
	datac => \keypad_inst|BOTON_PRES~5_combout\,
	datad => \keypad_inst|process_2~10_combout\,
	combout => \keypad_inst|process_2~11_combout\);

-- Location: FF_X17_Y9_N29
\keypad_inst|IND\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \keypad_inst|process_2~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \keypad_inst|IND~q\);

ww_FILAS(0) <= \FILAS[0]~output_o\;

ww_FILAS(1) <= \FILAS[1]~output_o\;

ww_FILAS(2) <= \FILAS[2]~output_o\;

ww_FILAS(3) <= \FILAS[3]~output_o\;

ww_SEGMENTOS(0) <= \SEGMENTOS[0]~output_o\;

ww_SEGMENTOS(1) <= \SEGMENTOS[1]~output_o\;

ww_SEGMENTOS(2) <= \SEGMENTOS[2]~output_o\;

ww_SEGMENTOS(3) <= \SEGMENTOS[3]~output_o\;

ww_SEGMENTOS(4) <= \SEGMENTOS[4]~output_o\;

ww_SEGMENTOS(5) <= \SEGMENTOS[5]~output_o\;

ww_SEGMENTOS(6) <= \SEGMENTOS[6]~output_o\;

ww_KEY_PRESSED <= \KEY_PRESSED~output_o\;

ww_SEGMENTO <= \SEGMENTO~output_o\;

ww_CTRL <= \CTRL~output_o\;
END structure;


