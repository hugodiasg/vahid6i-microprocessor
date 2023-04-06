
ghdl -a ../bc.vhd
ghdl -a ../bc_tb.vhd

ghdl -e bc
ghdl -e bc_tb

ghdl -r bc_tb --wave=../waves/bc_tb.ghw --stop-time=30ns
