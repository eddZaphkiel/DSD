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

-- DATE "09/28/2024 16:06:34"

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

ENTITY 	registrogeneral IS
    PORT (
	CLK : IN std_logic;
	INPUT : IN std_logic_vector(3 DOWNTO 0);
	CTRL : IN std_logic_vector(3 DOWNTO 0);
	BITS : BUFFER std_logic_vector(3 DOWNTO 0)
	);
END registrogeneral;

-- Design Ports Information
-- BITS[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BITS[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BITS[2]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BITS[3]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTRL[3]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTRL[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTRL[2]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CTRL[0]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registrogeneral IS
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
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CTRL : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BITS : std_logic_vector(3 DOWNTO 0);
SIGNAL \U_DIVISOR|clk_reg~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BITS[0]~output_o\ : std_logic;
SIGNAL \BITS[1]~output_o\ : std_logic;
SIGNAL \BITS[2]~output_o\ : std_logic;
SIGNAL \BITS[3]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \U_DIVISOR|count[0]~24_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[0]~25\ : std_logic;
SIGNAL \U_DIVISOR|count[1]~26_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[1]~27\ : std_logic;
SIGNAL \U_DIVISOR|count[2]~28_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[2]~29\ : std_logic;
SIGNAL \U_DIVISOR|count[3]~30_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[3]~31\ : std_logic;
SIGNAL \U_DIVISOR|count[4]~32_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[4]~33\ : std_logic;
SIGNAL \U_DIVISOR|count[5]~34_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[5]~35\ : std_logic;
SIGNAL \U_DIVISOR|count[6]~36_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[6]~37\ : std_logic;
SIGNAL \U_DIVISOR|count[7]~38_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[7]~39\ : std_logic;
SIGNAL \U_DIVISOR|count[8]~40_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[8]~41\ : std_logic;
SIGNAL \U_DIVISOR|count[9]~42_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[9]~43\ : std_logic;
SIGNAL \U_DIVISOR|count[10]~44_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[10]~45\ : std_logic;
SIGNAL \U_DIVISOR|count[11]~46_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[11]~47\ : std_logic;
SIGNAL \U_DIVISOR|count[12]~48_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[12]~49\ : std_logic;
SIGNAL \U_DIVISOR|count[13]~50_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[13]~51\ : std_logic;
SIGNAL \U_DIVISOR|count[14]~52_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[14]~53\ : std_logic;
SIGNAL \U_DIVISOR|count[15]~54_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[15]~55\ : std_logic;
SIGNAL \U_DIVISOR|count[16]~56_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[16]~57\ : std_logic;
SIGNAL \U_DIVISOR|count[17]~58_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[17]~59\ : std_logic;
SIGNAL \U_DIVISOR|count[18]~60_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[18]~61\ : std_logic;
SIGNAL \U_DIVISOR|count[19]~62_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[19]~63\ : std_logic;
SIGNAL \U_DIVISOR|count[20]~64_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[20]~65\ : std_logic;
SIGNAL \U_DIVISOR|count[21]~66_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[21]~67\ : std_logic;
SIGNAL \U_DIVISOR|count[22]~68_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~7_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~8_combout\ : std_logic;
SIGNAL \U_DIVISOR|count[22]~69\ : std_logic;
SIGNAL \U_DIVISOR|count[23]~70_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~5_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~4_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~6_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~0_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~2_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~1_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~3_combout\ : std_logic;
SIGNAL \U_DIVISOR|LessThan0~9_combout\ : std_logic;
SIGNAL \U_DIVISOR|clk_reg~0_combout\ : std_logic;
SIGNAL \U_DIVISOR|clk_reg~feeder_combout\ : std_logic;
SIGNAL \U_DIVISOR|clk_reg~q\ : std_logic;
SIGNAL \U_DIVISOR|clk_reg~clkctrl_outclk\ : std_logic;
SIGNAL \CTRL[3]~input_o\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~20_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~21\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~22_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~23\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~24_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~25\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~26_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~27\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~28_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~29\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~30_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~31\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~32_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~33\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~34_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~35\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~36_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~37\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~38_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~39\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~40_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~41\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~43_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~44\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~45_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~46\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~47_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~48\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~49_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~50\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~51_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~52\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~53_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~54\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~55_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~56\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~57_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~58\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~59_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~3_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~0_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~1_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~2_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~4_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~0_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\ : std_logic;
SIGNAL \CTRL[2]~input_o\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~20_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~21\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~22_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~23\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~24_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~25\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~26_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~27\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~28_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~29\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~30_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~31\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~32_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~33\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~34_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~35\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~36_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~37\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~38_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~39\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~40_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~41\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~42_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~43\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~44_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~45\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~46_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~47\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~48_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~49\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~50_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~51\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~53_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~54\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~55_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~56\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~57_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~58\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count[19]~59_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~2_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~0_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~1_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~3_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~4_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~0_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~20_combout\ : std_logic;
SIGNAL \CTRL[1]~input_o\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~21\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~22_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~23\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~24_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~25\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~26_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~27\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~28_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~29\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~30_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~31\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~32_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~33\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~34_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~35\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~36_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~37\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~38_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~39\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~40_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~41\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~43_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~44\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~45_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~46\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~47_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~48\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~49_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~50\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~51_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~52\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~53_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~54\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~55_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~56\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~57_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~58\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count[19]~59_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~3_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~0_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~1_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~2_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~4_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~0_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\ : std_logic;
SIGNAL \U_DECOPRIORIDAD|code_int~0_combout\ : std_logic;
SIGNAL \CTRL[0]~input_o\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~20_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~21\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~22_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~23\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~24_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~25\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~26_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~27\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~28_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~29\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~30_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~31\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~32_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~33\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~35_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~36\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~37_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~38\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~39_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~40\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~41_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~42\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~43_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~44\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~45_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~46\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~47_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~48\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~49_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~50\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~51_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~52\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~53_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~54\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~55_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~56\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~57_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~58\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count[19]~59_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~3_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~1_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~0_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~2_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~4_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~0_combout\ : std_logic;
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~q\ : std_logic;
SIGNAL \U_DECOPRIORIDAD|code_int[0]~1_combout\ : std_logic;
SIGNAL \U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~0_combout\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \U_DECOPRIORIDAD|code_int~2_combout\ : std_logic;
SIGNAL \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~1_combout\ : std_logic;
SIGNAL \U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~q\ : std_logic;
SIGNAL \U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~0_combout\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~q\ : std_logic;
SIGNAL \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~0_combout\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~q\ : std_logic;
SIGNAL \U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~0_combout\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~q\ : std_logic;
SIGNAL \U_DEBOUNCERS:2:INST_DEBOUNCER|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U_DEBOUNCERS:1:INST_DEBOUNCER|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U_DEBOUNCERS:0:INST_DEBOUNCER|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U_DIVISOR|count\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \U_DEBOUNCERS:3:INST_DEBOUNCER|count\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \U_DECOPRIORIDAD|code_int\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \U_DIVISOR|ALT_INV_LessThan0~9_combout\ : std_logic;
SIGNAL \U_DECOPRIORIDAD|ALT_INV_code_int\ : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_CLK <= CLK;
ww_INPUT <= INPUT;
ww_CTRL <= CTRL;
BITS <= ww_BITS;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\U_DIVISOR|clk_reg~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \U_DIVISOR|clk_reg~q\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\U_DIVISOR|ALT_INV_LessThan0~9_combout\ <= NOT \U_DIVISOR|LessThan0~9_combout\;
\U_DECOPRIORIDAD|ALT_INV_code_int\(1) <= NOT \U_DECOPRIORIDAD|code_int\(1);

-- Location: IOOBUF_X34_Y10_N9
\BITS[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~q\,
	devoe => ww_devoe,
	o => \BITS[0]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\BITS[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~q\,
	devoe => ww_devoe,
	o => \BITS[1]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\BITS[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~q\,
	devoe => ww_devoe,
	o => \BITS[2]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\BITS[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~q\,
	devoe => ww_devoe,
	o => \BITS[3]~output_o\);

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

-- Location: LCCOMB_X30_Y13_N8
\U_DIVISOR|count[0]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[0]~24_combout\ = \U_DIVISOR|count\(0) $ (VCC)
-- \U_DIVISOR|count[0]~25\ = CARRY(\U_DIVISOR|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(0),
	datad => VCC,
	combout => \U_DIVISOR|count[0]~24_combout\,
	cout => \U_DIVISOR|count[0]~25\);

-- Location: FF_X30_Y13_N9
\U_DIVISOR|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[0]~24_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(0));

-- Location: LCCOMB_X30_Y13_N10
\U_DIVISOR|count[1]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[1]~26_combout\ = (\U_DIVISOR|count\(1) & (!\U_DIVISOR|count[0]~25\)) # (!\U_DIVISOR|count\(1) & ((\U_DIVISOR|count[0]~25\) # (GND)))
-- \U_DIVISOR|count[1]~27\ = CARRY((!\U_DIVISOR|count[0]~25\) # (!\U_DIVISOR|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(1),
	datad => VCC,
	cin => \U_DIVISOR|count[0]~25\,
	combout => \U_DIVISOR|count[1]~26_combout\,
	cout => \U_DIVISOR|count[1]~27\);

-- Location: FF_X30_Y13_N11
\U_DIVISOR|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[1]~26_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(1));

-- Location: LCCOMB_X30_Y13_N12
\U_DIVISOR|count[2]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[2]~28_combout\ = (\U_DIVISOR|count\(2) & (\U_DIVISOR|count[1]~27\ $ (GND))) # (!\U_DIVISOR|count\(2) & (!\U_DIVISOR|count[1]~27\ & VCC))
-- \U_DIVISOR|count[2]~29\ = CARRY((\U_DIVISOR|count\(2) & !\U_DIVISOR|count[1]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(2),
	datad => VCC,
	cin => \U_DIVISOR|count[1]~27\,
	combout => \U_DIVISOR|count[2]~28_combout\,
	cout => \U_DIVISOR|count[2]~29\);

-- Location: FF_X30_Y13_N13
\U_DIVISOR|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[2]~28_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(2));

-- Location: LCCOMB_X30_Y13_N14
\U_DIVISOR|count[3]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[3]~30_combout\ = (\U_DIVISOR|count\(3) & (!\U_DIVISOR|count[2]~29\)) # (!\U_DIVISOR|count\(3) & ((\U_DIVISOR|count[2]~29\) # (GND)))
-- \U_DIVISOR|count[3]~31\ = CARRY((!\U_DIVISOR|count[2]~29\) # (!\U_DIVISOR|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(3),
	datad => VCC,
	cin => \U_DIVISOR|count[2]~29\,
	combout => \U_DIVISOR|count[3]~30_combout\,
	cout => \U_DIVISOR|count[3]~31\);

-- Location: FF_X30_Y13_N15
\U_DIVISOR|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[3]~30_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(3));

-- Location: LCCOMB_X30_Y13_N16
\U_DIVISOR|count[4]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[4]~32_combout\ = (\U_DIVISOR|count\(4) & (\U_DIVISOR|count[3]~31\ $ (GND))) # (!\U_DIVISOR|count\(4) & (!\U_DIVISOR|count[3]~31\ & VCC))
-- \U_DIVISOR|count[4]~33\ = CARRY((\U_DIVISOR|count\(4) & !\U_DIVISOR|count[3]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(4),
	datad => VCC,
	cin => \U_DIVISOR|count[3]~31\,
	combout => \U_DIVISOR|count[4]~32_combout\,
	cout => \U_DIVISOR|count[4]~33\);

-- Location: FF_X30_Y13_N17
\U_DIVISOR|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[4]~32_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(4));

-- Location: LCCOMB_X30_Y13_N18
\U_DIVISOR|count[5]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[5]~34_combout\ = (\U_DIVISOR|count\(5) & (!\U_DIVISOR|count[4]~33\)) # (!\U_DIVISOR|count\(5) & ((\U_DIVISOR|count[4]~33\) # (GND)))
-- \U_DIVISOR|count[5]~35\ = CARRY((!\U_DIVISOR|count[4]~33\) # (!\U_DIVISOR|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(5),
	datad => VCC,
	cin => \U_DIVISOR|count[4]~33\,
	combout => \U_DIVISOR|count[5]~34_combout\,
	cout => \U_DIVISOR|count[5]~35\);

-- Location: FF_X30_Y13_N19
\U_DIVISOR|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[5]~34_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(5));

-- Location: LCCOMB_X30_Y13_N20
\U_DIVISOR|count[6]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[6]~36_combout\ = (\U_DIVISOR|count\(6) & (\U_DIVISOR|count[5]~35\ $ (GND))) # (!\U_DIVISOR|count\(6) & (!\U_DIVISOR|count[5]~35\ & VCC))
-- \U_DIVISOR|count[6]~37\ = CARRY((\U_DIVISOR|count\(6) & !\U_DIVISOR|count[5]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(6),
	datad => VCC,
	cin => \U_DIVISOR|count[5]~35\,
	combout => \U_DIVISOR|count[6]~36_combout\,
	cout => \U_DIVISOR|count[6]~37\);

-- Location: FF_X30_Y13_N21
\U_DIVISOR|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[6]~36_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(6));

-- Location: LCCOMB_X30_Y13_N22
\U_DIVISOR|count[7]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[7]~38_combout\ = (\U_DIVISOR|count\(7) & (!\U_DIVISOR|count[6]~37\)) # (!\U_DIVISOR|count\(7) & ((\U_DIVISOR|count[6]~37\) # (GND)))
-- \U_DIVISOR|count[7]~39\ = CARRY((!\U_DIVISOR|count[6]~37\) # (!\U_DIVISOR|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(7),
	datad => VCC,
	cin => \U_DIVISOR|count[6]~37\,
	combout => \U_DIVISOR|count[7]~38_combout\,
	cout => \U_DIVISOR|count[7]~39\);

-- Location: FF_X30_Y13_N23
\U_DIVISOR|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[7]~38_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(7));

-- Location: LCCOMB_X30_Y13_N24
\U_DIVISOR|count[8]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[8]~40_combout\ = (\U_DIVISOR|count\(8) & (\U_DIVISOR|count[7]~39\ $ (GND))) # (!\U_DIVISOR|count\(8) & (!\U_DIVISOR|count[7]~39\ & VCC))
-- \U_DIVISOR|count[8]~41\ = CARRY((\U_DIVISOR|count\(8) & !\U_DIVISOR|count[7]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(8),
	datad => VCC,
	cin => \U_DIVISOR|count[7]~39\,
	combout => \U_DIVISOR|count[8]~40_combout\,
	cout => \U_DIVISOR|count[8]~41\);

-- Location: FF_X30_Y13_N25
\U_DIVISOR|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[8]~40_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(8));

-- Location: LCCOMB_X30_Y13_N26
\U_DIVISOR|count[9]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[9]~42_combout\ = (\U_DIVISOR|count\(9) & (!\U_DIVISOR|count[8]~41\)) # (!\U_DIVISOR|count\(9) & ((\U_DIVISOR|count[8]~41\) # (GND)))
-- \U_DIVISOR|count[9]~43\ = CARRY((!\U_DIVISOR|count[8]~41\) # (!\U_DIVISOR|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(9),
	datad => VCC,
	cin => \U_DIVISOR|count[8]~41\,
	combout => \U_DIVISOR|count[9]~42_combout\,
	cout => \U_DIVISOR|count[9]~43\);

-- Location: FF_X30_Y13_N27
\U_DIVISOR|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[9]~42_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(9));

