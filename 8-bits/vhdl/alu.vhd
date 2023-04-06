-- ALU 16 bits com funções de soma e subtração, e detecção igual a 0 da entrada A

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--USE work.constants.all;



ENTITY alu IS
	PORT (
		a,b		:	IN STD_LOGIC_VECTOR(7 downto 0); 
		s0,s1		:	IN STD_LOGIC;
		Rp_zero	:  OUT STD_LOGIC;
		ans		:	OUT STD_LOGIC_VECTOR(7 downto 0)
	); 
--	zero				:	OUT STD_LOGIC);
END alu;

ARCHITECTURE arch OF alu IS 
	
	BEGIN
	
		--Detectar se a entrada "a" é zero
		zero:PROCESS(a, b, s0, s1) 
		BEGIN
			IF (a="00000000") THEN
				Rp_zero<='1';
			ELSE
				Rp_Zero<='0';
			END IF;
		END PROCESS zero;
		
		--Opções de operações com a ALU
		cases: PROCESS(a, b, s0, s1)
			BEGIN
			IF (s1='0' AND s0='0') THEN
				ans<=a;														-- Passa "a" para a saida
			ELSIF (s1='0' AND s0='1') THEN
				ans<=std_logic_vector(unsigned(a)+unsigned(b));	-- Soma
			ELSIF (s1='1' AND s0='0') THEN
				ans<=std_logic_vector(unsigned(a)-unsigned(b)); --Subtração
			ELSE
				ans<="ZZZZZZZZ";								--Alta impedância
			END IF;	
		END PROCESS cases;
	
END arch;

