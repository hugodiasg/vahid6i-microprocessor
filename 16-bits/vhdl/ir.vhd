LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--USE work.constants.all;

ENTITY ir IS
	PORT (
		clock			: IN STD_LOGIC;
		IR_data_in	: IN STD_LOGIC_VECTOR (15 downto 0); 
		IR_ld			: IN STD_LOGIC;
		IR_data_out	: BUFFER STD_LOGIC_VECTOR (15 downto 0):="ZZZZZZZZZZZZZZZZ"
	);
END ir;

ARCHITECTURE arc_ir OF ir IS
BEGIN

	PROCESS(clock,IR_data_in,IR_ld)
	BEGIN
		IF (rising_edge(clock) AND IR_ld='1') THEN
			IR_data_out<=IR_data_in;
		END IF;
	END PROCESS;
	--IR_inc<=IR_data_out(7 DOWNTO 0);
END arc_ir;

 