-- Location: LCCOMB_X30_Y13_N28
\U_DIVISOR|count[10]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[10]~44_combout\ = (\U_DIVISOR|count\(10) & (\U_DIVISOR|count[9]~43\ $ (GND))) # (!\U_DIVISOR|count\(10) & (!\U_DIVISOR|count[9]~43\ & VCC))
-- \U_DIVISOR|count[10]~45\ = CARRY((\U_DIVISOR|count\(10) & !\U_DIVISOR|count[9]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(10),
	datad => VCC,
	cin => \U_DIVISOR|count[9]~43\,
	combout => \U_DIVISOR|count[10]~44_combout\,
	cout => \U_DIVISOR|count[10]~45\);

-- Location: FF_X30_Y13_N29
\U_DIVISOR|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[10]~44_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(10));

-- Location: LCCOMB_X30_Y13_N30
\U_DIVISOR|count[11]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[11]~46_combout\ = (\U_DIVISOR|count\(11) & (!\U_DIVISOR|count[10]~45\)) # (!\U_DIVISOR|count\(11) & ((\U_DIVISOR|count[10]~45\) # (GND)))
-- \U_DIVISOR|count[11]~47\ = CARRY((!\U_DIVISOR|count[10]~45\) # (!\U_DIVISOR|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(11),
	datad => VCC,
	cin => \U_DIVISOR|count[10]~45\,
	combout => \U_DIVISOR|count[11]~46_combout\,
	cout => \U_DIVISOR|count[11]~47\);

-- Location: FF_X30_Y13_N31
\U_DIVISOR|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[11]~46_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(11));

-- Location: LCCOMB_X30_Y12_N0
\U_DIVISOR|count[12]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[12]~48_combout\ = (\U_DIVISOR|count\(12) & (\U_DIVISOR|count[11]~47\ $ (GND))) # (!\U_DIVISOR|count\(12) & (!\U_DIVISOR|count[11]~47\ & VCC))
-- \U_DIVISOR|count[12]~49\ = CARRY((\U_DIVISOR|count\(12) & !\U_DIVISOR|count[11]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(12),
	datad => VCC,
	cin => \U_DIVISOR|count[11]~47\,
	combout => \U_DIVISOR|count[12]~48_combout\,
	cout => \U_DIVISOR|count[12]~49\);

-- Location: FF_X30_Y12_N1
\U_DIVISOR|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[12]~48_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(12));

