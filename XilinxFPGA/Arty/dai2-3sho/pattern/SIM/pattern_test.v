/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��3��                          */
/* project: pattern                        */
/* outline: �p�^�[���\����H�̃e�X�g�x���` */
/* board  : Arty, Basys3                   */

module pattern_test;

/* �N���b�N������Sim�N���b�N�����` */
localparam STEP = 10;
localparam CLKNUM = (800*525+12000)*4;

/* �ڑ��M���̐錾 */
reg             CLK;
reg             RST;
wire    [3:0]   VGA_R, VGA_G, VGA_B;
wire            VGA_HS;
wire            VGA_VS;

/* �p�^�[���\����H��ڑ� */
pattern pattern(
    .CLK    (CLK),
    .RST    (RST),
    .VGA_R  (VGA_R),
    .VGA_G  (VGA_G),
    .VGA_B  (VGA_B),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS)
);

/* �N���b�N�̐��� */
always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end

/* ���ؑΏۂւ̓��͂��쐬 */
initial begin
                RST = 0;
    #(STEP*500) RST = 1;
    #(STEP*10)  RST = 0;
    #(STEP*CLKNUM);
    $stop;
end

endmodule
