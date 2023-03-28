-- Parte Operacional

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--USE work.constants.all;

ENTITY po IS
	PORT (
			-- Portas do MUX
			RF_s0,RF_s1	: IN STD_LOGIC;
			RF_W_data	: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			D_R_data		: IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			--Portas do REGF
			RF_W_wr,RF_Rp_rd,RF_Rq_rd,clock	: IN STD_LOGIC;
			RF_W_addr,RF_Rp_addr,RF_Rq_addr	: IN STD_LOGIC_VECTOR(3 downto 0);
			RF_Rp_zero								: OUT STD_LOGIC;
			--Portas ALU
			alu_s0,alu_s1	:	IN STD_LOGIC;
			--Portas do PO
			D_W_data	: OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		); 

END po;

ARCHITECTURE arch_po OF po IS 
	COMPONENT muxf IS
		PORT(
			s1,s0				: IN STD_LOGIC;
			ans,D_R_data	: IN STD_LOGIC_VECTOR(15 downto 0);
			RF_W_data		: IN STD_LOGIC_VECTOR(7 downto 0);
			W_data			: OUT STD_LOGIC_VECTOR(15 downto 0)
		);
	END COMPONENT;
	
	COMPONENT regf IS
		PORT(
			W_addr,Rp_addr,Rq_addr	: IN STD_LOGIC_VECTOR(3 downto 0);
			W_wr,Rp_rd,Rq_rd,clock	: IN STD_LOGIC;
			W_data						: IN STD_LOGIC_VECTOR(15 downto 0);
			Rq_data,Rp_data			: OUT STD_LOGIC_VECTOR(15 downto 0)
		);
	END COMPONENT;
	
		COMPONENT alu IS
		PORT(
			a,b		:	IN STD_LOGIC_VECTOR(15 downto 0); 
			s0,s1		:	IN STD_LOGIC;
			Rp_zero	:  OUT STD_LOGIC;
			ans		:	OUT STD_LOGIC_VECTOR(15 downto 0)
		);
	END COMPONENT;
	
	SIGNAL ans,Rp_data,Rq_data,W_data: STD_LOGIC_VECTOR(15 downto 0);

FOR muxf_0: muxf USE ENTITY work.muxf;
FOR regf_0: regf USE ENTITY work.regf;
FOR alu_0: alu USE ENTITY work.alu;

BEGIN
	
	muxf_0: muxf PORT MAP(RF_s1,RF_s0,ans,D_R_data,RF_W_data,W_data);
	regf_0: regf PORT MAP(RF_W_addr,RF_Rp_addr,RF_Rq_addr,RF_W_wr,RF_Rp_rd,RF_Rq_rd,clock,W_data,Rq_data,Rp_data);
	alu_0: alu PORT MAP(Rp_data,Rq_data,alu_s0,alu_s1,RF_Rp_zero,ans);
	D_W_data<=Rp_data;
END arch_po;

