/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第9章課題    */
/* project: display_XGA  */
/* outline: 表示出力作成 */

module disp_out
  (
    input               PCK,
    input               PRST,
    input               DISPON,
    output  reg         FIFORD,
    input   [15:0]      FIFOOUT,

    input   [10:0]      HCNT,
    input   [9:0]       VCNT,
    output  reg         AXISTART,

    output  reg [3:0]   VGA_R,
    output  reg [3:0]   VGA_G,
    output  reg [3:0]   VGA_B
    );

/* XGA(1024×768)用パラメータ読み込み */
`include "xga_param.vh"

/* FIFO読み出し信号 */
wire [10:0] rdstart = HFRONT + HWIDTH + HBACK - 11'd3;
wire [10:0] rdend   = HPERIOD - 11'd3;

always @( posedge PCK ) begin
    if ( PRST )
        FIFORD <= 1'b0;
    else if ( VCNT < VFRONT + VWIDTH + VBACK )
        FIFORD <= 1'b0;
    else if ( (HCNT==rdstart) & DISPON )
        FIFORD <= 1'b1;
    else if ( HCNT==rdend )
        FIFORD <= 1'b0;
end

/* FIFORDを1クロック遅らせて表示の最終イネーブルを作る */
reg disp_enable;

always @( posedge PCK ) begin
    if ( PRST )
        disp_enable  <= 1'b0;
    else
        disp_enable  <= FIFORD;
end

/* VGA_R～VGA_B出力 */
always @( posedge PCK ) begin
    if ( PRST )
        {VGA_R, VGA_G, VGA_B} <= 16'h0;
    else if ( disp_enable )
        {VGA_R, VGA_G, VGA_B} <= FIFOOUT;
    else
        {VGA_R, VGA_G, VGA_B} <= 16'h0;
end

/* VRAM読み出し開始 */
always @( posedge PCK ) begin
    if ( PRST )
        AXISTART <= 1'b0;
    else
        AXISTART <= (VCNT == VFRONT + VWIDTH + VBACK -10'd1);
end

endmodule