-- Location: LCCOMB_X30_Y12_N2
\U_DIVISOR|count[13]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[13]~50_combout\ = (\U_DIVISOR|count\(13) & (!\U_DIVISOR|count[12]~49\)) # (!\U_DIVISOR|count\(13) & ((\U_DIVISOR|count[12]~49\) # (GND)))
-- \U_DIVISOR|count[13]~51\ = CARRY((!\U_DIVISOR|count[12]~49\) # (!\U_DIVISOR|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(13),
	datad => VCC,
	cin => \U_DIVISOR|count[12]~49\,
	combout => \U_DIVISOR|count[13]~50_combout\,
	cout => \U_DIVISOR|count[13]~51\);

-- Location: FF_X30_Y12_N3
\U_DIVISOR|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[13]~50_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(13));

-- Location: LCCOMB_X30_Y12_N4
\U_DIVISOR|count[14]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[14]~52_combout\ = (\U_DIVISOR|count\(14) & (\U_DIVISOR|count[13]~51\ $ (GND))) # (!\U_DIVISOR|count\(14) & (!\U_DIVISOR|count[13]~51\ & VCC))
-- \U_DIVISOR|count[14]~53\ = CARRY((\U_DIVISOR|count\(14) & !\U_DIVISOR|count[13]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(14),
	datad => VCC,
	cin => \U_DIVISOR|count[13]~51\,
	combout => \U_DIVISOR|count[14]~52_combout\,
	cout => \U_DIVISOR|count[14]~53\);

-- Location: FF_X30_Y12_N5
\U_DIVISOR|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[14]~52_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(14));

-- Location: LCCOMB_X30_Y12_N6
\U_DIVISOR|count[15]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[15]~54_combout\ = (\U_DIVISOR|count\(15) & (!\U_DIVISOR|count[14]~53\)) # (!\U_DIVISOR|count\(15) & ((\U_DIVISOR|count[14]~53\) # (GND)))
-- \U_DIVISOR|count[15]~55\ = CARRY((!\U_DIVISOR|count[14]~53\) # (!\U_DIVISOR|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(15),
	datad => VCC,
	cin => \U_DIVISOR|count[14]~53\,
	combout => \U_DIVISOR|count[15]~54_combout\,
	cout => \U_DIVISOR|count[15]~55\);

-- Location: FF_X30_Y12_N7
\U_DIVISOR|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[15]~54_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(15));

-- Location: LCCOMB_X30_Y12_N8
\U_DIVISOR|count[16]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[16]~56_combout\ = (\U_DIVISOR|count\(16) & (\U_DIVISOR|count[15]~55\ $ (GND))) # (!\U_DIVISOR|count\(16) & (!\U_DIVISOR|count[15]~55\ & VCC))
-- \U_DIVISOR|count[16]~57\ = CARRY((\U_DIVISOR|count\(16) & !\U_DIVISOR|count[15]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(16),
	datad => VCC,
	cin => \U_DIVISOR|count[15]~55\,
	combout => \U_DIVISOR|count[16]~56_combout\,
	cout => \U_DIVISOR|count[16]~57\);

-- Location: FF_X30_Y12_N9
\U_DIVISOR|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[16]~56_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(16));

-- Location: LCCOMB_X30_Y12_N10
\U_DIVISOR|count[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[17]~58_combout\ = (\U_DIVISOR|count\(17) & (!\U_DIVISOR|count[16]~57\)) # (!\U_DIVISOR|count\(17) & ((\U_DIVISOR|count[16]~57\) # (GND)))
-- \U_DIVISOR|count[17]~59\ = CARRY((!\U_DIVISOR|count[16]~57\) # (!\U_DIVISOR|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(17),
	datad => VCC,
	cin => \U_DIVISOR|count[16]~57\,
	combout => \U_DIVISOR|count[17]~58_combout\,
	cout => \U_DIVISOR|count[17]~59\);

-- Location: FF_X30_Y12_N11
\U_DIVISOR|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[17]~58_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(17));

-- Location: LCCOMB_X30_Y12_N12
\U_DIVISOR|count[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[18]~60_combout\ = (\U_DIVISOR|count\(18) & (\U_DIVISOR|count[17]~59\ $ (GND))) # (!\U_DIVISOR|count\(18) & (!\U_DIVISOR|count[17]~59\ & VCC))
-- \U_DIVISOR|count[18]~61\ = CARRY((\U_DIVISOR|count\(18) & !\U_DIVISOR|count[17]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(18),
	datad => VCC,
	cin => \U_DIVISOR|count[17]~59\,
	combout => \U_DIVISOR|count[18]~60_combout\,
	cout => \U_DIVISOR|count[18]~61\);

-- Location: FF_X30_Y12_N13
\U_DIVISOR|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[18]~60_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(18));

-- Location: LCCOMB_X30_Y12_N14
\U_DIVISOR|count[19]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[19]~62_combout\ = (\U_DIVISOR|count\(19) & (!\U_DIVISOR|count[18]~61\)) # (!\U_DIVISOR|count\(19) & ((\U_DIVISOR|count[18]~61\) # (GND)))
-- \U_DIVISOR|count[19]~63\ = CARRY((!\U_DIVISOR|count[18]~61\) # (!\U_DIVISOR|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(19),
	datad => VCC,
	cin => \U_DIVISOR|count[18]~61\,
	combout => \U_DIVISOR|count[19]~62_combout\,
	cout => \U_DIVISOR|count[19]~63\);

-- Location: FF_X30_Y12_N15
\U_DIVISOR|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[19]~62_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(19));

-- Location: LCCOMB_X30_Y12_N16
\U_DIVISOR|count[20]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[20]~64_combout\ = (\U_DIVISOR|count\(20) & (\U_DIVISOR|count[19]~63\ $ (GND))) # (!\U_DIVISOR|count\(20) & (!\U_DIVISOR|count[19]~63\ & VCC))
-- \U_DIVISOR|count[20]~65\ = CARRY((\U_DIVISOR|count\(20) & !\U_DIVISOR|count[19]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(20),
	datad => VCC,
	cin => \U_DIVISOR|count[19]~63\,
	combout => \U_DIVISOR|count[20]~64_combout\,
	cout => \U_DIVISOR|count[20]~65\);

-- Location: FF_X30_Y12_N17
\U_DIVISOR|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[20]~64_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(20));

-- Location: LCCOMB_X30_Y12_N18
\U_DIVISOR|count[21]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[21]~66_combout\ = (\U_DIVISOR|count\(21) & (!\U_DIVISOR|count[20]~65\)) # (!\U_DIVISOR|count\(21) & ((\U_DIVISOR|count[20]~65\) # (GND)))
-- \U_DIVISOR|count[21]~67\ = CARRY((!\U_DIVISOR|count[20]~65\) # (!\U_DIVISOR|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(21),
	datad => VCC,
	cin => \U_DIVISOR|count[20]~65\,
	combout => \U_DIVISOR|count[21]~66_combout\,
	cout => \U_DIVISOR|count[21]~67\);

-- Location: FF_X30_Y12_N19
\U_DIVISOR|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[21]~66_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(21));

-- Location: LCCOMB_X30_Y12_N20
\U_DIVISOR|count[22]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[22]~68_combout\ = (\U_DIVISOR|count\(22) & (\U_DIVISOR|count[21]~67\ $ (GND))) # (!\U_DIVISOR|count\(22) & (!\U_DIVISOR|count[21]~67\ & VCC))
-- \U_DIVISOR|count[22]~69\ = CARRY((\U_DIVISOR|count\(22) & !\U_DIVISOR|count[21]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(22),
	datad => VCC,
	cin => \U_DIVISOR|count[21]~67\,
	combout => \U_DIVISOR|count[22]~68_combout\,
	cout => \U_DIVISOR|count[22]~69\);

-- Location: FF_X30_Y12_N21
\U_DIVISOR|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[22]~68_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(22));

