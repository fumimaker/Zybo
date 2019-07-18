`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/18 17:43:38
// Design Name: 
// Module Name: gradation_sim
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module gradation_sim();

localparam STEP = 8;
localparam CLKNUM = (800*525+12000)*5;

reg             CLK;
reg             RST;
wire    [3:0]   VGA_R, VGA_G, VGA_B;
wire            VGA_HS;
wire            VGA_VS;

gradation gradation_inst(
    .CLK    (CLK),
    .RST    (RST),
    .VGA_R  (VGA_R),
    .VGA_G  (VGA_G),
    .VGA_B  (VGA_B),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS)
);

always begin
    CLK = 0; #(STEP/2);
    CLK = 1; #(STEP/2);
end

integer fd;


initial begin
    RST = 0;
    fd = $fopen("imagedata.raw", "wb");
    #(STEP*500)
    RST = 1;
    #(STEP*10)
    RST = 0;
    #(STEP*CLKNUM);
    $fclose(fd);
    $stop;
end
`include "vga_param.vh"
wire fileouten = (HFRONT + HWIDTH + HBACK <= pattern.syncgen.HCNT) &&
                 (VFRONT + VWIDTH + VBACK <= pattern.syncgen.VCNT);

always @(posedge gradation.PCK) begin
    if ( fileouten ) begin
        $fwrite(fd, "%c", {VGA_R, 4'h0});
        $fwrite(fd, "%c", {VGA_G, 4'h0});
        $fwrite(fd, "%c", {VGA_B, 4'h0});
    end
end

endmodule
