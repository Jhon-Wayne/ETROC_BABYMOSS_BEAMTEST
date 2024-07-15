`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: CCNU
// Engineer: WeiZhang
// 
// Create Date: 03/16/2018 09:34:02 PM
// Design Name: kc705_mig
// Module Name: kc705_mig
// Project Name: kc705_mig
// Target Devices: KC705 EVB
// Tool Versions: 
// Description: 
// This project is used to learn ddr3 in KC705 EVB
// Dependencies: 
// 
// Revision: V1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////
module kc705_mig(
input SYS_RST,              //system reset
input SYS_CLK_P,            //system clock 40MHz
input SYS_CLK_N,
input BOARD_CLK_P,            //on-board clock 200MHz
input BOARD_CLK_N,
input SGMIICLK_Q0_P,        //125MHz for GTP/GTH/GTX  for 1G Ethernet interface
input SGMIICLK_Q0_N,
//----------------------< LED        
output [7:0] LED8Bit,        //clock output
//----------------------< DIPSw4Bit
input  [3:0] DIPSw4Bit,
//----------------------> Gigbit eth interface (RGMII)
output PHY_RESET_N,
output [3:0] RGMII_TXD,
output RGMII_TX_CTL,
output RGMII_TXC,
input  [3:0] RGMII_RXD,
input  RGMII_RX_CTL,
input  RGMII_RXC,
inout  MDIO,
output MDC,
//----------------------< SDRAM PHY interface

//---------------------< IIC interface
inout wire SDA,
output wire SCL, 

//---------------------< GTX for 4 channel
input wire Q3_CLK1_GTREFCLK_PAD_P_IN,
input wire Q3_CLK1_GTREFCLK_PAD_N_IN,
input wire [3:0] RXP_IN,                 // DP[3:0]_M2C
input wire [3:0] RXN_IN,
output wire [3:0] TXP_OUT,               // DP[3:0]_C2M
output wire [3:0] TXN_OUT

//---------------------< SRO
// output wire BC0_OUTP,
// output wire BC0_OUTN,
// output wire L1ACC_OUTP,
// output wire L1ACC_OUTN

);
//---------------------------------------------------------< signal define
wire reset;
wire sys_clk;
wire clk_20MHz;   //original 25 MHz
wire clk_40MHz;   //original 50 MHz
wire clk_120MHz;  //original 100 MHz
wire clk_320MHz;  //original 160 MHz
wire clk_160MHz;  //original 200 MHz
//---------------------------------------------------------> signal define
//---------------------------------------------------------< global_clock_reset
global_clock_reset global_clock_reset_inst(
    .SYS_CLK_P(SYS_CLK_P),
    .SYS_CLK_N(SYS_CLK_N),
    .FORCE_RST(SYS_RST),
    // output
    .GLOBAL_RST(reset),
    .SYS_CLK(sys_clk),
    .CLK_OUT1(clk_20MHz),
    .CLK_OUT2(clk_40MHz),
    .CLK_OUT3(clk_120MHz),
    .CLK_OUT4(clk_320MHz),
    .CLK_OUT5(clk_160MHz)
  );
//---------------------------------------------------------> global_clock_reset
//---------------------------------------------------------< generate sgmii_i clock
wire clk_sgmii_i;
wire clk_sgmii;
wire clk_125MHz;
IBUFDS_GTE2 #(
   .CLKCM_CFG("TRUE"),          // Refer to Transceiver User Guide
   .CLKRCV_TRST("TRUE"),        // Refer to Transceiver User Guide
   .CLKSWING_CFG(2'b11)         // Refer to Transceiver User Guide
)
IBUFDS_GTE2_inst (
   .O(clk_sgmii_i),             // 1-bit output: Refer to Transceiver User Guide
   .ODIV2("open"),              // 1-bit output: Refer to Transceiver User Guide
   .CEB(1'b0),                  // 1-bit input: Refer to Transceiver User Guide
   .I(SGMIICLK_Q0_P),           // 1-bit input: Refer to Transceiver User Guide
   .IB(SGMIICLK_Q0_N)           // 1-bit input: Refer to Transceiver User Guide
);

BUFG BUFG_inst (
   .O(clk_sgmii),               // 1-bit output: Clock output
   .I(clk_sgmii_i)              // 1-bit input: Clock input
);
assign clk_125MHz = clk_sgmii;
wire board_clk;
IBUFDS #(.DIFF_TERM("FALSE"),.IBUF_LOW_PWR("FALSE"),.IOSTANDARD("DEFAULT"))IBUFDS_Inst(
      .O(board_clk),
      .I(BOARD_CLK_P),
      .IB(BOARD_CLK_N)
);
//---------------------------------------------------------> generate sgmii_i clock

//---------------------------------------------------------< vio core
wire [15:0] probe_in0;
wire [31:0] probe_in1;
wire [255:0] probe_in2;
wire [55:0] probe_in3;
wire [255:0] probe_in4;
wire [15:0] probe_out0;
assign probe_in0 = {12'h000,DIPSw4Bit[3:0]};
assign probe_in1 = {5'b00000,MODE,SL_ADDR[6:0],SL_WR,WR_ADDR[7:0],WR_DATA0[7:0]};
assign probe_in2 = config_reg[255:0];
assign probe_in3 = 56'd0;
assign probe_in4 = 256'd0;
vio_0 vio_0_inst (
  .clk(clk_20MHz),          // input wire clk
  .probe_in0(probe_in0),    // input wire [15 : 0] probe_in0
  .probe_in1(probe_in1),    // input wire [31 : 0] probe_in1
  .probe_in2(probe_in2),    // input wire [255 : 0] probe_in2
  .probe_in3(probe_in3),    // input wire [55 : 0] probe_in3
  .probe_in4(probe_in4),    // input wire [255 : 0] probe_in4
  .probe_out0(probe_out0)   // output wire [15 : 0] probe_out0
);
//---------------------------------------------------------> vio core
//---------------------------------------------------------< gig_eth 
wire [47:0]gig_eth_mac_addr;
wire [31:0]gig_eth_ipv4_addr;
wire [31:0]gig_eth_subnet_mask;
wire [31:0]gig_eth_gateway_ip_addr; 
wire [7:0]gig_eth_tx_tdata;
wire gig_eth_tx_tvalid;
wire gig_eth_tx_tready;
wire [7:0]gig_eth_rx_tdata;
wire gig_eth_rx_tvalid;
wire gig_eth_rx_tready;
wire gig_eth_tcp_use_fifo;
wire gig_eth_tx_fifo_wrclk;
wire [31:0]gig_eth_tx_fifo_q;
wire gig_eth_tx_fifo_wren;
wire gig_eth_tx_fifo_full;
wire gig_eth_rx_fifo_rdclk;
wire [31:0]gig_eth_rx_fifo_q;
wire gig_eth_rx_fifo_rden;
wire gig_eth_rx_fifo_empty;

assign gig_eth_mac_addr = {44'h000a3502a75,DIPSw4Bit[3:0]};
assign gig_eth_ipv4_addr = {28'hc0a8020,DIPSw4Bit[3:0]};
assign gig_eth_subnet_mask = 32'hffffff00;
assign gig_eth_gateway_ip_addr = 32'hc0a80201;
//assign gpio_high = 2'b11;
gig_eth gig_eth_inst(
// asynchronous reset
   .GLBL_RST(reset),
// clocks
   .GTX_CLK(clk_125MHz),
   .REF_CLK(board_clk),                           // 200MHz for IODELAY
   // .REF_CLK(clk_320MHz),                           // 200MHz for IODELAY

// PHY interface
   .PHY_RESETN(PHY_RESET_N),
//         -- RGMII Interface
   .RGMII_TXD(RGMII_TXD),
   .RGMII_TX_CTL(RGMII_TX_CTL),
   .RGMII_TXC(RGMII_TXC),
   .RGMII_RXD(RGMII_RXD),
   .RGMII_RX_CTL(RGMII_RX_CTL),
   .RGMII_RXC(RGMII_RXC),
// MDIO Interface
   .MDIO(MDIO),
   .MDC(MDC),
// TCP
   .MAC_ADDR(gig_eth_mac_addr),
   .IPv4_ADDR(gig_eth_ipv4_addr),
   .IPv6_ADDR(128'h0),
   .SUBNET_MASK(gig_eth_subnet_mask),
   .GATEWAY_IP_ADDR(gig_eth_gateway_ip_addr),
   .TCP_CONNECTION_RESET(1'b0),
   .TX_TDATA(gig_eth_tx_tdata),
   .TX_TVALID(gig_eth_tx_tvalid),
   .TX_TREADY(gig_eth_tx_tready),
   .RX_TDATA(gig_eth_rx_tdata),
   .RX_TVALID(gig_eth_rx_tvalid),
   .RX_TREADY(gig_eth_rx_tready),
//fifo8to32 and fifo32to8
   .TCP_USE_FIFO(gig_eth_tcp_use_fifo),
   .TX_FIFO_WRCLK(gig_eth_tx_fifo_wrclk),
   .TX_FIFO_Q(gig_eth_tx_fifo_q),
   .TX_FIFO_WREN(gig_eth_tx_fifo_wren),
   .TX_FIFO_FULL(gig_eth_tx_fifo_full),
   .RX_FIFO_RDCLK(gig_eth_rx_fifo_rdclk),
   .RX_FIFO_Q(gig_eth_rx_fifo_q),
   .RX_FIFO_RDEN(gig_eth_rx_fifo_rden),
   .RX_FIFO_EMPTY(gig_eth_rx_fifo_empty)
);
assign gig_eth_tcp_use_fifo = 1'b1;
assign gig_eth_rx_fifo_rdclk = control_clk;
//---------------------------------------------------------> gig_eth
//---------------------------------------------------------< control_interface
wire control_clk;
wire [35:0]control_fifo_q;
wire control_fifo_empty;
wire control_fifo_rdreq;
wire control_fifo_rdclk;

wire [35:0]cmd_fifo_q;
wire cmd_fifo_empty;
wire cmd_fifo_rdreq;

wire [511:0]config_reg;
wire [15:0]pulse_reg;
wire [175:0]status_reg;

wire control_mem_we;
wire [31:0]control_mem_addr;
wire [31:0]control_mem_din;

wire idata_data_fifo_rdclk;
wire idata_data_fifo_empty;
wire idata_data_fifo_rden;
wire [31:0]idata_data_fifo_dout;
assign control_clk = clk_120MHz;

control_interface  control_interface_inst(
   .RESET(reset),
   .CLK(control_clk),
  // From FPGA to PC
   .FIFO_Q(control_fifo_q),
   .FIFO_EMPTY(control_fifo_empty),
   .FIFO_RDREQ(control_fifo_rdreq),
   .FIFO_RDCLK(control_fifo_rdclk),
  // From PC to FPGA, FWFT
   .CMD_FIFO_Q(cmd_fifo_q),
   .CMD_FIFO_EMPTY(cmd_fifo_empty),
   .CMD_FIFO_RDREQ(cmd_fifo_rdreq),
  // Digital I/O
   .CONFIG_REG(config_reg),
   .PULSE_REG(pulse_reg),
   .STATUS_REG(status_reg),
  // Memory interface
   .MEM_WE(control_mem_we),
   .MEM_ADDR(control_mem_addr),
   .MEM_DIN(control_mem_din),
   .MEM_DOUT(),
  // Data FIFO interface, FWFT
   .DATA_FIFO_Q(idata_data_fifo_dout),
   .DATA_FIFO_EMPTY(idata_data_fifo_empty),
   .DATA_FIFO_RDREQ(idata_data_fifo_rden),
   .DATA_FIFO_RDCLK(idata_data_fifo_rdclk)
);
assign cmd_fifo_q = gig_eth_rx_fifo_q;
assign cmd_fifo_empty = gig_eth_rx_fifo_empty;
assign gig_eth_rx_fifo_rden = cmd_fifo_rdreq;

assign gig_eth_tx_fifo_wrclk = clk_125MHz;
assign control_fifo_rdclk = gig_eth_tx_fifo_wrclk;
assign gig_eth_tx_fifo_q = control_fifo_q[31:0];
assign gig_eth_tx_fifo_wren = ~control_fifo_empty;
assign control_fifo_rdreq = ~gig_eth_tx_fifo_full;
//---------------------------------------------------------> control_interface

//---------------------------------------------------------< gtx_receiver
// wire [3:0] DP_Rx_Clock;
// wire [3:0] DP_Tx_Clock;
// wire [29:0] DP0_Data;
// wire [29:0] DP1_Data;
// wire [29:0] DP2_Data;
// wire [29:0] DP3_Data;
// reg [31:0] DP_C2M_Data [3:0];
wire enableDescrambler;
// wire [3:0] synced;
wire [3:0] enableCh;
wire [3:0] empties;
wire noTimestamp;
wire testMode;
assign enableDescrambler = (config_reg[7*32+15:7*32+0]==16'h0001)?1'b1:1'b0;
// assign LED8Bit = config_reg[15*16+7:15*16+0];
assign LED8Bit = {enableCh,empties};
assign enableCh = config_reg[15*16+3:15*16]; //enable channels
assign noTimestamp = config_reg[13*16];  //Word 13
assign testMode   = config_reg[13*16+1];
wire fifo_reset;
assign fifo_reset = pulse_reg[1];

gtx_receiver gtx_receiver_inst(
.reset(reset),                                              // reset
.clk160(clk_160MHz),                          // input clock
.clk40(clk_40MHz),
.enableCh(enableCh),
.noTimestamp(noTimestamp),
.testMode(testMode),
.fifo_reset(fifo_reset),                        // software reset fifo
.enableDescrambler(enableDescrambler),
.empty(empties),
.Q3_CLK1_GTREFCLK_PAD_P_IN(Q3_CLK1_GTREFCLK_PAD_P_IN),      // GBTCLK1 reference clock input
.Q3_CLK1_GTREFCLK_PAD_N_IN(Q3_CLK1_GTREFCLK_PAD_N_IN),
.DRPCLK_IN(clk_120MHz),                                     // DRPCLK input 100 MHz
.RXP_IN(RXP_IN),                                            // DP[3:0]_M2C 
.RXN_IN(RXN_IN),
.TXP_OUT(TXP_OUT),                                          // DP[3:0]_C2M
.TXN_OUT(TXN_OUT),
.output_fifo_rd_clk(idata_data_fifo_rdclk),     // connect to contorl interface 
.output_fifo_rd_en(idata_data_fifo_rden),       // connect to fifo read enable
.output_fifo_dout(idata_data_fifo_dout),        // fifo data output
.output_fifo_empty(idata_data_fifo_empty)       // fifo data empty

// .DP_Rx_Clock(DP_Rx_Clock),                                  // rx side recovered clock
// .DP_Tx_Clock(DP_Tx_Clock),                                  // tx side recovered clock
// .DP0_Data(DP0_Data),                                        // [29:0] DP0_Data
// .DP1_Data(DP1_Data),                                        // [29:0] DP1_Data
// .DP2_Data(DP2_Data),                                        // [29:0] DP2_Data
// .DP3_Data(DP3_Data),                                        // [29:0] DP3_Data
// .synced(synced),
// .DP0_C2M_Data(DP_C2M_Data[0]),                              // [31:0] Tx1 data input
// .DP1_C2M_Data(DP_C2M_Data[1]),                              // [31:0] Tx2 data input
// .DP2_C2M_Data(DP_C2M_Data[2]),                              // [31:0] Tx3 data input
// .DP3_C2M_Data(DP_C2M_Data[3])                               // [31:0] Tx4 data input
);
//---------------------------------------------------------> gtx_receiver

//---------------------------------------------------------> four channel data stream controller
// wire fifo_reset;
// assign fifo_reset = pulse_reg[1];
// four_chann_data_stream_controller four_chann_data_stream_controller_inst(
// .clk160(clk_160MHz),                          // input clock
// .clk40(clk_40MHz),
// .enableChannel(enableCh),
// .noTimestamp(noTimestamp),
// .synced(synced),
// .reset(reset),                                  // reset signal, high active
// .empty(empties),
// .fifo_reset(fifo_reset),                        // software reset fifo
// .gtx_ch1_data(DP0_Data),                        // gtx1 rx data
// .gtx_ch2_data(DP1_Data),                        // gtx2 rx data
// .gtx_ch3_data(DP2_Data),                        // gtx3 rx data
// .gtx_ch4_data(DP3_Data),                        // gtx4 rx data
// .gtx_ch1_clk(DP_Rx_Clock[0]),                   // gtx1 rx recovered clock
// .gtx_ch2_clk(DP_Rx_Clock[1]),                   // gtx2 rx recovered clock
// .gtx_ch3_clk(DP_Rx_Clock[2]),                   // gtx3 rx recovered clock
// .gtx_ch4_clk(DP_Rx_Clock[3]),                   // gtx4 rx recovered clock
// .output_fifo_rd_clk(idata_data_fifo_rdclk),     // connect to contorl interface 
// .output_fifo_rd_en(idata_data_fifo_rden),       // connect to fifo read enable
// .output_fifo_dout(idata_data_fifo_dout),        // fifo data output
// .output_fifo_empty(idata_data_fifo_empty)       // fifo data empty
// );
//---------------------------------------------------------> four channel data stream controller

//---------------------------------------------------------< IIC
wire START;
wire [1:0]MODE;
wire SL_WR;
wire [6:0]SL_ADDR;
wire [7:0]WR_ADDR;
wire [7:0]WR_DATA0;
wire [7:0]WR_DATA1;
wire [7:0]RD_DATA0;
wire [7:0]RD_DATA1;
wire SDA_OUT;
wire SDA_IN;
wire SDA_T;

assign START = pulse_reg[0];
assign MODE = config_reg[2*32+25:2*32+24];
assign SL_ADDR = config_reg[2*32+23:2*32+17];
assign SL_WR = config_reg[2*32+16];
assign WR_ADDR = config_reg[2*32+15:2*32+8];
assign WR_DATA0 = config_reg[2*32+7:2*32+0];
assign status_reg[15:0] = {RD_DATA1,RD_DATA0};
i2c_wr_bytes i2c_wr_bytes_inst(
.CLK(clk_40MHz),                       //system clock 50Mhz
.RESET(reset),                          //active high reset
.START(START),                          //the rising edge trigger a start, generate by config_reg
.MODE(MODE),                            //'0' is 1 bytes read or write, '1' is 2 bytes read or write,
                                        //'2' is 3 bytes write only , don't set to '3'
.SL_WR(SL_WR),                          //'0' is write, '1' is read
.SL_ADDR(SL_ADDR),                      //slave addr
.WR_ADDR(WR_ADDR),                      //chip internal addr for read and write
.WR_DATA0(WR_DATA0),                    //first byte data for write
.WR_DATA1(WR_DATA1),                    //second byte data for write
.RD_DATA0(RD_DATA0),                    //first byte readout
.RD_DATA1(1),                    //second byte readout
.BUSY("open"),                          //indicates transaction in progress
.SDA_in(SDA),                           //serial data input of i2c bus
.SDA_out(SDA_OUT),                      //serial data output of i2c bus
.SDA_T(SDA_T),                          //serial data direction of i2c bus
.SCL(SCL)                               //serial clock output of i2c bus
);
assign SDA = SDA_T ? 1'bz : SDA_OUT;
//---------------------------------------------------------> IIC

//----------------------------------------------------------------< SRO
// wire [15:0] write_num = config_reg[7*32+31:7*32+16];
// simple_readout simple_readout_inst(
// .clock(clk_100MHz),              // input clock 100 MHz
// .reset(reset),                   // reset signal, low active
// .start(pulse_reg[7]),            // start signal is used to trigger BC0 and L1ACC, generated by config_reg
// .write_num(write_num),           // write BC0 and L1ACC loop number
// .BC0_OUTP(BC0_OUTP),             // Binary counter clear signal Positive
// .BC0_OUTN(BC0_OUTN),             // Binary counter clear signal Negative
// .L1ACC_OUTP(L1ACC_OUTP),         // L1 accumulation signal Positive
// .L1ACC_OUTN(L1ACC_OUTN)          // L1 accumulation signal Negative
//);
//----------------------------------------------------------------< SRO

endmodule
