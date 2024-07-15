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
// `include "commonDefinition.v"

module kc705_mig(
input SYS_RST,              //system reset
input SYS_CLK_P,            //system clock 40MHz
input SYS_CLK_N,
input BOARD_CLK_P,            //on-board clock 200MHz
input BOARD_CLK_N,
input SGMIICLK_Q0_P,        //125MHz for GTP/GTH/GTX  for 1G Ethernet interface
input SGMIICLK_Q0_N,
//----------------------< HDMI to AIDA
input HDMI_TRIG_P,
input HDMI_TRIG_N,
input HDMI_RST_P,
input HDMI_RST_N,
input HDMI_SYNC_P,
input HDMI_SYNC_N,
output HDMI_BUSY_P,
output HDMI_BUSY_N,
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
output wire [3:0] TXN_OUT,
// input wire EX_CLK320_P,
// input wire EX_CLK320_N,
//
input wire ETROC2_RX0_P,
input wire ETROC2_RX0_N,

input wire ETROC2_RX1_P,
input wire ETROC2_RX1_N,

input wire ETROC2_RX2_P,
input wire ETROC2_RX2_N,

input wire ETROC2_RX3_P,
input wire ETROC2_RX3_N,
//Pushbutton
input wire button_c,
input wire button_n,
input wire button_s,
input wire button_e,
input wire button_w,

//---------------------< SRO
// output wire BC0_OUTP,
// output wire BC0_OUTN,
   output wire FC3_OUTP,
   output wire FC3_OUTN,
   output wire FC2_OUTP,
   output wire FC2_OUTN,
   output wire FC1_OUTP,
   output wire FC1_OUTN,
   output wire FC0_OUTP,
   output wire FC0_OUTN,
   
   output reg fake_trigger,
   input external_trigger

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
   // .ODIV2("open"),              // 1-bit output: Refer to Transceiver User Guide
   .ODIV2(),
   .CEB(1'b0),                  // 1-bit input: Refer to Transceiver User Guide
   .I(SGMIICLK_Q0_P),           // 1-bit input: Refer to Transceiver User Guide
   .IB(SGMIICLK_Q0_N)           // 1-bit input: Refer to Transceiver User Guide
);

// wire ETROC2_RX0;
// wire ETROC2_RX1;
// wire ETROC2_RX2;
// wire ETROC2_RX3;
wire [3:0] ETROC2_RX;

IBUFDS #(.DIFF_TERM("TRUE"),.IBUF_LOW_PWR("FALSE"),.IOSTANDARD("DEFAULT"))IBUFDS_Inst2(
      .O(ETROC2_RX[0]),
      .I(ETROC2_RX0_P),
      .IB(ETROC2_RX0_N)
);

IBUFDS #(.DIFF_TERM("TRUE"),.IBUF_LOW_PWR("FALSE"),.IOSTANDARD("DEFAULT"))IBUFDS_Inst3(
      .O(ETROC2_RX[1]),
      .I(ETROC2_RX1_P),
      .IB(ETROC2_RX1_N)
);

IBUFDS #(.DIFF_TERM("TRUE"),.IBUF_LOW_PWR("FALSE"),.IOSTANDARD("DEFAULT"))IBUFDS_Inst4(
      .O(ETROC2_RX[2]),
      .I(ETROC2_RX2_P),
      .IB(ETROC2_RX2_N)
);

IBUFDS #(.DIFF_TERM("TRUE"),.IBUF_LOW_PWR("FALSE"),.IOSTANDARD("DEFAULT"))IBUFDS_Inst5(
      .O(ETROC2_RX[3]),
      .I(ETROC2_RX3_P),
      .IB(ETROC2_RX3_N)
);



BUFG BUFG_inst (
   .O(clk_sgmii),               // 1-bit output: Clock output
   .I(clk_sgmii_i)              // 1-bit input: Clock input
);
assign clk_125MHz = clk_sgmii;
wire board_clk;
IBUFDS #(.DIFF_TERM("TRUE"),.IBUF_LOW_PWR("FALSE"),.IOSTANDARD("DEFAULT"))IBUFDS_Inst(
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
wire [15:0] trigger_frequence;
wire trigger_source;
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
  .probe_out0(trigger_frequence),   // output wire [15 : 0] probe_out0
  .probe_out1(trigger_source)
);
//reg fake_trigger;
reg [15:0]trigger_cnt;

always @(posedge sys_clk)
    begin
        if (reset)
            begin
                fake_trigger <= 0;
                trigger_cnt <= 0;
            end
        else
            begin
                trigger_cnt <= (trigger_cnt==trigger_frequence)? 0: trigger_cnt + 1;
                fake_trigger <= (trigger_cnt==trigger_frequence)? 1: 0;
            end
    end

//---------------------------------------------------------> vio core
//---------------------------------------------------------< gig_eth 
wire rstn = ~(reset|fifo_reset);

