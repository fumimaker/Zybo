/* Copyright(C) 2016 Cobac.Net All rights reserved.       */
/* chapter: 第8章課題                                     */
/* project: axisim                                        */
/* outline: AXI Slave BMFの設定値を変えてシミュレーション */

module axisim_test;

localparam integer C_AXI_DATA_WIDTH = 32;
localparam integer STEP = 10;

/* 接続用の信号を宣言 */
// System Signals
reg ACLK;
reg ARESETN;

// Interface Write Address Ports
wire                            AXI_AWID;
wire [31:0]                     AXI_AWADDR;
wire [7:0]                      AXI_AWLEN;
wire [2:0]                      AXI_AWSIZE;
wire [1:0]                      AXI_AWBURST;
wire [1:0]                      AXI_AWLOCK;
wire [3:0]                      AXI_AWCACHE;
wire [2:0]                      AXI_AWPROT;
// wire [3:0]                      AXI_AWREGION;
wire [3:0]                      AXI_AWQOS;
wire                            AXI_AWUSER;
wire                            AXI_AWVALID;
wire                            AXI_AWREADY;

// Interface Write Data Ports
wire [C_AXI_DATA_WIDTH-1:0]     AXI_WDATA;
wire [C_AXI_DATA_WIDTH/8-1:0]   AXI_WSTRB;
wire                            AXI_WLAST;
wire                            AXI_WUSER;
wire                            AXI_WVALID;
wire                            AXI_WREADY;

   // Interface Write Response Ports
wire                            AXI_BID;
wire [1:0]                      AXI_BRESP;
wire                            AXI_BUSER;
wire                            AXI_BVALID;
wire                            AXI_BREADY;

   // Interface Read Address Ports
wire                            AXI_ARID;
wire [31:0]                     AXI_ARADDR;
wire [7:0]                      AXI_ARLEN;
wire [2:0]                      AXI_ARSIZE;
wire [1:0]                      AXI_ARBURST;
wire [1:0]                      AXI_ARLOCK;
wire [3:0]                      AXI_ARCACHE;
wire [2:0]                      AXI_ARPROT;
// wire [3:0]                      AXI_ARREGION;
wire [3:0]                      AXI_ARQOS;
wire                            AXI_ARUSER;
wire                            AXI_ARVALID;
wire                            AXI_ARREADY;

// Interface Read Data Ports
wire                            AXI_RID;
wire [C_AXI_DATA_WIDTH-1:0]     AXI_RDATA;
wire [1:0]                      AXI_RRESP;
wire                            AXI_RLAST;
wire                            AXI_RUSER;
wire                            AXI_RVALID;
wire                            AXI_RREADY;

wire                            ERROR;

/* AR37425のマスターモデルを接続 */
axi_master axi_master
   (
    // System Signals
    .ACLK           (ACLK),
    .ARESETN        (ARESETN),

    // Master Interface Write Address
    .M_AXI_AWID     (AXI_AWID),
    .M_AXI_AWADDR   (AXI_AWADDR),
    .M_AXI_AWLEN    (AXI_AWLEN),
    .M_AXI_AWSIZE   (AXI_AWSIZE),
    .M_AXI_AWBURST  (AXI_AWBURST),
    .M_AXI_AWLOCK   (AXI_AWLOCK),
    .M_AXI_AWCACHE  (AXI_AWCACHE),
    .M_AXI_AWPROT   (AXI_AWPROT),
    .M_AXI_AWQOS    (AXI_AWQOS),
    .M_AXI_AWUSER   (AXI_AWUSER),
    .M_AXI_AWVALID  (AXI_AWVALID),
    .M_AXI_AWREADY  (AXI_AWREADY),

   // Master Interface Write Data Ports
    .M_AXI_WDATA    (AXI_WDATA),
    .M_AXI_WSTRB    (AXI_WSTRB),
    .M_AXI_WLAST    (AXI_WLAST),
    .M_AXI_WUSER    (AXI_WUSER),
    .M_AXI_WVALID   (AXI_WVALID),
    .M_AXI_WREADY   (AXI_WREADY),

    // Master Interface Write Response
    .M_AXI_BID      (AXI_BID),
    .M_AXI_BRESP    (AXI_BRESP),
    .M_AXI_BUSER    (AXI_BUSER),
    .M_AXI_BVALID   (AXI_BVALID),
    .M_AXI_BREADY   (AXI_BREADY),

    // Master Interface Read Address
    .M_AXI_ARID     (AXI_ARID),
    .M_AXI_ARADDR   (AXI_ARADDR),
    .M_AXI_ARLEN    (AXI_ARLEN),
    .M_AXI_ARSIZE   (AXI_ARSIZE),
    .M_AXI_ARBURST  (AXI_ARBURST),
    .M_AXI_ARLOCK   (AXI_ARLOCK),
    .M_AXI_ARCACHE  (AXI_ARCACHE),
    .M_AXI_ARPROT   (AXI_ARPROT),
    .M_AXI_ARQOS    (AXI_ARQOS),
    .M_AXI_ARUSER   (AXI_ARUSER),
    .M_AXI_ARVALID  (AXI_ARVALID),
    .M_AXI_ARREADY  (AXI_ARREADY),

    // Master Interface Read Data
    .M_AXI_RID      (AXI_RID),
    .M_AXI_RDATA    (AXI_RDATA),
    .M_AXI_RRESP    (AXI_RRESP),
    .M_AXI_RLAST    (AXI_RLAST),
    .M_AXI_RUSER    (AXI_RUSER),
    .M_AXI_RVALID   (AXI_RVALID),
    .M_AXI_RREADY   (AXI_RREADY),

    // Example Design
    .ERROR          (ERROR)
);


