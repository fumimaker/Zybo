## Zybo constraints file
## chapter: 2
## project: pattern

#Clock signal
set_property PACKAGE_PIN L16 [get_ports CLK]
set_property IOSTANDARD LVCMOS33 [get_ports CLK]
create_clock -period 8.000 -name sys_clk_pin -waveform {0.000 4.000} -add [get_ports CLK]

#Reset
set_property PACKAGE_PIN Y16 [get_ports RST]
set_property IOSTANDARD LVCMOS33 [get_ports RST]

##LEDs
#set_property PACKAGE_PIN M14 [get_ports {LED[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

#set_property PACKAGE_PIN M15 [get_ports {LED[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]

#set_property PACKAGE_PIN G14 [get_ports {LED[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]

#set_property PACKAGE_PIN D18 [get_ports {LED[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]

##Buttons
#set_property PACKAGE_PIN R18 [get_ports {BTN[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[0]}]

#set_property PACKAGE_PIN P16 [get_ports {BTN[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[1]}]

#set_property PACKAGE_PIN V16 [get_ports {BTN[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[2]}]

#VGAs
set_property PACKAGE_PIN L20 [get_ports {VGA_R[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[0]}]

set_property PACKAGE_PIN J20 [get_ports {VGA_R[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[1]}]

set_property PACKAGE_PIN G20 [get_ports {VGA_R[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[2]}]

set_property PACKAGE_PIN F19 [get_ports {VGA_R[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[3]}]

set_property PACKAGE_PIN L19 [get_ports {VGA_G[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[0]}]

set_property PACKAGE_PIN J19 [get_ports {VGA_G[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[1]}]

set_property PACKAGE_PIN H20 [get_ports {VGA_G[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[2]}]

set_property PACKAGE_PIN F20 [get_ports {VGA_G[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[3]}]

set_property PACKAGE_PIN M20 [get_ports {VGA_B[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[0]}]

set_property PACKAGE_PIN K19 [get_ports {VGA_B[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[1]}]

set_property PACKAGE_PIN J18 [get_ports {VGA_B[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[2]}]

set_property PACKAGE_PIN G19 [get_ports {VGA_B[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[3]}]

set_property PACKAGE_PIN P19 [get_ports VGA_HS]
set_property IOSTANDARD LVCMOS33 [get_ports VGA_HS]

set_property PACKAGE_PIN R19 [get_ports VGA_VS]
set_property IOSTANDARD LVCMOS33 [get_ports VGA_VS]

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
connect_debug_port u_ila_0/clk [get_nets [list syncgen/pckgen/PCK]]
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe0]
set_property port_width 10 [get_debug_ports u_ila_0/probe0]
connect_debug_port u_ila_0/probe0 [get_nets [list {syncgen/HCNT[0]} {syncgen/HCNT[1]} {syncgen/HCNT[2]} {syncgen/HCNT[3]} {syncgen/HCNT[4]} {syncgen/HCNT[5]} {syncgen/HCNT[6]} {syncgen/HCNT[7]} {syncgen/HCNT[8]} {syncgen/HCNT[9]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe1]
set_property port_width 10 [get_debug_ports u_ila_0/probe1]
connect_debug_port u_ila_0/probe1 [get_nets [list {syncgen/VCNT[0]} {syncgen/VCNT[1]} {syncgen/VCNT[2]} {syncgen/VCNT[3]} {syncgen/VCNT[4]} {syncgen/VCNT[5]} {syncgen/VCNT[6]} {syncgen/VCNT[7]} {syncgen/VCNT[8]} {syncgen/VCNT[9]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe2]
set_property port_width 1 [get_debug_ports u_ila_0/probe2]
connect_debug_port u_ila_0/probe2 [get_nets [list {VGA_R_OBUF[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe3]
set_property port_width 1 [get_debug_ports u_ila_0/probe3]
connect_debug_port u_ila_0/probe3 [get_nets [list {VGA_B_OBUF[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe4]
set_property port_width 1 [get_debug_ports u_ila_0/probe4]
connect_debug_port u_ila_0/probe4 [get_nets [list {VGA_G_OBUF[0]}]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe5]
set_property port_width 1 [get_debug_ports u_ila_0/probe5]
connect_debug_port u_ila_0/probe5 [get_nets [list VGA_HS_OBUF]]
create_debug_port u_ila_0 probe
set_property PROBE_TYPE DATA_AND_TRIGGER [get_debug_ports u_ila_0/probe6]
set_property port_width 1 [get_debug_ports u_ila_0/probe6]
connect_debug_port u_ila_0/probe6 [get_nets [list VGA_VS_OBUF]]
set_property C_CLK_INPUT_FREQ_HZ 300000000 [get_debug_cores dbg_hub]
set_property C_ENABLE_CLK_DIVIDER false [get_debug_cores dbg_hub]
set_property C_USER_SCAN_CHAIN 1 [get_debug_cores dbg_hub]
connect_debug_port dbg_hub/clk [get_nets PCK]
