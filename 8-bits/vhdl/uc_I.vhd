-- Unidade de Controle e Reg de Instruções

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.constants.all;

ENTITY uc_I IS
	PORT (
			clock,reset	: IN STD_LOGIC;
			-- Leds para ver os estados
			leds	: OUT STD_LOGIC_VECTOR (7 downto 0);
			-- Sinais MemD
			D_addr				:	OUT STD_LOGIC_VECTOR(tamanho_endereco_memd-1 downto 0); 
			D_rd,D_wr			:	OUT STD_LOGIC;
			--Sinais RegF
			RF_W_wr,RF_Rp_rd,RF_Rq_rd			: OUT STD_LOGIC;
			RF_W_addr,RF_Rp_addr,RF_Rq_addr	: OUT STD_LOGIC_VECTOR(tamanho_regf-1 downto 0);
			RF_Rp_zero								: IN STD_LOGIC;
			--Sinais Muxf
			RF_s0,RF_s1	: OUT STD_LOGIC;
			RF_W_data	: OUT STD_LOGIC_VECTOR(tamanho_data_mux-1 DOWNTO 0);
			--Sinais alu
			alu_s0,alu_s1	:	OUT STD_LOGIC
		); 	
END uc_I ;

ARCHITECTURE arch OF uc_I IS 
	COMPONENT uc IS
		PORT (
			clock,reset	: IN STD_LOGIC;
			-- Leds para ver os estados
			leds	: OUT STD_LOGIC_VECTOR (7 downto 0);
			-- Sinais I
			I_addr		: INOUT STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0);
			I_rd			: OUT STD_LOGIC;
			I_data		: IN STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0);
			-- Sinais MemD
			D_addr				:	OUT STD_LOGIC_VECTOR(tamanho_endereco_memd-1 downto 0); 
			D_rd,D_wr			:	OUT STD_LOGIC;
			--Sinais RegF
			RF_W_wr,RF_Rp_rd,RF_Rq_rd			: OUT STD_LOGIC;
			RF_W_addr,RF_Rp_addr,RF_Rq_addr	: OUT STD_LOGIC_VECTOR(tamanho_regf-1 downto 0);
			RF_Rp_zero								: IN STD_LOGIC;
			--Sinais Muxf
			RF_s0,RF_s1	: OUT STD_LOGIC;
			RF_W_data	: OUT STD_LOGIC_VECTOR(tamanho_data_mux-1 DOWNTO 0);
			--Sinais alu
			alu_s0,alu_s1	:	OUT STD_LOGIC
		); 
	END COMPONENT;
	
	COMPONENT I IS
		PORT (
			clock, I_rd	: IN STD_LOGIC;
			I_data		: OUT STD_LOGIC_VECTOR (tamanho-1 downto 0);
			I_addr		: INOUT STD_LOGIC_VECTOR (tamanho-1 downto 0)
	); 
	END COMPONENT;
	
	
	FOR uc_0: uc USE ENTITY work.uc;
	FOR I_0: I USE ENTITY work.I;
	
	SIGNAL	I_rd		: STD_LOGIC;
	SIGNAL	I_data	: STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0);
	SIGNAL	I_addr	: STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0);
	
BEGIN
	
	uc_0: uc PORT MAP(clock,reset,leds,I_addr,I_rd,I_data,D_addr,D_rd,D_wr,RF_W_wr,RF_Rp_rd,RF_Rq_rd,RF_W_addr,RF_Rp_addr,RF_Rq_addr,RF_Rp_zero,RF_s0,RF_s1,RF_W_data,alu_s0,alu_s1);
	I_0: 	I PORT MAP(clock,I_rd,I_data,I_addr);
	
END arch;

