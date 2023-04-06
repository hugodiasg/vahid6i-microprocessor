LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
--USE work.constants.all;

ENTITY bc IS
	PORT (
	clock,reset	: IN STD_LOGIC;
	--Sinais para o PC 
	PC_clr,PC_ld,PC_inc : OUT STD_LOGIC;
	--Sinais para o IR
	IR_data_out	: IN STD_LOGIC_VECTOR (7 downto 0); 
	IR_ld		: OUT STD_LOGIC;
	--Sinais para o I
	I_rd	: OUT STD_LOGIC;
	-- Leds para ver os estados
	leds	: OUT STD_LOGIC_VECTOR (3 downto 0);
	--Sinais de controle
	--Memd
	D_addr		:	OUT STD_LOGIC_VECTOR(7 downto 0); 
	D_rd,D_wr	:	OUT STD_LOGIC;
	--Mux
	RF_s1,RF_s0	: OUT STD_LOGIC;
	RF_W_data	: OUT STD_LOGIC_VECTOR(7 downto 0);
	--Regf
	RF_W_addr,RF_Rp_addr,RF_Rq_addr	: OUT STD_LOGIC_VECTOR(3 downto 0);
	RF_W_wr,RF_Rp_rd,RF_Rq_rd			: OUT STD_LOGIC;
	--ALU
	alu_s0,alu_s1	:	OUT STD_LOGIC;
	RF_Rp_zero		:  IN STD_LOGIC
	);
END bc;

ARCHITECTURE arc_bc OF bc IS
	TYPE type_state IS (Inicio,Busca1,Busca2,Busca3,Busca4,Decod,Carregar,Armazenar,Somar,Carregar_Const,Subtrair,Saltar_se_zero,Saltar);
	SIGNAL current_state : type_state:=Inicio;
	SIGNAL next_state		: type_state:=Inicio;
	SIGNAL first_byte,second_byte	: STD_LOGIC_VECTOR(7 downto 0);
--	SIGNAL leds_aux		: STD_LOGIC_VECTOR(7 downto 0);
	
