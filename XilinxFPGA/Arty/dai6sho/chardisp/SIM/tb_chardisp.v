/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第6章                      */
/* project: chardisp                   */
/* outline: 文字表示回路のテストベンチ */

module tb_chardisp;

/* クロック周期とSimクロック数を定義 */
localparam STEP = 10;
localparam CLKNUM = (800*525+12000)*5;

/* 接続信号の宣言 */
reg             CLK, RST;
reg     [15:0]  RDADDR;
reg     [15:0]  WRADDR;
reg     [3:0]   BYTEEN;
reg             WREN, RDEN;
reg     [31:0]  WRDATA;
wire    [31:0]  RDDATA;
wire    [3:0]   VGA_R;
wire    [3:0]   VGA_G;
wire    [3:0]   VGA_B;
wire            VGA_HS, VGA_VS;

/* 文字表示回路本体の接続 */
chardisp chardisp(
    .CLK        (CLK),
    .RST        (RST),
    .WRADDR     (WRADDR),
    .BYTEEN     (BYTEEN),
    .WREN       (WREN),
    .WRDATA     (WRDATA),
    .RDADDR     (RDADDR),
    .RDEN       (RDEN),
    .RDDATA     (RDDATA),
    .VGA_R      (VGA_R),
    .VGA_G      (VGA_G),
    .VGA_B      (VGA_B),
    .VGA_HS     (VGA_HS),
    .VGA_VS     (VGA_VS)
);

/* クロックの生成 */
always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end

/* VRAMへの書き込みをするタスク */
task write_vram;
    input   [15:0]  wraddr;
    input   [3:0]   byteen;
    input   [23:0]  wrdata;
begin
    WRADDR = wraddr;
    BYTEEN = byteen;
    WRDATA = wrdata;
    WREN   = 1;
    #STEP;
    WREN   = 0;
    #STEP;
end
endtask

/* 各種変数 */
integer fd, i;

/* 検証対象への入力を作成 */
initial begin
    RST = 0; WRADDR = 0; BYTEEN = 0; WRDATA = 0; WREN = 0;
    RDADDR = 0; RDEN = 0;
    fd = $fopen("imagedata.raw", "wb");
    #(STEP*500) RST = 1;
    #(STEP*10)  RST = 0;
    /* VRAMに各色で各文字を書き込む */
    for ( i=0; i<4000; i=i+1 )
        write_vram(i<<2, 4'hf, (i<<8) | (8'hff & i));
    #(STEP*CLKNUM);
    $fclose(fd);
    $stop;
end

/* VGA(640×480)用パラメータ読み込み */
`include "vga_param.vh"

/* 映像出力の有効期間 */
wire fileouten = (HFRONT + HWIDTH + HBACK <= chardisp.syncgen.HCNT) &&
                 (VFRONT + VWIDTH + VBACK <= chardisp.syncgen.VCNT);

/* ファイル出力 */
always @(posedge chardisp.PCK) begin
    if ( fileouten ) begin
        $fwrite(fd, "%c", {VGA_R, 4'h0});
        $fwrite(fd, "%c", {VGA_G, 4'h0});
        $fwrite(fd, "%c", {VGA_B, 4'h0});
    end
end

endmodule