-- Location: LCCOMB_X29_Y12_N14
\U_DIVISOR|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~7_combout\ = (!\U_DIVISOR|count\(16) & (!\U_DIVISOR|count\(22) & !\U_DIVISOR|count\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(16),
	datac => \U_DIVISOR|count\(22),
	datad => \U_DIVISOR|count\(14),
	combout => \U_DIVISOR|LessThan0~7_combout\);

-- Location: LCCOMB_X30_Y12_N24
\U_DIVISOR|LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~8_combout\ = (((!\U_DIVISOR|count\(11)) # (!\U_DIVISOR|count\(13))) # (!\U_DIVISOR|count\(12))) # (!\U_DIVISOR|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(10),
	datab => \U_DIVISOR|count\(12),
	datac => \U_DIVISOR|count\(13),
	datad => \U_DIVISOR|count\(11),
	combout => \U_DIVISOR|LessThan0~8_combout\);

-- Location: LCCOMB_X30_Y12_N22
\U_DIVISOR|count[23]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|count[23]~70_combout\ = \U_DIVISOR|count[22]~69\ $ (\U_DIVISOR|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_DIVISOR|count\(23),
	cin => \U_DIVISOR|count[22]~69\,
	combout => \U_DIVISOR|count[23]~70_combout\);

-- Location: FF_X30_Y12_N23
\U_DIVISOR|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|count[23]~70_combout\,
	sclr => \U_DIVISOR|ALT_INV_LessThan0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|count\(23));

-- Location: LCCOMB_X29_Y12_N22
\U_DIVISOR|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~5_combout\ = ((!\U_DIVISOR|count\(20)) # (!\U_DIVISOR|count\(19))) # (!\U_DIVISOR|count\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|count\(21),
	datac => \U_DIVISOR|count\(19),
	datad => \U_DIVISOR|count\(20),
	combout => \U_DIVISOR|LessThan0~5_combout\);

-- Location: LCCOMB_X29_Y12_N0
\U_DIVISOR|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~4_combout\ = (((!\U_DIVISOR|count\(15) & !\U_DIVISOR|count\(16))) # (!\U_DIVISOR|count\(18))) # (!\U_DIVISOR|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(15),
	datab => \U_DIVISOR|count\(16),
	datac => \U_DIVISOR|count\(17),
	datad => \U_DIVISOR|count\(18),
	combout => \U_DIVISOR|LessThan0~4_combout\);

-- Location: LCCOMB_X29_Y12_N16
\U_DIVISOR|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~6_combout\ = ((!\U_DIVISOR|count\(22) & ((\U_DIVISOR|LessThan0~5_combout\) # (\U_DIVISOR|LessThan0~4_combout\)))) # (!\U_DIVISOR|count\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(22),
	datab => \U_DIVISOR|count\(23),
	datac => \U_DIVISOR|LessThan0~5_combout\,
	datad => \U_DIVISOR|LessThan0~4_combout\,
	combout => \U_DIVISOR|LessThan0~6_combout\);

-- Location: LCCOMB_X30_Y12_N28
\U_DIVISOR|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~0_combout\ = (!\U_DIVISOR|count\(22) & (!\U_DIVISOR|count\(16) & (!\U_DIVISOR|count\(14) & !\U_DIVISOR|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(22),
	datab => \U_DIVISOR|count\(16),
	datac => \U_DIVISOR|count\(14),
	datad => \U_DIVISOR|count\(5),
	combout => \U_DIVISOR|LessThan0~0_combout\);

-- Location: LCCOMB_X30_Y13_N6
\U_DIVISOR|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~2_combout\ = (((!\U_DIVISOR|count\(2)) # (!\U_DIVISOR|count\(3))) # (!\U_DIVISOR|count\(0))) # (!\U_DIVISOR|count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(1),
	datab => \U_DIVISOR|count\(0),
	datac => \U_DIVISOR|count\(3),
	datad => \U_DIVISOR|count\(2),
	combout => \U_DIVISOR|LessThan0~2_combout\);

-- Location: LCCOMB_X30_Y13_N2
\U_DIVISOR|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~1_combout\ = (!\U_DIVISOR|count\(8) & (!\U_DIVISOR|count\(6) & (!\U_DIVISOR|count\(7) & !\U_DIVISOR|count\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(8),
	datab => \U_DIVISOR|count\(6),
	datac => \U_DIVISOR|count\(7),
	datad => \U_DIVISOR|count\(9),
	combout => \U_DIVISOR|LessThan0~1_combout\);

-- Location: LCCOMB_X30_Y12_N26
\U_DIVISOR|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~3_combout\ = (\U_DIVISOR|LessThan0~0_combout\ & (\U_DIVISOR|LessThan0~1_combout\ & ((\U_DIVISOR|LessThan0~2_combout\) # (!\U_DIVISOR|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|count\(4),
	datab => \U_DIVISOR|LessThan0~0_combout\,
	datac => \U_DIVISOR|LessThan0~2_combout\,
	datad => \U_DIVISOR|LessThan0~1_combout\,
	combout => \U_DIVISOR|LessThan0~3_combout\);

-- Location: LCCOMB_X30_Y12_N30
\U_DIVISOR|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|LessThan0~9_combout\ = (\U_DIVISOR|LessThan0~6_combout\) # ((\U_DIVISOR|LessThan0~3_combout\) # ((\U_DIVISOR|LessThan0~7_combout\ & \U_DIVISOR|LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DIVISOR|LessThan0~7_combout\,
	datab => \U_DIVISOR|LessThan0~8_combout\,
	datac => \U_DIVISOR|LessThan0~6_combout\,
	datad => \U_DIVISOR|LessThan0~3_combout\,
	combout => \U_DIVISOR|LessThan0~9_combout\);

-- Location: LCCOMB_X30_Y13_N0
\U_DIVISOR|clk_reg~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|clk_reg~0_combout\ = \U_DIVISOR|clk_reg~q\ $ (!\U_DIVISOR|LessThan0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|clk_reg~q\,
	datad => \U_DIVISOR|LessThan0~9_combout\,
	combout => \U_DIVISOR|clk_reg~0_combout\);

-- Location: LCCOMB_X30_Y13_N4
\U_DIVISOR|clk_reg~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DIVISOR|clk_reg~feeder_combout\ = \U_DIVISOR|clk_reg~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DIVISOR|clk_reg~0_combout\,
	combout => \U_DIVISOR|clk_reg~feeder_combout\);

-- Location: FF_X30_Y13_N5
\U_DIVISOR|clk_reg\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DIVISOR|clk_reg~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DIVISOR|clk_reg~q\);

-- Location: CLKCTRL_G6
\U_DIVISOR|clk_reg~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \U_DIVISOR|clk_reg~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \U_DIVISOR|clk_reg~clkctrl_outclk\);

-- Location: IOIBUF_X30_Y0_N8
\CTRL[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTRL(3),
	o => \CTRL[3]~input_o\);

-- Location: LCCOMB_X31_Y13_N12
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~20_combout\ = \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(0) $ (VCC)
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~21\ = CARRY(\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(0),
	datad => VCC,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~20_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~21\);

-- Location: LCCOMB_X31_Y12_N22
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\ $ (!\CTRL[3]~input_o\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\,
	datac => \CTRL[3]~input_o\,
	datad => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~4_combout\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\);

-- Location: FF_X31_Y13_N13
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~20_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(0));

-- Location: LCCOMB_X31_Y13_N14
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~22_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(1) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~21\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(1) & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~21\) # (GND)))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~23\ = CARRY((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~21\) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(1),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[0]~21\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~22_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~23\);

-- Location: FF_X31_Y13_N15
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~22_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(1));

-- Location: LCCOMB_X31_Y13_N16
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~24_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(2) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~23\ $ (GND))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(2) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~23\ & VCC))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~25\ = CARRY((\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(2) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(2),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[1]~23\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~24_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~25\);

-- Location: FF_X31_Y13_N17
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~24_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(2));

-- Location: LCCOMB_X31_Y13_N18
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~26_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(3) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~25\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(3) & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~25\) # (GND)))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~27\ = CARRY((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~25\) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(3),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[2]~25\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~26_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~27\);

-- Location: FF_X31_Y13_N19
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~26_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(3));

-- Location: LCCOMB_X31_Y13_N20
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~28_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(4) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~27\ $ (GND))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(4) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~27\ & VCC))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~29\ = CARRY((\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(4) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(4),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[3]~27\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~28_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~29\);

-- Location: FF_X31_Y13_N21
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~28_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(4));

-- Location: LCCOMB_X31_Y13_N22
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~30_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(5) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~29\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(5) & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~29\) # (GND)))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~31\ = CARRY((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~29\) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(5),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[4]~29\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~30_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~31\);

-- Location: FF_X31_Y13_N23
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~30_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(5));

-- Location: LCCOMB_X31_Y13_N24
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~32_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(6) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~31\ $ (GND))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(6) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~31\ & VCC))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~33\ = CARRY((\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(6) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(6),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[5]~31\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~32_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~33\);

-- Location: FF_X31_Y13_N25
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~32_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(6));

-- Location: LCCOMB_X31_Y13_N26
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~34_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(7) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~33\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(7) & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~33\) # (GND)))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~35\ = CARRY((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~33\) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(7),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[6]~33\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~34_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~35\);

-- Location: FF_X31_Y13_N27
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~34_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(7));

