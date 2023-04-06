
ghdl -a ../bc.vhd
ghdl -a ../pc.vhd
ghdl -a ../ir.vhd
ghdl -a ../uc.vhd
ghdl -a ../I.vhd
ghdl -a ../uc_I_tb.vhd

ghdl -e bc
ghdl -e pc
ghdl -e ir
ghdl -e uc
ghdl -e I
ghdl -e uc_I_tb

ghdl -r uc_I_tb --wave=../waves/uc_I_tb.ghw --stop-time=80ns
