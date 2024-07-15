////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  Filename: DataExtrater
//
//  Descripiton: Extract Data from data in DeSerGTX module
//
//  Author: Binwei Deng
//
//  Organization: Southern Methodist University 
//  
//  Date: 08/20/2018
//
//  Version: Beta 1.0
//
//  detail: for lpGBT align (dynamic) on KC705
//  DataExtrater module operation cotrolled by SynController
//  Southern Methodist University
//
//  data32 make of two datain which is 16 bit, in order to solve cross data.
//  PATTERN obtained from data32
//
//  When deal with shift one bit which includes early and later arrivison  within data stream, 
//  downlink PATTERN=0xf00f
///////////////////////////////////////////////////////////////////////////////////////////////////
module DataExtrater(
						  input  wire	 clk,			// 160MHz clock for ETROC��
						  input 	wire  [31:00] datain,		// input unframed data, namely, GTX received data
						  output reg   [31:00] dataout=32'b0,     // data to descrambler
						//   input  wire   d_enb,       // alig data flag , dataout output enable
						  output reg   [01:00] PATTERN=2'b0,			// PATTERN BCID to controller and BCID counter
						  input  wire   shift_fr_later  // pulse signal from controller, to shift current frame one bit later
						//   (* keep = "TRUE" *)output reg [63:00] data64=64'b0
						 );

reg [63:0] data64;
always @( posedge clk )						 
begin
	//LSB first
   data64[63:00]<={ datain[31:0],data64[63:32]};
end


//------------------------------------------------------------------------
reg [02:00] clk_counter=0;
reg [04:00] shift_counter=0;
reg [02:00] field_counter=0;
always @( posedge clk )
begin
   // for operating later bit
	if (shift_fr_later)
		begin
			if (shift_counter==31)
				begin
					shift_counter<=0;
				end
			else	
				begin
					shift_counter<=shift_counter+5'b00001;
				end
		end
	else 	shift_counter<=shift_counter;//clk_counter<=clk_counter+3'b001;// for movement within frame 
	
end
// output frame data and header boundary
//assign d_fr= ~bcid_fr;
//assign crc_fr= bcid_fr;

always @*
	case (shift_counter)
	5'd0:begin PATTERN<=data64[1:0];   dataout<=data64[31:00];   end
	5'd1:begin PATTERN<=data64[2:1];   dataout<=data64[32:01];   end
	5'd2:begin PATTERN<=data64[3:2];   dataout<=data64[33:02];   end
	5'd3:begin PATTERN<=data64[4:3];   dataout<=data64[34:03];   end
	5'd4:begin PATTERN<=data64[5:4];   dataout<=data64[35:04];   end
	5'd5:begin PATTERN<=data64[6:5];   dataout<=data64[36:05];   end
	5'd6:begin PATTERN<=data64[7:6];   dataout<=data64[37:06];   end
	5'd7:begin PATTERN<=data64[8:7];   dataout<=data64[38:07];  end
	5'd8:begin PATTERN<=data64[9:8];   dataout<=data64[39:08];  end
	5'd9:begin PATTERN<=data64[10:9];  dataout<=data64[40:09];  end
	5'd10:begin PATTERN<=data64[11:10]; dataout<=data64[41:10]; end
	5'd11:begin PATTERN<=data64[12:11]; dataout<=data64[42:11]; end
	5'd12:begin PATTERN<=data64[13:12]; dataout<=data64[43:12]; end
	5'd13:begin PATTERN<=data64[14:13]; dataout<=data64[44:13]; end
	5'd14:begin PATTERN<=data64[15:14]; dataout<=data64[45:14]; end
	5'd15:begin PATTERN<=data64[16:15]; dataout<=data64[46:15]; end
	5'd16:begin PATTERN<=data64[17:16]; dataout<=data64[47:16];   end
	5'd17:begin PATTERN<=data64[18:17]; dataout<=data64[48:17];   end
	5'd18:begin PATTERN<=data64[19:18]; dataout<=data64[49:18];   end
	5'd19:begin PATTERN<=data64[20:19]; dataout<=data64[50:19];   end
	5'd20:begin PATTERN<=data64[21:20]; dataout<=data64[51:20];   end
	5'd21:begin PATTERN<=data64[22:21]; dataout<=data64[52:21];   end
	5'd22:begin PATTERN<=data64[23:22]; dataout<=data64[53:22];   end
	5'd23:begin PATTERN<=data64[24:23]; dataout<=data64[54:23];  end
	5'd24:begin PATTERN<=data64[25:24]; dataout<=data64[55:24];  end
	5'd25:begin PATTERN<=data64[26:25]; dataout<=data64[56:25];  end
	5'd26:begin PATTERN<=data64[27:26]; dataout<=data64[57:26]; end
	5'd27:begin PATTERN<=data64[28:27]; dataout<=data64[58:27]; end
	5'd28:begin PATTERN<=data64[29:28]; dataout<=data64[59:28]; end
	5'd29:begin PATTERN<=data64[30:29]; dataout<=data64[60:29]; end
	5'd30:begin PATTERN<=data64[31:30]; dataout<=data64[61:30]; end
	5'd31:begin PATTERN<=data64[32:31]; dataout<=data64[62:31]; end	


	endcase      

endmodule
					