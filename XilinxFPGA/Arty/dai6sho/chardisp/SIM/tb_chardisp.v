/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: ��6��                      */
/* project: chardisp                   */
/* outline: �����\����H�̃e�X�g�x���` */

module tb_chardisp;

/* �N���b�N������Sim�N���b�N�����` */
localparam STEP = 10;
localparam CLKNUM = (800*525+12000)*5;

/* �ڑ��M���̐錾 */
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

/* �����\����H�{�̂̐ڑ� */
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

/* �N���b�N�̐��� */
always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end

/* VRAM�ւ̏������݂�����^�X�N */
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

/* �e��ϐ� */
integer fd, i;

/* ���ؑΏۂւ̓��͂��쐬 */
initial begin
    RST = 0; WRADDR = 0; BYTEEN = 0; WRDATA = 0; WREN = 0;
    RDADDR = 0; RDEN = 0;
    fd = $fopen("imagedata.raw", "wb");
    #(STEP*500) RST = 1;
    #(STEP*10)  RST = 0;
    /* VRAM�Ɋe�F�Ŋe�������������� */
    for ( i=0; i<4000; i=i+1 )
        write_vram(i<<2, 4'hf, (i<<8) | (8'hff & i));
    #(STEP*CLKNUM);
    $fclose(fd);
    $stop;
end

/* VGA(640�~480)�p�p�����[�^�ǂݍ��� */
`include "vga_param.vh"

/* �f���o�̗͂L������ */
wire fileouten = (HFRONT + HWIDTH + HBACK <= chardisp.syncgen.HCNT) &&
                 (VFRONT + VWIDTH + VBACK <= chardisp.syncgen.VCNT);

/* �t�@�C���o�� */
always @(posedge chardisp.PCK) begin
    if ( fileouten ) begin
        $fwrite(fd, "%c", {VGA_R, 4'h0});
        $fwrite(fd, "%c", {VGA_G, 4'h0});
        $fwrite(fd, "%c", {VGA_B, 4'h0});
    end
end

endmodule
