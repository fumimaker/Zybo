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
localparam STEP = 8;
reg [2:0] a;
wire [7:0] y;
threeToEight encorder38(
    .a(a),
    .y(y)
);

initial begin
#STEP
a = 3'd0;
#STEP
a = 3'd1;
#STEP
a = 3'd2;
#STEP
a = 3'd3;
#STEP
a = 3'd4;
#STEP
a = 3'd5;
#STEP
a = 3'd6;
#STEP
a = 3'd7;
#STEP

$finish;
end
endmodule
