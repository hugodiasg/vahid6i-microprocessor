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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "09/08/2021 21:08:11"

-- 
-- Device: Altera EP4CE22F17C6 Package FBGA256
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

ENTITY 	vahid6i_div IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	led_clock : OUT std_logic;
	leds : OUT std_logic_vector(3 DOWNTO 0)
	);
END vahid6i_div;

-- Design Ports Information
-- led_clock	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_F3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF vahid6i_div IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_led_clock : std_logic;
SIGNAL ww_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL \uc_0|bc_0|I_rd~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div_freq_0|sig_clk_in~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \div_freq_0|Add0~0_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~1\ : std_logic;
SIGNAL \div_freq_0|Add0~2_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~3\ : std_logic;
SIGNAL \div_freq_0|Add0~4_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~5\ : std_logic;
SIGNAL \div_freq_0|Add0~6_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~7\ : std_logic;
SIGNAL \div_freq_0|Add0~8_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~9\ : std_logic;
SIGNAL \div_freq_0|Add0~10_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~11\ : std_logic;
SIGNAL \div_freq_0|Add0~12_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~13\ : std_logic;
SIGNAL \div_freq_0|Add0~14_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~15\ : std_logic;
SIGNAL \div_freq_0|Add0~16_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~17\ : std_logic;
SIGNAL \div_freq_0|Add0~18_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~19\ : std_logic;
SIGNAL \div_freq_0|Add0~20_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~21\ : std_logic;
SIGNAL \div_freq_0|Add0~22_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~23\ : std_logic;
SIGNAL \div_freq_0|Add0~24_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~25\ : std_logic;
SIGNAL \div_freq_0|Add0~26_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~27\ : std_logic;
SIGNAL \div_freq_0|Add0~28_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~29\ : std_logic;
SIGNAL \div_freq_0|Add0~30_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~31\ : std_logic;
SIGNAL \div_freq_0|Add0~32_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~33\ : std_logic;
SIGNAL \div_freq_0|Add0~34_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~35\ : std_logic;
SIGNAL \div_freq_0|Add0~36_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~37\ : std_logic;
SIGNAL \div_freq_0|Add0~38_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~39\ : std_logic;
SIGNAL \div_freq_0|Add0~40_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~41\ : std_logic;
SIGNAL \div_freq_0|Add0~42_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~43\ : std_logic;
SIGNAL \div_freq_0|Add0~44_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~45\ : std_logic;
SIGNAL \div_freq_0|Add0~46_combout\ : std_logic;
SIGNAL \div_freq_0|Add0~47\ : std_logic;
SIGNAL \div_freq_0|Add0~48_combout\ : std_logic;
SIGNAL \div_freq_0|Equal0~0_combout\ : std_logic;
SIGNAL \div_freq_0|Equal0~1_combout\ : std_logic;
SIGNAL \div_freq_0|Equal0~2_combout\ : std_logic;
SIGNAL \div_freq_0|Equal0~3_combout\ : std_logic;
SIGNAL \div_freq_0|Equal0~4_combout\ : std_logic;
SIGNAL \div_freq_0|Equal0~5_combout\ : std_logic;
SIGNAL \div_freq_0|Equal0~6_combout\ : std_logic;
SIGNAL \div_freq_0|Equal0~7_combout\ : std_logic;
SIGNAL \div_freq_0|sig_clk_in~0_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~0_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~1_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~2_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~3_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~4_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~5_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~6_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~7_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~8_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~9_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~10_combout\ : std_logic;
SIGNAL \div_freq_0|sig_prescale~11_combout\ : std_logic;
SIGNAL \uc_0|bc_0|Selector9~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|current_state.Somar~q\ : std_logic;
SIGNAL \I_0|I~3_combout\ : std_logic;
SIGNAL \I_0|I~4_combout\ : std_logic;
SIGNAL \led_clock~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \div_freq_0|sig_clk_in~feeder_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \div_freq_0|sig_clk_in~q\ : std_logic;
SIGNAL \div_freq_0|sig_clk_in~clkctrl_outclk\ : std_logic;
SIGNAL \uc_0|bc_0|next_state.Carregar~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|current_state.Carregar~q\ : std_logic;
SIGNAL \uc_0|bc_0|next_state.Busca1~1_combout\ : std_logic;
SIGNAL \uc_0|bc_0|current_state.Busca1~q\ : std_logic;
SIGNAL \uc_0|bc_0|current_state.Inicio~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|current_state.Inicio~q\ : std_logic;
SIGNAL \uc_0|bc_0|next_state.Busca2~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|current_state.Busca2~q\ : std_logic;
SIGNAL \uc_0|bc_0|next_state.Decod~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|current_state.Decod~q\ : std_logic;
SIGNAL \uc_0|bc_0|next_state.Carregar_Const~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|current_state.Carregar_Const~q\ : std_logic;
SIGNAL \uc_0|bc_0|next_state.Armazenar~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|current_state.Armazenar~q\ : std_logic;
SIGNAL \uc_0|bc_0|next_state.Busca1~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|Selector1~2_combout\ : std_logic;
SIGNAL \uc_0|bc_0|Selector1~3_combout\ : std_logic;
SIGNAL \uc_0|bc_0|PC_inc~q\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~0_combout\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~2_combout\ : std_logic;
SIGNAL \uc_0|pc_0|PC_count[0]~4_combout\ : std_logic;
SIGNAL \uc_0|bc_0|Selector0~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|PC_clr~q\ : std_logic;
SIGNAL \uc_0|pc_0|PC_count[6]~6_combout\ : std_logic;
SIGNAL \I_0|I~2_combout\ : std_logic;
SIGNAL \uc_0|bc_0|Selector9~1_combout\ : std_logic;
SIGNAL \uc_0|bc_0|IR_ld~q\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~1\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~3_combout\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~5_combout\ : std_logic;
SIGNAL \uc_0|pc_0|PC_count[0]~5\ : std_logic;
SIGNAL \uc_0|pc_0|PC_count[1]~7_combout\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~4\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~7\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~9_combout\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~11_combout\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~6_combout\ : std_logic;
SIGNAL \uc_0|pc_0|PC_count[1]~8\ : std_logic;
SIGNAL \uc_0|pc_0|PC_count[2]~9_combout\ : std_logic;
SIGNAL \uc_0|pc_0|Add1~8_combout\ : std_logic;
SIGNAL \uc_0|pc_0|PC_count[2]~10\ : std_logic;
SIGNAL \uc_0|pc_0|PC_count[3]~11_combout\ : std_logic;
SIGNAL \I_0|I~1_combout\ : std_logic;
SIGNAL \uc_0|bc_0|next_state.Somar~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|Selector2~0_combout\ : std_logic;
SIGNAL \uc_0|bc_0|Selector2~1_combout\ : std_logic;
SIGNAL \uc_0|bc_0|I_rd~q\ : std_logic;
SIGNAL \uc_0|bc_0|I_rd~clkctrl_outclk\ : std_logic;
SIGNAL \I_0|I~0_combout\ : std_logic;
SIGNAL \I_0|I_data\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \div_freq_0|sig_prescale\ : std_logic_vector(24 DOWNTO 0);
SIGNAL \uc_0|pc_0|PC_count\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \uc_0|ir_0|IR_data_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;
SIGNAL \uc_0|bc_0|ALT_INV_PC_inc~q\ : std_logic;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
led_clock <= ww_led_clock;
leds <= ww_leds;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\uc_0|bc_0|I_rd~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \uc_0|bc_0|I_rd~q\);

\div_freq_0|sig_clk_in~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \div_freq_0|sig_clk_in~q\);

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
\uc_0|bc_0|ALT_INV_PC_inc~q\ <= NOT \uc_0|bc_0|PC_inc~q\;

-- Location: LCCOMB_X39_Y16_N8
\div_freq_0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~0_combout\ = \div_freq_0|sig_prescale\(0) $ (VCC)
-- \div_freq_0|Add0~1\ = CARRY(\div_freq_0|sig_prescale\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(0),
	datad => VCC,
	combout => \div_freq_0|Add0~0_combout\,
	cout => \div_freq_0|Add0~1\);

