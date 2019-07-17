`timescale 1ns / 1ps

module alu_sim();
localparam STEP = 8;
reg CLK;
reg RST;
reg [3:0] a,b;
reg [2:0] s;
wire [3:0] y;

alu alu_1(
    .a(a),
    .b(b),
    .s(s),
    .y(y),
    .CLK(CLK),
    .RST(RST)
);

always begin
    CLK = 0;
    #(STEP/2);
    CLK = 1;
    #(STEP/2);
end

initial begin
    RST <= 1;
    #STEP
    RST <= 0;
    #STEP
    s <= 3'b011;
    a <= 4'd10;
    b <= 4'd20;
    #STEP
    $finish;
end
endmodule