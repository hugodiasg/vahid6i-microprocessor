library ieee;
use ieee.std_logic_1164.all;


entity vahid6i_memd_I_tb is

end vahid6i_memd_I_tb;


architecture vahid6i_memd_I_tb_bhv of vahid6i_memd_I_tb is 

    COMPONENT I 
        PORT (
            clock, I_rd	: IN STD_LOGIC;
            I_data		: OUT STD_LOGIC_VECTOR (15 downto 0);
            I_addr		: IN STD_LOGIC_VECTOR (15 downto 0)
        ); 
    END COMPONENT;

    COMPONENT memd
        PORT (
            D_addr				:	IN STD_LOGIC_VECTOR(7 downto 0); 
            D_rd,D_wr,clock		:	IN STD_LOGIC;
            D_W_data			:	IN STD_LOGIC_VECTOR(15 downto 0);
            D_R_data			:	OUT STD_LOGIC_VECTOR(15 downto 0)
        ); 
            --	zero				:	OUT STD_LOGIC);
    END COMPONENT;


    COMPONENT vahid6i
        PORT (
                clock,reset	: IN STD_LOGIC;
                led_clock 	: OUT STD_LOGIC;
                --led_clock	: OUT STD_LOGIC;
                -- Leds para ver os estados
                leds		: OUT STD_LOGIC_VECTOR (3 downto 0);
                -- MemD
                D_addr		: OUT STD_LOGIC_VECTOR(7 downto 0); 
                D_rd,D_wr	: OUT STD_LOGIC;
                D_W_data	: OUT STD_LOGIC_VECTOR(15 downto 0);
                D_R_data	: IN STD_LOGIC_VECTOR(15 downto 0);
                -- I
                I_rd		: OUT STD_LOGIC;
                I_data		: IN STD_LOGIC_VECTOR (15 downto 0);
                I_addr		: OUT STD_LOGIC_VECTOR (15 downto 0)
        ); 	
    END COMPONENT ;


    for I_0: I use entity work.I;
    for memd_0: memd use entity work.memd;
    for vahid6i_0: vahid6i use entity work.vahid6i;

    signal clock : std_logic := '0';

    -- Sinais I
    signal I_rd     	: STD_LOGIC;
    signal I_data		: STD_LOGIC_VECTOR (15 downto 0);
    signal I_addr		: STD_LOGIC_VECTOR (15 downto 0);
    -- Sinais memD
    signal D_addr		: STD_LOGIC_VECTOR(7 downto 0); 
    signal D_rd,D_wr  	: STD_LOGIC;
    signal D_W_data		: STD_LOGIC_VECTOR(15 downto 0);
    signal D_R_data		: STD_LOGIC_VECTOR(15 downto 0);
	-- Sinais vahid 6i	    
    signal reset        : STD_LOGIC;
    signal led_clock 	: STD_LOGIC;
        -- Leds para ver os estados
    signal leds		    : STD_LOGIC_VECTOR (3 downto 0);
        -- MemD
    --signal D_addr		: STD_LOGIC_VECTOR(7 downto 0); 
    --signal D_rd,D_wr	: STD_LOGIC;
    --signal D_W_data	: STD_LOGIC_VECTOR(15 downto 0);
    --signal D_R_data	: STD_LOGIC_VECTOR(15 downto 0);
        -- I
    --signal I_rd		: STD_LOGIC;
    --signal I_data		: STD_LOGIC_VECTOR (15 downto 0);
    --signal I_addr		: STD_LOGIC_VECTOR (15 downto 0)

    -- constantes
    --signal count_max : integer :=5;
    --constant countmax : integer := 10;
    
begin

    I_0: I port map (clock,I_rd,I_data,I_addr); 
    memd_0: memd port map (D_addr,D_rd,D_wr,clock,D_W_data,D_R_data);
    vahid6i_0: vahid6i port map (clock,reset,led_clock,leds,D_addr,D_rd,D_wr,D_W_data,D_R_data,I_rd,I_data,I_addr); 	

    reset<='1', '0' after 1 ns;
     -- Clock alternado em uma frequência f
     process
     begin
             clock <= '0';
             wait for 0.5 ns; -- Tempo de espera metade do período
             clock <= '1';
             wait for (0.5 ns); -- Tempo de espera metade do período
     end process;
 
    
    
end vahid6i_memd_I_tb_bhv;
