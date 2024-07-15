`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Fermilab
// Author: Datao Gong 
// 
// Create Date: Wednesday, April 19, 2023 3:19:10 PM
// Module Name: dataExtenderRev
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////


module dataExtenderRev 
(
    input [1:0]             dataRate,
	input [31:0] 		    din,            //40MHz
    output [31:0]           dout            //output data to serializer 
 );

    assign dout[0]  = dataRate == 2'b00 ? din[0] : (dataRate == 2'b01 ? din[0] : din[0]);
    assign dout[1]  = dataRate == 2'b00 ? din[4] : (dataRate == 2'b01 ? din[2] : din[1]);
    assign dout[2]  = dataRate == 2'b00 ? din[8] : (dataRate == 2'b01 ? din[4] : din[2]);
    assign dout[3]  = dataRate == 2'b00 ? din[12] : (dataRate == 2'b01 ? din[6] : din[3]);

    assign dout[4]  = dataRate == 2'b00 ? din[16] : (dataRate == 2'b01 ? din[8] : din[4]);
    assign dout[5]  = dataRate == 2'b00 ? din[20] : (dataRate == 2'b01 ? din[10] : din[5]);
    assign dout[6]  = dataRate == 2'b00 ? din[24] : (dataRate == 2'b01 ? din[12] : din[6]);
    assign dout[7]  = dataRate == 2'b00 ? din[28] : (dataRate == 2'b01 ? din[14] : din[7]);

    assign dout[8]  = dataRate == 2'b00 ? din[2] : (dataRate == 2'b01 ? din[16] : din[8]);
    assign dout[9]  = dataRate == 2'b00 ? din[2] : (dataRate == 2'b01 ? din[18] : din[9]);
    assign dout[10]  = dataRate == 2'b00 ? din[2] : (dataRate == 2'b01 ? din[20] : din[10]);
    assign dout[11]  = dataRate == 2'b00 ? din[2] : (dataRate == 2'b01 ? din[22] : din[11]);

    assign dout[12]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? din[24] : din[12]);
    assign dout[13]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? din[26] : din[13]);
    assign dout[14]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? din[28] : din[14]);
    assign dout[15]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? din[30] : din[15]);

    assign dout[16]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[16]);
    assign dout[17]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[17]);
    assign dout[18]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[18]);
    assign dout[19]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[19]);

    assign dout[20]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[20]);
    assign dout[21]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[21]);
    assign dout[22]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[22]);
    assign dout[23]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[23]);

    assign dout[24]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[24]);
    assign dout[25]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[25]);
    assign dout[26]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[26]);
    assign dout[27]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[27]);

    assign dout[28]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[28]);
    assign dout[29]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[29]);
    assign dout[30]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[30]);
    assign dout[31]  = dataRate == 2'b00 ? 1'b0 : (dataRate == 2'b01 ? 1'b0 : din[31]);

endmodule
