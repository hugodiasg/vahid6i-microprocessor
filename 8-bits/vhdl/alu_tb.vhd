library ieee;
use ieee.std_logic_1164.all;

entity alu_tb is

end alu_tb;


architecture alu_tb_bhv of alu_tb is 

    component alu

        port (
            a,b		:	IN STD_LOGIC_VECTOR(15 downto 0); 
		    s0,s1	:	IN STD_LOGIC;
		    Rp_zero	:   OUT STD_LOGIC;
		    ans		:   OUT STD_LOGIC_VECTOR(15 downto 0)
        );

    end component;

    for alu_0: alu use entity work.alu;

    signal a,b,ans		: STD_LOGIC_VECTOR(15 downto 0); 
	signal s0,s1,Rp_zero: STD_LOGIC;
		    

begin

    alu_0: alu port map (a,b,s0,s1,Rp_zero,ans);

    s1<='1','0' after 20 ps;
    s0<='0','1' after 20 ps;
    a<="0000000000000000","0000000000000100" after 20 ps,"0000000000000100" after 1000 ps;
    b<="0000000000000000","0000000000000010" after 20 ps,"0000000000000010" after 1000 ps;
    
    
end alu_tb_bhv;