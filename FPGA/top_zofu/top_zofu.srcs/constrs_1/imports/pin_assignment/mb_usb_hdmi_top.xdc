create_clock -period 10.000 -name clk_100 -waveform {0.000 5.000} [get_ports Clk]

set_property IOSTANDARD LVCMOS33 [get_ports Clk]
#set_property IOSTANDARD LVCMOS25 [get_ports reset_rtl_0]
set_property PACKAGE_PIN N15 [get_ports Clk]







#HDMI Signals
set_property -dict {PACKAGE_PIN V17 IOSTANDARD TMDS_33} [get_ports hdmi_tmds_clk_n]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD TMDS_33} [get_ports hdmi_tmds_clk_p]

set_property -dict {PACKAGE_PIN U18 IOSTANDARD TMDS_33} [get_ports {hdmi_tmds_data_n[0]}]
set_property -dict {PACKAGE_PIN R17 IOSTANDARD TMDS_33} [get_ports {hdmi_tmds_data_n[1]}]
set_property -dict {PACKAGE_PIN T14 IOSTANDARD TMDS_33} [get_ports {hdmi_tmds_data_n[2]}]

set_property -dict {PACKAGE_PIN U17 IOSTANDARD TMDS_33} [get_ports {hdmi_tmds_data_p[0]}]
set_property -dict {PACKAGE_PIN R16 IOSTANDARD TMDS_33} [get_ports {hdmi_tmds_data_p[1]}]
set_property -dict {PACKAGE_PIN R14 IOSTANDARD TMDS_33} [get_ports {hdmi_tmds_data_p[2]}]


set_property IOSTANDARD LVCMOS33 [get_ports d]
set_property IOSTANDARD LVCMOS33 [get_ports s]
set_property IOSTANDARD LVCMOS33 [get_ports w]
set_property IOSTANDARD LVCMOS33 [get_ports a]
set_property PACKAGE_PIN J2 [get_ports w]
set_property PACKAGE_PIN J1 [get_ports s]
set_property PACKAGE_PIN G2 [get_ports a]
set_property PACKAGE_PIN H2 [get_ports d]
