# KC705 configuration
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 2.5 [current_design]

# 200MHz onboard diff clock
#create_clock -name system_clock -period 5.0 [get_ports FMC_HPC_HA_P[17]]

#set_property VCCAUX_IO DONTCARE [get_ports SYS_RST]
#set_property SLEW SLOW [get_ports SYS_RST]
#set_property IOSTANDARD LVCMOS15 [get_ports SYS_RST]
#set_property LOC AB7 [get_ports SYS_RST]


# set_property PACKAGE_PIN L16     [get_ports "FMC_HPC_HA_P[13]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[13]"]
# set_property PACKAGE_PIN K16     [get_ports "FMC_HPC_HA_N[13]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[13]"]
#set_property PACKAGE_PIN L15     [get_ports "FMC_HPC_HA_P[16]"]
#set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[16]"]
#set_property PACKAGE_PIN K15     [get_ports "FMC_HPC_HA_N[16]"]
#set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[16]"]
# set_property PACKAGE_PIN L12     [get_ports "FMC_HPC_HA_P[23]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[23]"]
# set_property PACKAGE_PIN L13     [get_ports "FMC_HPC_HA_N[23]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[23]"]
# set_property PACKAGE_PIN K13     [get_ports "FMC_HPC_HA_P[20]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[20]"]
# set_property PACKAGE_PIN J13     [get_ports "FMC_HPC_HA_N[20]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[20]"]
# set_property PACKAGE_PIN K14     [get_ports "FMC_HPC_HA_P[18]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[18]"]
# set_property PACKAGE_PIN J14     [get_ports "FMC_HPC_HA_N[18]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[18]"]
# set_property PACKAGE_PIN L11     [get_ports "FMC_HPC_HA_P[22]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[22]"]
# set_property PACKAGE_PIN K11     [get_ports "FMC_HPC_HA_N[22]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[22]"]
# set_property PACKAGE_PIN H15     [get_ports "FMC_HPC_HA_P[15]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[15]"]
# set_property PACKAGE_PIN G15     [get_ports "FMC_HPC_HA_N[15]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[15]"]
# set_property PACKAGE_PIN J11     [get_ports "FMC_HPC_HA_P[21]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[21]"]
# set_property PACKAGE_PIN J12     [get_ports "FMC_HPC_HA_N[21]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[21]"]
# set_property PACKAGE_PIN J16     [get_ports "FMC_HPC_HA_P[14]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[14]"]
# set_property PACKAGE_PIN H16     [get_ports "FMC_HPC_HA_N[14]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[14]"]
# set_property PACKAGE_PIN H11     [get_ports "FMC_HPC_HA_P[19]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[19]"]
# set_property PACKAGE_PIN H12     [get_ports "FMC_HPC_HA_N[19]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[19]"]
# set_property PACKAGE_PIN H14     [get_ports "FMC_HPC_HA_P[1]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[1]"]
# set_property PACKAGE_PIN G14     [get_ports "FMC_HPC_HA_N[1]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[1]"]
#set_property PACKAGE_PIN G13     [get_ports "FMC_HPC_HA_P[17]"]
#set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[17]"]
#set_property PACKAGE_PIN F13     [get_ports "FMC_HPC_HA_N[17]"]
#set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[17]"]
# set_property PACKAGE_PIN D12     [get_ports "FMC_HPC_HA_P[0]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[0]"]
# set_property PACKAGE_PIN D13     [get_ports "FMC_HPC_HA_N[0]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[0]"]
# set_property PACKAGE_PIN F12     [get_ports "FMC_HPC_HA_P[9]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[9]"]
# set_property PACKAGE_PIN E13     [get_ports "FMC_HPC_HA_N[9]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[9]"]
# set_property PACKAGE_PIN C12     [get_ports "FMC_HPC_HA_P[3]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[3]"]
# set_property PACKAGE_PIN B12     [get_ports "FMC_HPC_HA_N[3]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[3]"]
# set_property PACKAGE_PIN F11     [get_ports "FMC_HPC_HA_P[4]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[4]"]
# set_property PACKAGE_PIN E11     [get_ports "FMC_HPC_HA_N[4]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[4]"]
# set_property PACKAGE_PIN A11     [get_ports "FMC_HPC_HA_P[10]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[10]"]
# set_property PACKAGE_PIN A12     [get_ports "FMC_HPC_HA_N[10]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[10]"]
# set_property PACKAGE_PIN D11     [get_ports "FMC_HPC_HA_P[2]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[2]"]
# set_property PACKAGE_PIN C11     [get_ports "FMC_HPC_HA_N[2]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[2]"]
# set_property PACKAGE_PIN F15     [get_ports "FMC_HPC_HA_P[5]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[5]"]
# set_property PACKAGE_PIN E16     [get_ports "FMC_HPC_HA_N[5]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[5]"]
# set_property PACKAGE_PIN E14     [get_ports "FMC_HPC_HA_P[8]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[8]"]
# set_property PACKAGE_PIN E15     [get_ports "FMC_HPC_HA_N[8]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[8]"]
# set_property PACKAGE_PIN D14     [get_ports "FMC_HPC_HA_P[6]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[6]"]
# set_property PACKAGE_PIN C14     [get_ports "FMC_HPC_HA_N[6]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[6]"]
# set_property PACKAGE_PIN B13     [get_ports "FMC_HPC_HA_P[11]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[11]"]
# set_property PACKAGE_PIN A13     [get_ports "FMC_HPC_HA_N[11]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[11]"]
# set_property PACKAGE_PIN C15     [get_ports "FMC_HPC_HA_P[12]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[12]"]
# set_property PACKAGE_PIN B15     [get_ports "FMC_HPC_HA_N[12]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[12]"]
# set_property PACKAGE_PIN B14     [get_ports "FMC_HPC_HA_P[7]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_P[7]"]
# set_property PACKAGE_PIN A15     [get_ports "FMC_HPC_HA_N[7]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_HA_N[7]"]


# set_property PACKAGE_PIN F21     [get_ports "FMC_HPC_LA_P[18]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_LA_P[18]"]
# set_property PACKAGE_PIN E21     [get_ports "FMC_HPC_LA_N[18]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_LA_N[18]"]
# set_property PACKAGE_PIN F20     [get_ports "FMC_HPC_LA_P[17]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_LA_P[17]"]
# set_property PACKAGE_PIN E20     [get_ports "FMC_HPC_LA_N[17]"]
# set_property IOSTANDARD LVDS_25  [get_ports "FMC_HPC_LA_N[17]"]
