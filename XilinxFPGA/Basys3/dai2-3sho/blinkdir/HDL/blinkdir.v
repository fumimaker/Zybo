/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第2章課題                      */
/* project: blinkdir                       */
/* outline: プッシュSWで流れる方向を変える */

module blinkdir (
    input               CLK,
    input               RST,
    input       [0:0]   BTN,
    output  reg [3:0]   LED
);

/* 流れる方向 */
/* 00:左右、01:右から左、10:左から右 */
localparam BOTH = 2'b00, RtoL = 2'b01, LtoR = 2'b10;

/* チャタリング除去回路を接続 */
wire chgmode;

debounce d0 (.CLK(CLK), .RST(RST), .BTNIN(BTN[0]), .BTNOUT(chgmode));

/* 流れる方向を決めるカウンタ */
reg [1:0] mode;
always @( posedge CLK ) begin
    if ( RST )
        mode <= 2'b00;
    if ( chgmode )
        if ( mode==2'b10 )
            mode <= 2'b00;
        else
            mode <= mode + 2'b01;
end

/* システムクロックを分周 */
reg [23:0] cnt24;

always @( posedge CLK ) begin
    if ( RST )
        cnt24 <= 24'h0;
    else if ( chgmode )
        cnt24 <= 24'h0;
    else
        cnt24 <= cnt24 + 24'h1;
end

/* LED用カウンタ */
reg [2:0] cnt3;

always @( posedge CLK ) begin
    if ( RST )
        cnt3 <= 3'h0;
    else if ( &cnt24 )
        if ( (mode==BOTH && cnt3==3'd5) || (mode!=BOTH && cnt3==3'd3) )
            cnt3 <=3'h0;
        else
            cnt3 <= cnt3 + 1'h1;
end

/* LEDデコーダ */
always @* begin
    case ( cnt3 )
        3'd0:   if ( mode==LtoR ) LED = 4'b1000; else LED = 4'b0001;
        3'd1:   if ( mode==LtoR ) LED = 4'b0100; else LED = 4'b0010;
        3'd2:   if ( mode==LtoR ) LED = 4'b0010; else LED = 4'b0100;
        3'd3:   if ( mode==LtoR ) LED = 4'b0001; else LED = 4'b1000;
        3'd4:   LED = 4'b0100;
        3'd5:   LED = 4'b0010;
        default:LED = 4'b0000;
    endcase
end

endmodule
