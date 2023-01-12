set_property SRC_FILE_INFO {cfile:/home/soshi/workspace/vivado_tutorial/pattern/pattern.gen/sources_1/ip/pckgen/pckgen.xdc rfile:../../../pattern.gen/sources_1/ip/pckgen/pckgen.xdc id:1 order:EARLY scoped_inst:pattern/syncgen/pckgen/inst} [current_design]
set_property SRC_FILE_INFO {cfile:/home/soshi/workspace/vivado_tutorial/pattern/pattern.srcs/constrs_1/new/pattern.xdc rfile:../../../pattern.srcs/constrs_1/new/pattern.xdc id:2} [current_design]
current_instance pattern/syncgen/pckgen/inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports SYSCLK]] 0.080
current_instance
set_property src_info {type:XDC file:2 line:6 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H16   IOSTANDARD LVCMOS33 } [get_ports {CLK}]
set_property src_info {type:XDC file:2 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L19   IOSTANDARD LVCMOS33 } [get_ports {RST}]; # BTN[3]
set_property src_info {type:XDC file:2 line:24 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L17   IOSTANDARD TMDS_33  } [get_ports { HDMI_CLK_N }]
set_property src_info {type:XDC file:2 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN L16   IOSTANDARD TMDS_33  } [get_ports { HDMI_CLK_P }]
set_property src_info {type:XDC file:2 line:26 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K18   IOSTANDARD TMDS_33  } [get_ports { HDMI_N[0] }]
set_property src_info {type:XDC file:2 line:27 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K17   IOSTANDARD TMDS_33  } [get_ports { HDMI_P[0] }]
set_property src_info {type:XDC file:2 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J19   IOSTANDARD TMDS_33  } [get_ports { HDMI_N[1] }]
set_property src_info {type:XDC file:2 line:29 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN K19   IOSTANDARD TMDS_33  } [get_ports { HDMI_P[1] }]
set_property src_info {type:XDC file:2 line:30 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN H18   IOSTANDARD TMDS_33  } [get_ports { HDMI_N[2] }]
set_property src_info {type:XDC file:2 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN J18   IOSTANDARD TMDS_33  } [get_ports { HDMI_P[2] }]