-- Location: LCCOMB_X39_Y16_N10
\div_freq_0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~2_combout\ = (\div_freq_0|sig_prescale\(1) & (!\div_freq_0|Add0~1\)) # (!\div_freq_0|sig_prescale\(1) & ((\div_freq_0|Add0~1\) # (GND)))
-- \div_freq_0|Add0~3\ = CARRY((!\div_freq_0|Add0~1\) # (!\div_freq_0|sig_prescale\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(1),
	datad => VCC,
	cin => \div_freq_0|Add0~1\,
	combout => \div_freq_0|Add0~2_combout\,
	cout => \div_freq_0|Add0~3\);

-- Location: LCCOMB_X39_Y16_N12
\div_freq_0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~4_combout\ = (\div_freq_0|sig_prescale\(2) & (\div_freq_0|Add0~3\ $ (GND))) # (!\div_freq_0|sig_prescale\(2) & (!\div_freq_0|Add0~3\ & VCC))
-- \div_freq_0|Add0~5\ = CARRY((\div_freq_0|sig_prescale\(2) & !\div_freq_0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(2),
	datad => VCC,
	cin => \div_freq_0|Add0~3\,
	combout => \div_freq_0|Add0~4_combout\,
	cout => \div_freq_0|Add0~5\);

-- Location: LCCOMB_X39_Y16_N14
\div_freq_0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~6_combout\ = (\div_freq_0|sig_prescale\(3) & (!\div_freq_0|Add0~5\)) # (!\div_freq_0|sig_prescale\(3) & ((\div_freq_0|Add0~5\) # (GND)))
-- \div_freq_0|Add0~7\ = CARRY((!\div_freq_0|Add0~5\) # (!\div_freq_0|sig_prescale\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(3),
	datad => VCC,
	cin => \div_freq_0|Add0~5\,
	combout => \div_freq_0|Add0~6_combout\,
	cout => \div_freq_0|Add0~7\);

-- Location: LCCOMB_X39_Y16_N16
\div_freq_0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~8_combout\ = (\div_freq_0|sig_prescale\(4) & (\div_freq_0|Add0~7\ $ (GND))) # (!\div_freq_0|sig_prescale\(4) & (!\div_freq_0|Add0~7\ & VCC))
-- \div_freq_0|Add0~9\ = CARRY((\div_freq_0|sig_prescale\(4) & !\div_freq_0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(4),
	datad => VCC,
	cin => \div_freq_0|Add0~7\,
	combout => \div_freq_0|Add0~8_combout\,
	cout => \div_freq_0|Add0~9\);

-- Location: LCCOMB_X39_Y16_N18
\div_freq_0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~10_combout\ = (\div_freq_0|sig_prescale\(5) & (!\div_freq_0|Add0~9\)) # (!\div_freq_0|sig_prescale\(5) & ((\div_freq_0|Add0~9\) # (GND)))
-- \div_freq_0|Add0~11\ = CARRY((!\div_freq_0|Add0~9\) # (!\div_freq_0|sig_prescale\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(5),
	datad => VCC,
	cin => \div_freq_0|Add0~9\,
	combout => \div_freq_0|Add0~10_combout\,
	cout => \div_freq_0|Add0~11\);

-- Location: LCCOMB_X39_Y16_N20
\div_freq_0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~12_combout\ = (\div_freq_0|sig_prescale\(6) & (\div_freq_0|Add0~11\ $ (GND))) # (!\div_freq_0|sig_prescale\(6) & (!\div_freq_0|Add0~11\ & VCC))
-- \div_freq_0|Add0~13\ = CARRY((\div_freq_0|sig_prescale\(6) & !\div_freq_0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(6),
	datad => VCC,
	cin => \div_freq_0|Add0~11\,
	combout => \div_freq_0|Add0~12_combout\,
	cout => \div_freq_0|Add0~13\);

-- Location: LCCOMB_X39_Y16_N22
\div_freq_0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~14_combout\ = (\div_freq_0|sig_prescale\(7) & (!\div_freq_0|Add0~13\)) # (!\div_freq_0|sig_prescale\(7) & ((\div_freq_0|Add0~13\) # (GND)))
-- \div_freq_0|Add0~15\ = CARRY((!\div_freq_0|Add0~13\) # (!\div_freq_0|sig_prescale\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(7),
	datad => VCC,
	cin => \div_freq_0|Add0~13\,
	combout => \div_freq_0|Add0~14_combout\,
	cout => \div_freq_0|Add0~15\);

-- Location: LCCOMB_X39_Y16_N24
\div_freq_0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~16_combout\ = (\div_freq_0|sig_prescale\(8) & (\div_freq_0|Add0~15\ $ (GND))) # (!\div_freq_0|sig_prescale\(8) & (!\div_freq_0|Add0~15\ & VCC))
-- \div_freq_0|Add0~17\ = CARRY((\div_freq_0|sig_prescale\(8) & !\div_freq_0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(8),
	datad => VCC,
	cin => \div_freq_0|Add0~15\,
	combout => \div_freq_0|Add0~16_combout\,
	cout => \div_freq_0|Add0~17\);

-- Location: LCCOMB_X39_Y16_N26
\div_freq_0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~18_combout\ = (\div_freq_0|sig_prescale\(9) & (!\div_freq_0|Add0~17\)) # (!\div_freq_0|sig_prescale\(9) & ((\div_freq_0|Add0~17\) # (GND)))
-- \div_freq_0|Add0~19\ = CARRY((!\div_freq_0|Add0~17\) # (!\div_freq_0|sig_prescale\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(9),
	datad => VCC,
	cin => \div_freq_0|Add0~17\,
	combout => \div_freq_0|Add0~18_combout\,
	cout => \div_freq_0|Add0~19\);

-- Location: LCCOMB_X39_Y16_N28
\div_freq_0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~20_combout\ = (\div_freq_0|sig_prescale\(10) & (\div_freq_0|Add0~19\ $ (GND))) # (!\div_freq_0|sig_prescale\(10) & (!\div_freq_0|Add0~19\ & VCC))
-- \div_freq_0|Add0~21\ = CARRY((\div_freq_0|sig_prescale\(10) & !\div_freq_0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(10),
	datad => VCC,
	cin => \div_freq_0|Add0~19\,
	combout => \div_freq_0|Add0~20_combout\,
	cout => \div_freq_0|Add0~21\);

-- Location: LCCOMB_X39_Y16_N30
\div_freq_0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~22_combout\ = (\div_freq_0|sig_prescale\(11) & (!\div_freq_0|Add0~21\)) # (!\div_freq_0|sig_prescale\(11) & ((\div_freq_0|Add0~21\) # (GND)))
-- \div_freq_0|Add0~23\ = CARRY((!\div_freq_0|Add0~21\) # (!\div_freq_0|sig_prescale\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(11),
	datad => VCC,
	cin => \div_freq_0|Add0~21\,
	combout => \div_freq_0|Add0~22_combout\,
	cout => \div_freq_0|Add0~23\);

-- Location: LCCOMB_X39_Y15_N0
\div_freq_0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~24_combout\ = (\div_freq_0|sig_prescale\(12) & (\div_freq_0|Add0~23\ $ (GND))) # (!\div_freq_0|sig_prescale\(12) & (!\div_freq_0|Add0~23\ & VCC))
-- \div_freq_0|Add0~25\ = CARRY((\div_freq_0|sig_prescale\(12) & !\div_freq_0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(12),
	datad => VCC,
	cin => \div_freq_0|Add0~23\,
	combout => \div_freq_0|Add0~24_combout\,
	cout => \div_freq_0|Add0~25\);

-- Location: LCCOMB_X39_Y15_N2
\div_freq_0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~26_combout\ = (\div_freq_0|sig_prescale\(13) & (!\div_freq_0|Add0~25\)) # (!\div_freq_0|sig_prescale\(13) & ((\div_freq_0|Add0~25\) # (GND)))
-- \div_freq_0|Add0~27\ = CARRY((!\div_freq_0|Add0~25\) # (!\div_freq_0|sig_prescale\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(13),
	datad => VCC,
	cin => \div_freq_0|Add0~25\,
	combout => \div_freq_0|Add0~26_combout\,
	cout => \div_freq_0|Add0~27\);

-- Location: LCCOMB_X39_Y15_N4
\div_freq_0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~28_combout\ = (\div_freq_0|sig_prescale\(14) & (\div_freq_0|Add0~27\ $ (GND))) # (!\div_freq_0|sig_prescale\(14) & (!\div_freq_0|Add0~27\ & VCC))
-- \div_freq_0|Add0~29\ = CARRY((\div_freq_0|sig_prescale\(14) & !\div_freq_0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(14),
	datad => VCC,
	cin => \div_freq_0|Add0~27\,
	combout => \div_freq_0|Add0~28_combout\,
	cout => \div_freq_0|Add0~29\);

-- Location: LCCOMB_X39_Y15_N6
\div_freq_0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~30_combout\ = (\div_freq_0|sig_prescale\(15) & (!\div_freq_0|Add0~29\)) # (!\div_freq_0|sig_prescale\(15) & ((\div_freq_0|Add0~29\) # (GND)))
-- \div_freq_0|Add0~31\ = CARRY((!\div_freq_0|Add0~29\) # (!\div_freq_0|sig_prescale\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(15),
	datad => VCC,
	cin => \div_freq_0|Add0~29\,
	combout => \div_freq_0|Add0~30_combout\,
	cout => \div_freq_0|Add0~31\);

-- Location: LCCOMB_X39_Y15_N8
\div_freq_0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~32_combout\ = (\div_freq_0|sig_prescale\(16) & (\div_freq_0|Add0~31\ $ (GND))) # (!\div_freq_0|sig_prescale\(16) & (!\div_freq_0|Add0~31\ & VCC))
-- \div_freq_0|Add0~33\ = CARRY((\div_freq_0|sig_prescale\(16) & !\div_freq_0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(16),
	datad => VCC,
	cin => \div_freq_0|Add0~31\,
	combout => \div_freq_0|Add0~32_combout\,
	cout => \div_freq_0|Add0~33\);

-- Location: LCCOMB_X39_Y15_N10
\div_freq_0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~34_combout\ = (\div_freq_0|sig_prescale\(17) & (!\div_freq_0|Add0~33\)) # (!\div_freq_0|sig_prescale\(17) & ((\div_freq_0|Add0~33\) # (GND)))
-- \div_freq_0|Add0~35\ = CARRY((!\div_freq_0|Add0~33\) # (!\div_freq_0|sig_prescale\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(17),
	datad => VCC,
	cin => \div_freq_0|Add0~33\,
	combout => \div_freq_0|Add0~34_combout\,
	cout => \div_freq_0|Add0~35\);

-- Location: LCCOMB_X39_Y15_N12
\div_freq_0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~36_combout\ = (\div_freq_0|sig_prescale\(18) & (\div_freq_0|Add0~35\ $ (GND))) # (!\div_freq_0|sig_prescale\(18) & (!\div_freq_0|Add0~35\ & VCC))
-- \div_freq_0|Add0~37\ = CARRY((\div_freq_0|sig_prescale\(18) & !\div_freq_0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(18),
	datad => VCC,
	cin => \div_freq_0|Add0~35\,
	combout => \div_freq_0|Add0~36_combout\,
	cout => \div_freq_0|Add0~37\);

-- Location: LCCOMB_X39_Y15_N14
\div_freq_0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~38_combout\ = (\div_freq_0|sig_prescale\(19) & (!\div_freq_0|Add0~37\)) # (!\div_freq_0|sig_prescale\(19) & ((\div_freq_0|Add0~37\) # (GND)))
-- \div_freq_0|Add0~39\ = CARRY((!\div_freq_0|Add0~37\) # (!\div_freq_0|sig_prescale\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(19),
	datad => VCC,
	cin => \div_freq_0|Add0~37\,
	combout => \div_freq_0|Add0~38_combout\,
	cout => \div_freq_0|Add0~39\);

-- Location: LCCOMB_X39_Y15_N16
\div_freq_0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~40_combout\ = (\div_freq_0|sig_prescale\(20) & (\div_freq_0|Add0~39\ $ (GND))) # (!\div_freq_0|sig_prescale\(20) & (!\div_freq_0|Add0~39\ & VCC))
-- \div_freq_0|Add0~41\ = CARRY((\div_freq_0|sig_prescale\(20) & !\div_freq_0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(20),
	datad => VCC,
	cin => \div_freq_0|Add0~39\,
	combout => \div_freq_0|Add0~40_combout\,
	cout => \div_freq_0|Add0~41\);

-- Location: LCCOMB_X39_Y15_N18
\div_freq_0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~42_combout\ = (\div_freq_0|sig_prescale\(21) & (!\div_freq_0|Add0~41\)) # (!\div_freq_0|sig_prescale\(21) & ((\div_freq_0|Add0~41\) # (GND)))
-- \div_freq_0|Add0~43\ = CARRY((!\div_freq_0|Add0~41\) # (!\div_freq_0|sig_prescale\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(21),
	datad => VCC,
	cin => \div_freq_0|Add0~41\,
	combout => \div_freq_0|Add0~42_combout\,
	cout => \div_freq_0|Add0~43\);

-- Location: LCCOMB_X39_Y15_N20
\div_freq_0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~44_combout\ = (\div_freq_0|sig_prescale\(22) & (\div_freq_0|Add0~43\ $ (GND))) # (!\div_freq_0|sig_prescale\(22) & (!\div_freq_0|Add0~43\ & VCC))
-- \div_freq_0|Add0~45\ = CARRY((\div_freq_0|sig_prescale\(22) & !\div_freq_0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(22),
	datad => VCC,
	cin => \div_freq_0|Add0~43\,
	combout => \div_freq_0|Add0~44_combout\,
	cout => \div_freq_0|Add0~45\);

-- Location: LCCOMB_X39_Y15_N22
\div_freq_0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~46_combout\ = (\div_freq_0|sig_prescale\(23) & (!\div_freq_0|Add0~45\)) # (!\div_freq_0|sig_prescale\(23) & ((\div_freq_0|Add0~45\) # (GND)))
-- \div_freq_0|Add0~47\ = CARRY((!\div_freq_0|Add0~45\) # (!\div_freq_0|sig_prescale\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(23),
	datad => VCC,
	cin => \div_freq_0|Add0~45\,
	combout => \div_freq_0|Add0~46_combout\,
	cout => \div_freq_0|Add0~47\);

-- Location: LCCOMB_X39_Y15_N24
\div_freq_0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Add0~48_combout\ = \div_freq_0|sig_prescale\(24) $ (!\div_freq_0|Add0~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|sig_prescale\(24),
	cin => \div_freq_0|Add0~47\,
	combout => \div_freq_0|Add0~48_combout\);

-- Location: FF_X39_Y16_N9
\div_freq_0|sig_prescale[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(0));

-- Location: FF_X40_Y15_N11
\div_freq_0|sig_prescale[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(24));

-- Location: FF_X40_Y15_N5
\div_freq_0|sig_prescale[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(22));

-- Location: FF_X39_Y15_N23
\div_freq_0|sig_prescale[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~46_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(23));

-- Location: LCCOMB_X40_Y15_N26
\div_freq_0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Equal0~0_combout\ = (\div_freq_0|sig_prescale\(24) & (\div_freq_0|sig_prescale\(22) & (\div_freq_0|sig_prescale\(0) & !\div_freq_0|sig_prescale\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(24),
	datab => \div_freq_0|sig_prescale\(22),
	datac => \div_freq_0|sig_prescale\(0),
	datad => \div_freq_0|sig_prescale\(23),
	combout => \div_freq_0|Equal0~0_combout\);

-- Location: FF_X39_Y15_N27
\div_freq_0|sig_prescale[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(21));

-- Location: FF_X39_Y15_N29
\div_freq_0|sig_prescale[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(20));

-- Location: FF_X40_Y15_N7
\div_freq_0|sig_prescale[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(19));

-- Location: FF_X39_Y15_N31
\div_freq_0|sig_prescale[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(18));

-- Location: LCCOMB_X40_Y15_N22
\div_freq_0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Equal0~1_combout\ = (\div_freq_0|sig_prescale\(21) & (\div_freq_0|sig_prescale\(19) & (\div_freq_0|sig_prescale\(20) & \div_freq_0|sig_prescale\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(21),
	datab => \div_freq_0|sig_prescale\(19),
	datac => \div_freq_0|sig_prescale\(20),
	datad => \div_freq_0|sig_prescale\(18),
	combout => \div_freq_0|Equal0~1_combout\);

-- Location: FF_X40_Y15_N19
\div_freq_0|sig_prescale[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(16));

-- Location: FF_X40_Y15_N3
\div_freq_0|sig_prescale[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~7_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(14));

-- Location: FF_X39_Y15_N11
\div_freq_0|sig_prescale[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~34_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(17));

-- Location: FF_X39_Y15_N7
\div_freq_0|sig_prescale[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~30_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(15));

-- Location: LCCOMB_X40_Y15_N8
\div_freq_0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Equal0~2_combout\ = (!\div_freq_0|sig_prescale\(17) & (\div_freq_0|sig_prescale\(14) & (!\div_freq_0|sig_prescale\(15) & \div_freq_0|sig_prescale\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(17),
	datab => \div_freq_0|sig_prescale\(14),
	datac => \div_freq_0|sig_prescale\(15),
	datad => \div_freq_0|sig_prescale\(16),
	combout => \div_freq_0|Equal0~2_combout\);

-- Location: FF_X40_Y15_N31
\div_freq_0|sig_prescale[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(13));

-- Location: FF_X40_Y15_N21
\div_freq_0|sig_prescale[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(12));

-- Location: FF_X39_Y16_N5
\div_freq_0|sig_prescale[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(11));

-- Location: FF_X39_Y16_N29
\div_freq_0|sig_prescale[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~20_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(10));

-- Location: LCCOMB_X40_Y15_N24
\div_freq_0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Equal0~3_combout\ = (\div_freq_0|sig_prescale\(13) & (\div_freq_0|sig_prescale\(12) & (!\div_freq_0|sig_prescale\(10) & \div_freq_0|sig_prescale\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(13),
	datab => \div_freq_0|sig_prescale\(12),
	datac => \div_freq_0|sig_prescale\(10),
	datad => \div_freq_0|sig_prescale\(11),
	combout => \div_freq_0|Equal0~3_combout\);

-- Location: LCCOMB_X40_Y15_N16
\div_freq_0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Equal0~4_combout\ = (\div_freq_0|Equal0~1_combout\ & (\div_freq_0|Equal0~2_combout\ & (\div_freq_0|Equal0~0_combout\ & \div_freq_0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|Equal0~1_combout\,
	datab => \div_freq_0|Equal0~2_combout\,
	datac => \div_freq_0|Equal0~0_combout\,
	datad => \div_freq_0|Equal0~3_combout\,
	combout => \div_freq_0|Equal0~4_combout\);

-- Location: FF_X39_Y16_N27
\div_freq_0|sig_prescale[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~18_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(9));

-- Location: FF_X39_Y16_N25
\div_freq_0|sig_prescale[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~16_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(8));

-- Location: FF_X39_Y16_N23
\div_freq_0|sig_prescale[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(7));

-- Location: FF_X39_Y16_N7
\div_freq_0|sig_prescale[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_prescale~11_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(6));

-- Location: LCCOMB_X39_Y16_N0
\div_freq_0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Equal0~5_combout\ = (!\div_freq_0|sig_prescale\(7) & (!\div_freq_0|sig_prescale\(8) & (!\div_freq_0|sig_prescale\(9) & !\div_freq_0|sig_prescale\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(7),
	datab => \div_freq_0|sig_prescale\(8),
	datac => \div_freq_0|sig_prescale\(9),
	datad => \div_freq_0|sig_prescale\(6),
	combout => \div_freq_0|Equal0~5_combout\);

-- Location: FF_X39_Y16_N11
\div_freq_0|sig_prescale[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(1));

-- Location: FF_X39_Y16_N19
\div_freq_0|sig_prescale[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~10_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(5));

-- Location: FF_X39_Y16_N17
\div_freq_0|sig_prescale[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~8_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(4));

-- Location: FF_X39_Y16_N15
\div_freq_0|sig_prescale[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~6_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(3));

-- Location: FF_X39_Y16_N13
\div_freq_0|sig_prescale[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|Add0~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_prescale\(2));

-- Location: LCCOMB_X39_Y16_N2
\div_freq_0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Equal0~6_combout\ = (\div_freq_0|sig_prescale\(2) & (\div_freq_0|sig_prescale\(4) & (\div_freq_0|sig_prescale\(3) & \div_freq_0|sig_prescale\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(2),
	datab => \div_freq_0|sig_prescale\(4),
	datac => \div_freq_0|sig_prescale\(3),
	datad => \div_freq_0|sig_prescale\(5),
	combout => \div_freq_0|Equal0~6_combout\);

-- Location: LCCOMB_X40_Y15_N12
\div_freq_0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|Equal0~7_combout\ = (\div_freq_0|sig_prescale\(1) & (\div_freq_0|Equal0~5_combout\ & (\div_freq_0|Equal0~6_combout\ & \div_freq_0|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_prescale\(1),
	datab => \div_freq_0|Equal0~5_combout\,
	datac => \div_freq_0|Equal0~6_combout\,
	datad => \div_freq_0|Equal0~4_combout\,
	combout => \div_freq_0|Equal0~7_combout\);

-- Location: LCCOMB_X40_Y15_N14
\div_freq_0|sig_clk_in~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_clk_in~0_combout\ = \div_freq_0|sig_clk_in~q\ $ (\div_freq_0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_clk_in~q\,
	datad => \div_freq_0|Equal0~7_combout\,
	combout => \div_freq_0|sig_clk_in~0_combout\);

-- Location: LCCOMB_X40_Y15_N10
\div_freq_0|sig_prescale~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~0_combout\ = (!\div_freq_0|Equal0~7_combout\ & \div_freq_0|Add0~48_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|Equal0~7_combout\,
	datad => \div_freq_0|Add0~48_combout\,
	combout => \div_freq_0|sig_prescale~0_combout\);

-- Location: LCCOMB_X40_Y15_N4
\div_freq_0|sig_prescale~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~1_combout\ = (!\div_freq_0|Equal0~7_combout\ & \div_freq_0|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|Equal0~7_combout\,
	datad => \div_freq_0|Add0~44_combout\,
	combout => \div_freq_0|sig_prescale~1_combout\);

-- Location: LCCOMB_X39_Y15_N26
\div_freq_0|sig_prescale~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~2_combout\ = (!\div_freq_0|Equal0~7_combout\ & \div_freq_0|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_freq_0|Equal0~7_combout\,
	datad => \div_freq_0|Add0~42_combout\,
	combout => \div_freq_0|sig_prescale~2_combout\);

-- Location: LCCOMB_X39_Y15_N28
\div_freq_0|sig_prescale~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~3_combout\ = (!\div_freq_0|Equal0~7_combout\ & \div_freq_0|Add0~40_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_freq_0|Equal0~7_combout\,
	datad => \div_freq_0|Add0~40_combout\,
	combout => \div_freq_0|sig_prescale~3_combout\);

-- Location: LCCOMB_X40_Y15_N6
\div_freq_0|sig_prescale~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~4_combout\ = (!\div_freq_0|Equal0~7_combout\ & \div_freq_0|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|Equal0~7_combout\,
	datad => \div_freq_0|Add0~38_combout\,
	combout => \div_freq_0|sig_prescale~4_combout\);

-- Location: LCCOMB_X39_Y15_N30
\div_freq_0|sig_prescale~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~5_combout\ = (!\div_freq_0|Equal0~7_combout\ & \div_freq_0|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_freq_0|Equal0~7_combout\,
	datad => \div_freq_0|Add0~36_combout\,
	combout => \div_freq_0|sig_prescale~5_combout\);

-- Location: LCCOMB_X40_Y15_N18
\div_freq_0|sig_prescale~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~6_combout\ = (!\div_freq_0|Equal0~7_combout\ & \div_freq_0|Add0~32_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|Equal0~7_combout\,
	datad => \div_freq_0|Add0~32_combout\,
	combout => \div_freq_0|sig_prescale~6_combout\);

-- Location: LCCOMB_X40_Y15_N2
\div_freq_0|sig_prescale~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~7_combout\ = (\div_freq_0|Add0~28_combout\ & !\div_freq_0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_freq_0|Add0~28_combout\,
	datad => \div_freq_0|Equal0~7_combout\,
	combout => \div_freq_0|sig_prescale~7_combout\);

-- Location: LCCOMB_X40_Y15_N30
\div_freq_0|sig_prescale~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~8_combout\ = (!\div_freq_0|Equal0~7_combout\ & \div_freq_0|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|Equal0~7_combout\,
	datad => \div_freq_0|Add0~26_combout\,
	combout => \div_freq_0|sig_prescale~8_combout\);

-- Location: LCCOMB_X40_Y15_N20
\div_freq_0|sig_prescale~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~9_combout\ = (!\div_freq_0|Equal0~7_combout\ & \div_freq_0|Add0~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|Equal0~7_combout\,
	datad => \div_freq_0|Add0~24_combout\,
	combout => \div_freq_0|sig_prescale~9_combout\);

-- Location: LCCOMB_X39_Y16_N4
\div_freq_0|sig_prescale~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~10_combout\ = (\div_freq_0|Add0~22_combout\ & !\div_freq_0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \div_freq_0|Add0~22_combout\,
	datad => \div_freq_0|Equal0~7_combout\,
	combout => \div_freq_0|sig_prescale~10_combout\);

-- Location: LCCOMB_X39_Y16_N6
\div_freq_0|sig_prescale~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_prescale~11_combout\ = (\div_freq_0|Add0~12_combout\ & !\div_freq_0|Equal0~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \div_freq_0|Add0~12_combout\,
	datad => \div_freq_0|Equal0~7_combout\,
	combout => \div_freq_0|sig_prescale~11_combout\);

-- Location: LCCOMB_X1_Y24_N22
\uc_0|bc_0|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|Selector9~0_combout\ = (\uc_0|bc_0|next_state.Busca2~0_combout\) # ((\uc_0|bc_0|IR_ld~q\ & ((\reset~input_o\) # (\uc_0|bc_0|next_state.Carregar_Const~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|IR_ld~q\,
	datab => \reset~input_o\,
	datac => \uc_0|bc_0|next_state.Busca2~0_combout\,
	datad => \uc_0|bc_0|next_state.Carregar_Const~0_combout\,
	combout => \uc_0|bc_0|Selector9~0_combout\);

-- Location: FF_X1_Y24_N27
\uc_0|bc_0|current_state.Somar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|next_state.Somar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|current_state.Somar~q\);

-- Location: FF_X2_Y24_N15
\uc_0|ir_0|IR_data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \I_0|I_data\(1),
	ena => \uc_0|bc_0|IR_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|ir_0|IR_data_out\(1));

-- Location: LCCOMB_X2_Y24_N18
\I_0|I~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I~3_combout\ = (\uc_0|pc_0|PC_count\(1) & !\uc_0|pc_0|PC_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \uc_0|pc_0|PC_count\(1),
	datad => \uc_0|pc_0|PC_count\(3),
	combout => \I_0|I~3_combout\);

-- Location: LCCOMB_X3_Y24_N26
\I_0|I~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I~4_combout\ = (\uc_0|pc_0|PC_count\(2) & !\uc_0|pc_0|PC_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|pc_0|PC_count\(2),
	datad => \uc_0|pc_0|PC_count\(3),
	combout => \I_0|I~4_combout\);

-- Location: LCCOMB_X2_Y24_N14
\I_0|I_data[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I_data\(1) = (GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & ((\I_0|I~3_combout\))) # (!GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & (\I_0|I_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_0|I_data\(1),
	datac => \uc_0|bc_0|I_rd~clkctrl_outclk\,
	datad => \I_0|I~3_combout\,
	combout => \I_0|I_data\(1));

-- Location: IOOBUF_X38_Y34_N16
\led_clock~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \div_freq_0|sig_clk_in~q\,
	devoe => ww_devoe,
	o => \led_clock~output_o\);

-- Location: IOOBUF_X0_Y25_N9
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uc_0|ir_0|IR_data_out\(12),
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \uc_0|ir_0|IR_data_out\(13),
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X0_Y28_N9
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOIBUF_X27_Y0_N22
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G18
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: LCCOMB_X40_Y15_N28
\div_freq_0|sig_clk_in~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \div_freq_0|sig_clk_in~feeder_combout\ = \div_freq_0|sig_clk_in~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \div_freq_0|sig_clk_in~0_combout\,
	combout => \div_freq_0|sig_clk_in~feeder_combout\);

-- Location: IOIBUF_X53_Y14_N1
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X40_Y15_N29
\div_freq_0|sig_clk_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \div_freq_0|sig_clk_in~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \div_freq_0|sig_clk_in~q\);

-- Location: CLKCTRL_G6
\div_freq_0|sig_clk_in~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \div_freq_0|sig_clk_in~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \div_freq_0|sig_clk_in~clkctrl_outclk\);

-- Location: LCCOMB_X1_Y24_N0
\uc_0|bc_0|next_state.Carregar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|next_state.Carregar~0_combout\ = (\uc_0|bc_0|current_state.Decod~q\ & (!\uc_0|ir_0|IR_data_out\(12) & (!\reset~input_o\ & !\uc_0|ir_0|IR_data_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|current_state.Decod~q\,
	datab => \uc_0|ir_0|IR_data_out\(12),
	datac => \reset~input_o\,
	datad => \uc_0|ir_0|IR_data_out\(13),
	combout => \uc_0|bc_0|next_state.Carregar~0_combout\);

-- Location: FF_X1_Y24_N1
\uc_0|bc_0|current_state.Carregar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|next_state.Carregar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|current_state.Carregar~q\);

-- Location: LCCOMB_X1_Y24_N12
\uc_0|bc_0|next_state.Busca1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|next_state.Busca1~1_combout\ = (!\reset~input_o\ & \uc_0|bc_0|next_state.Busca1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \uc_0|bc_0|next_state.Busca1~0_combout\,
	combout => \uc_0|bc_0|next_state.Busca1~1_combout\);

-- Location: FF_X1_Y24_N13
\uc_0|bc_0|current_state.Busca1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|next_state.Busca1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|current_state.Busca1~q\);

-- Location: LCCOMB_X1_Y24_N2
\uc_0|bc_0|current_state.Inicio~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|current_state.Inicio~0_combout\ = !\reset~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \reset~input_o\,
	combout => \uc_0|bc_0|current_state.Inicio~0_combout\);

-- Location: FF_X1_Y24_N3
\uc_0|bc_0|current_state.Inicio\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|current_state.Inicio~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|current_state.Inicio~q\);

-- Location: LCCOMB_X1_Y24_N4
\uc_0|bc_0|next_state.Busca2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|next_state.Busca2~0_combout\ = (!\reset~input_o\ & ((\uc_0|bc_0|current_state.Busca1~q\) # (!\uc_0|bc_0|current_state.Inicio~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \uc_0|bc_0|current_state.Busca1~q\,
	datad => \uc_0|bc_0|current_state.Inicio~q\,
	combout => \uc_0|bc_0|next_state.Busca2~0_combout\);

-- Location: FF_X1_Y24_N23
\uc_0|bc_0|current_state.Busca2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	asdata => \uc_0|bc_0|next_state.Busca2~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|current_state.Busca2~q\);

-- Location: LCCOMB_X1_Y24_N16
\uc_0|bc_0|next_state.Decod~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|next_state.Decod~0_combout\ = (!\reset~input_o\ & \uc_0|bc_0|current_state.Busca2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \uc_0|bc_0|current_state.Busca2~q\,
	combout => \uc_0|bc_0|next_state.Decod~0_combout\);

-- Location: FF_X1_Y24_N17
\uc_0|bc_0|current_state.Decod\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|next_state.Decod~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|current_state.Decod~q\);

-- Location: LCCOMB_X1_Y24_N20
\uc_0|bc_0|next_state.Carregar_Const~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|next_state.Carregar_Const~0_combout\ = (!\reset~input_o\ & (\uc_0|bc_0|current_state.Decod~q\ & (\uc_0|ir_0|IR_data_out\(12) & \uc_0|ir_0|IR_data_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \uc_0|bc_0|current_state.Decod~q\,
	datac => \uc_0|ir_0|IR_data_out\(12),
	datad => \uc_0|ir_0|IR_data_out\(13),
	combout => \uc_0|bc_0|next_state.Carregar_Const~0_combout\);

-- Location: FF_X1_Y24_N21
\uc_0|bc_0|current_state.Carregar_Const\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|next_state.Carregar_Const~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|current_state.Carregar_Const~q\);

-- Location: LCCOMB_X1_Y24_N10
\uc_0|bc_0|next_state.Armazenar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|next_state.Armazenar~0_combout\ = (\uc_0|bc_0|current_state.Decod~q\ & (\uc_0|ir_0|IR_data_out\(12) & (!\reset~input_o\ & !\uc_0|ir_0|IR_data_out\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|current_state.Decod~q\,
	datab => \uc_0|ir_0|IR_data_out\(12),
	datac => \reset~input_o\,
	datad => \uc_0|ir_0|IR_data_out\(13),
	combout => \uc_0|bc_0|next_state.Armazenar~0_combout\);

-- Location: FF_X1_Y24_N11
\uc_0|bc_0|current_state.Armazenar\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|next_state.Armazenar~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|current_state.Armazenar~q\);

-- Location: LCCOMB_X1_Y24_N18
\uc_0|bc_0|next_state.Busca1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|next_state.Busca1~0_combout\ = (\uc_0|bc_0|current_state.Somar~q\) # ((\uc_0|bc_0|current_state.Carregar~q\) # ((\uc_0|bc_0|current_state.Carregar_Const~q\) # (\uc_0|bc_0|current_state.Armazenar~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|current_state.Somar~q\,
	datab => \uc_0|bc_0|current_state.Carregar~q\,
	datac => \uc_0|bc_0|current_state.Carregar_Const~q\,
	datad => \uc_0|bc_0|current_state.Armazenar~q\,
	combout => \uc_0|bc_0|next_state.Busca1~0_combout\);

-- Location: LCCOMB_X1_Y24_N28
\uc_0|bc_0|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|Selector1~2_combout\ = (\uc_0|bc_0|PC_inc~q\ & ((\uc_0|bc_0|next_state.Somar~0_combout\) # ((\reset~input_o\) # (\uc_0|bc_0|next_state.Carregar_Const~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|PC_inc~q\,
	datab => \uc_0|bc_0|next_state.Somar~0_combout\,
	datac => \reset~input_o\,
	datad => \uc_0|bc_0|next_state.Carregar_Const~0_combout\,
	combout => \uc_0|bc_0|Selector1~2_combout\);

-- Location: LCCOMB_X1_Y24_N24
\uc_0|bc_0|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|Selector1~3_combout\ = (\uc_0|bc_0|Selector1~2_combout\) # ((\uc_0|bc_0|next_state.Busca1~0_combout\ & !\reset~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uc_0|bc_0|next_state.Busca1~0_combout\,
	datac => \reset~input_o\,
	datad => \uc_0|bc_0|Selector1~2_combout\,
	combout => \uc_0|bc_0|Selector1~3_combout\);

-- Location: FF_X1_Y24_N25
\uc_0|bc_0|PC_inc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|Selector1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|PC_inc~q\);

-- Location: LCCOMB_X3_Y24_N18
\uc_0|pc_0|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|Add1~0_combout\ = (\uc_0|pc_0|PC_count\(0) & (\uc_0|ir_0|IR_data_out\(0) $ (VCC))) # (!\uc_0|pc_0|PC_count\(0) & (\uc_0|ir_0|IR_data_out\(0) & VCC))
-- \uc_0|pc_0|Add1~1\ = CARRY((\uc_0|pc_0|PC_count\(0) & \uc_0|ir_0|IR_data_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|pc_0|PC_count\(0),
	datab => \uc_0|ir_0|IR_data_out\(0),
	datad => VCC,
	combout => \uc_0|pc_0|Add1~0_combout\,
	cout => \uc_0|pc_0|Add1~1\);

-- Location: LCCOMB_X3_Y24_N14
\uc_0|pc_0|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|Add1~2_combout\ = (\uc_0|bc_0|PC_inc~q\ & (\uc_0|pc_0|PC_count\(0))) # (!\uc_0|bc_0|PC_inc~q\ & ((\uc_0|pc_0|Add1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|pc_0|PC_count\(0),
	datac => \uc_0|bc_0|PC_inc~q\,
	datad => \uc_0|pc_0|Add1~0_combout\,
	combout => \uc_0|pc_0|Add1~2_combout\);

-- Location: LCCOMB_X3_Y24_N6
\uc_0|pc_0|PC_count[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|PC_count[0]~4_combout\ = \uc_0|pc_0|Add1~2_combout\ $ (VCC)
-- \uc_0|pc_0|PC_count[0]~5\ = CARRY(\uc_0|pc_0|Add1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uc_0|pc_0|Add1~2_combout\,
	datad => VCC,
	combout => \uc_0|pc_0|PC_count[0]~4_combout\,
	cout => \uc_0|pc_0|PC_count[0]~5\);

-- Location: LCCOMB_X1_Y24_N30
\uc_0|bc_0|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|Selector0~0_combout\ = (\reset~input_o\) # ((\uc_0|bc_0|PC_clr~q\ & ((\uc_0|bc_0|current_state.Busca2~q\) # (\uc_0|bc_0|current_state.Decod~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|current_state.Busca2~q\,
	datab => \reset~input_o\,
	datac => \uc_0|bc_0|PC_clr~q\,
	datad => \uc_0|bc_0|current_state.Decod~q\,
	combout => \uc_0|bc_0|Selector0~0_combout\);

-- Location: FF_X1_Y24_N31
\uc_0|bc_0|PC_clr\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|Selector0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|PC_clr~q\);

-- Location: LCCOMB_X2_Y24_N24
\uc_0|pc_0|PC_count[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|PC_count[6]~6_combout\ = (\uc_0|bc_0|PC_inc~q\) # (\uc_0|bc_0|PC_clr~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uc_0|bc_0|PC_inc~q\,
	datad => \uc_0|bc_0|PC_clr~q\,
	combout => \uc_0|pc_0|PC_count[6]~6_combout\);

-- Location: FF_X3_Y24_N7
\uc_0|pc_0|PC_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|pc_0|PC_count[0]~4_combout\,
	sclr => \uc_0|bc_0|ALT_INV_PC_inc~q\,
	ena => \uc_0|pc_0|PC_count[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|pc_0|PC_count\(0));

-- Location: LCCOMB_X3_Y24_N4
\I_0|I~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I~2_combout\ = (!\uc_0|pc_0|PC_count\(3) & \uc_0|pc_0|PC_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|pc_0|PC_count\(3),
	datad => \uc_0|pc_0|PC_count\(0),
	combout => \I_0|I~2_combout\);

-- Location: LCCOMB_X3_Y24_N28
\I_0|I_data[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I_data\(0) = (GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & ((\I_0|I~2_combout\))) # (!GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & (\I_0|I_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_0|I_data\(0),
	datac => \I_0|I~2_combout\,
	datad => \uc_0|bc_0|I_rd~clkctrl_outclk\,
	combout => \I_0|I_data\(0));

-- Location: LCCOMB_X1_Y24_N14
\uc_0|bc_0|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|Selector9~1_combout\ = (\uc_0|bc_0|Selector9~0_combout\) # ((\uc_0|bc_0|IR_ld~q\ & ((\uc_0|bc_0|next_state.Somar~0_combout\) # (\uc_0|bc_0|next_state.Busca1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|Selector9~0_combout\,
	datab => \uc_0|bc_0|next_state.Somar~0_combout\,
	datac => \uc_0|bc_0|IR_ld~q\,
	datad => \uc_0|bc_0|next_state.Busca1~1_combout\,
	combout => \uc_0|bc_0|Selector9~1_combout\);

-- Location: FF_X1_Y24_N15
\uc_0|bc_0|IR_ld\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|bc_0|Selector9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|IR_ld~q\);

-- Location: FF_X3_Y24_N29
\uc_0|ir_0|IR_data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \I_0|I_data\(0),
	ena => \uc_0|bc_0|IR_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|ir_0|IR_data_out\(0));

-- Location: LCCOMB_X3_Y24_N20
\uc_0|pc_0|Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|Add1~3_combout\ = (\uc_0|ir_0|IR_data_out\(1) & ((\uc_0|pc_0|PC_count\(1) & (\uc_0|pc_0|Add1~1\ & VCC)) # (!\uc_0|pc_0|PC_count\(1) & (!\uc_0|pc_0|Add1~1\)))) # (!\uc_0|ir_0|IR_data_out\(1) & ((\uc_0|pc_0|PC_count\(1) & (!\uc_0|pc_0|Add1~1\)) # 
-- (!\uc_0|pc_0|PC_count\(1) & ((\uc_0|pc_0|Add1~1\) # (GND)))))
-- \uc_0|pc_0|Add1~4\ = CARRY((\uc_0|ir_0|IR_data_out\(1) & (!\uc_0|pc_0|PC_count\(1) & !\uc_0|pc_0|Add1~1\)) # (!\uc_0|ir_0|IR_data_out\(1) & ((!\uc_0|pc_0|Add1~1\) # (!\uc_0|pc_0|PC_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|ir_0|IR_data_out\(1),
	datab => \uc_0|pc_0|PC_count\(1),
	datad => VCC,
	cin => \uc_0|pc_0|Add1~1\,
	combout => \uc_0|pc_0|Add1~3_combout\,
	cout => \uc_0|pc_0|Add1~4\);

-- Location: LCCOMB_X3_Y24_N16
\uc_0|pc_0|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|Add1~5_combout\ = (\uc_0|bc_0|PC_inc~q\ & (\uc_0|pc_0|PC_count\(1))) # (!\uc_0|bc_0|PC_inc~q\ & ((\uc_0|pc_0|Add1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|pc_0|PC_count\(1),
	datac => \uc_0|bc_0|PC_inc~q\,
	datad => \uc_0|pc_0|Add1~3_combout\,
	combout => \uc_0|pc_0|Add1~5_combout\);

-- Location: LCCOMB_X3_Y24_N8
\uc_0|pc_0|PC_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|PC_count[1]~7_combout\ = (\uc_0|bc_0|PC_inc~q\ & ((\uc_0|pc_0|Add1~5_combout\ & (!\uc_0|pc_0|PC_count[0]~5\)) # (!\uc_0|pc_0|Add1~5_combout\ & ((\uc_0|pc_0|PC_count[0]~5\) # (GND))))) # (!\uc_0|bc_0|PC_inc~q\ & ((\uc_0|pc_0|Add1~5_combout\ & 
-- (\uc_0|pc_0|PC_count[0]~5\ & VCC)) # (!\uc_0|pc_0|Add1~5_combout\ & (!\uc_0|pc_0|PC_count[0]~5\))))
-- \uc_0|pc_0|PC_count[1]~8\ = CARRY((\uc_0|bc_0|PC_inc~q\ & ((!\uc_0|pc_0|PC_count[0]~5\) # (!\uc_0|pc_0|Add1~5_combout\))) # (!\uc_0|bc_0|PC_inc~q\ & (!\uc_0|pc_0|Add1~5_combout\ & !\uc_0|pc_0|PC_count[0]~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|PC_inc~q\,
	datab => \uc_0|pc_0|Add1~5_combout\,
	datad => VCC,
	cin => \uc_0|pc_0|PC_count[0]~5\,
	combout => \uc_0|pc_0|PC_count[1]~7_combout\,
	cout => \uc_0|pc_0|PC_count[1]~8\);

-- Location: FF_X3_Y24_N9
\uc_0|pc_0|PC_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|pc_0|PC_count[1]~7_combout\,
	sclr => \uc_0|bc_0|ALT_INV_PC_inc~q\,
	ena => \uc_0|pc_0|PC_count[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|pc_0|PC_count\(1));

-- Location: LCCOMB_X2_Y24_N28
\I_0|I_data[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I_data\(3) = (GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & ((\uc_0|pc_0|PC_count\(3)))) # (!GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & (\I_0|I_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_0|I_data\(3),
	datac => \uc_0|pc_0|PC_count\(3),
	datad => \uc_0|bc_0|I_rd~clkctrl_outclk\,
	combout => \I_0|I_data\(3));

-- Location: FF_X2_Y24_N29
\uc_0|ir_0|IR_data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \I_0|I_data\(3),
	ena => \uc_0|bc_0|IR_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|ir_0|IR_data_out\(3));

-- Location: LCCOMB_X3_Y24_N30
\I_0|I_data[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I_data\(2) = (GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & (\I_0|I~4_combout\)) # (!GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & ((\I_0|I_data\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_0|I~4_combout\,
	datac => \I_0|I_data\(2),
	datad => \uc_0|bc_0|I_rd~clkctrl_outclk\,
	combout => \I_0|I_data\(2));

-- Location: FF_X3_Y24_N31
\uc_0|ir_0|IR_data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \I_0|I_data\(2),
	ena => \uc_0|bc_0|IR_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|ir_0|IR_data_out\(2));

-- Location: LCCOMB_X3_Y24_N22
\uc_0|pc_0|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|Add1~6_combout\ = ((\uc_0|pc_0|PC_count\(2) $ (\uc_0|ir_0|IR_data_out\(2) $ (!\uc_0|pc_0|Add1~4\)))) # (GND)
-- \uc_0|pc_0|Add1~7\ = CARRY((\uc_0|pc_0|PC_count\(2) & ((\uc_0|ir_0|IR_data_out\(2)) # (!\uc_0|pc_0|Add1~4\))) # (!\uc_0|pc_0|PC_count\(2) & (\uc_0|ir_0|IR_data_out\(2) & !\uc_0|pc_0|Add1~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|pc_0|PC_count\(2),
	datab => \uc_0|ir_0|IR_data_out\(2),
	datad => VCC,
	cin => \uc_0|pc_0|Add1~4\,
	combout => \uc_0|pc_0|Add1~6_combout\,
	cout => \uc_0|pc_0|Add1~7\);

-- Location: LCCOMB_X3_Y24_N24
\uc_0|pc_0|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|Add1~9_combout\ = \uc_0|ir_0|IR_data_out\(3) $ (\uc_0|pc_0|Add1~7\ $ (\uc_0|pc_0|PC_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \uc_0|ir_0|IR_data_out\(3),
	datad => \uc_0|pc_0|PC_count\(3),
	cin => \uc_0|pc_0|Add1~7\,
	combout => \uc_0|pc_0|Add1~9_combout\);

-- Location: LCCOMB_X3_Y24_N2
\uc_0|pc_0|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|Add1~11_combout\ = (\uc_0|bc_0|PC_inc~q\ & (\uc_0|pc_0|PC_count\(3))) # (!\uc_0|bc_0|PC_inc~q\ & ((\uc_0|pc_0|Add1~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|pc_0|PC_count\(3),
	datac => \uc_0|bc_0|PC_inc~q\,
	datad => \uc_0|pc_0|Add1~9_combout\,
	combout => \uc_0|pc_0|Add1~11_combout\);

-- Location: LCCOMB_X3_Y24_N10
\uc_0|pc_0|PC_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|PC_count[2]~9_combout\ = ((\uc_0|bc_0|PC_inc~q\ $ (\uc_0|pc_0|Add1~8_combout\ $ (\uc_0|pc_0|PC_count[1]~8\)))) # (GND)
-- \uc_0|pc_0|PC_count[2]~10\ = CARRY((\uc_0|bc_0|PC_inc~q\ & (\uc_0|pc_0|Add1~8_combout\ & !\uc_0|pc_0|PC_count[1]~8\)) # (!\uc_0|bc_0|PC_inc~q\ & ((\uc_0|pc_0|Add1~8_combout\) # (!\uc_0|pc_0|PC_count[1]~8\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|PC_inc~q\,
	datab => \uc_0|pc_0|Add1~8_combout\,
	datad => VCC,
	cin => \uc_0|pc_0|PC_count[1]~8\,
	combout => \uc_0|pc_0|PC_count[2]~9_combout\,
	cout => \uc_0|pc_0|PC_count[2]~10\);

-- Location: FF_X3_Y24_N11
\uc_0|pc_0|PC_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|pc_0|PC_count[2]~9_combout\,
	sclr => \uc_0|bc_0|ALT_INV_PC_inc~q\,
	ena => \uc_0|pc_0|PC_count[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|pc_0|PC_count\(2));

-- Location: LCCOMB_X3_Y24_N0
\uc_0|pc_0|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|Add1~8_combout\ = (\uc_0|bc_0|PC_inc~q\ & ((\uc_0|pc_0|PC_count\(2)))) # (!\uc_0|bc_0|PC_inc~q\ & (\uc_0|pc_0|Add1~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|PC_inc~q\,
	datac => \uc_0|pc_0|Add1~6_combout\,
	datad => \uc_0|pc_0|PC_count\(2),
	combout => \uc_0|pc_0|Add1~8_combout\);

-- Location: LCCOMB_X3_Y24_N12
\uc_0|pc_0|PC_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|pc_0|PC_count[3]~11_combout\ = \uc_0|bc_0|PC_inc~q\ $ (\uc_0|pc_0|PC_count[2]~10\ $ (!\uc_0|pc_0|Add1~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|PC_inc~q\,
	datad => \uc_0|pc_0|Add1~11_combout\,
	cin => \uc_0|pc_0|PC_count[2]~10\,
	combout => \uc_0|pc_0|PC_count[3]~11_combout\);

-- Location: FF_X3_Y24_N13
\uc_0|pc_0|PC_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \uc_0|pc_0|PC_count[3]~11_combout\,
	sclr => \uc_0|bc_0|ALT_INV_PC_inc~q\,
	ena => \uc_0|pc_0|PC_count[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|pc_0|PC_count\(3));

-- Location: LCCOMB_X2_Y24_N10
\I_0|I~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I~1_combout\ = (\uc_0|pc_0|PC_count\(3) & (((!\uc_0|pc_0|PC_count\(2)) # (!\uc_0|pc_0|PC_count\(1))) # (!\uc_0|pc_0|PC_count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|pc_0|PC_count\(0),
	datab => \uc_0|pc_0|PC_count\(1),
	datac => \uc_0|pc_0|PC_count\(3),
	datad => \uc_0|pc_0|PC_count\(2),
	combout => \I_0|I~1_combout\);

-- Location: LCCOMB_X2_Y24_N22
\I_0|I_data[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I_data\(13) = (GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & ((\I_0|I~1_combout\))) # (!GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & (\I_0|I_data\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \I_0|I_data\(13),
	datac => \uc_0|bc_0|I_rd~clkctrl_outclk\,
	datad => \I_0|I~1_combout\,
	combout => \I_0|I_data\(13));

-- Location: FF_X2_Y24_N23
\uc_0|ir_0|IR_data_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \I_0|I_data\(13),
	ena => \uc_0|bc_0|IR_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|ir_0|IR_data_out\(13));

-- Location: LCCOMB_X1_Y24_N26
\uc_0|bc_0|next_state.Somar~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|next_state.Somar~0_combout\ = (!\reset~input_o\ & (\uc_0|ir_0|IR_data_out\(13) & (!\uc_0|ir_0|IR_data_out\(12) & \uc_0|bc_0|current_state.Decod~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \uc_0|ir_0|IR_data_out\(13),
	datac => \uc_0|ir_0|IR_data_out\(12),
	datad => \uc_0|bc_0|current_state.Decod~q\,
	combout => \uc_0|bc_0|next_state.Somar~0_combout\);

-- Location: LCCOMB_X1_Y24_N8
\uc_0|bc_0|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|Selector2~0_combout\ = (\uc_0|bc_0|next_state.Busca2~0_combout\) # ((\uc_0|bc_0|I_rd~q\ & ((\reset~input_o\) # (\uc_0|bc_0|next_state.Carregar_Const~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \uc_0|bc_0|I_rd~q\,
	datac => \uc_0|bc_0|next_state.Busca2~0_combout\,
	datad => \uc_0|bc_0|next_state.Carregar_Const~0_combout\,
	combout => \uc_0|bc_0|Selector2~0_combout\);

-- Location: LCCOMB_X1_Y24_N6
\uc_0|bc_0|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \uc_0|bc_0|Selector2~1_combout\ = (\uc_0|bc_0|next_state.Busca1~1_combout\) # ((\uc_0|bc_0|Selector2~0_combout\) # ((\uc_0|bc_0|next_state.Somar~0_combout\ & \uc_0|bc_0|I_rd~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|bc_0|next_state.Busca1~1_combout\,
	datab => \uc_0|bc_0|next_state.Somar~0_combout\,
	datac => \uc_0|bc_0|Selector2~0_combout\,
	datad => \uc_0|bc_0|I_rd~q\,
	combout => \uc_0|bc_0|Selector2~1_combout\);

-- Location: FF_X1_Y24_N5
\uc_0|bc_0|I_rd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	asdata => \uc_0|bc_0|Selector2~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|bc_0|I_rd~q\);

-- Location: CLKCTRL_G0
\uc_0|bc_0|I_rd~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \uc_0|bc_0|I_rd~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \uc_0|bc_0|I_rd~clkctrl_outclk\);

-- Location: LCCOMB_X2_Y24_N12
\I_0|I~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I~0_combout\ = (\uc_0|pc_0|PC_count\(0) & (\uc_0|pc_0|PC_count\(1) & (\uc_0|pc_0|PC_count\(3) & \uc_0|pc_0|PC_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uc_0|pc_0|PC_count\(0),
	datab => \uc_0|pc_0|PC_count\(1),
	datac => \uc_0|pc_0|PC_count\(3),
	datad => \uc_0|pc_0|PC_count\(2),
	combout => \I_0|I~0_combout\);

-- Location: LCCOMB_X2_Y24_N20
\I_0|I_data[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- \I_0|I_data\(12) = (GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & ((\I_0|I~0_combout\))) # (!GLOBAL(\uc_0|bc_0|I_rd~clkctrl_outclk\) & (\I_0|I_data\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \I_0|I_data\(12),
	datac => \uc_0|bc_0|I_rd~clkctrl_outclk\,
	datad => \I_0|I~0_combout\,
	combout => \I_0|I_data\(12));

-- Location: FF_X2_Y24_N21
\uc_0|ir_0|IR_data_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \div_freq_0|sig_clk_in~clkctrl_outclk\,
	d => \I_0|I_data\(12),
	ena => \uc_0|bc_0|IR_ld~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \uc_0|ir_0|IR_data_out\(12));

ww_led_clock <= \led_clock~output_o\;

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;
END structure;


