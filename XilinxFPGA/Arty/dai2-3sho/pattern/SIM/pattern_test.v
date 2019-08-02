/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第3章                          */
/* project: pattern                        */
/* outline: パターン表示回路のテストベンチ */
/* board  : Arty, Basys3                   */

module pattern_test;

/* クロック周期とSimクロック数を定義 */
localparam STEP = 10;
localparam CLKNUM = (800*525+12000)*4;

/* 接続信号の宣言 */
reg             CLK;
reg             RST;
wire    [3:0]   VGA_R, VGA_G, VGA_B;
wire            VGA_HS;
wire            VGA_VS;

/* パターン表示回路を接続 */
pattern pattern(
    .CLK    (CLK),
    .RST    (RST),
    .VGA_R  (VGA_R),
    .VGA_G  (VGA_G),
    .VGA_B  (VGA_B),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS)
);

/* クロックの生成 */
always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end

/* 検証対象への入力を作成 */
initial begin
                RST = 0;
    #(STEP*500) RST = 1;
    #(STEP*10)  RST = 0;
    #(STEP*CLKNUM);
    $stop;
end

endmodule
