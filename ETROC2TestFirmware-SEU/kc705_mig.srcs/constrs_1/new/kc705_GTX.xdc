  ####################### GT reference clock constraints #########################

create_clock -period 6.25 [get_ports Q3_CLK1_GTREFCLK_PAD_P_IN]

set_false_path -to [get_pins -hierarchical -filter {NAME =~ *_txfsmresetdone_r*/CLR}]
set_false_path -to [get_pins -hierarchical -filter {NAME =~ *_txfsmresetdone_r*/D}]

################################# RefClk Location constraints #####################
set_property PACKAGE_PIN E7 [get_ports  Q3_CLK1_GTREFCLK_PAD_N_IN ] 
set_property PACKAGE_PIN E8 [get_ports  Q3_CLK1_GTREFCLK_PAD_P_IN ]

# GTX DP[0]_C2M
set_property PACKAGE_PIN D2 [get_ports TXP_OUT[0]]              
set_property PACKAGE_PIN D1 [get_ports TXN_OUT[0]]
# GTX DP[0]_M2C
set_property PACKAGE_PIN E4 [get_ports RXP_IN[0]]               
set_property PACKAGE_PIN E3 [get_ports RXN_IN[0]]
# GTX DP[1]_C2M
set_property PACKAGE_PIN C4 [get_ports TXP_OUT[1]]              
set_property PACKAGE_PIN C3 [get_ports TXN_OUT[1]]
# GTX DP[1]_M2C
set_property PACKAGE_PIN D6 [get_ports RXP_IN[1]]               
set_property PACKAGE_PIN D5 [get_ports RXN_IN[1]]
# GTX DP[2]_C2M
set_property PACKAGE_PIN B2 [get_ports TXP_OUT[2]]              
set_property PACKAGE_PIN B1 [get_ports TXN_OUT[2]]
# GTX DP[2]_M2C
set_property PACKAGE_PIN B6 [get_ports RXP_IN[2]]               
set_property PACKAGE_PIN B5 [get_ports RXN_IN[2]]
# GTX DP[3]_C2M
set_property PACKAGE_PIN A4 [get_ports TXP_OUT[3]]              
set_property PACKAGE_PIN A3 [get_ports TXN_OUT[3]]
# GTX DP[3]_M2C
set_property PACKAGE_PIN A8 [get_ports RXP_IN[3]]               
set_property PACKAGE_PIN A7 [get_ports RXN_IN[3]] 