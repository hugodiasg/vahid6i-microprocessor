
ghdl -a ../pc.vhd
ghdl -a ../pc_tb.vhd

ghdl -e pc
ghdl -e pc_tb

ghdl -r pc_tb --wave=../waves/pc_tb.ghw --stop-time=50ns
