-- Registrador Files

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--USE work.constants.all;

ENTITY regf IS
	PORT (
		W_addr,Rp_addr,Rq_addr	: IN STD_LOGIC_VECTOR(3 downto 0);
		W_wr,Rp_rd,Rq_rd,clock	: IN STD_LOGIC;
		W_data						: IN STD_LOGIC_VECTOR(7 downto 0);
		Rq_data,Rp_data			: OUT STD_LOGIC_VECTOR(7 downto 0)
	); 
--	zero				:	OUT STD_LOGIC);
END regf;

ARCHITECTURE arch OF regf IS 
 TYPE RAM IS ARRAY(natural RANGE <>) OF std_logic_vector (7 DOWNTO 0);
	SIGNAL rf: RAM(0 to 20);
BEGIN
	PROCESS(W_addr,Rp_addr,Rq_addr,W_wr,Rp_rd,Rq_rd,clock,W_data)
	BEGIN
		
			-- Ler para Rq Assíncrono
			IF (Rq_rd='1') THEN
				Rq_data<=rf(to_integer(unsigned(Rq_addr)));
			END IF;	
			
			-- Ler para Rp Assíncrono
			IF (Rp_rd='1') THEN
					Rp_data<=rf(to_integer(unsigned(Rp_addr)));
			END IF;
			
			-- Escrever no rf Síncrono
			IF (rising_edge(clock)AND W_wr='1') THEN
					rf(to_integer(unsigned(W_addr)))<=W_data;
			END IF;
	END PROCESS;
	
END arch;

