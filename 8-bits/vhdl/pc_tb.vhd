library ieee;
use ieee.std_logic_1164.all;

entity pc_tb is

end pc_tb;


architecture pc_tb_bhv of pc_tb is 

    component pc

        PORT (
		clock, PC_inc, PC_clr, PC_ld	: IN STD_LOGIC;
		IR_inc								: IN STD_LOGIC_VECTOR (7 downto 0);
		I_addr								: OUT STD_LOGIC_VECTOR (7 downto 0)
	); 

    end component;

    for pc_0: pc use entity work.pc;

    signal clock            : STD_LOGIC;
    signal PC_inc           : STD_LOGIC:='1';
    signal PC_clr, PC_ld	: STD_LOGIC:='1';
    signal IR_inc			: STD_LOGIC_VECTOR (7 downto 0):="00000000";
	signal I_addr			: STD_LOGIC_VECTOR (7 downto 0):="00000000";

   
begin

    pc_0: pc PORT MAP(clock,PC_inc,PC_clr,PC_ld,IR_inc,I_addr);

    process
    begin
            clock <= '0';
            wait for (0.5 ns); -- Tempo de espera metade do período
            clock <= '1';
            wait for (0.5 ns); -- Tempo de espera metade do período
    end process;


    
end pc_tb_bhv;