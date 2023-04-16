yosys -m ghdl -p 'ghdl --latches ../vhdl/po.vhd ../vhdl/muxf.vhd ../vhdl/regf.vhd ../vhdl/alu.vhd -e po; write_verilog po'
