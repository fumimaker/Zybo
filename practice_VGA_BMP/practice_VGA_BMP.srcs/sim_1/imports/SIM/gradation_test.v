module vga_bmp_test;


localparam STEP = 8;
localparam CLKNUM = (800*525+12000)*5;


reg             CLK;
reg             RST;
wire    [2:0]   VGA_R, VGA_G, VGA_B;
wire            VGA_HS;
wire            VGA_VS;

vga_bmp vga_bmp_inst(
    .CLK    (CLK),
    .RST    (RST),
    .VGA_R  (VGA_R),
    .VGA_G  (VGA_G),
    .VGA_B  (VGA_B),
    .VGA_HS (VGA_HS),
    .VGA_VS (VGA_VS)
);


always begin
    CLK = 0;
    #(STEP/2);
    CLK = 1;
    #(STEP/2);
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


wire fileouten = (HFRONT + HWIDTH + HBACK <= vga_bmp.syncgen.HCNT) &&
                 (VFRONT + VWIDTH + VBACK <= vga_bmp.syncgen.VCNT);


always @(posedge vga_bmp.PCK) begin
    if ( fileouten ) begin
        $fwrite(fd, "%c", {VGA_R, 3'h0});
        $fwrite(fd, "%c", {VGA_G, 3'h0});
        $fwrite(fd, "%c", {VGA_B, 3'h0});
    end
end

endmodule
