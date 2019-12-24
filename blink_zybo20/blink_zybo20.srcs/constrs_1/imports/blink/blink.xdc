## Zybo constraints file
## chapter: 2
## project: blink

#Clock signal
#set_property IOSTANDARD LVCMOS33 [get_ports CLK]
#create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports CLK]

##Clock signal
set_property -dict {PACKAGE_PIN K17 IOSTANDARD LVCMOS33} [get_ports CLK]
create_clock -add 8.000 -name sys_clk_pin -period 8.00 -waveform {0 4} [get_ports { CLK }];


#Reset
set_property PACKAGE_PIN Y16 [get_ports RST]
set_property IOSTANDARD LVCMOS33 [get_ports RST]

#LEDs
set_property PACKAGE_PIN M14 [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

set_property PACKAGE_PIN M15 [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]

set_property PACKAGE_PIN G14 [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]

set_property PACKAGE_PIN D18 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]

##Buttons
#set_property PACKAGE_PIN R18 [get_ports {BTN[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[0]}]

#set_property PACKAGE_PIN P16 [get_ports {BTN[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[1]}]

#set_property PACKAGE_PIN V16 [get_ports {BTN[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[2]}]

##VGAs
#set_property PACKAGE_PIN L20 [get_ports {VGA_R[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[0]}]

#set_property PACKAGE_PIN J20 [get_ports {VGA_R[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[1]}]

#set_property PACKAGE_PIN G20 [get_ports {VGA_R[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[2]}]

#set_property PACKAGE_PIN F19 [get_ports {VGA_R[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[3]}]

#set_property PACKAGE_PIN L19 [get_ports {VGA_G[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[0]}]

#set_property PACKAGE_PIN J19 [get_ports {VGA_G[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[1]}]

#set_property PACKAGE_PIN H20 [get_ports {VGA_G[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[2]}]

#set_property PACKAGE_PIN F20 [get_ports {VGA_G[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[3]}]

#set_property PACKAGE_PIN M20 [get_ports {VGA_B[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[0]}]

#set_property PACKAGE_PIN K19 [get_ports {VGA_B[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[1]}]

#set_property PACKAGE_PIN J18 [get_ports {VGA_B[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[2]}]

#set_property PACKAGE_PIN G19 [get_ports {VGA_B[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[3]}]

#set_property PACKAGE_PIN P19 [get_ports {VGA_HS}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_HS}]

#set_property PACKAGE_PIN R19 [get_ports {VGA_VS}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_VS}]

##Switches
#set_property PACKAGE_PIN G15 [get_ports {SW[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]

#set_property PACKAGE_PIN P15 [get_ports {SW[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[1]}]

#set_property PACKAGE_PIN W13 [get_ports {SW[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[2]}]

#set_property PACKAGE_PIN T16 [get_ports {SW[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[3]}]


create_debug_core u_ila_0 ila
set_property ALL_PROBE_SAME_MU true [get_debug_cores u_ila_0]
set_property ALL_PROBE_SAME_MU_CNT 1 [get_debug_cores u_ila_0]
set_property C_ADV_TRIGGER false [get_debug_cores u_ila_0]
set_property C_DATA_DEPTH 8192 [get_debug_cores u_ila_0]
set_property C_EN_STRG_QUAL false [get_debug_cores u_ila_0]
set_property C_INPUT_PIPE_STAGES 0 [get_debug_cores u_ila_0]
set_property C_TRIGIN_EN false [get_debug_cores u_ila_0]
set_property C_TRIGOUT_EN false [get_debug_cores u_ila_0]
set_property port_width 1 [get_debug_ports u_ila_0/clk]
connect_debug_port u_ila_0/clk [get_nets [list CLK_IBUF_BUFG]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 3 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {cnt3[0]} {cnt3[1]} {cnt3[2]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 23 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {cnt23_reg[0]} {cnt23_reg[1]} {cnt23_reg[2]} {cnt23_reg[3]} {cnt23_reg[4]} {cnt23_reg[5]} {cnt23_reg[6]} {cnt23_reg[7]} {cnt23_reg[8]} {cnt23_reg[9]} {cnt23_reg[10]} {cnt23_reg[11]} {cnt23_reg[12]} {cnt23_reg[13]} {cnt23_reg[14]} {cnt23_reg[15]} {cnt23_reg[16]} {cnt23_reg[17]} {cnt23_reg[18]} {cnt23_reg[19]} {cnt23_reg[20]} {cnt23_reg[21]} {cnt23_reg[22]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 4 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {LED_OBUF[0]} {LED_OBUF[1]} {LED_OBUF[2]} {LED_OBUF[3]}]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets CLK_IBUF_BUFG]
