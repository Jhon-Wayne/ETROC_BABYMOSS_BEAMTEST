/////////////////////////////////////////////////////////////////////////////////////////////////////
// Company: SMU
// Engineer: Datao Gong
// 
// Create Date: Friday, February 24, 2023 9:29:21 AM
// Design Name: ErrorFlagExtend
// Module Name: ErrorFlagExtend
// Project Name: kc705_mig
// Target Devices: KC705 EVB
// Tool Versions: 
// Description: 
// This module extend
// Dependencies: 
// 
// Revision: V1.0
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module DataFrameSync(
    input wire clk40,                       //40 MHz clock
    input wire RSTn,
    input wire error,
    output wire extendedError              //extend the error flag signal to 1 second or more for LED display
);
    localparam timeInterval = 30'd40000000;  //for a second;
    reg [29:0] timeCounter;
    reg errorExtendReg;
    wire syncError;
    always @ (posedge clk40)
    begin
        if(~RSTn)begin
            timeCounter <= 30'd0;
        end
        else if(syncError)
        {
            timeCounter <= timeInterval;
        }
        else if(timeCounter != 30'd0)
        begin
            timeCounter <= timeCounter - 1;
        end
        errorExtendReg <= (timeCounter != 30'd0);
    end 

    reg [1:0] errorDelay;
    assign syncError = errorDelay[1];
    always  @ (posedge clk40)
    begin
        errorDelay <= {errorDelay[0], error};
    end
    
endmodule
