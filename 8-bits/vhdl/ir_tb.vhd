library ieee;
use ieee.std_logic_1164.all;

entity ir_tb is

end ir_tb;


architecture ir_tb_bhv of ir_tb is 

    component ir

		PORT (
			clock			: IN STD_LOGIC;
			IR_data_in		: IN STD_LOGIC_VECTOR (7 downto 0); 
			IR_ld			: IN STD_LOGIC;
			IR_data_out	: BUFFER STD_LOGIC_VECTOR (7 downto 0):="ZZZZZZZZ"
	
		);

    end component;

    for ir_0: ir use entity work.ir;

    signal clock            : STD_LOGIC;
    signal IR_data_in		:STD_LOGIC_VECTOR (7 downto 0):="00001111";
    signal IR_ld			: STD_LOGIC;
	signal IR_data_out		:STD_LOGIC_VECTOR (7 downto 0);

   
begin

    ir_0: ir PORT MAP(clock,IR_data_in,IR_ld,IR_data_out);
	IR_ld<='0','1' after 20 ns;
    process
    begin
            clock <= '0';
            wait for (0.5 ns); -- Tempo de espera metade do período
            clock <= '1';
            wait for (0.5 ns); -- Tempo de espera metade do período
    end process;


    
end ir_tb_bhv;