LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.constants.all;

ENTITY I IS
	PORT (
		clock, I_rd	: IN STD_LOGIC;
		I_data		: OUT STD_LOGIC_VECTOR (tamanho-1 downto 0);
		I_addr		: IN STD_LOGIC_VECTOR (tamanho-1 downto 0):="0000000000000000"
	); 
END I;

ARCHITECTURE arc_I OF I IS
-- 6 Intruções

	SIGNAL I: RAM(0 to 15):=(
		"0000000000000000",	--Carrega D(0) em RF(0)
		"0000000100000001",	--Carrega D(1) em RF(1)
		"0000001000000010",	--Carrega D(2) em RF(2)
		"0000001100000011",	--Carrega D(3) em RF(3)
		"0000010000000100",	--Carrega D(4) em RF(4)
		"0000010100000101",	--Carrega D(5) em RF(5)
		"0000011000000110",	--Carrega D(6) em RF(6)
		"0000011100000111",	--Carrega D(7) em RF(7)
		"0010000000011000",	--Soma RF(0) com RF(1) e armazena em RF(8)
		"0010001010001000",	--Soma RF(2) com RF(8) e armazena em RF(8)
		"0010001110001000",	--Soma RF(3) com RF(8) e armazena em RF(8)
		"0010010010001000",	--Soma RF(4) com RF(8) e armazena em RF(8)
		"0010010110001000",	--Soma RF(5) com RF(8) e armazena em RF(8)
		"0010011010001000",	--Soma RF(6) com RF(8) e armazena em RF(8)
		"0010011110001000",	--Soma RF(7) com RF(8) e armazena em RF(8)
		"0001100000001000"	-- Armazena o valor de RF(8) em D(8)
	);


BEGIN

	PROCESS(I_rd,I_addr)
	BEGIN
		IF (I_rd='1') THEN
			I_data<=I(to_integer(unsigned(I_addr)));
		END IF;
		
	END PROCESS;
	
END arc_I;

 