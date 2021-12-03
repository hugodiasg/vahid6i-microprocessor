-- memd 256x16

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.constants.all;

ENTITY memd IS
	PORT (
		addr				:	IN STD_LOGIC_VECTOR(tamanho_endereco_memd-1 downto 0); 
		rd,wr,clock		:	IN STD_LOGIC;
		D_W_data			:	IN STD_LOGIC_VECTOR(tamanho-1 downto 0);
		D_R_data			:	OUT STD_LOGIC_VECTOR(tamanho-1 downto 0)
	); 
--	zero				:	OUT STD_LOGIC);
END memd;

ARCHITECTURE arch OF memd IS 
	--Inicialização dos dados da memória
	SIGNAL D: ROM(0 to 20):=(
		"0000000000000101",	--5
		"0000000000000111",	--7
		"0000000000001000",	--8
		"0000000000000001",	--1
		"0000000000000100",	--4
		"0000000000000101",	--5
		"0000000000000110",	--6
		"0000000000000011",	--3
		"0000000000001000",	--8
		"0000000000000001",	--1
		"0000000000001001",	--9
		"0000000000000001",	--1
		"0000000000000010",	--2
		"0000000000000100",	--4
		"0000000000000001",	--1
		"0000000000000011",	--3
		"0000000000000101",	--5
		"0000000000000110",	--6
		"0000000000001001",	--9
		"0000000000000100",	--4
		"0000000000000011"	--3
	);
	BEGIN
		PROCESS(addr,rd,wr,clock,D_W_data,D)
			BEGIN
			--Opções de operações com a memd
			IF (rd='1') THEN
				D_R_data<=D(to_integer(unsigned(addr)));
			ELSIF(rising_edge(clock) AND wr='1') THEN
				D(to_integer(unsigned(addr)))<=D_W_data;
			END IF;	
		END PROCESS;
	
END arch;

