`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/17 19:37:29
// Design Name: 
// Module Name: alu
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


module alu(
    input CLK,
    input [3:0] a,
    input [3:0] b,
    input [2:0] s,
    output reg [3:0] y
    );
    
    always @(posedge CLK)
    begin


          y =   s==3'b000 ? a :
                s==3'b001 ? b :
                s==3'b010 ? a&b :
                s==3'b011 ? a|b :
                s==3'b100 ? a<<1 :
                s==3'b101 ? a>>1 :
                s==3'b110 ? a+b : a-b;

    end
endmodule
