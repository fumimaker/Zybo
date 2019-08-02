## Arty constraints file
## chapter: 2
## project: blink

#Clock signal
set_property PACKAGE_PIN E3 [get_ports {CLK}]
set_property IOSTANDARD LVCMOS33 [get_ports {CLK}]
create_clock -add -name sys_clk_pin -period 10.00 \
    -waveform {0 5} [get_ports {CLK}]

#Reset
set_property PACKAGE_PIN B8 [get_ports {RST}]
set_property IOSTANDARD LVCMOS33 [get_ports {RST}]

#LEDs
set_property PACKAGE_PIN H5  [get_ports {LED[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[0]}]

set_property PACKAGE_PIN J5  [get_ports {LED[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[1]}]

set_property PACKAGE_PIN T9  [get_ports {LED[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[2]}]

set_property PACKAGE_PIN T10 [get_ports {LED[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {LED[3]}]

##Buttons
#set_property PACKAGE_PIN D9 [get_ports {BTN[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[0]}]

#set_property PACKAGE_PIN C9 [get_ports {BTN[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[1]}]

#set_property PACKAGE_PIN B9 [get_ports {BTN[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {BTN[2]}]

##VGAs
#set_property PACKAGE_PIN V15 [get_ports {VGA_R[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[0]}]

#set_property PACKAGE_PIN U16 [get_ports {VGA_R[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[1]}]

#set_property PACKAGE_PIN P14 [get_ports {VGA_R[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[2]}]

#set_property PACKAGE_PIN T11 [get_ports {VGA_R[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_R[3]}]

#set_property PACKAGE_PIN R12 [get_ports {VGA_G[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[0]}]

#set_property PACKAGE_PIN T14 [get_ports {VGA_G[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[1]}]

#set_property PACKAGE_PIN T15 [get_ports {VGA_G[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[2]}]

#set_property PACKAGE_PIN T16 [get_ports {VGA_G[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_G[3]}]

#set_property PACKAGE_PIN N15 [get_ports {VGA_B[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[0]}]

#set_property PACKAGE_PIN M16 [get_ports {VGA_B[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[1]}]

#set_property PACKAGE_PIN V17 [get_ports {VGA_B[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[2]}]

#set_property PACKAGE_PIN U18 [get_ports {VGA_B[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_B[3]}]

#set_property PACKAGE_PIN R17 [get_ports {VGA_HS}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_HS}]

#set_property PACKAGE_PIN P17 [get_ports {VGA_VS}]
#set_property IOSTANDARD LVCMOS33 [get_ports {VGA_VS}]

##Uart
#set_property PACKAGE_PIN A9  [get_ports {RXD}]
#set_property IOSTANDARD LVCMOS33 [get_ports {RXD}]

#set_property PACKAGE_PIN D10 [get_ports {TXD}]
#set_property IOSTANDARD LVCMOS33 [get_ports {TXD}]

##Switches
#set_property PACKAGE_PIN A8  [get_ports {SW[0]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[0]}]

#set_property PACKAGE_PIN C11 [get_ports {SW[1]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[1]}]

#set_property PACKAGE_PIN C10 [get_ports {SW[2]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[2]}]

#set_property PACKAGE_PIN A10 [get_ports {SW[3]}]
#set_property IOSTANDARD LVCMOS33 [get_ports {SW[3]}]
