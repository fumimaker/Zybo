
module vga_bmp(
    input               CLK,
    input               RST,
    output  reg  [2:0]  VGA_R,
    output  reg  [2:0]  VGA_G,
    output  reg  [2:0]  VGA_B,
    output              VGA_HS,
    output              VGA_VS,
    output  reg  [16:0] addr,
    input        [8:0]  data
);


`include "vga_param.vh"

localparam HSIZE = 10'd64;
localparam VSIZE = 10'd120;


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

bmprom bmprom_instance(
    .CLK    (CLK),
    .RST    (RST),
    .data   (data),
    .addr   (addr)
);



wire [9:0] HBLANK = HFRONT + HWIDTH + HBACK;
wire [9:0] VBLANK = VFRONT + VWIDTH + VBACK;

wire disp_enable = (HBLANK-10'd1 <= HCNT) && (HCNT < HPERIOD-10'd1)
                && (VBLANK <= VCNT);
//wire [9:0] hcounter = HCNT-HBLANK+10'd1;
//wire [3:0] pattern  = hcounter[5:2];
//wire [9:0] vcounter = (VCNT-VBLANK)/VSIZE;

reg [2:0] R, G, B;
reg [15:0] pixelCnt = 0;
reg [8:0] pixel;
always @(posedge PCK) begin
    if (VCNT<120) begin
        R<=0;    G<=0;    B<=0;
    end
    else if(VCNT<360) begin
        if(HCNT<160) begin
            R<=0;    G<=0;    B<=0;
        end
        else if(HCNT<480) begin //draw
            addr = pixelCnt;
            pixel = data;
            R <= pixel&9'b111000000;
            G <= pixel&9'b000111000;
            B <= pixel&9'b000000111;
            pixelCnt <= pixelCnt + 9;
        end
        else if(HCNT<640)begin
            R<=0;    G<=0;    B<=0;
        end
    end
    else if(VCNT<480) begin
        R<=0;    G<=0;    B<=0;
    end
/*
    case ( vcounter )
        3'd0:   begin R = pattern; G = pattern; B = pattern; end
        3'd1:   begin R = pattern; G = 4'd0;    B = 4'd0;    end
        3'd2:   begin R = 4'd0;    G = pattern; B = 4'd0;    end
        3'd3:   begin R = 4'd0;    G = 4'd0;    B = pattern; end
        default:begin R = 4'd0;    G = 4'd0;    B = 4'd0;    end
    endcase
    */
end

always @( posedge PCK ) begin
    if ( RST )
        {VGA_R, VGA_G, VGA_B} <= 16'h0000;
    else if ( disp_enable )
        {VGA_R, VGA_G, VGA_B} <= {R, G, B};
    else
        {VGA_R, VGA_G, VGA_B} <= 16'h0000;
end

endmodule
