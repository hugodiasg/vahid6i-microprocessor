
ghdl -a ../ir.vhd
ghdl -a ../ir_tb.vhd

ghdl -e ir
ghdl -e ir_tb

ghdl -r ir_tb --wave=../waves/ir_tb.ghw --stop-time=50ns