-- Location: LCCOMB_X31_Y13_N28
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~36_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(8) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~35\ $ (GND))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(8) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~35\ & VCC))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~37\ = CARRY((\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(8) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(8),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[7]~35\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~36_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~37\);

-- Location: FF_X31_Y13_N29
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~36_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(8));

-- Location: LCCOMB_X31_Y13_N30
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~38_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(9) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~37\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(9) & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~37\) # (GND)))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~39\ = CARRY((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~37\) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(9),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[8]~37\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~38_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~39\);

-- Location: FF_X31_Y13_N31
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~38_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(9));

-- Location: LCCOMB_X31_Y12_N0
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~40_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(10) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~39\ $ (GND))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(10) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~39\ & 
-- VCC))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~41\ = CARRY((\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(10) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(10),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[9]~39\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~40_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~41\);

-- Location: FF_X31_Y12_N1
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~40_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(10));

-- Location: LCCOMB_X31_Y12_N2
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~43_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(11) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~41\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(11) & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~41\) # (GND)))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~44\ = CARRY((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~41\) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(11),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[10]~41\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~43_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~44\);

-- Location: FF_X31_Y12_N3
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~43_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(11));

-- Location: LCCOMB_X31_Y12_N4
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~45_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(12) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~44\ $ (GND))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(12) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~44\ & 
-- VCC))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~46\ = CARRY((\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(12) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(12),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[11]~44\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~45_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~46\);

-- Location: FF_X31_Y12_N5
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~45_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(12));

-- Location: LCCOMB_X31_Y12_N6
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~47_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(13) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~46\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(13) & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~46\) # (GND)))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~48\ = CARRY((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~46\) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(13),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[12]~46\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~47_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~48\);

-- Location: FF_X31_Y12_N7
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~47_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(13));

-- Location: LCCOMB_X31_Y12_N8
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~49_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(14) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~48\ $ (GND))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(14) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~48\ & 
-- VCC))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~50\ = CARRY((\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(14) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(14),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[13]~48\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~49_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~50\);

-- Location: FF_X31_Y12_N9
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~49_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(14));

-- Location: LCCOMB_X31_Y12_N10
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~51_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(15) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~50\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(15) & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~50\) # (GND)))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~52\ = CARRY((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~50\) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(15),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[14]~50\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~51_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~52\);

-- Location: FF_X31_Y12_N11
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~51_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(15));

-- Location: LCCOMB_X31_Y12_N12
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~53_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(16) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~52\ $ (GND))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(16) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~52\ & 
-- VCC))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~54\ = CARRY((\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(16) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(16),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[15]~52\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~53_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~54\);

-- Location: FF_X31_Y12_N13
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~53_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(16));

-- Location: LCCOMB_X31_Y12_N14
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~55_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(17) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~54\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(17) & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~54\) # (GND)))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~56\ = CARRY((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~54\) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(17),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[16]~54\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~55_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~56\);

-- Location: FF_X31_Y12_N15
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~55_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(17));

-- Location: LCCOMB_X31_Y12_N16
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~57_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(18) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~56\ $ (GND))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(18) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~56\ & 
-- VCC))
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~58\ = CARRY((\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(18) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(18),
	datad => VCC,
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[17]~56\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~57_combout\,
	cout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~58\);

-- Location: FF_X31_Y12_N17
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~57_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(18));

-- Location: LCCOMB_X31_Y12_N18
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~59_combout\ = \U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~58\ $ (\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(19),
	cin => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[18]~58\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~59_combout\);

-- Location: FF_X31_Y12_N19
\U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~59_combout\,
	sclr => \U_DEBOUNCERS:3:INST_DEBOUNCER|count[19]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(19));

-- Location: LCCOMB_X31_Y12_N26
\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~3_combout\ = (((!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(14) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(15))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(17))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(16),
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(17),
	datac => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(14),
	datad => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(15),
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~3_combout\);

-- Location: LCCOMB_X31_Y12_N30
\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~0_combout\ = (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(13) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(11) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(12) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(13),
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(11),
	datac => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(12),
	datad => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(10),
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~0_combout\);

-- Location: LCCOMB_X31_Y13_N8
\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~1_combout\ = (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(6) & (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(7) & !\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(6),
	datac => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(7),
	datad => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(8),
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~1_combout\);

-- Location: LCCOMB_X31_Y12_N24
\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~2_combout\ = (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(15) & (\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~0_combout\ & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~1_combout\) # 
-- (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(9),
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(15),
	datac => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~0_combout\,
	datad => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~1_combout\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~2_combout\);

-- Location: LCCOMB_X31_Y12_N28
\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~4_combout\ = (((\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~3_combout\) # (\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~2_combout\)) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(18))) # 
-- (!\U_DEBOUNCERS:3:INST_DEBOUNCER|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(19),
	datab => \U_DEBOUNCERS:3:INST_DEBOUNCER|count\(18),
	datac => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~3_combout\,
	datad => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~2_combout\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~4_combout\);

-- Location: LCCOMB_X31_Y12_N20
\U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~0_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~4_combout\ & ((\U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\))) # (!\U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~4_combout\ & (\CTRL[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL[3]~input_o\,
	datac => \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\,
	datad => \U_DEBOUNCERS:3:INST_DEBOUNCER|LessThan0~4_combout\,
	combout => \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~0_combout\);

-- Location: FF_X31_Y12_N21
\U_DEBOUNCERS:3:INST_DEBOUNCER|button_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\);

-- Location: IOIBUF_X30_Y0_N1
\CTRL[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTRL(2),
	o => \CTRL[2]~input_o\);

-- Location: LCCOMB_X26_Y13_N12
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~20_combout\ = \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(0) $ (VCC)
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~21\ = CARRY(\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(0),
	datad => VCC,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~20_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~21\);

-- Location: LCCOMB_X26_Y12_N22
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\ $ (!\CTRL[2]~input_o\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\,
	datac => \CTRL[2]~input_o\,
	datad => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~4_combout\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\);

-- Location: FF_X26_Y13_N13
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~20_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(0));

-- Location: LCCOMB_X26_Y13_N14
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~22_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(1) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~21\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(1) & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~21\) # (GND)))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~23\ = CARRY((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~21\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(1),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[0]~21\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~22_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~23\);

-- Location: FF_X26_Y13_N15
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~22_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(1));

-- Location: LCCOMB_X26_Y13_N16
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~24_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(2) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~23\ $ (GND))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(2) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~23\ & VCC))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~25\ = CARRY((\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(2) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(2),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[1]~23\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~24_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~25\);

-- Location: FF_X26_Y13_N17
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~24_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(2));

-- Location: LCCOMB_X26_Y13_N18
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~26_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(3) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~25\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(3) & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~25\) # (GND)))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~27\ = CARRY((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~25\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(3),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[2]~25\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~26_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~27\);

-- Location: FF_X26_Y13_N19
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~26_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(3));

-- Location: LCCOMB_X26_Y13_N20
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~28_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(4) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~27\ $ (GND))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(4) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~27\ & VCC))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~29\ = CARRY((\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(4) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(4),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[3]~27\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~28_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~29\);

-- Location: FF_X26_Y13_N21
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~28_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(4));

-- Location: LCCOMB_X26_Y13_N22
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~30_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(5) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~29\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(5) & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~29\) # (GND)))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~31\ = CARRY((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~29\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(5),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[4]~29\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~30_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~31\);

-- Location: FF_X26_Y13_N23
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~30_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(5));

-- Location: LCCOMB_X26_Y13_N24
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~32_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(6) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~31\ $ (GND))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(6) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~31\ & VCC))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~33\ = CARRY((\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(6) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(6),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[5]~31\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~32_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~33\);

-- Location: FF_X26_Y13_N25
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~32_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(6));

-- Location: LCCOMB_X26_Y13_N26
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~34_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(7) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~33\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(7) & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~33\) # (GND)))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~35\ = CARRY((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~33\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(7),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[6]~33\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~34_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~35\);

-- Location: FF_X26_Y13_N27
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~34_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(7));

-- Location: LCCOMB_X26_Y13_N28
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~36_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(8) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~35\ $ (GND))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(8) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~35\ & VCC))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~37\ = CARRY((\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(8) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(8),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[7]~35\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~36_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~37\);

-- Location: FF_X26_Y13_N29
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~36_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(8));

-- Location: LCCOMB_X26_Y13_N30
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~38_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(9) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~37\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(9) & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~37\) # (GND)))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~39\ = CARRY((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~37\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(9),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[8]~37\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~38_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~39\);

-- Location: FF_X26_Y13_N31
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~38_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(9));

-- Location: LCCOMB_X26_Y12_N0
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~40_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(10) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~39\ $ (GND))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(10) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~39\ & 
-- VCC))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~41\ = CARRY((\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(10) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(10),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[9]~39\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~40_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~41\);

-- Location: FF_X26_Y12_N1
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~40_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(10));

