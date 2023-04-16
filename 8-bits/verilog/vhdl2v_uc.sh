yosys -m ghdl -p 'ghdl --latches ../vhdl/uc.vhd ../vhdl/bc.vhd ../vhdl/pc.vhd ../vhdl/ir.vhd -e uc; write_verilog uc'
