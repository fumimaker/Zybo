`timescale 1ns / 1ps

module alu_sim();
localparam STEP = 8;
reg CLK;
reg [3:0] a,b;
reg [2:0] s;
wire [3:0] y;

alu alu_1(
    .a(a),
    .b(b),
    .s(s),
    .y(y),
    .CLK(CLK)

);

always begin
    CLK = 0;
    #(STEP/2);
    CLK = 1;
    #(STEP/2);
end

initial begin
    #STEP
    s <= 3'b011;
    a <= 3'd5;
    b <= 3'd3;
    #STEP
    $finish;
end
endmodule