/* FPGAの部屋のスレーブモデルを接続 */
axi_slave_bfm #(
    .C_S_AXI_DATA_WIDTH         (C_AXI_DATA_WIDTH),
    .WRITE_RANDOM_WAIT          (0),  // 1: Write時にランダムWait
    .READ_RANDOM_WAIT           (1),  // 1: Read時にランダムWait
    .RANDOM_BVALID_WAIT         (1),  // 1: BVALIDランダムWait
    .AWREADY_IS_USUALLY_HIGH    (1),  // AWREADYの通常値
    .ARREADY_IS_USUALLY_HIGH    (1)   // ARREADYの通常値
   ) axi_slave_bfm
  (
    // System Signals
    .ACLK           (ACLK),
    .ARESETN        (ARESETN),

    // Slave Interface Write Address
    .S_AXI_AWID     (AXI_AWID),
    .S_AXI_AWADDR   (AXI_AWADDR),
    .S_AXI_AWLEN    (AXI_AWLEN),
    .S_AXI_AWSIZE   (AXI_AWSIZE),
    .S_AXI_AWBURST  (AXI_AWBURST),
    .S_AXI_AWLOCK   (AXI_AWLOCK),
    .S_AXI_AWCACHE  (AXI_AWCACHE),
    .S_AXI_AWPROT   (AXI_AWPROT),
    .S_AXI_AWQOS    (AXI_AWQOS),
    .S_AXI_AWUSER   (AXI_AWUSER),
    .S_AXI_AWVALID  (AXI_AWVALID),
    .S_AXI_AWREADY  (AXI_AWREADY),

   // Slave Interface Write Data Ports
    .S_AXI_WDATA    (AXI_WDATA),
    .S_AXI_WSTRB    (AXI_WSTRB),
    .S_AXI_WLAST    (AXI_WLAST),
    .S_AXI_WUSER    (AXI_WUSER),
    .S_AXI_WVALID   (AXI_WVALID),
    .S_AXI_WREADY   (AXI_WREADY),

    // Slave Interface Write Response
    .S_AXI_BID      (AXI_BID),
    .S_AXI_BRESP    (AXI_BRESP),
    .S_AXI_BUSER    (AXI_BUSER),
    .S_AXI_BVALID   (AXI_BVALID),
    .S_AXI_BREADY   (AXI_BREADY),

    // Slave Interface Read Address
    .S_AXI_ARID     (AXI_ARID),
    .S_AXI_ARADDR   (AXI_ARADDR),
    .S_AXI_ARLEN    (AXI_ARLEN),
    .S_AXI_ARSIZE   (AXI_ARSIZE),
    .S_AXI_ARBURST  (AXI_ARBURST),
    .S_AXI_ARLOCK   (AXI_ARLOCK),
    .S_AXI_ARCACHE  (AXI_ARCACHE),
    .S_AXI_ARPROT   (AXI_ARPROT),
    .S_AXI_ARQOS    (AXI_ARQOS),
    .S_AXI_ARUSER   (AXI_ARUSER),
    .S_AXI_ARVALID  (AXI_ARVALID),
    .S_AXI_ARREADY  (AXI_ARREADY),

    // Slave Interface Read Data
    .S_AXI_RID      (AXI_RID),
    .S_AXI_RDATA    (AXI_RDATA),
    .S_AXI_RRESP    (AXI_RRESP),
    .S_AXI_RLAST    (AXI_RLAST),
    .S_AXI_RUSER    (AXI_RUSER),
    .S_AXI_RVALID   (AXI_RVALID),
    .S_AXI_RREADY   (AXI_RREADY)
);

/* クロックの作成 */
always begin
    ACLK = 1; #(STEP/2);
    ACLK = 0; #(STEP/2);
end

/* リセットを作成し1000クロック後に終了 */
initial begin
    ARESETN = 1;
    #STEP;
    ARESETN = 0;
    #(STEP*10);
    ARESETN = 1;
    #(STEP*1000);
    $stop;
end

endmodule
