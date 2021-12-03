-- Microprocessador vahid 6 instruções 16 bits

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.constants.all;

ENTITY vahid6i IS
	PORT (
			clock,reset	: IN STD_LOGIC;
			led_clock 	: OUT STD_LOGIC;
			--led_clock	: OUT STD_LOGIC;
			-- Leds para ver os estados
			leds			: OUT STD_LOGIC_VECTOR (3 downto 0)
		); 	
END vahid6i ;

ARCHITECTURE arch OF vahid6i IS 
	COMPONENT uc IS
		PORT (
			clock,reset	: IN STD_LOGIC;
			-- Leds para ver os estados
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
	END COMPONENT;
	
	COMPONENT I IS
		PORT (
			clock, I_rd	: IN STD_LOGIC;
			I_data		: OUT STD_LOGIC_VECTOR (tamanho-1 downto 0);
			I_addr		: IN STD_LOGIC_VECTOR (tamanho-1 downto 0)
	); 
	END COMPONENT;
	
	COMPONENT po IS
	PORT (
			-- Portas do MUX
			RF_s0,RF_s1	: IN STD_LOGIC;
			RF_W_data	: IN STD_LOGIC_VECTOR(tamanho_data_mux-1 DOWNTO 0);
			D_R_data		: IN STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0);
			--Portas do REGF
			RF_W_wr,RF_Rp_rd,RF_Rq_rd,clock	: IN STD_LOGIC;
			RF_W_addr,RF_Rp_addr,RF_Rq_addr	: IN STD_LOGIC_VECTOR(tamanho_regf-1 downto 0);
			RF_Rp_zero								: OUT STD_LOGIC;
			--Portas ALU
			alu_s0,alu_s1	:	IN STD_LOGIC;
			--Portas do PO
			D_W_data	: OUT STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0)
		); 
	END COMPONENT;
	
	COMPONENT memd IS
	PORT (
			addr				:	IN STD_LOGIC_VECTOR(tamanho_endereco_memd-1 downto 0); 
			rd,wr,clock		:	IN STD_LOGIC;
			D_W_data			:	IN STD_LOGIC_VECTOR(tamanho-1 downto 0);
			D_R_data			:	OUT STD_LOGIC_VECTOR(tamanho-1 downto 0)
		); 
	END COMPONENT;
	


	
	FOR uc_0: uc USE ENTITY work.uc;
	FOR I_0: I USE ENTITY work.I;
	FOR po_0: po USE ENTITY work.po;
	FOR memd_0: memd USE ENTITY work.memd;
	
	
	
	--Sinais I
	SIGNAL	I_rd					: STD_LOGIC;
	SIGNAL	I_data				: STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0);
	SIGNAL	I_addr				: STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0);
	
	--Sinais Memd
	SIGNAL 	D_R_data,D_W_data	: STD_LOGIC_VECTOR(tamanho-1 downto 0);
	
	--Sinais PC-PO
		-- Sinais MemD
			SIGNAL D_addr				: STD_LOGIC_VECTOR(tamanho_endereco_memd-1 downto 0); 
			SIGNAL D_rd,D_wr			: STD_LOGIC;
			--Sinais RegF
			SIGNAL RF_W_wr,RF_Rp_rd,RF_Rq_rd			: STD_LOGIC;
			SIGNAL RF_W_addr,RF_Rp_addr,RF_Rq_addr	: STD_LOGIC_VECTOR(tamanho_regf-1 downto 0);
			SIGNAL RF_Rp_zero								: STD_LOGIC;
			--Sinais Muxf
			SIGNAL RF_s0,RF_s1	: STD_LOGIC;
			SIGNAL RF_W_data	: STD_LOGIC_VECTOR(tamanho_data_mux-1 DOWNTO 0);
			--Sinais alu
			SIGNAL alu_s0,alu_s1	: STD_LOGIC;
BEGIN
	
	uc_0: uc PORT MAP(clock,reset,leds,I_addr,I_rd,I_data,D_addr,D_rd,D_wr,RF_W_wr,RF_Rp_rd,RF_Rq_rd,RF_W_addr,RF_Rp_addr,RF_Rq_addr,RF_Rp_zero	,RF_s0,RF_s1,RF_W_data,alu_s0,alu_s1);
	I_0: 	I PORT MAP(clock,I_rd,I_data,I_addr);
	po_0: po PORT MAP(RF_s0,RF_s1,RF_W_data,D_R_data,RF_W_wr,RF_Rp_rd,RF_Rq_rd,clock,RF_W_addr,RF_Rp_addr,RF_Rq_addr,RF_Rp_zero,alu_s0,alu_s1,D_W_data);
	memd_0: memd PORT MAP(D_addr,D_rd,D_wr,clock,D_W_data,D_R_data);
	
	led_clock<=clock;
END arch;

