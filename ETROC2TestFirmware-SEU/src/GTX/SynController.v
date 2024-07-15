/////////////////////////////////////////////////////////////////////////////////////////////////////
//
//  Filename: SynController
//  Descripiton: to sync FSM  Based KC705, board clock 156.25MHz
//
//  Author: Binwei Deng
//
//  Date: 05/03/2018
//
//  Organization: Southern Methodist University
//
//  Version: V1.0.1.2  mass test be run, Reliable Version

//  
//  detail: for lpGBT align
//   sync have three states that are CHECK, SYNC.
////////////////////////////////////////////////////////////////////////////////////////////////////  

module SynController(
							input  wire  clk, // 320MHz, namely, rx_clkout
							input  wire RSTn,
							input  wire [01:00] PATTERN,// Header with current frame
							output wire   d_enb, // align data flag , dataout output enable
							output wire   shift_fr_later // change frame border one bit later
							);
							
parameter CHECK = 	1'b0;
parameter SYNC	=	1'b1;
parameter SYNC_GOAL = 6'd20;
reg [05:00] Pcounter;  // counter for prbs buffer 
reg synch_status;
assign shift_fr_later= (PATTERN[1:0]== 2'b01)?0:1;
assign d_enb = (synch_status == SYNC);
always @(posedge clk)
begin
		if(~RSTn)
		begin
			synch_status <= CHECK;
			Pcounter	 <= 6'd0;
		end
		else if(synch_status == CHECK)
		begin
			// d_enb<=0;
			if (PATTERN[1:0]== 2'b01)
				begin
					if (Pcounter == SYNC_GOAL)
						begin
							Pcounter		<=	6'd0;
							synch_status	<=	SYNC;
						end
					else 
						begin
							Pcounter 		<= Pcounter+1'b1;
							synch_status 	<= CHECK;
						end
				end
			else //if (PATTERN[1:0]== 2'b01)
				begin
					Pcounter	 <=	6'd0;// ensure to contiuos counter
					synch_status <= CHECK;
				end
		end
		else //if(synch_status == SYNC)
			begin
				Pcounter		<=	6'd0;
				synch_status	<=  PATTERN[1:0]==2'b01 ? SYNC : CHECK;
			end
end
endmodule
