library ieee;
use ieee.std_logic_1164.all;

entity uc_I_tb is

end uc_I_tb;


architecture uc_I_tb_bhv of uc_I_tb is 

    component uc

		PORT (
			clock,reset	: IN STD_LOGIC;
			-- Sinais I
			I_addr		: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			I_rd			: OUT STD_LOGIC;
			leds	: OUT STD_LOGIC_VECTOR (7 downto 0);
			I_data		: IN STD_LOGIC_VECTOR(7 DOWNTO 0);
			-- Sinais MemD
			D_addr				:	OUT STD_LOGIC_VECTOR(7 downto 0); 
			D_rd,D_wr			:	OUT STD_LOGIC;
			--Sinais RegF
			RF_W_wr,RF_Rp_rd,RF_Rq_rd			: OUT STD_LOGIC;
			RF_W_addr,RF_Rp_addr,RF_Rq_addr	: OUT STD_LOGIC_VECTOR(3 downto 0);
			RF_Rp_zero								: IN STD_LOGIC;
			--Sinais Muxf
			RF_s0,RF_s1	: OUT STD_LOGIC;
			RF_W_data	: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
			--Sinais alu
			alu_s0,alu_s1	:	OUT STD_LOGIC
		); 
END component uc;

COMPONENT I IS
	PORT (
		clock, I_rd	: IN STD_LOGIC;
		I_data		: OUT STD_LOGIC_VECTOR (7 downto 0);
		I_addr		: IN STD_LOGIC_VECTOR (7 downto 0):="00000000"
	); 
END COMPONENT;

signal clock, reset : STD_LOGIC;
-- Sinais I
signal I_addr : STD_LOGIC_VECTOR(7 DOWNTO 0);
signal I_rd : STD_LOGIC;
signal leds : STD_LOGIC_VECTOR(7 DOWNTO 0);
signal I_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
-- Sinais MemD
signal D_addr : STD_LOGIC_VECTOR(7 downto 0);
signal D_rd, D_wr : STD_LOGIC;
--Sinais RegF
signal RF_W_wr, RF_Rp_rd, RF_Rq_rd : STD_LOGIC;
signal RF_W_addr, RF_Rp_addr, RF_Rq_addr : STD_LOGIC_VECTOR(3 downto 0);
signal RF_Rp_zero : STD_LOGIC:='0';
--Sinais Muxf
signal RF_s0, RF_s1 : STD_LOGIC;
signal RF_W_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
--Sinais alu
signal alu_s0, alu_s1 : STD_LOGIC;
   
begin

    uc_0: uc PORT MAP(clock,reset,I_addr,I_rd,leds,I_data,D_addr,D_rd,D_wr,RF_W_wr,RF_Rp_rd,RF_Rq_rd,RF_W_addr,RF_Rp_addr,RF_Rq_addr,RF_Rp_zero,RF_s0,RF_s1,RF_W_data,alu_s0,alu_s1);
	I_0: I port map (clock,I_rd,I_data,I_addr); 
	reset<='1','0' after 7 ns;
    process
    begin
            clock <= '0';
            wait for (0.5 ns); -- Tempo de espera metade do período
            clock <= '1';
            wait for (0.5 ns); -- Tempo de espera metade do período
    end process;


    
end uc_I_tb_bhv;