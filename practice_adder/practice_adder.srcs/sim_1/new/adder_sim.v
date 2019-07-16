`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/16 19:21:10
// Design Name: 
// Module Name: adder_sim
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


module adder_sim();
localparam STEP = 8;
reg CLK;
reg RST;
reg [7:0] a;
reg [7:0] b;
wire [8:0] out;

adder adder_1(
    .A (a),
    .B (b),
    .Y (out),
    .CLK (CLK),
    .RST (RST)
);

always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end

initial begin
    RST <= 1'b1;
    #STEP
    RST <= 1'b0;
    #STEP
    a <= 8'd10;
    b <= 8'd20;
    #STEP
    a <= 8'd20;
    b <= 8'd20;
    #STEP
    a <= 8'd30;
    b <= 8'd20;
    #STEP
    $finish;
end
endmodule