-- Location: LCCOMB_X26_Y12_N2
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~42_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(11) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~41\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(11) & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~41\) # (GND)))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~43\ = CARRY((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~41\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(11),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[10]~41\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~42_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~43\);

-- Location: FF_X26_Y12_N3
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~42_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(11));

-- Location: LCCOMB_X26_Y12_N4
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~44_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(12) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~43\ $ (GND))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(12) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~43\ & 
-- VCC))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~45\ = CARRY((\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(12) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(12),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[11]~43\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~44_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~45\);

-- Location: FF_X26_Y12_N5
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~44_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(12));

-- Location: LCCOMB_X26_Y12_N6
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~46_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(13) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~45\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(13) & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~45\) # (GND)))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~47\ = CARRY((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~45\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(13),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[12]~45\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~46_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~47\);

-- Location: FF_X26_Y12_N7
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~46_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(13));

-- Location: LCCOMB_X26_Y12_N8
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~48_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(14) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~47\ $ (GND))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(14) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~47\ & 
-- VCC))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~49\ = CARRY((\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(14) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(14),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[13]~47\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~48_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~49\);

-- Location: FF_X26_Y12_N9
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~48_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(14));

-- Location: LCCOMB_X26_Y12_N10
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~50_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(15) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~49\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(15) & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~49\) # (GND)))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~51\ = CARRY((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~49\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(15),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[14]~49\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~50_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~51\);

-- Location: FF_X26_Y12_N11
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~50_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(15));

-- Location: LCCOMB_X26_Y12_N12
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~53_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(16) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~51\ $ (GND))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(16) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~51\ & 
-- VCC))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~54\ = CARRY((\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(16) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(16),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[15]~51\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~53_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~54\);

-- Location: FF_X26_Y12_N13
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~53_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(16));

-- Location: LCCOMB_X26_Y12_N14
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~55_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(17) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~54\)) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(17) & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~54\) # (GND)))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~56\ = CARRY((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~54\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(17),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~54\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~55_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~56\);

-- Location: FF_X26_Y12_N15
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~55_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(17));

-- Location: LCCOMB_X26_Y12_N16
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~57_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(18) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~56\ $ (GND))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(18) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~56\ & 
-- VCC))
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~58\ = CARRY((\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(18) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(18),
	datad => VCC,
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[17]~56\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~57_combout\,
	cout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~58\);

-- Location: FF_X26_Y12_N17
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~57_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(18));

-- Location: LCCOMB_X26_Y12_N18
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|count[19]~59_combout\ = \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(19) $ (\U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~58\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(19),
	cin => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[18]~58\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[19]~59_combout\);

-- Location: FF_X26_Y12_N19
\U_DEBOUNCERS:2:INST_DEBOUNCER|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[19]~59_combout\,
	sclr => \U_DEBOUNCERS:2:INST_DEBOUNCER|count[16]~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(19));

-- Location: LCCOMB_X26_Y12_N24
\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~2_combout\ = (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(12) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(11) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(13) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(12),
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(11),
	datac => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(13),
	datad => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(10),
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~2_combout\);

-- Location: LCCOMB_X26_Y12_N26
\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~0_combout\ = (((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(14) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(15))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(16))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(14),
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(15),
	datac => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(17),
	datad => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(16),
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~0_combout\);

-- Location: LCCOMB_X26_Y13_N0
\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~1_combout\ = ((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(7) & (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(6) & !\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(8)))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(7),
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(6),
	datac => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(9),
	datad => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(8),
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~1_combout\);

-- Location: LCCOMB_X26_Y12_N30
\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~3_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~0_combout\) # ((!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(15) & (\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~2_combout\ & 
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(15),
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~2_combout\,
	datac => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~0_combout\,
	datad => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~1_combout\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~3_combout\);

-- Location: LCCOMB_X26_Y12_N28
\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~4_combout\ = ((\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~3_combout\) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(18))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(19),
	datab => \U_DEBOUNCERS:2:INST_DEBOUNCER|count\(18),
	datac => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~3_combout\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~4_combout\);

-- Location: LCCOMB_X26_Y12_N20
\U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~0_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~4_combout\ & ((\U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\))) # (!\U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~4_combout\ & (\CTRL[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL[2]~input_o\,
	datac => \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\,
	datad => \U_DEBOUNCERS:2:INST_DEBOUNCER|LessThan0~4_combout\,
	combout => \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~0_combout\);

-- Location: FF_X26_Y12_N21
\U_DEBOUNCERS:2:INST_DEBOUNCER|button_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\);

-- Location: LCCOMB_X32_Y13_N12
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~20_combout\ = \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(0) $ (VCC)
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~21\ = CARRY(\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(0),
	datad => VCC,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~20_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~21\);

-- Location: IOIBUF_X32_Y0_N22
\CTRL[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTRL(1),
	o => \CTRL[1]~input_o\);

-- Location: LCCOMB_X32_Y12_N22
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\ $ (!\CTRL[1]~input_o\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\,
	datac => \CTRL[1]~input_o\,
	datad => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~4_combout\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\);

-- Location: FF_X32_Y13_N13
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~20_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(0));

-- Location: LCCOMB_X32_Y13_N14
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~22_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(1) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~21\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(1) & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~21\) # (GND)))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~23\ = CARRY((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~21\) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(1),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[0]~21\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~22_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~23\);

-- Location: FF_X32_Y13_N15
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~22_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(1));

-- Location: LCCOMB_X32_Y13_N16
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~24_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(2) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~23\ $ (GND))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(2) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~23\ & VCC))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~25\ = CARRY((\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(2) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(2),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~23\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~24_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~25\);

-- Location: FF_X32_Y13_N17
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~24_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(2));

-- Location: LCCOMB_X32_Y13_N18
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~26_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(3) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~25\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(3) & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~25\) # (GND)))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~27\ = CARRY((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~25\) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(3),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[2]~25\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~26_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~27\);

-- Location: FF_X32_Y13_N19
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~26_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(3));

-- Location: LCCOMB_X32_Y13_N20
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~28_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(4) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~27\ $ (GND))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(4) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~27\ & VCC))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~29\ = CARRY((\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(4) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(4),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[3]~27\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~28_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~29\);

-- Location: FF_X32_Y13_N21
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~28_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(4));

-- Location: LCCOMB_X32_Y13_N22
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~30_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(5) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~29\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(5) & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~29\) # (GND)))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~31\ = CARRY((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~29\) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(5),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[4]~29\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~30_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~31\);

-- Location: FF_X32_Y13_N23
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~30_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(5));

-- Location: LCCOMB_X32_Y13_N24
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~32_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(6) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~31\ $ (GND))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(6) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~31\ & VCC))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~33\ = CARRY((\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(6) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(6),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[5]~31\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~32_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~33\);

-- Location: FF_X32_Y13_N25
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~32_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(6));

-- Location: LCCOMB_X32_Y13_N26
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~34_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(7) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~33\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(7) & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~33\) # (GND)))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~35\ = CARRY((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~33\) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(7),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[6]~33\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~34_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~35\);

-- Location: FF_X32_Y13_N27
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~34_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(7));

-- Location: LCCOMB_X32_Y13_N28
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~36_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(8) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~35\ $ (GND))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(8) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~35\ & VCC))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~37\ = CARRY((\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(8) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(8),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[7]~35\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~36_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~37\);

-- Location: FF_X32_Y13_N29
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~36_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(8));

-- Location: LCCOMB_X32_Y13_N30
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~38_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(9) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~37\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(9) & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~37\) # (GND)))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~39\ = CARRY((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~37\) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(9),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[8]~37\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~38_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~39\);

-- Location: FF_X32_Y13_N31
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~38_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(9));

-- Location: LCCOMB_X32_Y12_N0
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~40_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(10) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~39\ $ (GND))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(10) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~39\ & 
-- VCC))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~41\ = CARRY((\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(10) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(10),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[9]~39\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~40_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~41\);

-- Location: FF_X32_Y12_N1
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~40_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(10));

-- Location: LCCOMB_X32_Y12_N2
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~43_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(11) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~41\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(11) & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~41\) # (GND)))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~44\ = CARRY((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~41\) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(11),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[10]~41\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~43_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~44\);

-- Location: FF_X32_Y12_N3
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~43_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(11));

-- Location: LCCOMB_X32_Y12_N4
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~45_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(12) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~44\ $ (GND))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(12) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~44\ & 
-- VCC))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~46\ = CARRY((\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(12) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(12),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[11]~44\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~45_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~46\);

-- Location: FF_X32_Y12_N5
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~45_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(12));

-- Location: LCCOMB_X32_Y12_N6
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~47_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(13) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~46\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(13) & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~46\) # (GND)))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~48\ = CARRY((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~46\) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(13),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[12]~46\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~47_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~48\);

