LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--USE work.constants.all;

ENTITY pc IS
	PORT (
		clock, PC_inc, PC_clr, PC_ld	: IN STD_LOGIC;
		IR_inc								: IN STD_LOGIC_VECTOR (7 downto 0);
		I_addr								: OUT STD_LOGIC_VECTOR (15 downto 0)
	); 
END pc;

ARCHITECTURE arc_pc OF pc IS
SIGNAL PC_count	: STD_LOGIC_VECTOR (15 downto 0):="0000000000000000";
--SIGNAL sig_I_addr	: STD_LOGIC_VECTOR (15 downto 0);
BEGIN

	PROCESS(clock,PC_ld)
	BEGIN
		IF (rising_edge(clock)) THEN
				IF (PC_inc='1') THEN
					PC_count<=std_logic_vector(unsigned(PC_count) + "0000000000000001");
				ELSIF (PC_clr='1') THEN
					PC_count<="0000000000000000";	
				ELSIF (PC_ld='1') THEN
					PC_count<=std_logic_vector(unsigned(PC_count)+("00000000" & unsigned(IR_inc)));		
				END IF;
				IF (PC_count>"0000000000001110") THEN	
					PC_count<="0000000000000000";
				END IF;
		END IF;

	END PROCESS;

		I_addr<=PC_count;
	
	

	--PC_incrementado<=std_logic_vector((unsigned(("00000000" & IR_inc)) + unsigned(I_addr))-"0000000000000001");
END arc_pc;

 