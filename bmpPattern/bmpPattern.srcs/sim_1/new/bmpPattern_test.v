/* Copyright(C) 2016 Cobac.Net All Rights Reserved.   */
/* chapter: 第3章                                     */
/* project: pattern                                   */
/* outline: パターン表示回路のSim結果をファイルに出力 */
/* board  : Zybo                                      */

module bmpPattern_test;

/* クロック周期とSimクロック数を定義 */
localparam STEP = 8;
localparam CLKNUM = (800*525+12000)*5;

/* 接続信号の宣言 */
reg             CLK;
reg             RST;
wire    [3:0]   VGA_R, VGA_G, VGA_B;
wire            VGA_HS;
wire            VGA_VS;
reg     [15:0]  rom     [0:62499]; //1000000バイト超えない最大値でテスト

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

integer fd;  /* ファイル変数 */

/* 検証対象への入力を作成 */
initial begin
                RST = 0;
    fd = $fopen("imagedata.raw", "wb");
    $readmemh("../../../../akari16bitNoHeader.raw", rom, 0, 62499);
    #(STEP*500) RST = 1;
    #(STEP*10)  RST = 0;
    #(STEP*CLKNUM);
    $fclose(fd);
    $stop;
end

/* VGA(640×480)用パラメータ読み込み */
`include "vga_param.vh"

/* 映像出力の有効期間 */
wire fileouten = (HFRONT + HWIDTH + HBACK <= pattern.syncgen.HCNT) &&
                 (VFRONT + VWIDTH + VBACK <= pattern.syncgen.VCNT);

/* ファイル出力 */
always @(posedge pattern.PCK) begin
    if ( fileouten ) begin
        $fwrite(fd, "%c", {VGA_R, 5'h0});
        $fwrite(fd, "%c", {VGA_G, 6'h0});
        $fwrite(fd, "%c", {VGA_B, 5'h0});
    end
end

endmodule
