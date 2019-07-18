`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/17 21:09:53
// Design Name: 
// Module Name: top
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


module top(
    input wire CLK,
    input wire [3:0] SW,
    input wire [3:0] BTN,
    output wire [3:0] LED
    );
    
    alu alu_instance(
    .CLK(CLK),
    .a(BTN),
    .b(SW),
    .s(3'b010),
    .y(LED)
    );
endmodule
