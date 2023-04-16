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
	IR_data_out	: IN STD_LOGIC_VECTOR (15 downto 0); 
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
	TYPE type_state IS (Inicio,Busca1,Busca2,Decod,Carregar,Armazenar,Somar,Carregar_Const,Subtrair,Saltar_se_zero,Saltar);
	SIGNAL current_state : type_state:=Inicio;
	SIGNAL next_state		: type_state:=Inicio;
--	SIGNAL leds_aux		: STD_LOGIC_VECTOR(7 downto 0);
	
BEGIN
--Valor da Constante para o estado Carregar Const.


	att: PROCESS(clock,reset,next_state)
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
					--PC_inc<='1';
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
					PC_inc<='1';
				WHEN Carregar =>
				-- oooo	aaaa	dddddddd
				--	15-12	11-8	7-0
					D_addr<=IR_data_out(7 DOWNTO 0);
					D_rd<='1';
					RF_s1<='0';
					RF_s0<='1';
					RF_W_addr<=IR_data_out(11 DOWNTO 8);
					RF_W_wr<='1';
				--CONTROLANDO SINAIS DE ESTADOS ANTERIORES
					IR_ld<='0';
					PC_inc<='0';
					I_rd<='0';	
				WHEN Armazenar=>
				-- oooo	aaaa	dddddddd
				--	15-12	11-8	7-0
					D_addr<=IR_data_out(7 DOWNTO 0);
					D_wr<='1';
					RF_Rp_addr<=IR_data_out(11 DOWNTO 8);
					RF_Rp_rd<='1';
				--CONTROLANDO SINAIS DE ESTADOS ANTERIORES
					IR_ld<='0';
					PC_inc<='0';
					I_rd<='0';	
				WHEN Somar=>
				-- oooo 	aaaa 	bbbb 	cccc
				-- 15-12 11-8	7-4	3-0
					RF_Rp_addr<=IR_data_out(11 DOWNTO 8); --Ra
					RF_Rp_rd<='1';
					RF_s1<='0';
					RF_s0<='0';
					RF_Rq_addr<=IR_data_out(7 DOWNTO 4);--Rb
					RF_Rq_rd<='1';
					RF_W_addr<=IR_data_out(3 DOWNTO 0);--Rc
					RF_W_wr<='1';
					alu_s1<='0';
					alu_s0<='1';
				
				WHEN Carregar_Const=>
				-- oooo 	aaaa 	cccccccc
				-- 15-12	11-8	7-0
					RF_s1<='1';
					RF_s0<='0';
					RF_W_addr<=IR_data_out(11 DOWNTO 8); --Ra
					RF_W_wr<='1';
					RF_W_data<=IR_data_out(7 DOWNTO 0);
				WHEN Subtrair=>
				-- oooo 	aaaa 	bbbb 	cccc
				-- 15-12 11-8	7-4	3-0
					RF_Rp_addr<=IR_data_out(11 DOWNTO 8); --Ra
					RF_Rp_rd<='1';
					RF_s1<='0';
					RF_s0<='0';
					RF_Rq_addr<=IR_data_out(7 DOWNTO 4);--Rb
					RF_Rq_rd<='1';
					RF_W_addr<=IR_data_out(3 DOWNTO 0);--Rc
					RF_W_wr<='1';
					alu_s1<='1';
					alu_s0<='0';
				WHEN Saltar_se_zero=>
					RF_Rp_addr<=IR_data_out(11 DOWNTO 8); --Ra
					RF_Rp_rd<='1';
					
				WHEN Saltar=>
					PC_ld<='1';
				WHEN Decod=>
				--CONTROLANDO SINAIS DE ESTADOS ANTERIORES
					PC_inc<='0';
					IR_ld<='0';
				WHEN OTHERS=>
				
			END CASE;
		END IF;
	END PROCESS att;
	
		states: PROCESS(IR_data_out,reset, current_state, RF_Rp_zero)
	BEGIN
		IF (reset='1') THEN
			next_state<=Inicio;
			--leds_aux<="00000001";
		ELSE
			CASE current_state IS
				WHEN Inicio =>
					next_state<=Busca1;
					--leds_aux<="00000010";
				WHEN Busca1 =>
					next_state<=Busca2;
					--leds_aux<="00000010";
				WHEN Busca2 =>
					--IF(NOT(IR_data_out="UUUUUUUUUUUUUUUU")) THEN
							next_state<=Decod;
							--leds_aux<="00000100";
					--END IF;
				WHEN Decod =>
					CASE IR_data_out(15 DOWNTO 12) IS --15 até 12
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
				WHEN Decod =>
					leds<="0100";

				WHEN Carregar =>
					leds<="0101";
				WHEN Armazenar =>
					leds<="0110";
				WHEN Somar =>
					leds<="0111";
				WHEN Carregar_const =>
					leds<="1000";
				WHEN Subtrair =>
					leds<="1001";
				WHEN Saltar_se_zero =>
					leds<="1010";
				WHEN Saltar => 
					leds<="1011";
				WHEN OTHERS => 
					leds<="1111";
			END CASE;
	END PROCESS leds_process;
END arc_bc;

 

