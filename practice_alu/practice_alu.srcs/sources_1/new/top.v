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
    input CLK, RST,
    output reg  [3:0] a, b,
    output reg  [2:0] s,
    input       [3:0] SW,
    input       [3:0] BTN,
    output reg  [3:0] LED,
    input       [3:0] y
    );
    
    alu alu_instance(
    .CLK(CLK),
    .RST(RST),
    .a(a),
    .b(b),
    .s(s),
    .y(y)
    );
    
    always @(posedge CLK) begin
    if(!RST) begin
        a <= BTN;
        b <= SW;
        s <= 3'b011; //OR
        LED <= y;
        end
    end
    
endmodule
