`timescale 1ns / 100ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Southern Methodist University
// Author: Datao Gong 
// 
// Create Date: Wednesday, April 19, 2023 3:19:10 PM
// Module Name: dataExtender
// Project Name: ETROC2 readout
// Description: 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created


//////////////////////////////////////////////////////////////////////////////////


module dataExtender 
(
    input [1:0]             dataRate,
	input [31:0] 		    din,            //40MHz
    output [31:0]           dout            //output data to serializer 
 );

    generate
        genvar i;
        for (i = 0; i < 32; i = i+1 )
        begin : data_itr
            assign dout[i] = dataRate == 2'b00 ? din[i>>2] : (dataRate == 2'b01 ? din[i>>1] : din[i]);        
        end    
    endgenerate

    // assign dout[0]  = dataRate == 2'b00 ? din[0] : (dataRate == 2'b01 ? din[0] : din[0]);
    // assign dout[1]  = dataRate == 2'b00 ? din[0] : (dataRate == 2'b01 ? din[0] : din[1]);
    // assign dout[2]  = dataRate == 2'b00 ? din[0] : (dataRate == 2'b01 ? din[1] : din[2]);
    // assign dout[3]  = dataRate == 2'b00 ? din[0] : (dataRate == 2'b01 ? din[1] : din[3]);

    // assign dout[4]  = dataRate == 2'b00 ? din[1] : (dataRate == 2'b01 ? din[2] : din[4]);
    // assign dout[5]  = dataRate == 2'b00 ? din[1] : (dataRate == 2'b01 ? din[2] : din[5]);
    // assign dout[6]  = dataRate == 2'b00 ? din[1] : (dataRate == 2'b01 ? din[3] : din[6]);
    // assign dout[7]  = dataRate == 2'b00 ? din[1] : (dataRate == 2'b01 ? din[3] : din[7]);

    // assign dout[8]  = dataRate == 2'b00 ? din[2] : (dataRate == 2'b01 ? din[4] : din[8]);
    // assign dout[9]  = dataRate == 2'b00 ? din[2] : (dataRate == 2'b01 ? din[4] : din[9]);
    // assign dout[10]  = dataRate == 2'b00 ? din[2] : (dataRate == 2'b01 ? din[5] : din[10]);
    // assign dout[11]  = dataRate == 2'b00 ? din[2] : (dataRate == 2'b01 ? din[5] : din[11]);

    // assign dout[12]  = dataRate == 2'b00 ? din[3] : (dataRate == 2'b01 ? din[6] : din[12]);
    // assign dout[13]  = dataRate == 2'b00 ? din[3] : (dataRate == 2'b01 ? din[6] : din[13]);
    // assign dout[14]  = dataRate == 2'b00 ? din[3] : (dataRate == 2'b01 ? din[7] : din[14]);
    // assign dout[15]  = dataRate == 2'b00 ? din[3] : (dataRate == 2'b01 ? din[7] : din[15]);

    // assign dout[16]  = dataRate == 2'b00 ? din[4] : (dataRate == 2'b01 ? din[8] : din[16]);
    // assign dout[17]  = dataRate == 2'b00 ? din[4] : (dataRate == 2'b01 ? din[8] : din[17]);
    // assign dout[18]  = dataRate == 2'b00 ? din[4] : (dataRate == 2'b01 ? din[9] : din[18]);
    // assign dout[19]  = dataRate == 2'b00 ? din[4] : (dataRate == 2'b01 ? din[9] : din[19]);

    // assign dout[20]  = dataRate == 2'b00 ? din[5] : (dataRate == 2'b01 ? din[10] : din[20]);
    // assign dout[21]  = dataRate == 2'b00 ? din[5] : (dataRate == 2'b01 ? din[10] : din[21]);
    // assign dout[22]  = dataRate == 2'b00 ? din[5] : (dataRate == 2'b01 ? din[11] : din[22]);
    // assign dout[23]  = dataRate == 2'b00 ? din[5] : (dataRate == 2'b01 ? din[11] : din[23]);

    // assign dout[24]  = dataRate == 2'b00 ? din[6] : (dataRate == 2'b01 ? din[12] : din[24]);
    // assign dout[25]  = dataRate == 2'b00 ? din[6] : (dataRate == 2'b01 ? din[12] : din[25]);
    // assign dout[26]  = dataRate == 2'b00 ? din[6] : (dataRate == 2'b01 ? din[13] : din[26]);
    // assign dout[27]  = dataRate == 2'b00 ? din[6] : (dataRate == 2'b01 ? din[13] : din[27]);

    // assign dout[28]  = dataRate == 2'b00 ? din[7] : (dataRate == 2'b01 ? din[14] : din[28]);
    // assign dout[29]  = dataRate == 2'b00 ? din[7] : (dataRate == 2'b01 ? din[14] : din[29]);
    // assign dout[30]  = dataRate == 2'b00 ? din[7] : (dataRate == 2'b01 ? din[15] : din[30]);
    // assign dout[31]  = dataRate == 2'b00 ? din[7] : (dataRate == 2'b01 ? din[15] : din[31]);

endmodule
