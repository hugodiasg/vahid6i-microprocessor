-- Unidade de Controle

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.constants.all;

ENTITY uc IS
	PORT (
			clock,reset	: IN STD_LOGIC;
			-- Leds para ver o opcode
			leds	: OUT STD_LOGIC_VECTOR (3 downto 0);
			-- Sinais I
			I_addr		: OUT STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0);
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

END uc;

ARCHITECTURE arch OF uc IS 
	COMPONENT bc IS
			PORT (
				clock,reset	: IN STD_LOGIC;
				--Sinais para o PC 
				PC_clr,PC_ld,PC_inc : OUT STD_LOGIC;
				--Sinais para o IR
				IR_data_out	: IN STD_LOGIC_VECTOR (tamanho-1 downto 0); 
				IR_ld			: OUT STD_LOGIC;
				--Sinais para o I
				I_rd	: OUT STD_LOGIC;
				-- Leds para ver os estados
				--leds	: OUT STD_LOGIC_VECTOR (7 downto 0);
				--Sinais de controle
				--Memd
				D_addr		:	OUT STD_LOGIC_VECTOR(tamanho_endereco_memd-1 downto 0); 
				D_rd,D_wr	:	OUT STD_LOGIC;
				--Mux
				RF_s1,RF_s0	: OUT STD_LOGIC;
				RF_W_data	: OUT STD_LOGIC_VECTOR(tamanho_data_mux-1 downto 0);
				--Regf
				RF_W_addr,RF_Rp_addr,RF_Rq_addr	: OUT STD_LOGIC_VECTOR(tamanho_regf-1 downto 0);
				RF_W_wr,RF_Rp_rd,RF_Rq_rd			: OUT STD_LOGIC;
				--ALU
				alu_s0,alu_s1	:	OUT STD_LOGIC;
				RF_Rp_zero		:  IN STD_LOGIC
			);
	END COMPONENT;
	
	COMPONENT pc IS
		PORT(
			clock, PC_inc, PC_clr, PC_ld	: IN STD_LOGIC;
			IR_inc								: IN STD_LOGIC_VECTOR (7 downto 0);
			I_addr								: OUT STD_LOGIC_VECTOR (tamanho-1 downto 0)
		);
	END COMPONENT;
	
		COMPONENT ir IS
		PORT(
			clock			: IN STD_LOGIC;
			IR_data_in	: IN STD_LOGIC_VECTOR (tamanho-1 downto 0); 
			IR_ld			: IN STD_LOGIC;
			IR_data_out	: BUFFER STD_LOGIC_VECTOR (tamanho-1 downto 0):="ZZZZZZZZZZZZZZZZ"
			--IR_inc		: OUT STD_LOGIC_VECTOR (7 downto 0)
		);
	END COMPONENT;
	
	FOR bc_0: bc USE ENTITY work.bc;
	FOR pc_0: pc USE ENTITY work.pc;
	FOR ir_0: ir USE ENTITY work.ir;
	
	SIGNAL PC_ld,PC_clr,PC_inc,IR_ld	: STD_LOGIC;
	SIGNAL IR_data_out					: STD_LOGIC_VECTOR (tamanho-1 downto 0):="0000000000000000";
	--SIGNAL leds								: STD_LOGIC_VECTOR (7 downto 0);
	--SIGNAL IR_inc							: STD_LOGIC_VECTOR (7 downto 0):=IR_data_out(7 DOWNTO 0);
BEGIN
	
	bc_0: bc PORT MAP(clock,reset,PC_clr,PC_ld,PC_inc,IR_data_out,IR_ld,I_rd,D_addr,D_rd,D_wr,RF_s1,RF_s0,RF_W_data,RF_W_addr,RF_Rp_addr,RF_Rq_addr,RF_W_wr,RF_Rp_rd,RF_Rq_rd,alu_s0,alu_s1,RF_Rp_zero);
	pc_0: pc PORT MAP(clock, PC_inc, PC_clr, PC_ld,IR_data_out(7 DOWNTO 0),I_addr);
	ir_0: ir PORT MAP(clock,I_data,IR_ld,IR_data_out);
	
	leds<=IR_data_out(15 downto 12);
END arch;

