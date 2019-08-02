/* Copyright(C) 2016 Cobac.Net All Rights Reserved.         */
/* chapter: ��3�͉ۑ�                                       */
/* project: gradation                                       */
/* outline: �O���f�[�V�����\����H��Sim���ʂ��t�@�C���ɏo�� */
/* board  : Zybo                                            */

module gradation_test;

/* �N���b�N������Sim�N���b�N�����` */
localparam STEP = 8;
localparam CLKNUM = (800*525+12000)*5;

/* �ڑ��M����錾 */
reg             CLK;
reg             RST;
wire    [3:0]   VGA_R, VGA_G, VGA_B;
wire            VGA_HS;
wire            VGA_VS;

gradation gradation(
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


integer fd;  /* �t�@�C���ϐ� */

/* ���ؑΏۂւ̓��͂��쐬 */
initial begin
                RST = 0;
    fd = $fopen("imagedata.raw", "wb");
    #(STEP*500) RST = 1;
    #(STEP*10)  RST = 0;
    #(STEP*CLKNUM);
    $fclose(fd);
    $stop;
end

/* VGA(640�~480)�p�p�����[�^�ǂݍ��� */
`include "vga_param.vh"

/* �f���o�̗͂L������ */
wire fileouten = (HFRONT + HWIDTH + HBACK <= gradation.syncgen.HCNT) &&
                 (VFRONT + VWIDTH + VBACK <= gradation.syncgen.VCNT);

/* �t�@�C���o�� */
always @(posedge gradation.PCK) begin
    if ( fileouten ) begin
        $fwrite(fd, "%c", {VGA_R, 4'h0});
        $fwrite(fd, "%c", {VGA_G, 4'h0});
        $fwrite(fd, "%c", {VGA_B, 4'h0});
    end
end

endmodule
