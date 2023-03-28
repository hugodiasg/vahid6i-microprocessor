-- div_freq de frequencia
library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_misc.all;
use ieee.numeric_std.all;

entity div_freq is
port ( 
		reset:			in			std_logic;
		clk_in:				in			std_logic;
		clk_out:			out		std_logic
		);
end div_freq;

architecture arch of div_freq is
signal sig_clk_in : std_logic;
signal sig_prescale: std_logic_vector(24 downto 0) := (others => ('0'));
begin
	process(reset,clk_in)
	begin
		if reset = '1' then
			sig_clk_in <= '0';
			sig_prescale <= (others => '0');
		elsif clk_in'event and clk_in = '1' then
			if sig_prescale = "1011111010111100000111111" then --  Escala= Freq/(2*Freq_desejada)-1
			-- if sig_prescale = "000000000000000000010" then --  Escala= Freq/(2*Freq_desejada)-1
				sig_prescale <= (others => '0');
				sig_clk_in <= not sig_clk_in;
			else
				sig_prescale <=sig_prescale + 1;
			end if;
		end if;
	end process;
	clk_out <= sig_clk_in;
end arch;


