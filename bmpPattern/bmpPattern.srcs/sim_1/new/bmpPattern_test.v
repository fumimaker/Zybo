`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/01 18:35:23
// Design Name: 
// Module Name: bmpPattern_test
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

module bmpPattern_test;


localparam STEP = 8;
localparam CLKNUM = (800*525+12000)*5;


reg             CLK;
reg             RST;
wire    [4:0]   VGA_R, VGA_B;
wire    [5:0]   VGA_G;
wire            VGA_HS;
wire            VGA_VS;


pattern pattern(
    .CLK    (CLK),
    .RST    (RST),
    .VGA_R  (VGA_R),
    .VGA_G  (VGA_G),
    .VGA_B  (VGA_B),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS)
);


always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end


initial begin
                RST = 0;
    #(STEP*500) RST = 1;
    #(STEP*10)  RST = 0;
    #(STEP*CLKNUM);

    
    $stop;
end

endmodule
