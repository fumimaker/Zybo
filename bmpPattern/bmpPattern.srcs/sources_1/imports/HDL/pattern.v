/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第2章            */
/* project: pattern          */
/* outline: パターン表示回路 */

module pattern(
    input               CLK,
    input               RST,
    output  reg [4:0]   VGA_R, //5bit
    output  reg [5:0]   VGA_G, //6bit
    output  reg [4:0]   VGA_B, //5bit
    output              VGA_HS,
    output              VGA_VS
);

reg [15:0] rom [0:1048575]; //640*480*2byte = 614400byte  ==> 1Mbyte(1048576byte)

initial begin
    `ifdef SIMULATION
        $readmemh("../../../../akari16bitNoHeader.raw", rom, 0, 8'h96001);//96001 614401
    `else
        $readmemh("../../../../akari16bitNoHeader.raw", rom, 0, 8'h96001);
    `endif
end

/* VGA(640×480)用パラメータ読み込み */
`include "vga_param.vh"
/*
localparam HSIZE = 10'd80;
localparam VSIZE = 10'd120;
*/
/* 同期信号作成回路の接続 */
wire            PCK;
wire    [9:0]   HCNT, VCNT;

syncgen syncgen(
    .CLK    (CLK),
    .RST    (RST),
    .PCK    (PCK),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS),
    .HCNT   (HCNT),
    .VCNT   (VCNT)
);

/* RGB出力を作成 */
wire [9:0] HBLANK = HFRONT + HWIDTH + HBACK;
wire [9:0] VBLANK = VFRONT + VWIDTH + VBACK;

wire disp_enable = (VBLANK <= VCNT)
                && (HBLANK-10'd1 <= HCNT) && (HCNT < HPERIOD-10'd1);

/*
wire [2:0] rgb_0 = (HCNT-HBLANK+10'd1)/HSIZE;
wire [2:0] rgb_1 = (((VCNT-VBLANK)/VSIZE)&1)==0 ? 3'd7-rgb_0: rgb_0;
*/

/*
reg r [4:0]    = 8'hFFFFF;
reg g [5:0]    = 8'hFFFFFF; //6bit
reg b [4:0]    = 8'hFFFFF;
*/

always @( posedge PCK ) begin
    
    if ( RST )
        {VGA_R, VGA_G, VGA_B} <= 12'h000;
    else if ( disp_enable )
        {VGA_R, VGA_G, VGA_B} <= {8'hFFFFF, 8'hFFFFFF, 8'hFFFFF}; //すべてMAXなので全部白になるはず
    else
        {VGA_R, VGA_G, VGA_B} <= 12'h000;
end

endmodule
