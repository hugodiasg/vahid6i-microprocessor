###############################################################################
# Created by write_sdc
# Mon Mar 27 22:09:37 2023
###############################################################################
current_design vahid6i
###############################################################################
# Timing Constraints
###############################################################################
create_clock -name clk_48 -period 15.0000 
set_clock_uncertainty 0.2500 clk_48
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[0]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[10]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[11]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[12]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[13]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[14]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[15]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[1]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[2]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[3]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[4]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[5]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[6]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[7]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[8]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_R_data[9]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[0]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[10]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[11]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[12]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[13]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[14]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[15]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[1]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[2]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[3]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[4]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[5]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[6]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[7]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[8]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_data[9]}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {clock}]
set_input_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {reset}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[0]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[10]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[11]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[12]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[13]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[14]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[15]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[1]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[2]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[3]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[4]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[5]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[6]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[7]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[8]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_W_data[9]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_addr[0]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_addr[1]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_addr[2]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_addr[3]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_addr[4]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_addr[5]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_addr[6]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_addr[7]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_rd}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {D_wr}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[0]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[10]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[11]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[12]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[13]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[14]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[15]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[1]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[2]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[3]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[4]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[5]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[6]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[7]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[8]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_addr[9]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {I_rd}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {led_clock}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {leds[0]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {leds[1]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {leds[2]}]
set_output_delay 3.0000 -clock [get_clocks {clk_48}] -add_delay [get_ports {leds[3]}]
###############################################################################
# Environment
###############################################################################
set_load -pin_load 0.0334 [get_ports {D_rd}]
set_load -pin_load 0.0334 [get_ports {D_wr}]
set_load -pin_load 0.0334 [get_ports {I_rd}]
set_load -pin_load 0.0334 [get_ports {led_clock}]
set_load -pin_load 0.0334 [get_ports {D_W_data[15]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[14]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[13]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[12]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[11]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[10]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[9]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[8]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[7]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[6]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[5]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[4]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[3]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[2]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[1]}]
set_load -pin_load 0.0334 [get_ports {D_W_data[0]}]
set_load -pin_load 0.0334 [get_ports {D_addr[7]}]
set_load -pin_load 0.0334 [get_ports {D_addr[6]}]
set_load -pin_load 0.0334 [get_ports {D_addr[5]}]
set_load -pin_load 0.0334 [get_ports {D_addr[4]}]
set_load -pin_load 0.0334 [get_ports {D_addr[3]}]
set_load -pin_load 0.0334 [get_ports {D_addr[2]}]
set_load -pin_load 0.0334 [get_ports {D_addr[1]}]
set_load -pin_load 0.0334 [get_ports {D_addr[0]}]
set_load -pin_load 0.0334 [get_ports {I_addr[15]}]
set_load -pin_load 0.0334 [get_ports {I_addr[14]}]
set_load -pin_load 0.0334 [get_ports {I_addr[13]}]
set_load -pin_load 0.0334 [get_ports {I_addr[12]}]
set_load -pin_load 0.0334 [get_ports {I_addr[11]}]
set_load -pin_load 0.0334 [get_ports {I_addr[10]}]
set_load -pin_load 0.0334 [get_ports {I_addr[9]}]
set_load -pin_load 0.0334 [get_ports {I_addr[8]}]
set_load -pin_load 0.0334 [get_ports {I_addr[7]}]
set_load -pin_load 0.0334 [get_ports {I_addr[6]}]
set_load -pin_load 0.0334 [get_ports {I_addr[5]}]
set_load -pin_load 0.0334 [get_ports {I_addr[4]}]
set_load -pin_load 0.0334 [get_ports {I_addr[3]}]
set_load -pin_load 0.0334 [get_ports {I_addr[2]}]
set_load -pin_load 0.0334 [get_ports {I_addr[1]}]
set_load -pin_load 0.0334 [get_ports {I_addr[0]}]
set_load -pin_load 0.0334 [get_ports {leds[3]}]
set_load -pin_load 0.0334 [get_ports {leds[2]}]
set_load -pin_load 0.0334 [get_ports {leds[1]}]
set_load -pin_load 0.0334 [get_ports {leds[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {clock}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {reset}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {D_R_data[0]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[15]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[14]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[13]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[12]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[11]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[10]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[9]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[8]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[7]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[6]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[5]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[4]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[3]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[2]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[1]}]
set_driving_cell -lib_cell sky130_fd_sc_hd__inv_2 -pin {Y} -input_transition_rise 0.0000 -input_transition_fall 0.0000 [get_ports {I_data[0]}]
set_timing_derate -early 0.9500
set_timing_derate -late 1.0500
###############################################################################
# Design Rules
###############################################################################
set_max_fanout 6.0000 [current_design]
