# ETROC2TestFirmware

The firmware for ETROC2 test. The firmware incldues the HDL code for KC705 and python test code.

Config registers:
Reg 4 :  {WR_ADDR[7:0],WR_DATA0[7:0]}                           //I2C \
Reg 5 : {6'bxxxxxx,MODE[1:0],SL_ADDR[6:0],SL_WR}                //I2C \
Reg 6 : {8'bxxxxxxxx, WR_DATA1[7:0]}                            //I2C \
Reg 7 : {6'bxxxxxx,delayTrigCh[3:0],3'bxxx,dis_descr_raw_data,dis_regular_filler, inject_SEU}    //trigbit delay or not \
Reg 8 : {trigSelMask[3:0],enhenceData,enableL1Trig,L1Delay[9:0]}  \
Reg 9 : {4'bxxxx, initAddressLast[11:0]}    \
Reg 10 : {prescale_factor,initAddressFirst[11:0]}   \
Reg 11 : {duration[15:0]} \ 
Reg 12 : {errorMask[7:0],trigDataSize[1:0],period,1'bx,inputCmd[3:0]} \
Reg 13 : {dataRate[1:0],LED_Pages[2:0],status_Pages[1:0]}  \
Reg 14 : {auto_prescale,fixed_time_filler,bit_latency[3:0],falling_edge,manual_mode,sample_event,simple_handshake,add_ethernet_filler,debug_mode,dumping_mode,notGTXPolarity,notGTX,enableAutoSync} \
Reg 15 : {global_trig_delay[4:0],global_trig,trig_or_logic,triple_trig,en_ws_trig,ws_trig_stop_delay[2:0],enableCh[3:0]} 

Status registers:\
Reg 0: {6'd0,BUSY,ACK_ERROR,RD_DATA0[7:0]} \
Reg 1 : {8'd0,RD_DATA1[7:0]} \
Reg 2 : {8'd0,LED8Bit[7:0]} \
Reg 3 : {dataCount[15:0]} \
Reg 4 : {dataCount[31:16]} \
Reg 5 : {headerCounter[15:0]} \
Reg 6 : {headerCounter[31:16]} \
Reg 7 : {refreshCounter[15:0]} \
Reg 8 : {trigCounter[15:0]} \
Reg 9 : {trigCounter[31:16]} \
Reg 10 : {combineTriggerCount}  

assign status_reg = status_Pages == 2'b00 ? {combineTriggerCount,trigCounter,refreshCounter,headerCounter,dataCounter,8'd0,LED8Bit,8'd0,RD_DATA1,6'd0,BUSY,ACK_ERROR,RD_DATA0}: 
                     (status_Pages == 2'b01 ? {trig_hist_counter[175:0]}:
                     (status_Pages == 2'b10 ? {{4{16'H3C5C}},14'H0F17,session_DAQ_on,hist_fill_done,trig_hist_counter[255:176]}:{176{1'b0}}));

Pulse Register: \
Reg[15:0] = {5'bxxx,stop_DAQ_pulse,start_DAQ_pulse,start_hist_counter,resumePulse,clear_ws_trig_block_pulse,clrError,initPulse,errInjPulse,fcStart,fifo_reset,START} 

LED light: \
if LED_Page[2] == 1'b0
  LED = {LED_Pages[1:0],isDataEx,linkConsistent,trigSynched,trigError,synched,dataError}
if LED_Page[2] == 1'b1
  LED = {flashingLED,1'b0,latch_edge,edge_found,align_error,align_done,L1CountMatchError,BCIDMatchError}

  Ethernet Filler format:
  1. Filler for FIFO empty
  Filler[31:0] = {12'H556,
                  error_code[1:0],
                  error_ch[1:0]
                  triggerLinkNormal[3],dataLinkNormal[3],
                  triggerLinkNormal[2],dataLinkNormal[2],
                  triggerLinkNormal[1],dataLinkNormal[1],
                  triggerLinkNormal[0],dataLinkNormal[0],
                  resetCount[7:0]}
2. 40 Hz Filler:
  Filler[31:0] = {12'H559,
                  error_code[1:0],
                  error_ch[1:0]
                  triggerLinkNormal[3],dataLinkNormal[3],
                  triggerLinkNormal[2],dataLinkNormal[2],
                  triggerLinkNormal[1],dataLinkNormal[1],
                  triggerLinkNormal[0],dataLinkNormal[0],
                  resetCount[7:0]}

error_code definition:
normal: 2'b00
no header: 2'b01
no trailer: 2'b10
BCID error: 2'b11

When link is loss, the DAQ is in raw_data_dumping mode for channel 0 at 320 Mbps rate mode. In the raw data mode, the output fifo shield the fifo_clear commands from scripts untill the session is done.
The raw data starts with two 32-bit marker {32'H5555AAAA}. After about 2 thousands word. There are two linkloss marker {32'HAAAA5555}. After that, there are about 6 thousands descrambled raw data. The raw data block is terminated with two marker words {32'H55AA55AA}. 