-- Location: FF_X32_Y12_N7
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~47_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(13));

-- Location: LCCOMB_X32_Y12_N8
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~49_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(14) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~48\ $ (GND))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(14) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~48\ & 
-- VCC))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~50\ = CARRY((\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(14) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(14),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[13]~48\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~49_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~50\);

-- Location: FF_X32_Y12_N9
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~49_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(14));

-- Location: LCCOMB_X32_Y12_N10
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~51_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(15) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~50\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(15) & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~50\) # (GND)))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~52\ = CARRY((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~50\) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(15),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[14]~50\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~51_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~52\);

-- Location: FF_X32_Y12_N11
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~51_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(15));

-- Location: LCCOMB_X32_Y12_N12
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~53_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(16) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~52\ $ (GND))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(16) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~52\ & 
-- VCC))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~54\ = CARRY((\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(16) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(16),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[15]~52\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~53_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~54\);

-- Location: FF_X32_Y12_N13
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~53_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(16));

-- Location: LCCOMB_X32_Y12_N14
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~55_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(17) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~54\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(17) & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~54\) # (GND)))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~56\ = CARRY((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~54\) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(17),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[16]~54\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~55_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~56\);

-- Location: FF_X32_Y12_N15
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~55_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(17));

-- Location: LCCOMB_X32_Y12_N16
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~57_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(18) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~56\ $ (GND))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(18) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~56\ & 
-- VCC))
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~58\ = CARRY((\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(18) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(18),
	datad => VCC,
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[17]~56\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~57_combout\,
	cout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~58\);

-- Location: FF_X32_Y12_N17
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~57_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(18));

-- Location: LCCOMB_X32_Y12_N18
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|count[19]~59_combout\ = \U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~58\ $ (\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(19),
	cin => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[18]~58\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[19]~59_combout\);

-- Location: FF_X32_Y12_N19
\U_DEBOUNCERS:1:INST_DEBOUNCER|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[19]~59_combout\,
	sclr => \U_DEBOUNCERS:1:INST_DEBOUNCER|count[1]~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(19));

-- Location: LCCOMB_X32_Y12_N26
\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~3_combout\ = (((!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(14) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(15))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(17))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(16))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(16),
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(17),
	datac => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(14),
	datad => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(15),
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~3_combout\);

-- Location: LCCOMB_X32_Y12_N30
\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~0_combout\ = (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(13) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(11) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(12) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(13),
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(11),
	datac => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(12),
	datad => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(10),
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~0_combout\);

-- Location: LCCOMB_X32_Y13_N0
\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~1_combout\ = (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(6) & (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(7) & !\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(6),
	datac => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(7),
	datad => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(8),
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~1_combout\);

-- Location: LCCOMB_X32_Y12_N28
\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~2_combout\ = (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(15) & (\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~0_combout\ & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~1_combout\) # 
-- (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(9),
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(15),
	datac => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~0_combout\,
	datad => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~1_combout\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~2_combout\);

-- Location: LCCOMB_X32_Y12_N20
\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~4_combout\ = (((\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~3_combout\) # (\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~2_combout\)) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(19))) # 
-- (!\U_DEBOUNCERS:1:INST_DEBOUNCER|count\(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(18),
	datab => \U_DEBOUNCERS:1:INST_DEBOUNCER|count\(19),
	datac => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~3_combout\,
	datad => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~2_combout\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~4_combout\);

-- Location: LCCOMB_X32_Y12_N24
\U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~0_combout\ = (\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~4_combout\ & ((\U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\))) # (!\U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~4_combout\ & (\CTRL[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:1:INST_DEBOUNCER|LessThan0~4_combout\,
	datab => \CTRL[1]~input_o\,
	datac => \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\,
	combout => \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~0_combout\);

-- Location: FF_X32_Y12_N25
\U_DEBOUNCERS:1:INST_DEBOUNCER|button_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\);

-- Location: LCCOMB_X33_Y12_N12
\U_DECOPRIORIDAD|code_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DECOPRIORIDAD|code_int~0_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\) # ((!\U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\ & \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\,
	datac => \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\,
	datad => \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\,
	combout => \U_DECOPRIORIDAD|code_int~0_combout\);

-- Location: IOIBUF_X32_Y0_N15
\CTRL[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CTRL(0),
	o => \CTRL[0]~input_o\);

-- Location: LCCOMB_X28_Y13_N12
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~20_combout\ = \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(0) $ (VCC)
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~21\ = CARRY(\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(0),
	datad => VCC,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~20_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~21\);

-- Location: LCCOMB_X28_Y12_N22
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~q\ $ (!\CTRL[0]~input_o\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~q\,
	datac => \CTRL[0]~input_o\,
	datad => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~4_combout\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\);

-- Location: FF_X28_Y13_N13
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~20_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(0));

-- Location: LCCOMB_X28_Y13_N14
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~22_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(1) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~21\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(1) & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~21\) # (GND)))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~23\ = CARRY((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~21\) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(1),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[0]~21\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~22_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~23\);

-- Location: FF_X28_Y13_N15
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~22_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(1));

-- Location: LCCOMB_X28_Y13_N16
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~24_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(2) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~23\ $ (GND))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(2) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~23\ & VCC))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~25\ = CARRY((\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(2) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(2),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~23\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~24_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~25\);

-- Location: FF_X28_Y13_N17
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~24_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(2));

-- Location: LCCOMB_X28_Y13_N18
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~26_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(3) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~25\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(3) & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~25\) # (GND)))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~27\ = CARRY((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~25\) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(3),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[2]~25\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~26_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~27\);

-- Location: FF_X28_Y13_N19
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~26_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(3));

-- Location: LCCOMB_X28_Y13_N20
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~28_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(4) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~27\ $ (GND))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(4) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~27\ & VCC))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~29\ = CARRY((\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(4) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(4),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[3]~27\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~28_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~29\);

-- Location: FF_X28_Y13_N21
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~28_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(4));

-- Location: LCCOMB_X28_Y13_N22
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~30_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(5) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~29\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(5) & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~29\) # (GND)))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~31\ = CARRY((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~29\) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(5),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[4]~29\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~30_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~31\);

-- Location: FF_X28_Y13_N23
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~30_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(5));

-- Location: LCCOMB_X28_Y13_N24
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~32_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(6) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~31\ $ (GND))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(6) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~31\ & VCC))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~33\ = CARRY((\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(6) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(6),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[5]~31\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~32_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~33\);

-- Location: FF_X28_Y13_N25
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~32_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(6));

-- Location: LCCOMB_X28_Y13_N26
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~35_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(7) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~33\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(7) & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~33\) # (GND)))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~36\ = CARRY((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~33\) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(7),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[6]~33\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~35_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~36\);

-- Location: FF_X28_Y13_N27
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~35_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(7));

-- Location: LCCOMB_X28_Y13_N28
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~37_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(8) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~36\ $ (GND))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(8) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~36\ & VCC))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~38\ = CARRY((\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(8) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(8),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[7]~36\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~37_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~38\);

-- Location: FF_X28_Y13_N29
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~37_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(8));

-- Location: LCCOMB_X28_Y13_N30
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~39_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(9) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~38\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(9) & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~38\) # (GND)))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~40\ = CARRY((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~38\) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(9),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[8]~38\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~39_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~40\);

-- Location: FF_X28_Y13_N31
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~39_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(9));

-- Location: LCCOMB_X28_Y12_N0
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~41_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(10) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~40\ $ (GND))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(10) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~40\ & 
-- VCC))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~42\ = CARRY((\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(10) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(10),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[9]~40\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~41_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~42\);

-- Location: FF_X28_Y12_N1
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~41_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(10));

-- Location: LCCOMB_X28_Y12_N2
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~43_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(11) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~42\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(11) & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~42\) # (GND)))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~44\ = CARRY((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~42\) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(11),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[10]~42\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~43_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~44\);

-- Location: FF_X28_Y12_N3
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~43_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(11));

-- Location: LCCOMB_X28_Y12_N4
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~45_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(12) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~44\ $ (GND))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(12) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~44\ & 
-- VCC))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~46\ = CARRY((\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(12) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(12),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[11]~44\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~45_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~46\);

-- Location: FF_X28_Y12_N5
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~45_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(12));

-- Location: LCCOMB_X28_Y12_N6
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~47_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(13) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~46\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(13) & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~46\) # (GND)))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~48\ = CARRY((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~46\) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(13),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[12]~46\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~47_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~48\);

-- Location: FF_X28_Y12_N7
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~47_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(13));

-- Location: LCCOMB_X28_Y12_N8
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~49_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(14) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~48\ $ (GND))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(14) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~48\ & 
-- VCC))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~50\ = CARRY((\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(14) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(14),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[13]~48\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~49_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~50\);

-- Location: FF_X28_Y12_N9
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~49_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(14));

