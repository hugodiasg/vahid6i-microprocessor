-- Parte Operacional

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
USE work.constants.all;

ENTITY po_memd_tb IS
	PORT (
			-- Portas do MUX
			RF_s0,RF_s1	: IN STD_LOGIC;
			RF_W_data	: IN STD_LOGIC_VECTOR(tamanho_data_mux-1 DOWNTO 0);
			-----R_data		: IN STD_LOGIC_VECTOR(tamanho-1 DOWNTO 0);
			--Portas do REGF
			RF_W_wr,RF_Rp_rd,RF_Rq_rd,clock	: IN STD_LOGIC;
			RF_W_addr,RF_Rp_addr,RF_Rq_addr	: IN STD_LOGIC_VECTOR(tamanho_regf-1 downto 0);
			RF_Rp_zero								: OUT STD_LOGIC;
			--Portas ALU
			alu_s0,alu_s1	:	IN STD_LOGIC;
			--Portas Memd
			D_addr				:	IN STD_LOGIC_VECTOR(tamanho_endereco_memd-1 downto 0); 
			D_rd,D_wr			:	IN STD_LOGIC
			--W_data				:	IN STD_LOGIC_VECTOR(tamanho-1 downto 0);
			--R_data				:	OUT STD_LOGIC_VECTOR(tamanho-1 downto 0)
		); 

END po_memd_tb;

ARCHITECTURE arch OF po_memd_tb IS 

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
	
	FOR po_0: po USE ENTITY work.po;
	FOR memd_0: memd USE ENTITY work.memd;
	
	SIGNAL D_R_data,D_W_data: STD_LOGIC_VECTOR(tamanho-1 downto 0);
	
BEGIN

	po_0: po PORT MAP(RF_s0,RF_s1,RF_W_data,D_R_data,RF_W_wr,RF_Rp_rd,RF_Rq_rd,clock,RF_W_addr,RF_Rp_addr,RF_Rq_addr,RF_Rp_zero,alu_s0,alu_s1,D_W_data);
	memd_0: memd PORT MAP(D_addr,D_rd,D_wr,clock,D_W_data,D_R_data);
	
END arch;

