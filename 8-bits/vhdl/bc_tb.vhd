library ieee;
use ieee.std_logic_1164.all;

entity bc_tb is

end bc_tb;


architecture bc_tb_bhv of bc_tb is 

    component bc

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
	leds	: OUT STD_LOGIC_VECTOR (7 downto 0);
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
END component bc;

    for bc_0: bc use entity work.bc;

    signal clock,reset	:STD_LOGIC;
	--Sinais para o PC 
	signal PC_clr,PC_ld,PC_inc : STD_LOGIC;
	--Sinais para o IR
	signal IR_data_out	: STD_LOGIC_VECTOR (7 downto 0):="00001111"; 
	signal IR_ld		: STD_LOGIC;
	--Sinais para o I
	signal I_rd	: STD_LOGIC;
	-- Leds para ver os estados
	--leds	: OUT STD_LOGIC_VECTOR (7 downto 0);
	--Sinais de controle
	--Memd
	signal D_addr		:STD_LOGIC_VECTOR(7 downto 0); 
	signal D_rd,D_wr	:STD_LOGIC;
	--Mux
	signal RF_s1,RF_s0	: STD_LOGIC;
	signal RF_W_data	: STD_LOGIC_VECTOR(7 downto 0);
	--Regf
	signal RF_W_addr,RF_Rp_addr,RF_Rq_addr	: STD_LOGIC_VECTOR(3 downto 0);
	signal RF_W_wr,RF_Rp_rd,RF_Rq_rd			: STD_LOGIC;
	--ALU
	signal alu_s0,alu_s1	:STD_LOGIC;
	signal RF_Rp_zero		:STD_LOGIC:='0';
	signal leds	: STD_LOGIC_VECTOR (7 downto 0);
   
begin

    bc_0: bc PORT MAP(clock,reset,PC_clr,PC_ld,PC_inc,IR_data_out,IR_ld,I_rd,leds,D_addr,D_rd,D_wr,RF_s1,RF_s0,RF_W_data,RF_W_addr,RF_Rp_addr,RF_Rq_addr,RF_W_wr,RF_Rp_rd,RF_Rq_rd,alu_s0,alu_s1,RF_Rp_zero);
	reset<='1','0' after 7 ns;
	IR_data_out<="11110000" after 9 ns;
    process
    begin
            clock <= '0';
            wait for (0.5 ns); -- Tempo de espera metade do período
            clock <= '1';
            wait for (0.5 ns); -- Tempo de espera metade do período
    end process;


    
end bc_tb_bhv;