wire [47:0]gig_eth_mac_addr;
wire [31:0]gig_eth_ipv4_addr;
wire [31:0]gig_eth_subnet_mask;
wire [31:0]gig_eth_gateway_ip_addr; 
wire [7:0]gig_eth_tx_tdata;
wire gig_eth_tx_tvalid;
assign gig_eth_tx_tdata = 8'd0;
assign gig_eth_tx_tvalid = 1'b0;
wire gig_eth_tx_tready;
wire [7:0]gig_eth_rx_tdata;
wire gig_eth_rx_tvalid;
wire gig_eth_rx_tready;
assign gig_eth_rx_tready = 1'b0;
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
   .MEM_DOUT(32'd0),
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
reg hdmi_busy;
// assign hdmi_busy = 1'b0;
OBUFDS #(
      .IOSTANDARD("LVDS18"),    // Specify the output I/O standard
      .SLEW("SLOW")             // Specify the output slew rate
   ) OBUFDS_BUSY_inst(
      .O(HDMI_BUSY_P),           // Diff_p output (connect directly to top-level port)
      .OB(HDMI_BUSY_N),          // Diff_n output (connect directly to top-level port)
      .I(hdmi_busy)                 // Buffer input 
   );

wire hdmi_trig;
IBUFDS #(.DIFF_TERM("TRUE"),.IBUF_LOW_PWR("FALSE"),.IOSTANDARD("LVDS_25"))IBUFDS_hdmi_trig_Inst(
      .O(hdmi_trig),
      .I(HDMI_TRIG_P),
      .IB(HDMI_TRIG_N)
);

wire hdmi_rst;
IBUFDS #(.DIFF_TERM("TRUE"),.IBUF_LOW_PWR("FALSE"),.IOSTANDARD("LVDS_25"))IBUFDS_hdmi_rst_Inst(
      .O(hdmi_rst),
      .I(HDMI_RST_P),
      .IB(HDMI_RST_N)
);

wire hdmi_sync;
IBUFDS #(.DIFF_TERM("TRUE"),.IBUF_LOW_PWR("FALSE"),.IOSTANDARD("LVDS_25"))IBUFDS_hdmi_sync_Inst(
      .O(hdmi_sync),
      .I(HDMI_SYNC_P),
      .IB(HDMI_SYNC_N)
);

//---------------------------------------------------------< gtx_receiver
localparam btETROC1Board = 1'b0;
localparam btETROC2Board = 1'b1;
localparam dsPRBS = 2'b11;
localparam dsETROC1DataGen = 2'b01;
localparam dsETROC2DataGen = 2'b10;
localparam dsGTX = 2'b00;


