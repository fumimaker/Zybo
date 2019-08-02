/* Copyright(C) 2016 Cobac.Net All Rights Reserved. */
/* chapter: 第9章課題                               */
/* project: display_XGA                             */
/* outline: XGAグラフィック表示回路IPのテストベンチ */

`timescale 1ns/1ps

module display_test;

localparam integer C_AXI_DATA_WIDTH = 32;
localparam integer STEP  = 10;
localparam integer C_OFFSET_WIDTH = 21;

// System Signals
reg ACLK;
reg ARESETN;

// for Master
// Interface Write Address Ports
wire                            M_AXI_AWID;
wire [31:0]                     M_AXI_AWADDR;
wire [7:0]                      M_AXI_AWLEN;
wire [2:0]                      M_AXI_AWSIZE;
wire [1:0]                      M_AXI_AWBURST;
wire [1:0]                      M_AXI_AWLOCK;
wire [3:0]                      M_AXI_AWCACHE;
wire [2:0]                      M_AXI_AWPROT;
wire [3:0]                      M_AXI_AWREGION;
wire [3:0]                      M_AXI_AWQOS;
wire                            M_AXI_AWUSER;
wire                            M_AXI_AWVALID;
wire                            M_AXI_AWREADY;

// Interface Write Data Ports
wire [C_AXI_DATA_WIDTH-1:0]     M_AXI_WDATA;
wire [C_AXI_DATA_WIDTH/8-1:0]   M_AXI_WSTRB;
wire                            M_AXI_WLAST;
wire                            M_AXI_WUSER;
wire                            M_AXI_WVALID;
wire                            M_AXI_WREADY;

   // Interface Write Response Ports
wire                            M_AXI_BID;
wire [1:0]                      M_AXI_BRESP;
wire                            M_AXI_BUSER;
wire                            M_AXI_BVALID;
wire                            M_AXI_BREADY;

   // Interface Read Address Ports
wire                            M_AXI_ARID;
wire [31:0]                     M_AXI_ARADDR;
wire [7:0]                      M_AXI_ARLEN;
wire [2:0]                      M_AXI_ARSIZE;
wire [1:0]                      M_AXI_ARBURST;
wire [1:0]                      M_AXI_ARLOCK;
wire [3:0]                      M_AXI_ARCACHE;
wire [2:0]                      M_AXI_ARPROT;
wire [3:0]                      M_AXI_ARREGION;
wire [3:0]                      M_AXI_ARQOS;
wire                            M_AXI_ARUSER;
wire                            M_AXI_ARVALID;
wire                            M_AXI_ARREADY;

// Interface Read Data Ports
wire                            M_AXI_RID;
wire [C_AXI_DATA_WIDTH-1:0]     M_AXI_RDATA;
wire [1:0]                      M_AXI_RRESP;
wire                            M_AXI_RLAST;
wire                            M_AXI_RUSER;
wire                            M_AXI_RVALID;
wire                            M_AXI_RREADY;

wire  [3:0]     VGA_R;
wire  [3:0]     VGA_G;
wire  [3:0]     VGA_B;
wire            VGA_HS, VGA_VS;

reg   [27:0]    DISPADDR;
reg             DISPON;
reg             CLRVBLNK;
wire            VBLANK;

wire            FIFO_OVER, FIFO_UNDER;


/* グラフィック表示回路の接続 */
display #(
    .C_M_AXI_DATA_WIDTH (C_AXI_DATA_WIDTH) )
   display
   (
    // System Signals
    .ACLK           (ACLK),
    .ARESETN        (ARESETN),

    // Master Interface Write Address
    .M_AXI_AWID     (M_AXI_AWID),
    .M_AXI_AWADDR   (M_AXI_AWADDR),
    .M_AXI_AWLEN    (M_AXI_AWLEN),
    .M_AXI_AWSIZE   (M_AXI_AWSIZE),
    .M_AXI_AWBURST  (M_AXI_AWBURST),
    .M_AXI_AWLOCK   (M_AXI_AWLOCK[0]),
    .M_AXI_AWCACHE  (M_AXI_AWCACHE),
    .M_AXI_AWPROT   (M_AXI_AWPROT),
    .M_AXI_AWQOS    (M_AXI_AWQOS),
    .M_AXI_AWUSER   (M_AXI_AWUSER),
    .M_AXI_AWVALID  (M_AXI_AWVALID),
    .M_AXI_AWREADY  (M_AXI_AWREADY),

   // Master Interface Write Data Ports
    .M_AXI_WDATA    (M_AXI_WDATA),
    .M_AXI_WSTRB    (M_AXI_WSTRB),
    .M_AXI_WLAST    (M_AXI_WLAST),
    .M_AXI_WUSER    (M_AXI_WUSER),
    .M_AXI_WVALID   (M_AXI_WVALID),
    .M_AXI_WREADY   (M_AXI_WREADY),

    // Master Interface Write Response
    .M_AXI_BID      (M_AXI_BID),
    .M_AXI_BRESP    (M_AXI_BRESP),
    .M_AXI_BUSER    (M_AXI_BUSER),
    .M_AXI_BVALID   (M_AXI_BVALID),
    .M_AXI_BREADY   (M_AXI_BREADY),

    // Master Interface Read Address
    .M_AXI_ARID     (M_AXI_ARID),
    .M_AXI_ARADDR   (M_AXI_ARADDR),
    .M_AXI_ARLEN    (M_AXI_ARLEN),
    .M_AXI_ARSIZE   (M_AXI_ARSIZE),
    .M_AXI_ARBURST  (M_AXI_ARBURST),
    .M_AXI_ARLOCK   (M_AXI_ARLOCK),
    .M_AXI_ARCACHE  (M_AXI_ARCACHE),
    .M_AXI_ARPROT   (M_AXI_ARPROT),
//  .M_AXI_ARREGION (M_AXI_ARREGION),
    .M_AXI_ARQOS    (M_AXI_ARQOS),
    .M_AXI_ARUSER   (M_AXI_ARUSER),
    .M_AXI_ARVALID  (M_AXI_ARVALID),
    .M_AXI_ARREADY  (M_AXI_ARREADY),

    // Master Interface Read Data
    .M_AXI_RID      (M_AXI_RID),
    .M_AXI_RDATA    (M_AXI_RDATA),
    .M_AXI_RRESP    (M_AXI_RRESP),
    .M_AXI_RLAST    (M_AXI_RLAST),
    .M_AXI_RUSER    (M_AXI_RUSER),
    .M_AXI_RVALID   (M_AXI_RVALID),
    .M_AXI_RREADY   (M_AXI_RREADY),

    /* 画像出力 */
    .VGA_R          (VGA_R),
    .VGA_G          (VGA_G),
    .VGA_B          (VGA_B),
    .VGA_HS         (VGA_HS),
    .VGA_VS         (VGA_VS),

    /* レジスタ */
    .DISPADDR       (DISPADDR),
    .DISPON         (DISPON),
    .CLRVBLNK       (CLRVBLNK),
    .VBLANK         (VBLANK),

    /* FIFOフラグ */
    .FIFO_OVER      (FIFO_OVER),
    .FIFO_UNDER     (FIFO_UNDER)
);

/* AXI Slave BFMの接続 */
axi_slave_bfm #(
    .C_S_AXI_DATA_WIDTH     (C_AXI_DATA_WIDTH),
    .READ_DATA_IS_INCREMENT (0),
    .C_OFFSET_WIDTH         (C_OFFSET_WIDTH)
  ) axi_slave_bfm
  (
    // System Signals
    .ACLK           (ACLK),
    .ARESETN        (ARESETN),

    // Slave Interface Write Address
    .S_AXI_AWID     (M_AXI_AWID),
    .S_AXI_AWADDR   (M_AXI_AWADDR),
    .S_AXI_AWLEN    (M_AXI_AWLEN),
    .S_AXI_AWSIZE   (M_AXI_AWSIZE),
    .S_AXI_AWBURST  (M_AXI_AWBURST),
    .S_AXI_AWLOCK   (M_AXI_AWLOCK),
    .S_AXI_AWCACHE  (M_AXI_AWCACHE),
    .S_AXI_AWPROT   (M_AXI_AWPROT),
    .S_AXI_AWQOS    (M_AXI_AWQOS),
    .S_AXI_AWUSER   (M_AXI_AWUSER),
    .S_AXI_AWVALID  (M_AXI_AWVALID),
    .S_AXI_AWREADY  (M_AXI_AWREADY),

   // Slave Interface Write Data Ports
    .S_AXI_WDATA    (M_AXI_WDATA),
    .S_AXI_WSTRB    (M_AXI_WSTRB),
    .S_AXI_WLAST    (M_AXI_WLAST),
    .S_AXI_WUSER    (M_AXI_WUSER),
    .S_AXI_WVALID   (M_AXI_WVALID),
    .S_AXI_WREADY   (M_AXI_WREADY),

    // Slave Interface Write Response
    .S_AXI_BID      (M_AXI_BID),
    .S_AXI_BRESP    (M_AXI_BRESP),
    .S_AXI_BUSER    (M_AXI_BUSER),
    .S_AXI_BVALID   (M_AXI_BVALID),
    .S_AXI_BREADY   (M_AXI_BREADY),

    // Slave Interface Read Address
    .S_AXI_ARID     (M_AXI_ARID),
    .S_AXI_ARADDR   (M_AXI_ARADDR),
    .S_AXI_ARLEN    (M_AXI_ARLEN),
    .S_AXI_ARSIZE   (M_AXI_ARSIZE),
    .S_AXI_ARBURST  (M_AXI_ARBURST),
    .S_AXI_ARLOCK   (M_AXI_ARLOCK),
    .S_AXI_ARCACHE  (M_AXI_ARCACHE),
    .S_AXI_ARPROT   (M_AXI_ARPROT),
//    .S_AXI_ARREGION (M_AXI_ARREGION),
    .S_AXI_ARQOS    (M_AXI_ARQOS),
    .S_AXI_ARUSER   (M_AXI_ARUSER),
    .S_AXI_ARVALID  (M_AXI_ARVALID),
    .S_AXI_ARREADY  (M_AXI_ARREADY),

    // Slave Interface Read Data
    .S_AXI_RID      (M_AXI_RID),
    .S_AXI_RDATA    (M_AXI_RDATA),
    .S_AXI_RRESP    (M_AXI_RRESP),
    .S_AXI_RLAST    (M_AXI_RLAST),
    .S_AXI_RUSER    (M_AXI_RUSER),
    .S_AXI_RVALID   (M_AXI_RVALID),
    .S_AXI_RREADY   (M_AXI_RREADY)
);

always begin
    ACLK = 0; #(STEP/2);
    ACLK = 1; #(STEP/2);
end

task meminit_wrgb;  /* 上下4分割して白赤緑青の帯を書く */
integer i;
localparam XGALOOP = 1024*768/2;
localparam WHITE = 16'h0fff,  RED = 16'h0f00,
           GREEN = 16'h00f0, BLUE = 16'h000f;
begin
    for( i=0; i<XGALOOP; i=i+1 ) begin
        if ( i < 192*1024/2 )
            axi_slave_bfm.ram_array[i] = (WHITE <<16) | WHITE;
        else if ( i < 384*1024/2 )
            axi_slave_bfm.ram_array[i] =   (RED <<16) | RED;
        else if ( i < 576*1024/2 )
            axi_slave_bfm.ram_array[i] = (GREEN <<16) | GREEN;
        else
            axi_slave_bfm.ram_array[i] =  (BLUE <<16) | BLUE;
    end
end
endtask


task meminit_incr;  /* 初期値0で1画素ごとに+1したデータを書く */
integer i;
localparam XGALOOP = 1024*768/2;
begin
    for( i=0; i<XGALOOP; i=i+1 ) begin
        axi_slave_bfm.ram_array[i][15:0]  = i*2;
        axi_slave_bfm.ram_array[i][31:16] = i*2+1;
    end
end
endtask

integer fd;

initial begin
    meminit_wrgb;  /* ここをmeminit_incrに変更してもう一度Sim */
    fd = $fopen("imagedata.raw", "wb");
    ARESETN = 1; DISPON = 0; CLRVBLNK = 0;
    #(STEP*500);
    ARESETN = 0;
    #(STEP*10);
    ARESETN = 1;
    #(STEP*100);
    DISPADDR = 0;
    DISPON = 1;
    #(STEP*1750000);
    $fclose(fd);
    $stop;
end

/* ファイル出力 */
reg dlyDE;
always @(posedge display.PCK) begin
    if ( !ARESETN )
        dlyDE <= 1'b0;
    else
        dlyDE <= display.disp_out.disp_enable;
end

always @(posedge display.PCK) begin
    if ( dlyDE ) begin
        $fwrite(fd, "%c", {VGA_R, 4'b0000});
        $fwrite(fd, "%c", {VGA_G, 4'b0000});
        $fwrite(fd, "%c", {VGA_B, 4'b0000});
    end
end

endmodule
