## PYNQ-Z1 constraints file
## chapter: 2
## project: blink

# Clock signal
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports {CLK}]
create_clock -add -name sys_clk_pin -period 8 -waveform {0 4} [get_ports {CLK}]

# Reset
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports {RST}]; # BTN[3]

#RGB LED
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { LED_RGB[2] }]; # Red
#set_property -dict { PACKAGE_PIN G17   IOSTANDARD LVCMOS33 } [get_ports { LED_RGB[1] }]; # Green
#set_property -dict { PACKAGE_PIN L15   IOSTANDARD LVCMOS33 } [get_ports { LED_RGB[0] }]; # Blue

## Buttons
#set_property -dict { PACKAGE_PIN D19   IOSTANDARD LVCMOS33 } [get_ports { BTN[0] }]
#set_property -dict { PACKAGE_PIN D20   IOSTANDARD LVCMOS33 } [get_ports { BTN[1] }]
#set_property -dict { PACKAGE_PIN L20   IOSTANDARD LVCMOS33 } [get_ports { BTN[2] }]
#set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports { BTN[3] }]

##HDMI TX
set_property -dict { PACKAGE_PIN L17   IOSTANDARD TMDS_33  } [get_ports { HDMI_CLK_N }]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD TMDS_33  } [get_ports { HDMI_CLK_P }]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD TMDS_33  } [get_ports { HDMI_N[0] }]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD TMDS_33  } [get_ports { HDMI_P[0] }]
set_property -dict { PACKAGE_PIN J19   IOSTANDARD TMDS_33  } [get_ports { HDMI_N[1] }]
set_property -dict { PACKAGE_PIN K19   IOSTANDARD TMDS_33  } [get_ports { HDMI_P[1] }]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD TMDS_33  } [get_ports { HDMI_N[2] }]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD TMDS_33  } [get_ports { HDMI_P[2] }]

## Single LED
#set_property -dict { PACKAGE_PIN R14   IOSTANDARD LVCMOS33 } [get_ports { LED[0] }]
#set_property -dict { PACKAGE_PIN P14   IOSTANDARD LVCMOS33 } [get_ports { LED[1] }]
#set_property -dict { PACKAGE_PIN N16   IOSTANDARD LVCMOS33 } [get_ports { LED[2] }]
#set_property -dict { PACKAGE_PIN M14   IOSTANDARD LVCMOS33 } [get_ports { LED[3] }]

##Switches
#set_property -dict { PACKAGE_PIN M20   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]
#set_property -dict { PACKAGE_PIN M19   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]

## false path
#set_clock_groups -asynchronous -group [get_clocks clk_fpga_0] \
#    -group [get_clocks -include_generated_clocks clk_fpga_0 -filter {NAME !~ clk_fpga_0}]
