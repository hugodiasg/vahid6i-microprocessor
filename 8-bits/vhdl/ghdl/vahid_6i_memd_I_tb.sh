
ghdl -a ../alu.vhd
ghdl -a ../regf.vhd
ghdl -a ../muxf.vhd
ghdl -a ../po.vhd

ghdl -a ../ir.vhd
ghdl -a ../pc.vhd
ghdl -a ../bc.vhd
ghdl -a ../uc.vhd

ghdl -a ../I.vhd
ghdl -a ../memd.vhd

ghdl -a ../vahid6i.vhd    

ghdl -a ../vahid6i_memd_I_tb.vhd

ghdl -e vahid6i_memd_I_tb

ghdl -r vahid6i_memd_I_tb --wave=../waves/vahid6i_memd_I_tb.ghw --stop-time=1000ns

