LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--USE work.constants.all;

ENTITY I IS
	PORT (
		clock, I_rd	: IN STD_LOGIC;
		I_data		: OUT STD_LOGIC_VECTOR (7 downto 0);
		I_addr		: IN STD_LOGIC_VECTOR (7 downto 0):="00000000"
	); 
END I;

ARCHITECTURE arc_I OF I IS
-- 6 Intruções
TYPE RAM IS ARRAY(natural RANGE <>) OF std_logic_vector (7 DOWNTO 0);
SIGNAL I_ram: RAM(0 to 31):= (
	"00000000", "00000000", -- Carrega D(0) em RF(0)
	"00000001", "00000001", -- Carrega D(1) em RF(1)
	"00000010", "00000010", -- Carrega D(2) em RF(2)
	"00000011", "00000011", -- Carrega D(3) em RF(3)
	"00000100", "00000100", -- Carrega D(4) em RF(4)
	"00000101", "00000101", -- Carrega D(5) em RF(5)
	"00000110", "00000110", -- Carrega D(6) em RF(6)
	"00000111", "00000111", -- Carrega D(7) em RF(7)
	"00100000", "00011000", -- Soma RF(0) com RF(1) e armazena em RF(8)
	"00011000", "00000010",  -- Armazena o valor de RF(8) em D(8)
	"00100011", "10001000", -- Soma RF(3) com RF(8) e armazena em RF(8)
	"00100100", "10001000", -- Soma RF(4) com RF(8) e armazena em RF(8)
	"00100101", "10001000", -- Soma RF(5) com RF(8) e armazena em RF(8)
	"00100110", "10001000", -- Soma RF(6) com RF(8) e armazena em RF(8)
	"00011000", "00010000",  -- Armazena o valor de RF(8) em D(8)
	"00011000", "00010000"  -- Armazena o valor de RF(8) em D(8)


);



BEGIN

	PROCESS(I_rd,I_addr)
	BEGIN
		IF (I_rd='1') THEN
			I_data<=I_ram(to_integer(unsigned(I_addr)));
		END IF;
		
	END PROCESS;
	
END arc_I;

 