-- Location: LCCOMB_X28_Y12_N10
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~51_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(15) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~50\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(15) & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~50\) # (GND)))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~52\ = CARRY((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~50\) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(15),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[14]~50\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~51_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~52\);

-- Location: FF_X28_Y12_N11
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~51_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(15));

-- Location: LCCOMB_X28_Y12_N12
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~53_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(16) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~52\ $ (GND))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(16) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~52\ & 
-- VCC))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~54\ = CARRY((\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(16) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(16),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[15]~52\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~53_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~54\);

-- Location: FF_X28_Y12_N13
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~53_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(16));

-- Location: LCCOMB_X28_Y12_N14
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~55_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(17) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~54\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(17) & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~54\) # (GND)))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~56\ = CARRY((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~54\) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(17),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[16]~54\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~55_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~56\);

-- Location: FF_X28_Y12_N15
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~55_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(17));

-- Location: LCCOMB_X28_Y12_N16
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~57_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(18) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~56\ $ (GND))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(18) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~56\ & 
-- VCC))
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~58\ = CARRY((\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(18) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(18),
	datad => VCC,
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[17]~56\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~57_combout\,
	cout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~58\);

-- Location: FF_X28_Y12_N17
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~57_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(18));

-- Location: LCCOMB_X28_Y12_N18
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[19]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|count[19]~59_combout\ = \U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~58\ $ (\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(19),
	cin => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[18]~58\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[19]~59_combout\);

-- Location: FF_X28_Y12_N19
\U_DEBOUNCERS:0:INST_DEBOUNCER|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[19]~59_combout\,
	sclr => \U_DEBOUNCERS:0:INST_DEBOUNCER|count[1]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(19));

-- Location: LCCOMB_X28_Y12_N26
\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~3_combout\ = (((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(15) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(14))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(16))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(17))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(15),
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(14),
	datac => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(17),
	datad => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(16),
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~3_combout\);

-- Location: LCCOMB_X28_Y12_N30
\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~1_combout\ = (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(13) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(11) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(12) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(13),
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(11),
	datac => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(12),
	datad => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(10),
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~1_combout\);

-- Location: LCCOMB_X28_Y13_N8
\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~0_combout\ = ((!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(7) & (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(6) & !\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(8)))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(7),
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(6),
	datac => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(9),
	datad => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(8),
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~0_combout\);

-- Location: LCCOMB_X28_Y12_N24
\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~2_combout\ = (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(15) & (\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~1_combout\ & \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(15),
	datac => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~1_combout\,
	datad => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~0_combout\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~2_combout\);

-- Location: LCCOMB_X28_Y12_N28
\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~4_combout\ = (((\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~3_combout\) # (\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~2_combout\)) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(18))) # 
-- (!\U_DEBOUNCERS:0:INST_DEBOUNCER|count\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(19),
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|count\(18),
	datac => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~3_combout\,
	datad => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~2_combout\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~4_combout\);

-- Location: LCCOMB_X28_Y12_N20
\U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~0_combout\ = (\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~4_combout\ & ((\U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~q\))) # (!\U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~4_combout\ & (\CTRL[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL[0]~input_o\,
	datac => \U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~q\,
	datad => \U_DEBOUNCERS:0:INST_DEBOUNCER|LessThan0~4_combout\,
	combout => \U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~0_combout\);

-- Location: FF_X28_Y12_N21
\U_DEBOUNCERS:0:INST_DEBOUNCER|button_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~q\);

-- Location: LCCOMB_X33_Y12_N22
\U_DECOPRIORIDAD|code_int[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DECOPRIORIDAD|code_int[0]~1_combout\ = (\U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\) # ((\U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~q\) # ((\U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\) # (\U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\,
	datab => \U_DEBOUNCERS:0:INST_DEBOUNCER|button_out~q\,
	datac => \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\,
	datad => \U_DEBOUNCERS:1:INST_DEBOUNCER|button_out~q\,
	combout => \U_DECOPRIORIDAD|code_int[0]~1_combout\);

-- Location: FF_X33_Y12_N13
\U_DECOPRIORIDAD|code_int[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DECOPRIORIDAD|code_int~0_combout\,
	ena => \U_DECOPRIORIDAD|code_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DECOPRIORIDAD|code_int\(0));

-- Location: LCCOMB_X33_Y12_N6
\U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~0_combout\ = (\U_DECOPRIORIDAD|code_int\(0) & (\U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~q\)) # (!\U_DECOPRIORIDAD|code_int\(0) & ((\U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DECOPRIORIDAD|code_int\(0),
	datab => \U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~q\,
	datad => \U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~q\,
	combout => \U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~0_combout\);

-- Location: IOIBUF_X34_Y12_N22
\INPUT[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: LCCOMB_X33_Y12_N26
\U_DECOPRIORIDAD|code_int~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_DECOPRIORIDAD|code_int~2_combout\ = (\U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\) # (\U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DEBOUNCERS:3:INST_DEBOUNCER|button_out~q\,
	datac => \U_DEBOUNCERS:2:INST_DEBOUNCER|button_out~q\,
	combout => \U_DECOPRIORIDAD|code_int~2_combout\);

-- Location: FF_X33_Y12_N27
\U_DECOPRIORIDAD|code_int[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \U_DECOPRIORIDAD|code_int~2_combout\,
	ena => \U_DECOPRIORIDAD|code_int[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_DECOPRIORIDAD|code_int\(1));

-- Location: LCCOMB_X33_Y12_N24
\U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~1_combout\ = (\U_DECOPRIORIDAD|code_int\(1)) # (!\U_DECOPRIORIDAD|code_int\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \U_DECOPRIORIDAD|code_int\(1),
	datad => \U_DECOPRIORIDAD|code_int\(0),
	combout => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~1_combout\);

-- Location: FF_X33_Y12_N7
\U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_DIVISOR|clk_reg~clkctrl_outclk\,
	d => \U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~0_combout\,
	asdata => \INPUT[3]~input_o\,
	sload => \U_DECOPRIORIDAD|ALT_INV_code_int\(1),
	ena => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~q\);

-- Location: LCCOMB_X33_Y12_N28
\U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~0_combout\ = (\U_DECOPRIORIDAD|code_int\(0) & (\U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~q\)) # (!\U_DECOPRIORIDAD|code_int\(0) & ((\U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~q\,
	datab => \U_DECOPRIORIDAD|code_int\(0),
	datad => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~q\,
	combout => \U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~0_combout\);

-- Location: IOIBUF_X34_Y12_N15
\INPUT[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: FF_X33_Y12_N29
\U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_DIVISOR|clk_reg~clkctrl_outclk\,
	d => \U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~0_combout\,
	asdata => \INPUT[2]~input_o\,
	sload => \U_DECOPRIORIDAD|ALT_INV_code_int\(1),
	ena => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~q\);

-- Location: LCCOMB_X33_Y12_N2
\U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~0_combout\ = (\U_DECOPRIORIDAD|code_int\(0) & (\U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~q\)) # (!\U_DECOPRIORIDAD|code_int\(0) & ((\U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DECOPRIORIDAD|code_int\(0),
	datab => \U_REGISTRO|U_flipflopsD:2:flipflopD_inst|q_int~q\,
	datad => \U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~q\,
	combout => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\INPUT[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: FF_X33_Y12_N3
\U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_DIVISOR|clk_reg~clkctrl_outclk\,
	d => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~0_combout\,
	asdata => \INPUT[1]~input_o\,
	sload => \U_DECOPRIORIDAD|ALT_INV_code_int\(1),
	ena => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~q\);

-- Location: LCCOMB_X33_Y12_N20
\U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~0_combout\ = (\U_DECOPRIORIDAD|code_int\(0) & (\U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~q\)) # (!\U_DECOPRIORIDAD|code_int\(0) & ((\U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \U_DECOPRIORIDAD|code_int\(0),
	datab => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~q\,
	datad => \U_REGISTRO|U_flipflopsD:3:flipflopD_inst|q_int~q\,
	combout => \U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~0_combout\);

-- Location: IOIBUF_X34_Y12_N1
\INPUT[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: FF_X33_Y12_N21
\U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \U_DIVISOR|clk_reg~clkctrl_outclk\,
	d => \U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~0_combout\,
	asdata => \INPUT[0]~input_o\,
	sload => \U_DECOPRIORIDAD|ALT_INV_code_int\(1),
	ena => \U_REGISTRO|U_flipflopsD:1:flipflopD_inst|q_int~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U_REGISTRO|U_flipflopsD:0:flipflopD_inst|q_int~q\);

ww_BITS(0) <= \BITS[0]~output_o\;

ww_BITS(1) <= \BITS[1]~output_o\;

ww_BITS(2) <= \BITS[2]~output_o\;

ww_BITS(3) <= \BITS[3]~output_o\;
END structure;


