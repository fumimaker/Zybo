`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/16 22:30:52
// Design Name: 
// Module Name: threeToEight_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module threeToEight_sim();
reg a[2:0];
wire y[7:0];
threeToEight(
    .a(a),
    .y(y)
);

initial begin
#STEP

end
endmodule
