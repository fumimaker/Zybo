/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第9章課題    */
/* project: display_XGA  */
/* outline: 同期信号作成 */

module syncgen(
    input               CLK,
    input               RST,
    output              PCK,
    output  reg         VGA_HS,
    output  reg         VGA_VS,
    output  reg [10:0]  HCNT,
    output  reg [9:0]   VCNT
);

/* XGA(1024×768)用パラメータ読み込み */
`include "xga_param.vh"

/* MMCMを接続してPCKを生成 */
pckgen pckgen ( .SYSCLK(CLK), .PCK(PCK) );

/* 水平カウンタ */
wire hcntend = (HCNT==HPERIOD-11'h001);

always @( posedge PCK ) begin
    if ( RST )
        HCNT <= 11'h000;
    else if ( hcntend )
        HCNT <= 11'h000;
    else
        HCNT <= HCNT + 11'h001;
end

/* 垂直カウンタ */
always @( posedge PCK ) begin
    if ( RST )
        VCNT <= 10'h000;
    else if ( hcntend ) begin
        if ( VCNT == VPERIOD - 10'h001 )
            VCNT <= 10'h000;
        else
            VCNT <= VCNT + 10'h001;
    end
end

/* 同期信号 */
wire [10:0] hsstart = HFRONT - 11'h001;
wire [10:0] hsend   = HFRONT + HWIDTH - 11'h001;
wire [9:0]  vsstart = VFRONT;
wire [9:0]  vsend   = VFRONT + VWIDTH;

always @( posedge PCK ) begin
    if ( RST )
        VGA_HS <= 1'b1;
    else if ( HCNT==hsstart )
        VGA_HS <= 1'b0;
    else if ( HCNT==hsend )
        VGA_HS <= 1'b1;
end

always @( posedge PCK ) begin
    if ( RST )
        VGA_VS <= 1'b1;
    else if ( HCNT==hsstart ) begin
        if ( VCNT==vsstart )
            VGA_VS <= 1'b0;
        else if ( VCNT==vsend )
            VGA_VS <= 1'b1;
    end
end

endmodule
