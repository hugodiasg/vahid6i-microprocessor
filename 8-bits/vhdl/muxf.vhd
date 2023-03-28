-- Mux 16 bits 3x1 

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--USE work.constants.all;

ENTITY muxf IS
	PORT (
		s1,s0				: IN STD_LOGIC;
		ans,D_R_data	: IN STD_LOGIC_VECTOR(15 downto 0);
		RF_W_data		: IN STD_LOGIC_VECTOR(7 downto 0);
		W_data			: OUT STD_LOGIC_VECTOR(15 downto 0)
	); 
--	zero				:	OUT STD_LOGIC);
END muxf;

ARCHITECTURE arch OF muxf IS 
	SIGNAL s1_s0 : STD_LOGIC_VECTOR(1 downto 0);
BEGIN
	
	s1_s0<=(s1 & s0);
	PROCESS (s1,s0,s1_s0,ans,D_R_data,RF_W_data)
	BEGIN
		CASE s1_s0 IS
			WHEN	"00" => W_data<=ans;
			WHEN	"01" => W_data<=D_R_data;
			WHEN	"10" => W_data<="00000000" & RF_W_data;
			WHEN	OTHERS => W_data<="ZZZZZZZZZZZZZZZZ";
		END CASE;
	END PROCESS;
	
END arch;

