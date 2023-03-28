--Constantes
library ieee; 
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

package constants is
    -- Tamanhos
    constant tamanho						: INTEGER := 16;
	 constant tamanho_regf				: INTEGER := 4;
	 constant tamanho_data_mux			: INTEGER := 8;
	 constant tamanho_endereco_memd	: INTEGER := 8;
	 constant tamanho_memd				: INTEGER :=21;
	 constant tamanho_opcode			: INTEGER:=4;
	 
	 --Estados
	 TYPE type_state IS (Inicio,Busca1,Busca2,Decod,Carregar,Armazenar,Somar,Carregar_Const,Subtrair,Saltar_se_zero,Saltar);
	 TYPE RAM IS ARRAY(natural RANGE <>) OF std_logic_vector (15 DOWNTO 0);
	 TYPE ROM IS ARRAY(natural RANGE <>) OF std_logic_vector (15 DOWNTO 0);
end package;