wire enableAutoSync;
wire notGTX;   //ETROC2 do not use GTX
wire notGTXPolarity; 
wire dumping_mode;
wire debug_mode;
wire add_ethernet_filler;
wire simple_handshake;
wire sample_event;
wire auto_mode;
wire falling_edge;
wire [3:0] bit_latency;
// wire session_DAQ_on;
wire resume;
wire [3:0] enableCh;
wire [2:0] ws_trig_stop_delay;
wire en_ws_trig;
wire triple_trig;
wire trig_or_logic;
wire global_trig;
wire [4:0] global_trig_delay;
// wire [3:0] empties;
// wire [3:0] boardType;
wire [2:0] LED_Pages;
wire [1:0] status_Pages;
wire [7:0] dataSource;
wire  synched;
wire  dataError;
wire fixed_time_filler;
wire auto_prescale;
wire external_trigger_en;
// wire [31:0] fixedCode;
wire [1:0] dataRate; //00:320 Mbps, 01:640 Mbps, others: 1280 Mbps
// wire noTimestamp;
// wire ETROC1testMode;
// wire memFastcommon;
// assign enableAutoSync = (config_reg[7*32+15:7*32+0]==16'h0001)?1'b1:1'b0;
assign enableAutoSync = config_reg[14*16+0];
assign notGTX = config_reg[14*16+1];
assign notGTXPolarity = config_reg[14*16+2];
assign dumping_mode = config_reg[14*16+3];
assign debug_mode = config_reg[14*16+4];
assign add_ethernet_filler = config_reg[14*16+5];
assign simple_handshake = config_reg[14*16+6];
assign sample_event = config_reg[14*16+7];
assign auto_mode = ~(config_reg[14*16+8]); 
assign falling_edge = config_reg[14*16+9];
assign bit_latency = (4'd9+config_reg[14*16+12:14*16+10]); //default at 9
assign external_trigger_en = config_reg[14*16+13];
assign fixed_time_filler = config_reg[14*16+14];
assign auto_prescale = config_reg[14*16+15];
// assign session_DAQ_on = config_reg[14*16+6];

wire [503:0] latch_dump_data;
// `ifdef DEBUG_DATA_SORT
//   wire [2:0] debug_data_sort_state;
//   wire [3:0] debug_emptyETROC2FIFOCh;
//   wire [3:0] debug_sortMask;
//   wire [1:0] debug_readToken;
//   wire [2:0] debug_pre_state;
//   wire [3:0] debug_isHeader;
//   wire debug_chip_data_buffer_empty;
//   wire [39:0] debug_data_word;
// //   wire [39:0] debug_data_word2;
//   wire snapshot;
//   wire [47:0] debug_state_seq;
// `endif

// wire [7:0] ETROC2_RX_DATA;
// noGTXdataSampler noGTXdataSamplerInst
// (
//    .clk40(clk_40MHz),
//    .clk320(clk_320MHz),
//    .enable(notGTX),
//    .polarity(notGTXPolarity),
//    .din(ETROC2_RX0),
//    .dout(ETROC2_RX_DATA)
// );

// assign LED8Bit = config_reg[15*16+7:15*16+0];
wire ACK_ERROR;
wire BUSY;

localparam header   = 2'b00;
localparam data     = 2'b01;
localparam trailer  = 2'b10;
localparam idle     = 2'b11;

// assign LED8Bit = {4'd9,DIPSw4Bit[3:0]};
//  assign LED8Bit = config_reg[13*16+7:13*16+0];
wire bitSync;
wire [3:0] GTXLinkError;
wire [1:0] dataType;
// wire dataValid;
// wire wrEnFIFO;
// wire rdenBuffer;
// wire validBuffer;
// wire emptyFIFO;
wire [3:0] GTXBitSync;
wire [4:0] trigDataSize;
wire isHeader = dataType == header;
wire isData = dataType == data;
wire isTrailer = dataType == trailer;
wire isIdle = dataType == idle;
wire enhenceData;
reg [9:0] timer;
wire isDataEx;
localparam upLimitTime = 10'd256;
always @(posedge clk_40MHz)
begin
   if(~rstn)
   begin
      timer <= upLimitTime;
   end
   if(enhenceData)
   begin
      if(isData)begin
         timer <= 10'd0;
      end
      else if (timer < upLimitTime)
      begin
         timer <= timer + 1;
      end
   end
end
reg tickTok; //second counter
reg flashingLEDBit;
always @(posedge clk_40MHz)
begin
   if(~rstn)
   begin
      flashingLEDBit <= 1'b0;      
   end
   else if(tickTok) flashingLEDBit <= ~flashingLEDBit;
end

reg [2:0] delayResume;
always @(posedge clk_40MHz)
begin
   if(~rstn)delayResume <= 3'b000;
   else delayResume <= {delayResume[1:0], pulse_reg[7]};
end
assign resume = ~delayResume[2]&delayResume[1]; //risinge edge trig

wire hold_L1A_cmd;
wire hold_L1A;
wire chip_data_ready;
wire trigError;
wire trigSynched;
wire linkConsistent;
wire BCIDMatchError;
wire L1CountMatchError;
wire latch_edge;
wire edge_found;
wire align_done;
wire align_error;
wire sampled_align_error;
reg [9:0] sample_count;
reg dl_align_error;
always @(posedge clk_40MHz)
begin
   if(~rstn)begin
      sample_count <= 10'd0;
      dl_align_error <= 1'b0;
   end
   else begin
      dl_align_error <= align_error;
      if(dl_align_error != align_error)begin
         sample_count <= sample_count + 1;
      end
   end
end

assign sampled_align_error = sample_count[9];

assign isDataEx = enhenceData ? timer < upLimitTime : isData;
reg [1:0] monitorSel;
wire [15:0] reset_counter;
//assign GTXbitSync = ~notGTX & GTXBitSync;
//  assign LED8Bit =  LED_Pages == 3'd0 ? {boardType,4'd0} :   // LED_Pages == 3'd0 ? {boardType,empties} :
//                   (LED_Pages == 3'd1 ? dataSource :
//                   (LED_Pages == 3'd2 ? {synched,dataError} :
//                   (LED_Pages == 3'd3 ? {isHeader,isDataEx,isTrailer,isIdle,trigSynched,trigError,synched[0],dataError[0]} : 
//                   (LED_Pages == 3'd4 ? 8'd1 :
//                   (LED_Pages == 3'd5 ? 8'd2 :
//                   (LED_Pages == 3'd6 ? 8'd3 : 8'd4))))));
// `ifdef  DEBUG_DATA_SORT
//                   // (LED_Pages == 3'd1 ? {3'd0,debug_readToken,debug_data_sort_state[0]} :
//                   // (LED_Pages == 3'd2 ? {debug_sortMask,debug_emptyETROC2FIFOCh} : 

// assign LED8Bit =   LED_Pages == 3'd0 ? {monitorSel[1:0],isDataEx,linkConsistent,trigSynched,trigError,synched,dataError} :
//                   (LED_Pages == 3'd1 ? {1'b0,debug_chip_data_buffer_empty,1'b0,debug_data_sort_state[2],1'b0,debug_data_sort_state[1],1'b0,debug_data_sort_state[0]} :
//                   (LED_Pages == 3'd2 ? {1'b0,hold_L1A,1'b0,hold_L1A_cmd,1'b0,debug_readToken[1],1'b0,debug_readToken[0]} : 
//                   (LED_Pages == 3'd3 ? {1'b0,debug_sortMask[3],1'b0,debug_sortMask[2],1'b0,debug_sortMask[1],1'b0,debug_sortMask[0]} :
//                   (LED_Pages == 3'd4 ? {1'b0,debug_emptyETROC2FIFOCh[3],1'b0,debug_emptyETROC2FIFOCh[2],1'b0,debug_emptyETROC2FIFOCh[1],1'b0,debug_emptyETROC2FIFOCh[0]} :
//                   (LED_Pages == 3'd5 ? {1'b0,enableCh[3],1'b0,enableCh[2],1'b0,enableCh[1],1'b0,enableCh[0]} :
//                   (LED_Pages == 3'd6 ? {1'b0,debug_pre_state[3],1'b0,debug_pre_state[2],1'b0,debug_pre_state[1],1'b0,debug_pre_state[0]} : 
//                    {1'b0,debug_isHeader[3],1'b0,debug_isHeader[2],1'b0,debug_isHeader[1],1'b0,debug_isHeader[0]}))))));
// `else
wire LED_MSB;
assign LED_MSB = monitorSel[1]^sampled_align_error;
assign LED8Bit = LED_Pages[2] == 1'b0 ? {LED_MSB,monitorSel[0],isDataEx,linkConsistent,trigSynched,trigError,synched,dataError}
                                      : {flashingLEDBit,1'b0,latch_edge,edge_found,align_error,align_done,L1CountMatchError,BCIDMatchError}; 

// `endif

// assign LED8Bit = LED_Pages[2] == 1'b0 ? {hold_L1A_cmd,hold_L1A,chip_data_ready,linkConsistent,trigSynched,trigError,synched,dataError}
//                                       : {flashingLEDBit,5'd0,L1CountMatchError,BCIDMatchError}; 


// assign LED8Bit = {1'b0,trigger_fifo_full,isHeader,isDataEx,trigSynched,trigError,synched,dataError};

assign enableCh = config_reg[15*16+3:15*16]; //enable channels
assign ws_trig_stop_delay = config_reg[15*16+6:15*16+4];
assign en_ws_trig = config_reg[15*16+7];
assign triple_trig = config_reg[15*16+8];
assign trig_or_logic = config_reg[15*16+9];
assign global_trig = config_reg[15*16+10];
assign global_trig_delay = config_reg[15*16+15:15*16+11];
// assign boardType = config_reg[15*16+7:15*16+4];
assign dataSource = config_reg[15*16+15:15*16+8];
assign dataRate = config_reg[13*16+6:13*16+5];
assign LED_Pages = config_reg[13*16+4:13*16+2];
assign status_Pages = config_reg[13*16+1:13*16+0];
// assign noTimestamp = config_reg[13*16];  //Word 13
// assign ETROC1testMode   = config_reg[13*16+1];
wire fifo_reset;
assign fifo_reset = pulse_reg[1];
assign trigDataSize[4:2] = 3'd0;
// wire etroc2Trig;
// wire timerStart;
// wire [5:0] timerSeconds;
wire [31:0] headerCounter;
wire [31:0] dataCounter;
wire [31:0] trigCounter;
wire [15:0] refreshCounter;
wire [3:0] trigSelMask;
// assign monitorSel = LED_Pages[1:0];
// assign timerStart = pulse_reg[5];
// assign timerSeconds = config_reg[7*16+5:7*16+0];

wire clrError;
reg [1:0] delayPB;
assign clrError = delayPB[1];
always @(posedge clk_40MHz)
begin
   if(~rstn)delayPB <= 2'b00;
   // else delayPB <= {delayPB[0],(button_c | pulse_reg[5])};
   else delayPB <= {delayPB[0], pulse_reg[5]};

end

// wire [3:0] page_sel;
reg [1:0] delayPB1;
reg [1:0] delayPB2;
reg [1:0] delayPB3;
reg [1:0] delayPB4;

reg [2:0] delayPB_c;

always @(posedge clk_40MHz)
begin
   if(~rstn)begin
      delayPB1 <= 2'b00;
      delayPB2 <= 2'b00;
      delayPB3 <= 2'b00;
      delayPB4 <= 2'b00;
      delayPB_c <= 3'b000;
   end
   else begin 
      delayPB1 <= {delayPB1[0],button_n};
      delayPB2 <= {delayPB2[0],button_e};
      delayPB3 <= {delayPB3[0],button_s};
      delayPB4 <= {delayPB4[0],button_w};
      delayPB_c <= {delayPB_c[1:0],button_c};
   end
end

wire test_raw_data_falling_edge;
assign test_raw_data_falling_edge = ~(delayPB_c[1]) & delayPB_c[2];
// assign page_sel[0] = delayPB1[1];
// assign page_sel[1] = delayPB2[1];
// assign page_sel[2] = delayPB3[1];
// assign page_sel[3] = delayPB4[1];

// reg LED_Pages_Change;
// reg [1:0] LED_Pages_Reg;
// always @(posedge clk_40MHz)
// begin
//    if(~rstn)
//    begin
//       LED_Pages_Change <= 1'b0;
//       LED_Pages_Reg <= LED_Pages[1:0];
//    end
//    else if(LED_Pages_Reg != LED_Pages[1:0]) 
//    begin
//       LED_Pages_Reg <= LED_Pages[1:0];
//       LED_Pages_Change <= 1'b1;
//    end
//    else 
//       LED_Pages_Change <= 1'b0;
// end

wire clearWSTrigBlock;
reg [2:0] delayCT;
always @(posedge clk_40MHz)
begin
   if(~rstn)delayCT <= 3'b000;
   else delayCT <= {delayCT[1:0], pulse_reg[6]};
end
assign clearWSTrigBlock = ~delayCT[2]&delayCT[1]; //risinge edge trig
wire ws_start;
assign ws_start = clearWSTrigBlock;
reg trig_block;
wire ws_trigger  = ~trig_block & trigOut;
always @(posedge clk_40MHz)
begin
   if(~rstn)begin
      trig_block <= 1'b1;
   end
   else if(~trig_block)
   begin
      trig_block <= trigOut;
   end
   else if(clearWSTrigBlock)
   begin
      trig_block <= 1'b0;
   end
end

reg [6:0] trigDelayLine;
always @(posedge clk_40MHz)
begin
   if(~rstn)begin
      trigDelayLine <= 7'd0;
   end
   else begin
      trigDelayLine <= {trigDelayLine[5:0],ws_trigger };
   end
end

wire [7:0] wireTrigDelayLine = {trigDelayLine,ws_trigger};

wire ws_stop;
assign ws_stop = wireTrigDelayLine[ws_trig_stop_delay];


always @(posedge clk_40MHz)
begin
   if(~rstn)
      monitorSel <= 2'b00;
   else monitorSel <= LED_Pages[1:0];
   // else if(LED_Pages_Change)monitorSel <= LED_Pages_Reg;
   // else if(delayPB1[1]) monitorSel <= 2'b00;
   // else if(delayPB2[1]) monitorSel <= 2'b01;
   // else if(delayPB3[1]) monitorSel <= 2'b10;
   // else if(delayPB4[1]) monitorSel <= 2'b11;
end

reg [2:0] hdmi_trig_reg;
always @(posedge clk_40MHz)
begin
   if(~rstn)begin
      hdmi_trig_reg <= 3'd0;
   end
   else begin
      hdmi_trig_reg <= {hdmi_trig_reg[1:0],hdmi_trig};
   end
end

wire hdmi_trig_level;
wire hdmi_trig_for_L1A;
assign hdmi_trig_level = ~hdmi_trig_reg[2]&hdmi_trig_reg[1];
assign hdmi_trig_for_L1A = simple_handshake ? hdmi_trig_level : hdmi_trig;

reg [31:0] global_trig_delayline;
reg [31:0] local_trig_delayline;

wire center_global_trig;
wire delayed_global_trig;
always @(posedge clk_40MHz)
begin
   if(~rstn)begin
      global_trig_delayline <= {32{1'b0}};
      local_trig_delayline <= {32{1'b0}};
   end
   else begin
         global_trig_delayline <= {global_trig_delayline[30:0],hdmi_trig_for_L1A};
         local_trig_delayline  <= {local_trig_delayline[30:0],trigOut};
   end
end

assign center_global_trig = global_trig_delayline[15];
assign delayed_global_trig = global_trig_delayline[global_trig_delay];

wire final_trig =  en_ws_trig ? ws_trigger : (global_trig ? delayed_global_trig : trigOut);

reg [255:0] trig_hist_counter;
reg [7:0] global_trigger_counter;
reg hist_filled;
wire [255:0] next_hist_counter;
reg [2:0] start_hist_counter_reg;
always @(posedge clk_40MHz)
begin
   start_hist_counter_reg <= {start_hist_counter_reg[1:0],start_hist_counter};
end
always @(posedge clk_40MHz)
begin
   if(~rstn | start_hist_counter_reg[2])begin
      hist_filled <= 1'b0;
      global_trigger_counter <= 8'd0;
      trig_hist_counter <= {256{1'b0}}; //clear counter
   end
   else if(~hist_filled)begin
      if(global_trigger_counter == 8'd255)hist_filled <= 1'b1;
      else if(center_global_trig)begin 
         global_trigger_counter  <= global_trigger_counter + 1;
         trig_hist_counter       <= next_hist_counter;
      end
   end
end

genvar i;
generate
for(i=0;i<32;i=i+1)
begin
   assign next_hist_counter[i*8+7:i*8+0] =  center_global_trig & local_trig_delayline[i]? 
                                            trig_hist_counter[i*8+7:i*8+0] + 1 : 
                                            trig_hist_counter[i*8+7:i*8+0];
end
endgenerate

wire [3:0] delayTrigCh;
wire [15:0] combineTriggerCount;
wire buffer_almost_full;
wire buffer_half_full;
wire start_DAQ_pulse;
wire stop_DAQ_pulse;
reg [2:0] start_DAQ_pulse_reg;
reg [2:0] stop_DAQ_pulse_reg;
reg session_DAQ_on;
always @(posedge clk_40MHz)
begin
   if(~rstn)
   begin
      session_DAQ_on <= 1'b0;
      start_DAQ_pulse_reg <= 3'd0;
      stop_DAQ_pulse_reg <= 3'd0;
   end
   else begin
      start_DAQ_pulse_reg <= {start_DAQ_pulse_reg[1:0],start_DAQ_pulse};
      stop_DAQ_pulse_reg <= {stop_DAQ_pulse_reg[1:0],stop_DAQ_pulse};
      if(~start_DAQ_pulse_reg[2] & start_DAQ_pulse_reg[1])begin
         session_DAQ_on <= 1'b1;
      end
      else if(~stop_DAQ_pulse_reg[2] & stop_DAQ_pulse_reg[1])begin
         session_DAQ_on <= 1'b0;
      end
   end
end


// reg [2:0] session_DAQ_on_dly;
// always @(posedge clk_40MHz)
// begin
//    if(~rstn)
//    begin
//       session_DAQ_on_dly <= 3'd0;
//       session_DAQ_on <= 1'b0;
//    end
//    else 
//       session_DAQ_on_dly <= {session_DAQ_on_dly[1:0],session_DAQ_on};
//       if(start_DAQ)session_DAQ_on <= 1'b1;
//       if(stop_DAQ)session_DAQ_on <= 1'b0;
// end

always @(posedge clk_40MHz)
begin
   if(~rstn)begin
      hdmi_busy <= 1'b0;
   end
   else if(hdmi_trig)begin
      hdmi_busy <= session_DAQ_on & global_trig;
   end
   else begin
      hdmi_busy <= buffer_almost_full & session_DAQ_on & global_trig;
   end
end
// assign hdmi_busy = buffer_almost_full;
wire [3:0] prescale_factor;
wire inject_SEU;
wire dis_regular_filler;
wire dis_descr_raw_data;

gtx_receiver gtx_receiver_inst(
.reset(reset),         
.tickTok(tickTok),                                     // ticktok for a second
.test_raw_data_falling_edge(test_raw_data_falling_edge),
.inject_SEU(inject_SEU),
.dis_descr_raw_data(dis_descr_raw_data),
.dis_regular_filler(dis_regular_filler),
.prescale_factor(prescale_factor),
.auto_prescale(auto_prescale),
.fixed_time_filler(fixed_time_filler),
.sample_event(sample_event),
.add_ethernet_filler(add_ethernet_filler),
.session_DAQ_on(session_DAQ_on),
.rate(dataRate),
.clk160(clk_160MHz),                          // input clock
.clk40(clk_40MHz),
.clk320(clk_320MHz),
.clk200(board_clk),
.bit_latency(bit_latency),
.auto_mode(auto_mode),
.falling_edge(falling_edge),
.monitorSel(monitorSel),
.clrError(clrError),
.delayTrigCh(delayTrigCh),
.trig_or_logic(trig_or_logic),
.trigSelMask(trigSelMask),
.noGTX_RX(ETROC2_RX),
.headerCounter(headerCounter),
.dataCounter(dataCounter),
.enableCh(enableCh),
.notGTX(notGTX),
.notGTXPolarity(notGTXPolarity),
.trigDataSize(trigDataSize),
.linkConsistent(linkConsistent),
.fifo_reset(fifo_reset),                        // software reset fifo
.enableAutoSync(enableAutoSync),
.synched(synched),
.dataError(dataError),
.GTXLinkError(GTXLinkError),
.dataType(dataType),
.GTXBitSync(GTXBitSync),
.trigError(trigError),
.trigSynched(trigSynched),
.flashingBit(flashingBit),
.trigOut(trigOut),
.trigCounter(trigCounter),
.refreshCounter(refreshCounter),
.Q3_CLK1_GTREFCLK_PAD_P_IN(Q3_CLK1_GTREFCLK_PAD_P_IN),      // GBTCLK1 reference clock input
.Q3_CLK1_GTREFCLK_PAD_N_IN(Q3_CLK1_GTREFCLK_PAD_N_IN),
.DRPCLK_IN(clk_120MHz),                                     // DRPCLK input 100 MHz
.RXP_IN(RXP_IN),                                            // DP[3:0]_M2C 
.RXN_IN(RXN_IN),
.TXP_OUT(TXP_OUT),                                          // DP[3:0]_C2M
.TXN_OUT(TXN_OUT),
.combineTriggerCount(combineTriggerCount),
.L1CountMatchError(L1CountMatchError),
.BCIDMatchError(BCIDMatchError),
.hold_L1A(hold_L1A),
.dumping_mode(dumping_mode),
.debug_mode(debug_mode),
.resume(resume),
.latch_dump_data(latch_dump_data),
// `ifdef DEBUG_DATA_SORT
//   .debug_data_sort_state(debug_data_sort_state),
//   .debug_emptyETROC2FIFOCh(debug_emptyETROC2FIFOCh),
//   .debug_sortMask(debug_sortMask),
//   .debug_readToken(debug_readToken),
//   .debug_pre_state(debug_pre_state),
//   .debug_isHeader(debug_isHeader),
//    .debug_chip_data_buffer_empty(debug_chip_data_buffer_empty),
//    .debug_data_word(debug_data_word),
//    // .debug_data_word2(debug_data_word2),
//    .snapshot(snapshot),
//    .debug_state_seq(debug_state_seq),
// `endif
.latch_edge(latch_edge),
.edge_found(edge_found),
.align_done(align_done),
.align_error(align_error),
.chip_data_ready(chip_data_ready),
.buffer_almost_full(buffer_almost_full),
.buffer_half_full(buffer_half_full),
.reset_counter(reset_counter),
.output_fifo_rd_clk(idata_data_fifo_rdclk),     // connect to contorl interface 
.output_fifo_rd_en(idata_data_fifo_rden),       // connect to fifo read enable
.output_fifo_dout(idata_data_fifo_dout),        // fifo data output
.output_fifo_empty(idata_data_fifo_empty)       // fifo data empty
);
//---------------------------------------------------------> gtx_receiver

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
//if mode is 2, write WR_ADDR,WR_ADDRMSB and WR_DATA
assign WR_DATA0 = MODE == 2'b10 ? config_reg[6*16+7:6*16+0] : config_reg[2*32+7:2*32+0]; 
assign WR_DATA1 = MODE == 2'b10 ? config_reg[2*32+7:2*32+0] : 8'd0; 

// assign status_reg = {160'd0,RD_DATA1,RD_DATA0};
wire enableL1Trig;
// wire [31:0] dataTrigCount;
// assign dataTrigCount = ~enableL1Trig ? trigCounter : dataCounter;
// `ifdef DEBUG_DATA_SORT
// assign status_reg = status_Pages == 2'b00 ? {combineTriggerCount,trigCounter,refreshCounter,headerCounter,dataCounter,8'd0,LED8Bit,8'd0,RD_DATA1,6'd0,BUSY,ACK_ERROR,RD_DATA0} :
//                                            {debug_state_seq,reset_counter,44'd0,debug_data_word,debug_isHeader,enableCh,debug_emptyETROC2FIFOCh,debug_sortMask,hold_L1A,hold_L1A_cmd,debug_readToken,debug_chip_data_buffer_empty,snapshot,debug_pre_state,debug_data_sort_state};
// `else
wire hist_fill_done = hist_filled;
assign status_reg = status_Pages == 2'b00 ? {combineTriggerCount,trigCounter,refreshCounter,headerCounter,dataCounter,8'd0,LED8Bit,8'd0,RD_DATA1,6'd0,BUSY,ACK_ERROR,RD_DATA0}: 
                     (status_Pages == 2'b01 ? {trig_hist_counter[175:0]}:
                     (status_Pages == 2'b10 ? {{5{16'H3C5C}},14'H0F17,session_DAQ_on,hist_fill_done,trig_hist_counter[255:176]}:{176{1'b0}}));
                  //  (status_Pages == 2'b01 ? {8'd0,latch_dump_data[167:0]}:
                  //  (status_Pages == 2'b10 ? {6'd0,buffer_almost_full,hold_L1A,latch_dump_data[335:168]}:{8'd0,latch_dump_data[503:336]}));
                   

// `endif
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
.RD_DATA1(RD_DATA1),                    //second byte readout
.ACK_ERROR(ACK_ERROR),
.BUSY(BUSY),                          //indicates transaction in progress
.SDA_in(SDA),                           //serial data input of i2c bus
.SDA_out(SDA_OUT),                      //serial data output of i2c bus
.SDA_T(SDA_T),                          //serial data direction of i2c bus
.SCL(SCL)                               //serial clock output of i2c bus
);
assign SDA = SDA_T ? 1'bz : SDA_OUT;
//---------------------------------------------------------> IIC

wire period;
wire hold;
wire fcStart;
wire [3:0] inputCmd;
wire [15:0] duration;
wire [11:0] initAddressFirst;
wire [11:0] initAddressLast;
wire [7:0] errorMask;
wire errInjPulse;
wire initPulse;
wire start_hist_counter;
wire start_DAQ_pulse;
wire stop_DAQ_pulse;    
assign errorMask   = config_reg[12*16 + 15:12*16 + 8];
assign inputCmd   = config_reg[12*16 + 3:12*16 + 0];
assign hold = 1'b0;
assign period   = config_reg[12*16 + 5];
assign fcStart = pulse_reg[2];
assign errInjPulse = pulse_reg[3];
assign initPulse = pulse_reg[4];
assign resumePulse = pulse_reg[7];
assign start_hist_counter = pulse_reg[8];
assign start_DAQ_pulse = pulse_reg[9];
assign stop_DAQ_pulse = pulse_reg[10];
assign duration = config_reg[11*16 + 15 : 11*16 + 0];
assign prescale_factor = config_reg[10*16 + 15 : 10*16 + 12];
assign initAddressFirst = config_reg[10*16 + 11 : 10*16 + 0];
assign initAddressLast = config_reg[9*16 + 11 : 9*16 + 0];
assign delayTrigCh = config_reg[7*16 + 9 : 7*16 + 6];
assign inject_SEU = config_reg[7*16 + 0];
assign dis_descr_raw_data = config_reg[7*16+2];
assign dis_regular_filler = config_reg[7*16 + 1];
assign trigDataSize[1:0] = config_reg[12*16 + 7 : 12*16 + 6];

wire fastCommandMem;
wire [9:0] L1Delay;
assign L1Delay = config_reg[8*16 + 9 : 8*16 + 0];
assign enableL1Trig = config_reg[8*16 + 10];
wire delayL1A;
assign enhenceData = config_reg[8*16 + 11];
assign trigSelMask = config_reg[8*16 + 15 : 8*16 + 12];
assign hold_L1A_cmd = hold_L1A | (~auto_prescale&buffer_almost_full);

reg external_trigger_reg;
always @(posedge clk_40MHz)
    begin
        if (reset)
            begin
               external_trigger_reg <= 'd0; 
            end
        else
            begin
                external_trigger_reg <= external_trigger;
            end
    end
    
wire external_trigger_leading_edge;
assign external_trigger_leading_edge = external_trigger & !external_trigger_reg;

ETROC2FastCommandMemController ETROC2FastCommandMemControllerInst
(
   .clk40(clk_40MHz),
   .clk320(clk_320MHz),
   .rstn(rstn),
   .triple_trig(triple_trig),
   .hold_L1A(hold_L1A_cmd),
   .errInjPulse(errInjPulse),
   .period(period),
   .fake_trigger(external_trigger_leading_edge),
   .trigger_source(external_trigger_en),
   // .L1Trig(trigOut),
   .L1Trig(final_trig),
   .ws_stop_sig(ws_stop),
   .ws_start_sig(ws_start),
   .en_ws_trig(en_ws_trig),
   .L1Delay(L1Delay),
   .enableL1Trig(enableL1Trig),
   .initPulse(initPulse),
   .errorMask(errorMask),
   .initCmd(inputCmd),
   .startPulse(fcStart),
   .initAddressFirst(initAddressFirst),
   .initAddressLast(initAddressLast),
   .execToAddress(duration[11:0]),
   .delayL1A(delayL1A),
   .fastCommand(fastCommandMem)
);

reg [25:0] clockCounter;
always @(posedge clk_40MHz)
begin
    if(~rstn)begin
        clockCounter <= 26'd0;
        tickTok <= 1'b0;
    end
    else if(clockCounter == (26'd40000000-1))
    begin
        clockCounter <= 26'd0;
        tickTok <= 1'b1;
    end
    else begin
        clockCounter <= clockCounter + 1;
        tickTok <= 1'b0;
    end
end


wire finalFC;
assign finalFC = fastCommandMem;

OBUFDS #(
      .IOSTANDARD("LVDS18"),    // Specify the output I/O standard
      .SLEW("SLOW")             // Specify the output slew rate
   ) OBUFDS_L1ACC_inst(
      .O(FC0_OUTP),           // Diff_p output (connect directly to top-level port)
      .OB(FC0_OUTN),          // Diff_n output (connect directly to top-level port)
      .I(finalFC)                 // Buffer input 
   );
wire copyFC;
assign copyFC = finalFC;
OBUFDS #(
      .IOSTANDARD("LVDS18"),    // Specify the output I/O standard
      .SLEW("SLOW")             // Specify the output slew rate
   ) OBUFDS_L1ACC_inst2(
      .O(FC1_OUTP),           // Diff_p output (connect directly to top-level port)
      .OB(FC1_OUTN),          // Diff_n output (connect directly to top-level port)
      // .I(flashingBit)                 // Buffer input 
      .I(copyFC)                 // Buffer input 

   );

OBUFDS #(
      .IOSTANDARD("LVDS18"),    // Specify the output I/O standard
      .SLEW("SLOW")             // Specify the output slew rate
   ) OBUFDS_L1ACC_inst3(
      .O(FC2_OUTP),           // Diff_p output (connect directly to top-level port)
      .OB(FC2_OUTN),          // Diff_n output (connect directly to top-level port)
      // .I(even)                 // Buffer input 
      .I(copyFC)                 // Buffer input 
   );


OBUFDS #(
      .IOSTANDARD("LVDS18"),    // Specify the output I/O standard
      .SLEW("SLOW")             // Specify the output slew rate
   ) OBUFDS_L1ACC_inst4(
      .O(FC3_OUTP),           // Diff_p output (connect directly to top-level port)
      .OB(FC3_OUTN),          // Diff_n output (connect directly to top-level port)
      // .I(etroc2Trig)                 // Buffer input 
      .I(copyFC)                 // Buffer input 
   );


endmodule