BEGIN
--Valor da Constante para o estado Carregar Const.
RF_W_data<=second_byte;

	att_sync: PROCESS(clock,reset,next_state)
	BEGIN

		IF (rising_edge(clock))THEN
			current_state<=next_state;
			--leds<=leds_aux;
			CASE next_state IS
				WHEN Inicio =>
					PC_clr<='1';
					PC_inc<='0';
				WHEN Busca1 =>
					I_rd<='1';	
					IR_ld<='1';
					--CONTROLANDO SINAIS DE ESTADOS ANTERIORES
					PC_clr<='0';
					PC_ld<='0';
					--Sinais de controle
					--Memd
					D_rd<='0';
					D_wr<='0';
					--Regf
					RF_W_wr<='0';
					RF_Rp_rd<='0';
					RF_Rq_rd<='0';

				WHEN Busca2 =>
					--IR_ld<='1';
					PC_inc<='1';
					--I_rd<='1';	
					--CONTROLANDO SINAIS DE ESTADOS ANTERIORES
					--PC_inc<='1';
					--PC_clr<='0';
					--PC_ld<='0';
					--Sinais de controle
					--Memd
					--D_rd<='0';
					--D_wr<='0';
					--Regf
					--RF_W_wr<='0';
					--RF_Rp_rd<='0';
					--RF_Rq_rd<='0';
				WHEN Busca3 =>
				--IR_ld<='1';
				I_rd<='1';	
				IR_ld<='1';
				--CONTROLANDO SINAIS DE ESTADOS ANTERIORES
				PC_inc<='0';
				--PC_ld<='0';
				--Sinais de controle
				--Memd
				--D_rd<='0';
				--D_wr<='0';
				--Regf
				--RF_W_wr<='0';
				--RF_Rp_rd<='0';
				--RF_Rq_rd<='0';
				--IR_ld<='1';	
				WHEN Busca4 =>
				--IR_ld<='1';
				PC_inc<='1';
				--I_rd<='1';	
				--CONTROLANDO SINAIS DE ESTADOS ANTERIORES
				--PC_inc<='1';
				--PC_clr<='0';
				--PC_ld<='0';
				--Sinais de controle
				--Memd
				--D_rd<='0';
				--D_wr<='0';
				--Regf
				--RF_W_wr<='0';
				--RF_Rp_rd<='0';
				--RF_Rq_rd<='0';
				WHEN Carregar =>
				-- oooo	aaaa	dddddddd
				--	15-12	11-8	7-0
					D_addr<=second_byte;
					D_rd<='1';
					RF_s1<='0';
					RF_s0<='1';
					RF_W_addr<=first_byte(3 DOWNTO 0);
					RF_W_wr<='1';
				WHEN Armazenar=>
				-- oooo	aaaa	dddddddd
				--	15-12	11-8	7-0
					D_addr<=second_byte;
					D_wr<='1';
					RF_Rp_addr<=first_byte(3 DOWNTO 0);
					RF_Rp_rd<='1';	
				WHEN Somar=>
				-- oooo 	aaaa 	bbbb 	cccc
				-- 15-12 11-8	7-4	3-0
					RF_Rp_addr<=first_byte(3 DOWNTO 0); --Ra
					RF_Rp_rd<='1';
					RF_s1<='0';
					RF_s0<='0';
					RF_Rq_addr<=second_byte(7 DOWNTO 4);--Rb
					RF_Rq_rd<='1';
					RF_W_addr<=second_byte(3 DOWNTO 0);--Rc
					RF_W_wr<='1';
					alu_s1<='0';
					alu_s0<='1';
				WHEN Carregar_Const=>
				-- oooo 	aaaa 	cccccccc
				-- 15-12	11-8	7-0
					RF_s1<='1';
					RF_s0<='0';
					RF_W_addr<=first_byte(3 DOWNTO 0); --Ra
					RF_W_wr<='1';
				WHEN Subtrair=>
				-- oooo 	aaaa 	bbbb 	cccc
				-- 15-12 11-8	7-4	3-0
					RF_Rp_addr<=first_byte(3 DOWNTO 0); --Ra
					RF_Rp_rd<='1';
					RF_s1<='0';
					RF_s0<='0';
					RF_Rq_addr<=second_byte(7 DOWNTO 4);--Rb
					RF_Rq_rd<='1';
					RF_W_addr<=second_byte(3 DOWNTO 0);--Rc
					RF_W_wr<='1';
					alu_s1<='1';
					alu_s0<='0';
				WHEN Saltar_se_zero=>
					RF_Rp_addr<=first_byte(3 DOWNTO 0); --Ra
					RF_Rp_rd<='1';
				WHEN Saltar=>
					PC_ld<='1';
				WHEN Decod=>
				--CONTROLANDO SINAIS DE ESTADOS ANTERIORES
					PC_inc<='0';
				WHEN OTHERS=>
				
			END CASE;
		END IF;
	END PROCESS att_sync;

		states: PROCESS(IR_data_out,reset, current_state, RF_Rp_zero)
	BEGIN
		IF (reset='1') THEN
			next_state<=Inicio;
		ELSE
			CASE current_state IS
				WHEN Inicio =>
					next_state<=Busca1;
				WHEN Busca1 =>
					next_state<=Busca2;
				WHEN Busca2 =>
					next_state<=Busca3;
					first_byte<=IR_data_out;
				WHEN Busca3 =>
					next_state<=Busca4;
		
				--WHEN Busca4 =>
				--	next_state<=Busca5;
				WHEN Busca4 =>
					next_state<=Decod;
					second_byte<=IR_data_out;
				WHEN Decod =>
						CASE first_byte(7 DOWNTO 4) IS 
							WHEN "0000" =>
								next_state<=Carregar;
								--leds_aux<="00001000";
							WHEN "0001" =>
								next_state<=Armazenar;
								--leds_aux<="00010000";
							WHEN "0010" =>
								next_state<=Somar;
								--leds_aux<="00100000";
							WHEN "0011" =>
								next_state<=Carregar_Const;
								--leds_aux<="01000000";
							WHEN "0100" =>
								next_state<=Subtrair;
								--leds_aux<="10000000";
							WHEN "0101" =>
								next_state<=Saltar_se_zero;
								--leds_aux<="11000000";
							WHEN OTHERS => next_state<=Busca1;
						END CASE;
					
					
				WHEN Saltar_se_zero =>
					IF RF_Rp_zero='1' THEN
						next_state<=Saltar;
						--leds_aux<="11100000";
					ELSE
						next_state<=Busca1;
						--leds_aux<="00000010";
					END IF;
				WHEN Saltar => 
					next_state<=Busca1;
					--leds_aux<="00000010";
				WHEN OTHERS => 
					next_state<=Busca1;
					--leds_aux<="00000010";
			END CASE;
		END IF;
	END PROCESS states;

	leds_process: PROCESS(current_state)
	BEGIN
			CASE current_state IS
				WHEN Inicio =>
					leds<="0001";
				WHEN Busca1 =>
					leds<="0010";
				WHEN Busca2 =>
					leds<="0011";
				WHEN Busca3 =>
					leds<="0100";
				WHEN Busca4 =>
					leds<="0101";
				WHEN Decod =>
					leds<="0110";

				WHEN Carregar =>
					leds<="0111";
				WHEN Armazenar =>
					leds<="1000";
				WHEN Somar =>
					leds<="1001";
				WHEN Carregar_const =>
					leds<="1010";
				WHEN Subtrair =>
					leds<="1011";
				WHEN Saltar_se_zero =>
					leds<="1100";
				WHEN Saltar => 
					leds<="1101";
				WHEN OTHERS => 
					leds<="1111";
			END CASE;
	END PROCESS leds_process;
END arc_bc;

 
