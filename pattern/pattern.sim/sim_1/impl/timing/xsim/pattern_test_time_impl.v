// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Jun 21 22:45:19 2019
// Host        : FUMI3D2B running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/fumi/Zybo/pattern/pattern.sim/sim_1/impl/timing/xsim/pattern_test_time_impl.v
// Design      : pattern
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* ECO_CHECKSUM = "9c54253a" *) (* HBACK = "10'b0000110000" *) (* HFRONT = "10'b0000010000" *) 
(* HPERIOD = "10'b1100100000" *) (* HSIZE = "10'b0001010000" *) (* HWIDTH = "10'b0001100000" *) 
(* VBACK = "10'b0000100001" *) (* VFRONT = "10'b0000001010" *) (* VPERIOD = "10'b1000001101" *) 
(* VSIZE = "10'b0001111000" *) (* VWIDTH = "10'b0000000010" *) 
(* NotValidForBitStream *)
module pattern
   (CLK,
    RST,
    VGA_R,
    VGA_G,
    VGA_B,
    VGA_HS,
    VGA_VS);
  input CLK;
  input RST;
  output [3:0]VGA_R;
  output [3:0]VGA_G;
  output [3:0]VGA_B;
  output VGA_HS;
  output VGA_VS;

  wire CLK;
  wire CLK_IBUF;
  wire PCK;
  wire RST;
  wire RST_IBUF;
  wire [3:0]VGA_B;
  wire [0:0]VGA_B_OBUF;
  wire \VGA_B_reg[3]_lopt_replica_1 ;
  wire \VGA_B_reg[3]_lopt_replica_2_1 ;
  wire \VGA_B_reg[3]_lopt_replica_3_1 ;
  wire [3:0]VGA_G;
  wire [0:0]VGA_G_OBUF;
  wire \VGA_G_reg[3]_lopt_replica_1 ;
  wire \VGA_G_reg[3]_lopt_replica_2_1 ;
  wire \VGA_G_reg[3]_lopt_replica_3_1 ;
  wire VGA_HS;
  wire VGA_HS_OBUF;
  wire [3:0]VGA_R;
  wire \VGA_R[3]_i_132_n_0 ;
  wire \VGA_R[3]_i_133_n_0 ;
  wire \VGA_R[3]_i_134_n_0 ;
  wire \VGA_R[3]_i_135_n_0 ;
  wire \VGA_R[3]_i_156_n_0 ;
  wire \VGA_R[3]_i_30_n_0 ;
  wire \VGA_R[3]_i_52_n_0 ;
  wire \VGA_R[3]_i_53_n_0 ;
  wire \VGA_R[3]_i_54_n_0 ;
  wire \VGA_R[3]_i_55_n_0 ;
  wire \VGA_R[3]_i_88_n_0 ;
  wire \VGA_R[3]_i_89_n_0 ;
  wire \VGA_R[3]_i_90_n_0 ;
  wire [0:0]VGA_R_OBUF;
  wire \VGA_R_reg[3]_i_26_n_0 ;
  wire \VGA_R_reg[3]_i_26_n_4 ;
  wire \VGA_R_reg[3]_i_26_n_5 ;
  wire \VGA_R_reg[3]_i_26_n_6 ;
  wire \VGA_R_reg[3]_i_26_n_7 ;
  wire \VGA_R_reg[3]_i_51_n_0 ;
  wire \VGA_R_reg[3]_i_51_n_4 ;
  wire \VGA_R_reg[3]_i_51_n_5 ;
  wire \VGA_R_reg[3]_i_51_n_6 ;
  wire \VGA_R_reg[3]_i_51_n_7 ;
  wire \VGA_R_reg[3]_lopt_replica_1 ;
  wire \VGA_R_reg[3]_lopt_replica_2_1 ;
  wire \VGA_R_reg[3]_lopt_replica_3_1 ;
  wire VGA_VS;
  wire VGA_VS_OBUF;
  wire syncgen_n_10;
  wire syncgen_n_11;
  wire syncgen_n_12;
  wire syncgen_n_13;
  wire syncgen_n_14;
  wire syncgen_n_15;
  wire syncgen_n_16;
  wire syncgen_n_17;
  wire syncgen_n_18;
  wire syncgen_n_19;
  wire syncgen_n_20;
  wire syncgen_n_21;
  wire syncgen_n_3;
  wire syncgen_n_4;
  wire syncgen_n_5;
  wire syncgen_n_6;
  wire syncgen_n_7;
  wire syncgen_n_8;
  wire syncgen_n_9;
  wire [2:0]\NLW_VGA_R_reg[3]_i_26_CO_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_51_CO_UNCONNECTED ;

initial begin
 $sdf_annotate("pattern_test_time_impl.sdf",,,,"tool_control");
end
  IBUF CLK_IBUF_inst
       (.I(CLK),
        .O(CLK_IBUF));
  IBUF RST_IBUF_inst
       (.I(RST),
        .O(RST_IBUF));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_B_OBUF[0]_inst 
       (.I(\VGA_B_reg[3]_lopt_replica_1 ),
        .O(VGA_B[0]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_B_OBUF[1]_inst 
       (.I(\VGA_B_reg[3]_lopt_replica_2_1 ),
        .O(VGA_B[1]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_B_OBUF[2]_inst 
       (.I(\VGA_B_reg[3]_lopt_replica_3_1 ),
        .O(VGA_B[2]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_B_OBUF[3]_inst 
       (.I(VGA_B_OBUF),
        .O(VGA_B[3]));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_B_reg[3] 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_19),
        .Q(VGA_B_OBUF),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_B_reg[3]_lopt_replica 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_19),
        .Q(\VGA_B_reg[3]_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_B_reg[3]_lopt_replica_2 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_19),
        .Q(\VGA_B_reg[3]_lopt_replica_2_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_B_reg[3]_lopt_replica_3 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_19),
        .Q(\VGA_B_reg[3]_lopt_replica_3_1 ),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_G_OBUF[0]_inst 
       (.I(\VGA_G_reg[3]_lopt_replica_1 ),
        .O(VGA_G[0]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_G_OBUF[1]_inst 
       (.I(\VGA_G_reg[3]_lopt_replica_2_1 ),
        .O(VGA_G[1]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_G_OBUF[2]_inst 
       (.I(\VGA_G_reg[3]_lopt_replica_3_1 ),
        .O(VGA_G[2]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_G_OBUF[3]_inst 
       (.I(VGA_G_OBUF),
        .O(VGA_G[3]));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_G_reg[3] 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_20),
        .Q(VGA_G_OBUF),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_G_reg[3]_lopt_replica 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_20),
        .Q(\VGA_G_reg[3]_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_G_reg[3]_lopt_replica_2 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_20),
        .Q(\VGA_G_reg[3]_lopt_replica_2_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_G_reg[3]_lopt_replica_3 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_20),
        .Q(\VGA_G_reg[3]_lopt_replica_3_1 ),
        .R(1'b0));
  OBUF VGA_HS_OBUF_inst
       (.I(VGA_HS_OBUF),
        .O(VGA_HS));
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_132 
       (.I0(syncgen_n_8),
        .I1(syncgen_n_12),
        .O(\VGA_R[3]_i_132_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_133 
       (.I0(syncgen_n_4),
        .I1(syncgen_n_9),
        .O(\VGA_R[3]_i_133_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_134 
       (.I0(syncgen_n_5),
        .I1(syncgen_n_10),
        .O(\VGA_R[3]_i_134_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_135 
       (.I0(syncgen_n_6),
        .I1(syncgen_n_11),
        .O(\VGA_R[3]_i_135_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_156 
       (.I0(syncgen_n_7),
        .I1(syncgen_n_3),
        .O(\VGA_R[3]_i_156_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_R[3]_i_30 
       (.I0(syncgen_n_14),
        .O(\VGA_R[3]_i_30_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_R[3]_i_52 
       (.I0(syncgen_n_15),
        .O(\VGA_R[3]_i_52_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_R[3]_i_53 
       (.I0(syncgen_n_16),
        .O(\VGA_R[3]_i_53_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \VGA_R[3]_i_54 
       (.I0(syncgen_n_17),
        .I1(syncgen_n_18),
        .O(\VGA_R[3]_i_54_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \VGA_R[3]_i_55 
       (.I0(syncgen_n_13),
        .I1(syncgen_n_14),
        .O(\VGA_R[3]_i_55_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_R[3]_i_88 
       (.I0(syncgen_n_15),
        .O(\VGA_R[3]_i_88_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_R[3]_i_89 
       (.I0(syncgen_n_16),
        .O(\VGA_R[3]_i_89_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_R[3]_i_90 
       (.I0(syncgen_n_17),
        .O(\VGA_R[3]_i_90_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_R_OBUF[0]_inst 
       (.I(\VGA_R_reg[3]_lopt_replica_1 ),
        .O(VGA_R[0]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_R_OBUF[1]_inst 
       (.I(\VGA_R_reg[3]_lopt_replica_2_1 ),
        .O(VGA_R[1]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_R_OBUF[2]_inst 
       (.I(\VGA_R_reg[3]_lopt_replica_3_1 ),
        .O(VGA_R[2]));
  (* OPT_MODIFIED = "SWEEP " *) 
  OBUF \VGA_R_OBUF[3]_inst 
       (.I(VGA_R_OBUF),
        .O(VGA_R[3]));
  FDRE #(
    .INIT(1'b0)) 
    \VGA_R_reg[3] 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_21),
        .Q(VGA_R_OBUF),
        .R(1'b0));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_26 
       (.CI(\VGA_R_reg[3]_i_51_n_0 ),
        .CO({\VGA_R_reg[3]_i_26_n_0 ,\NLW_VGA_R_reg[3]_i_26_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({syncgen_n_15,syncgen_n_16,syncgen_n_17,syncgen_n_13}),
        .O({\VGA_R_reg[3]_i_26_n_4 ,\VGA_R_reg[3]_i_26_n_5 ,\VGA_R_reg[3]_i_26_n_6 ,\VGA_R_reg[3]_i_26_n_7 }),
        .S({\VGA_R[3]_i_52_n_0 ,\VGA_R[3]_i_53_n_0 ,\VGA_R[3]_i_54_n_0 ,\VGA_R[3]_i_55_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_51 
       (.CI(1'b0),
        .CO({\VGA_R_reg[3]_i_51_n_0 ,\NLW_VGA_R_reg[3]_i_51_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\VGA_R_reg[3]_i_51_n_4 ,\VGA_R_reg[3]_i_51_n_5 ,\VGA_R_reg[3]_i_51_n_6 ,\VGA_R_reg[3]_i_51_n_7 }),
        .S({\VGA_R[3]_i_88_n_0 ,\VGA_R[3]_i_89_n_0 ,\VGA_R[3]_i_90_n_0 ,syncgen_n_13}));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_R_reg[3]_lopt_replica 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_21),
        .Q(\VGA_R_reg[3]_lopt_replica_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_R_reg[3]_lopt_replica_2 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_21),
        .Q(\VGA_R_reg[3]_lopt_replica_2_1 ),
        .R(1'b0));
  (* OPT_INSERTED_REPDRIVER *) 
  (* OPT_MODIFIED = "SWEEP " *) 
  FDRE #(
    .INIT(1'b0)) 
    \VGA_R_reg[3]_lopt_replica_3 
       (.C(PCK),
        .CE(1'b1),
        .D(syncgen_n_21),
        .Q(\VGA_R_reg[3]_lopt_replica_3_1 ),
        .R(1'b0));
  OBUF VGA_VS_OBUF_inst
       (.I(VGA_VS_OBUF),
        .O(VGA_VS));
  syncgen syncgen
       (.CO(syncgen_n_8),
        .\HCNT_reg[8]_0 (syncgen_n_19),
        .\HCNT_reg[8]_1 (syncgen_n_20),
        .\HCNT_reg[8]_2 (syncgen_n_21),
        .O(syncgen_n_3),
        .PCK(PCK),
        .RST_IBUF(RST_IBUF),
        .S(\VGA_R[3]_i_156_n_0 ),
        .SYSCLK(CLK_IBUF),
        .\VCNT_reg[0]_0 (syncgen_n_12),
        .\VCNT_reg[1]_0 ({syncgen_n_9,syncgen_n_10,syncgen_n_11}),
        .\VCNT_reg[3]_0 (syncgen_n_13),
        .\VCNT_reg[9]_0 ({syncgen_n_14,syncgen_n_15,syncgen_n_16,syncgen_n_17}),
        .VGA_HS_OBUF(VGA_HS_OBUF),
        .\VGA_R[3]_i_166_0 ({syncgen_n_4,syncgen_n_5,syncgen_n_6,syncgen_n_7}),
        .\VGA_R[3]_i_185_0 (\VGA_R_reg[3]_i_26_n_0 ),
        .\VGA_R[3]_i_185_1 (\VGA_R[3]_i_30_n_0 ),
        .\VGA_R_reg[3]_i_146_0 ({\VGA_R_reg[3]_i_26_n_4 ,\VGA_R_reg[3]_i_26_n_5 ,\VGA_R_reg[3]_i_26_n_6 ,\VGA_R_reg[3]_i_26_n_7 }),
        .\VGA_R_reg[3]_i_199_0 ({\VGA_R_reg[3]_i_51_n_4 ,\VGA_R_reg[3]_i_51_n_5 ,\VGA_R_reg[3]_i_51_n_6 ,\VGA_R_reg[3]_i_51_n_7 }),
        .\VGA_R_reg[3]_i_28_0 (syncgen_n_18),
        .\VGA_R_reg[3]_i_73_0 ({\VGA_R[3]_i_132_n_0 ,\VGA_R[3]_i_133_n_0 ,\VGA_R[3]_i_134_n_0 ,\VGA_R[3]_i_135_n_0 }),
        .VGA_VS_OBUF(VGA_VS_OBUF));
endmodule

module pckgen
   (PCK,
    SYSCLK);
  output PCK;
  input SYSCLK;

  wire CLKFBOUT;
  wire PCK;
  wire SYSCLK;
  wire iPCK;
  wire NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED;
  wire NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED;
  wire [15:0]NLW_MMCME2_BASE_inst_DO_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  (* XILINX_LEGACY_PRIM = "MMCME2_BASE" *) 
  MMCME2_ADV #(
    .BANDWIDTH("OPTIMIZED"),
    .CLKFBOUT_MULT_F(25.000000),
    .CLKFBOUT_PHASE(0.000000),
    .CLKFBOUT_USE_FINE_PS("FALSE"),
    .CLKIN1_PERIOD(8.000000),
    .CLKIN2_PERIOD(10.000000),
    .CLKOUT0_DIVIDE_F(25.000000),
    .CLKOUT0_DUTY_CYCLE(0.500000),
    .CLKOUT0_PHASE(0.000000),
    .CLKOUT0_USE_FINE_PS("FALSE"),
    .CLKOUT1_DIVIDE(1),
    .CLKOUT1_DUTY_CYCLE(0.500000),
    .CLKOUT1_PHASE(0.000000),
    .CLKOUT1_USE_FINE_PS("FALSE"),
    .CLKOUT2_DIVIDE(1),
    .CLKOUT2_DUTY_CYCLE(0.500000),
    .CLKOUT2_PHASE(0.000000),
    .CLKOUT2_USE_FINE_PS("FALSE"),
    .CLKOUT3_DIVIDE(1),
    .CLKOUT3_DUTY_CYCLE(0.500000),
    .CLKOUT3_PHASE(0.000000),
    .CLKOUT3_USE_FINE_PS("FALSE"),
    .CLKOUT4_CASCADE("FALSE"),
    .CLKOUT4_DIVIDE(1),
    .CLKOUT4_DUTY_CYCLE(0.500000),
    .CLKOUT4_PHASE(0.000000),
    .CLKOUT4_USE_FINE_PS("FALSE"),
    .CLKOUT5_DIVIDE(1),
    .CLKOUT5_DUTY_CYCLE(0.500000),
    .CLKOUT5_PHASE(0.000000),
    .CLKOUT5_USE_FINE_PS("FALSE"),
    .CLKOUT6_DIVIDE(1),
    .CLKOUT6_DUTY_CYCLE(0.500000),
    .CLKOUT6_PHASE(0.000000),
    .CLKOUT6_USE_FINE_PS("FALSE"),
    .COMPENSATION("INTERNAL"),
    .DIVCLK_DIVIDE(5),
    .REF_JITTER1(0.000000),
    .REF_JITTER2(0.010000),
    .SS_EN("FALSE"),
    .SS_MODE("CENTER_HIGH"),
    .SS_MOD_PERIOD(10000),
    .STARTUP_WAIT("FALSE")) 
    MMCME2_BASE_inst
       (.CLKFBIN(CLKFBOUT),
        .CLKFBOUT(CLKFBOUT),
        .CLKFBOUTB(NLW_MMCME2_BASE_inst_CLKFBOUTB_UNCONNECTED),
        .CLKFBSTOPPED(NLW_MMCME2_BASE_inst_CLKFBSTOPPED_UNCONNECTED),
        .CLKIN1(SYSCLK),
        .CLKIN2(1'b0),
        .CLKINSEL(1'b1),
        .CLKINSTOPPED(NLW_MMCME2_BASE_inst_CLKINSTOPPED_UNCONNECTED),
        .CLKOUT0(iPCK),
        .CLKOUT0B(NLW_MMCME2_BASE_inst_CLKOUT0B_UNCONNECTED),
        .CLKOUT1(NLW_MMCME2_BASE_inst_CLKOUT1_UNCONNECTED),
        .CLKOUT1B(NLW_MMCME2_BASE_inst_CLKOUT1B_UNCONNECTED),
        .CLKOUT2(NLW_MMCME2_BASE_inst_CLKOUT2_UNCONNECTED),
        .CLKOUT2B(NLW_MMCME2_BASE_inst_CLKOUT2B_UNCONNECTED),
        .CLKOUT3(NLW_MMCME2_BASE_inst_CLKOUT3_UNCONNECTED),
        .CLKOUT3B(NLW_MMCME2_BASE_inst_CLKOUT3B_UNCONNECTED),
        .CLKOUT4(NLW_MMCME2_BASE_inst_CLKOUT4_UNCONNECTED),
        .CLKOUT5(NLW_MMCME2_BASE_inst_CLKOUT5_UNCONNECTED),
        .CLKOUT6(NLW_MMCME2_BASE_inst_CLKOUT6_UNCONNECTED),
        .DADDR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DCLK(1'b0),
        .DEN(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DO(NLW_MMCME2_BASE_inst_DO_UNCONNECTED[15:0]),
        .DRDY(NLW_MMCME2_BASE_inst_DRDY_UNCONNECTED),
        .DWE(1'b0),
        .LOCKED(NLW_MMCME2_BASE_inst_LOCKED_UNCONNECTED),
        .PSCLK(1'b0),
        .PSDONE(NLW_MMCME2_BASE_inst_PSDONE_UNCONNECTED),
        .PSEN(1'b0),
        .PSINCDEC(1'b0),
        .PWRDWN(1'b0),
        .RST(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* OPT_MODIFIED = "BUFG_OPT " *) 
  BUFG iBUFG
       (.I(iPCK),
        .O(PCK));
endmodule

module syncgen
   (VGA_HS_OBUF,
    PCK,
    VGA_VS_OBUF,
    O,
    \VGA_R[3]_i_166_0 ,
    CO,
    \VCNT_reg[1]_0 ,
    \VCNT_reg[0]_0 ,
    \VCNT_reg[3]_0 ,
    \VCNT_reg[9]_0 ,
    \VGA_R_reg[3]_i_28_0 ,
    \HCNT_reg[8]_0 ,
    \HCNT_reg[8]_1 ,
    \HCNT_reg[8]_2 ,
    RST_IBUF,
    S,
    \VGA_R_reg[3]_i_73_0 ,
    \VGA_R[3]_i_185_0 ,
    \VGA_R[3]_i_185_1 ,
    \VGA_R_reg[3]_i_199_0 ,
    \VGA_R_reg[3]_i_146_0 ,
    SYSCLK);
  output VGA_HS_OBUF;
  output PCK;
  output VGA_VS_OBUF;
  output [0:0]O;
  output [3:0]\VGA_R[3]_i_166_0 ;
  output [0:0]CO;
  output [2:0]\VCNT_reg[1]_0 ;
  output [0:0]\VCNT_reg[0]_0 ;
  output [0:0]\VCNT_reg[3]_0 ;
  output [3:0]\VCNT_reg[9]_0 ;
  output [0:0]\VGA_R_reg[3]_i_28_0 ;
  output \HCNT_reg[8]_0 ;
  output \HCNT_reg[8]_1 ;
  output \HCNT_reg[8]_2 ;
  input RST_IBUF;
  input [0:0]S;
  input [3:0]\VGA_R_reg[3]_i_73_0 ;
  input [0:0]\VGA_R[3]_i_185_0 ;
  input [0:0]\VGA_R[3]_i_185_1 ;
  input [3:0]\VGA_R_reg[3]_i_199_0 ;
  input [3:0]\VGA_R_reg[3]_i_146_0 ;
  input SYSCLK;

  wire [0:0]CO;
  wire [9:0]HCNT;
  wire \HCNT[2]_i_1_n_0 ;
  wire \HCNT[4]_i_1_n_0 ;
  wire \HCNT[5]_i_1_n_0 ;
  wire \HCNT[9]_i_1_n_0 ;
  wire \HCNT_reg[8]_0 ;
  wire \HCNT_reg[8]_1 ;
  wire \HCNT_reg[8]_2 ;
  wire [0:0]O;
  wire PCK;
  wire RST_IBUF;
  wire [0:0]S;
  wire SYSCLK;
  wire [9:0]VCNT;
  wire \VCNT[2]_i_2_n_0 ;
  wire \VCNT[2]_i_3_n_0 ;
  wire \VCNT[6]_i_2_n_0 ;
  wire \VCNT[8]_i_2_n_0 ;
  wire \VCNT[9]_i_3_n_0 ;
  wire \VCNT[9]_i_4_n_0 ;
  wire \VCNT[9]_i_5_n_0 ;
  wire [9:0]VCNT_0;
  wire [0:0]\VCNT_reg[0]_0 ;
  wire [2:0]\VCNT_reg[1]_0 ;
  wire [0:0]\VCNT_reg[3]_0 ;
  wire [3:0]\VCNT_reg[9]_0 ;
  wire \VGA_G[3]_i_10_n_0 ;
  wire \VGA_G[3]_i_11_n_0 ;
  wire \VGA_G[3]_i_12_n_0 ;
  wire \VGA_G[3]_i_13_n_0 ;
  wire \VGA_G[3]_i_14_n_0 ;
  wire \VGA_G[3]_i_15_n_0 ;
  wire \VGA_G[3]_i_16_n_0 ;
  wire \VGA_G[3]_i_2_n_0 ;
  wire \VGA_G[3]_i_5_n_0 ;
  wire \VGA_G[3]_i_6_n_0 ;
  wire \VGA_G[3]_i_7_n_0 ;
  wire \VGA_G[3]_i_8_n_0 ;
  wire \VGA_G[3]_i_9_n_0 ;
  wire \VGA_G_reg[3]_i_3_n_2 ;
  wire \VGA_G_reg[3]_i_4_n_0 ;
  wire VGA_HS;
  wire VGA_HS_OBUF;
  wire VGA_HS_i_1_n_0;
  wire VGA_HS_i_3_n_0;
  wire VGA_HS_i_4_n_0;
  wire VGA_HS_i_5_n_0;
  wire \VGA_R[3]_i_100_n_0 ;
  wire \VGA_R[3]_i_102_n_0 ;
  wire \VGA_R[3]_i_106_n_0 ;
  wire \VGA_R[3]_i_107_n_0 ;
  wire \VGA_R[3]_i_108_n_0 ;
  wire \VGA_R[3]_i_109_n_0 ;
  wire \VGA_R[3]_i_10_n_0 ;
  wire \VGA_R[3]_i_112_n_0 ;
  wire \VGA_R[3]_i_117_n_0 ;
  wire \VGA_R[3]_i_118_n_0 ;
  wire \VGA_R[3]_i_119_n_0 ;
  wire \VGA_R[3]_i_11_n_0 ;
  wire \VGA_R[3]_i_121_n_0 ;
  wire \VGA_R[3]_i_122_n_0 ;
  wire \VGA_R[3]_i_123_n_0 ;
  wire \VGA_R[3]_i_124_n_0 ;
  wire \VGA_R[3]_i_125_n_0 ;
  wire \VGA_R[3]_i_126_n_0 ;
  wire \VGA_R[3]_i_127_n_0 ;
  wire \VGA_R[3]_i_128_n_0 ;
  wire \VGA_R[3]_i_12_n_0 ;
  wire \VGA_R[3]_i_137_n_0 ;
  wire \VGA_R[3]_i_138_n_0 ;
  wire \VGA_R[3]_i_139_n_0 ;
  wire \VGA_R[3]_i_13_n_0 ;
  wire \VGA_R[3]_i_140_n_0 ;
  wire \VGA_R[3]_i_141_n_0 ;
  wire \VGA_R[3]_i_142_n_0 ;
  wire \VGA_R[3]_i_143_n_0 ;
  wire \VGA_R[3]_i_144_n_0 ;
  wire \VGA_R[3]_i_145_n_0 ;
  wire \VGA_R[3]_i_147_n_0 ;
  wire \VGA_R[3]_i_148_n_0 ;
  wire \VGA_R[3]_i_149_n_0 ;
  wire \VGA_R[3]_i_150_n_0 ;
  wire \VGA_R[3]_i_151_n_0 ;
  wire \VGA_R[3]_i_152_n_0 ;
  wire \VGA_R[3]_i_153_n_0 ;
  wire \VGA_R[3]_i_154_n_0 ;
  wire \VGA_R[3]_i_157_n_0 ;
  wire \VGA_R[3]_i_158_n_0 ;
  wire \VGA_R[3]_i_159_n_0 ;
  wire \VGA_R[3]_i_164_n_0 ;
  wire \VGA_R[3]_i_165_n_0 ;
  wire [3:0]\VGA_R[3]_i_166_0 ;
  wire \VGA_R[3]_i_166_n_0 ;
  wire \VGA_R[3]_i_168_n_0 ;
  wire \VGA_R[3]_i_169_n_0 ;
  wire \VGA_R[3]_i_170_n_0 ;
  wire \VGA_R[3]_i_171_n_0 ;
  wire \VGA_R[3]_i_172_n_0 ;
  wire \VGA_R[3]_i_173_n_0 ;
  wire \VGA_R[3]_i_174_n_0 ;
  wire \VGA_R[3]_i_175_n_0 ;
  wire \VGA_R[3]_i_176_n_0 ;
  wire \VGA_R[3]_i_178_n_0 ;
  wire \VGA_R[3]_i_179_n_0 ;
  wire \VGA_R[3]_i_180_n_0 ;
  wire \VGA_R[3]_i_181_n_0 ;
  wire \VGA_R[3]_i_182_n_0 ;
  wire \VGA_R[3]_i_183_n_0 ;
  wire \VGA_R[3]_i_184_n_0 ;
  wire [0:0]\VGA_R[3]_i_185_0 ;
  wire [0:0]\VGA_R[3]_i_185_1 ;
  wire \VGA_R[3]_i_185_n_0 ;
  wire \VGA_R[3]_i_187_n_0 ;
  wire \VGA_R[3]_i_188_n_0 ;
  wire \VGA_R[3]_i_189_n_0 ;
  wire \VGA_R[3]_i_18_n_0 ;
  wire \VGA_R[3]_i_190_n_0 ;
  wire \VGA_R[3]_i_192_n_0 ;
  wire \VGA_R[3]_i_195_n_0 ;
  wire \VGA_R[3]_i_196_n_0 ;
  wire \VGA_R[3]_i_197_n_0 ;
  wire \VGA_R[3]_i_198_n_0 ;
  wire \VGA_R[3]_i_200_n_0 ;
  wire \VGA_R[3]_i_201_n_0 ;
  wire \VGA_R[3]_i_202_n_0 ;
  wire \VGA_R[3]_i_203_n_0 ;
  wire \VGA_R[3]_i_204_n_0 ;
  wire \VGA_R[3]_i_205_n_0 ;
  wire \VGA_R[3]_i_206_n_0 ;
  wire \VGA_R[3]_i_207_n_0 ;
  wire \VGA_R[3]_i_208_n_0 ;
  wire \VGA_R[3]_i_20_n_0 ;
  wire \VGA_R[3]_i_210_n_0 ;
  wire \VGA_R[3]_i_211_n_0 ;
  wire \VGA_R[3]_i_212_n_0 ;
  wire \VGA_R[3]_i_213_n_0 ;
  wire \VGA_R[3]_i_215_n_0 ;
  wire \VGA_R[3]_i_216_n_0 ;
  wire \VGA_R[3]_i_217_n_0 ;
  wire \VGA_R[3]_i_218_n_0 ;
  wire \VGA_R[3]_i_219_n_0 ;
  wire \VGA_R[3]_i_21_n_0 ;
  wire \VGA_R[3]_i_220_n_0 ;
  wire \VGA_R[3]_i_221_n_0 ;
  wire \VGA_R[3]_i_222_n_0 ;
  wire \VGA_R[3]_i_223_n_0 ;
  wire \VGA_R[3]_i_224_n_0 ;
  wire \VGA_R[3]_i_225_n_0 ;
  wire \VGA_R[3]_i_226_n_0 ;
  wire \VGA_R[3]_i_22_n_0 ;
  wire \VGA_R[3]_i_23_n_0 ;
  wire \VGA_R[3]_i_24_n_0 ;
  wire \VGA_R[3]_i_25_n_0 ;
  wire \VGA_R[3]_i_29_n_0 ;
  wire \VGA_R[3]_i_2_n_0 ;
  wire \VGA_R[3]_i_31_n_0 ;
  wire \VGA_R[3]_i_33_n_0 ;
  wire \VGA_R[3]_i_34_n_0 ;
  wire \VGA_R[3]_i_36_n_0 ;
  wire \VGA_R[3]_i_37_n_0 ;
  wire \VGA_R[3]_i_38_n_0 ;
  wire \VGA_R[3]_i_39_n_0 ;
  wire \VGA_R[3]_i_40_n_0 ;
  wire \VGA_R[3]_i_41_n_0 ;
  wire \VGA_R[3]_i_42_n_0 ;
  wire \VGA_R[3]_i_43_n_0 ;
  wire \VGA_R[3]_i_44_n_0 ;
  wire \VGA_R[3]_i_45_n_0 ;
  wire \VGA_R[3]_i_46_n_0 ;
  wire \VGA_R[3]_i_47_n_0 ;
  wire \VGA_R[3]_i_48_n_0 ;
  wire \VGA_R[3]_i_49_n_0 ;
  wire \VGA_R[3]_i_4_n_0 ;
  wire \VGA_R[3]_i_59_n_0 ;
  wire \VGA_R[3]_i_5_n_0 ;
  wire \VGA_R[3]_i_62_n_0 ;
  wire \VGA_R[3]_i_63_n_0 ;
  wire \VGA_R[3]_i_65_n_0 ;
  wire \VGA_R[3]_i_66_n_0 ;
  wire \VGA_R[3]_i_67_n_0 ;
  wire \VGA_R[3]_i_68_n_0 ;
  wire \VGA_R[3]_i_69_n_0 ;
  wire \VGA_R[3]_i_6_n_0 ;
  wire \VGA_R[3]_i_70_n_0 ;
  wire \VGA_R[3]_i_71_n_0 ;
  wire \VGA_R[3]_i_72_n_0 ;
  wire \VGA_R[3]_i_74_n_0 ;
  wire \VGA_R[3]_i_75_n_0 ;
  wire \VGA_R[3]_i_76_n_0 ;
  wire \VGA_R[3]_i_78_n_0 ;
  wire \VGA_R[3]_i_79_n_0 ;
  wire \VGA_R[3]_i_80_n_0 ;
  wire \VGA_R[3]_i_81_n_0 ;
  wire \VGA_R[3]_i_85_n_0 ;
  wire \VGA_R[3]_i_93_n_0 ;
  wire \VGA_R[3]_i_94_n_0 ;
  wire \VGA_R[3]_i_95_n_0 ;
  wire \VGA_R[3]_i_96_n_0 ;
  wire \VGA_R[3]_i_97_n_0 ;
  wire \VGA_R[3]_i_98_n_0 ;
  wire \VGA_R[3]_i_99_n_0 ;
  wire \VGA_R[3]_i_9_n_0 ;
  wire \VGA_R_reg[3]_i_101_n_0 ;
  wire \VGA_R_reg[3]_i_110_n_0 ;
  wire \VGA_R_reg[3]_i_110_n_4 ;
  wire \VGA_R_reg[3]_i_110_n_5 ;
  wire \VGA_R_reg[3]_i_110_n_6 ;
  wire \VGA_R_reg[3]_i_110_n_7 ;
  wire \VGA_R_reg[3]_i_120_n_0 ;
  wire \VGA_R_reg[3]_i_129_n_0 ;
  wire \VGA_R_reg[3]_i_131_n_0 ;
  wire \VGA_R_reg[3]_i_136_n_0 ;
  wire \VGA_R_reg[3]_i_136_n_4 ;
  wire \VGA_R_reg[3]_i_136_n_5 ;
  wire \VGA_R_reg[3]_i_136_n_6 ;
  wire [3:0]\VGA_R_reg[3]_i_146_0 ;
  wire \VGA_R_reg[3]_i_146_n_0 ;
  wire \VGA_R_reg[3]_i_14_n_1 ;
  wire \VGA_R_reg[3]_i_14_n_6 ;
  wire \VGA_R_reg[3]_i_14_n_7 ;
  wire \VGA_R_reg[3]_i_155_n_0 ;
  wire \VGA_R_reg[3]_i_155_n_4 ;
  wire \VGA_R_reg[3]_i_155_n_5 ;
  wire \VGA_R_reg[3]_i_155_n_6 ;
  wire \VGA_R_reg[3]_i_167_n_0 ;
  wire \VGA_R_reg[3]_i_16_n_3 ;
  wire \VGA_R_reg[3]_i_177_n_0 ;
  wire \VGA_R_reg[3]_i_17_n_0 ;
  wire \VGA_R_reg[3]_i_186_n_0 ;
  wire \VGA_R_reg[3]_i_191_n_0 ;
  wire [3:0]\VGA_R_reg[3]_i_199_0 ;
  wire \VGA_R_reg[3]_i_199_n_0 ;
  wire \VGA_R_reg[3]_i_19_n_0 ;
  wire [0:0]\VGA_R_reg[3]_i_28_0 ;
  wire \VGA_R_reg[3]_i_28_n_0 ;
  wire \VGA_R_reg[3]_i_32_n_0 ;
  wire \VGA_R_reg[3]_i_35_n_0 ;
  wire \VGA_R_reg[3]_i_3_n_4 ;
  wire \VGA_R_reg[3]_i_3_n_5 ;
  wire \VGA_R_reg[3]_i_3_n_6 ;
  wire \VGA_R_reg[3]_i_3_n_7 ;
  wire \VGA_R_reg[3]_i_64_n_0 ;
  wire [3:0]\VGA_R_reg[3]_i_73_0 ;
  wire \VGA_R_reg[3]_i_73_n_0 ;
  wire \VGA_R_reg[3]_i_7_n_0 ;
  wire \VGA_R_reg[3]_i_83_n_0 ;
  wire \VGA_R_reg[3]_i_83_n_4 ;
  wire \VGA_R_reg[3]_i_83_n_5 ;
  wire \VGA_R_reg[3]_i_83_n_6 ;
  wire \VGA_R_reg[3]_i_83_n_7 ;
  wire \VGA_R_reg[3]_i_86_n_3 ;
  wire \VGA_R_reg[3]_i_92_n_0 ;
  wire VGA_VS;
  wire VGA_VS_OBUF;
  wire VGA_VS_i_2_n_0;
  wire hcntend;
  wire [9:6]p_0_in;
  wire [8:0]rgb_00;
  wire [5:0]rgb_13;
  wire [3:0]\NLW_VGA_G_reg[3]_i_3_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_G_reg[3]_i_3_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_G_reg[3]_i_4_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_G_reg[3]_i_4_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_101_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_101_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_110_CO_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_120_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_120_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_129_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_129_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_R_reg[3]_i_130_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_130_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_131_CO_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_136_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_14_CO_UNCONNECTED ;
  wire [3:2]\NLW_VGA_R_reg[3]_i_14_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_146_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_146_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_155_CO_UNCONNECTED ;
  wire [0:0]\NLW_VGA_R_reg[3]_i_155_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_R_reg[3]_i_16_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_16_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_167_CO_UNCONNECTED ;
  wire [0:0]\NLW_VGA_R_reg[3]_i_167_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_17_CO_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_17_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_177_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_177_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_186_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_186_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_19_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_19_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_191_CO_UNCONNECTED ;
  wire [3:1]\NLW_VGA_R_reg[3]_i_191_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_199_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_199_O_UNCONNECTED ;
  wire [3:1]\NLW_VGA_R_reg[3]_i_27_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_27_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_28_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_3_CO_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_32_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_32_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_35_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_35_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_64_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_64_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_7_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_7_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_73_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_73_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_83_CO_UNCONNECTED ;
  wire [3:1]\NLW_VGA_R_reg[3]_i_86_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_86_O_UNCONNECTED ;
  wire [2:0]\NLW_VGA_R_reg[3]_i_92_CO_UNCONNECTED ;
  wire [3:0]\NLW_VGA_R_reg[3]_i_92_O_UNCONNECTED ;

  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \HCNT[0]_i_1 
       (.I0(HCNT[0]),
        .O(rgb_00[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \HCNT[1]_i_1 
       (.I0(HCNT[0]),
        .I1(HCNT[1]),
        .O(rgb_00[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \HCNT[2]_i_1 
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .O(\HCNT[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \HCNT[3]_i_1 
       (.I0(HCNT[2]),
        .I1(HCNT[0]),
        .I2(HCNT[1]),
        .I3(HCNT[3]),
        .O(rgb_00[3]));
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \HCNT[4]_i_1 
       (.I0(HCNT[3]),
        .I1(HCNT[1]),
        .I2(HCNT[0]),
        .I3(HCNT[2]),
        .I4(HCNT[4]),
        .O(\HCNT[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAAAAAAAAAA)) 
    \HCNT[5]_i_1 
       (.I0(HCNT[5]),
        .I1(HCNT[4]),
        .I2(HCNT[2]),
        .I3(HCNT[0]),
        .I4(HCNT[1]),
        .I5(HCNT[3]),
        .O(\HCNT[5]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \HCNT[6]_i_1 
       (.I0(HCNT[5]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hDF20)) 
    \HCNT[7]_i_1 
       (.I0(HCNT[6]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[5]),
        .I3(HCNT[7]),
        .O(p_0_in[7]));
  LUT5 #(
    .INIT(32'hA6AAAAAA)) 
    \HCNT[8]_i_1 
       (.I0(HCNT[8]),
        .I1(HCNT[5]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[6]),
        .I4(HCNT[7]),
        .O(p_0_in[8]));
  LUT2 #(
    .INIT(4'hE)) 
    \HCNT[9]_i_1 
       (.I0(hcntend),
        .I1(RST_IBUF),
        .O(\HCNT[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFF7FFFFF00800000)) 
    \HCNT[9]_i_2 
       (.I0(HCNT[8]),
        .I1(HCNT[7]),
        .I2(HCNT[6]),
        .I3(\VCNT[9]_i_3_n_0 ),
        .I4(HCNT[5]),
        .I5(HCNT[9]),
        .O(p_0_in[9]));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[0] 
       (.C(PCK),
        .CE(1'b1),
        .D(rgb_00[0]),
        .Q(HCNT[0]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[1] 
       (.C(PCK),
        .CE(1'b1),
        .D(rgb_00[1]),
        .Q(HCNT[1]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[2] 
       (.C(PCK),
        .CE(1'b1),
        .D(\HCNT[2]_i_1_n_0 ),
        .Q(HCNT[2]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[3] 
       (.C(PCK),
        .CE(1'b1),
        .D(rgb_00[3]),
        .Q(HCNT[3]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[4] 
       (.C(PCK),
        .CE(1'b1),
        .D(\HCNT[4]_i_1_n_0 ),
        .Q(HCNT[4]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[5] 
       (.C(PCK),
        .CE(1'b1),
        .D(\HCNT[5]_i_1_n_0 ),
        .Q(HCNT[5]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[6] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[6]),
        .Q(HCNT[6]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[7] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[7]),
        .Q(HCNT[7]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[8] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[8]),
        .Q(HCNT[8]),
        .R(\HCNT[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \HCNT_reg[9] 
       (.C(PCK),
        .CE(1'b1),
        .D(p_0_in[9]),
        .Q(HCNT[9]),
        .R(\HCNT[9]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0000FFBF)) 
    \VCNT[0]_i_1 
       (.I0(\VCNT[9]_i_4_n_0 ),
        .I1(VCNT[9]),
        .I2(VCNT[2]),
        .I3(VCNT[1]),
        .I4(VCNT[0]),
        .O(VCNT_0[0]));
  LUT2 #(
    .INIT(4'h6)) 
    \VCNT[1]_i_1 
       (.I0(VCNT[0]),
        .I1(VCNT[1]),
        .O(VCNT_0[1]));
  LUT6 #(
    .INIT(64'h00FFFF00FF00EF00)) 
    \VCNT[2]_i_1 
       (.I0(VCNT[8]),
        .I1(\VCNT[2]_i_2_n_0 ),
        .I2(\VCNT[2]_i_3_n_0 ),
        .I3(VCNT[2]),
        .I4(VCNT[0]),
        .I5(VCNT[1]),
        .O(VCNT_0[2]));
  LUT4 #(
    .INIT(16'hDFDD)) 
    \VCNT[2]_i_2 
       (.I0(VCNT[9]),
        .I1(VCNT[5]),
        .I2(VCNT[7]),
        .I3(VCNT[6]),
        .O(\VCNT[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h0004)) 
    \VCNT[2]_i_3 
       (.I0(VCNT[4]),
        .I1(VCNT[3]),
        .I2(VCNT[8]),
        .I3(VCNT[7]),
        .O(\VCNT[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0FFFFDFFF0000000)) 
    \VCNT[3]_i_1 
       (.I0(VCNT[9]),
        .I1(\VCNT[9]_i_4_n_0 ),
        .I2(VCNT[0]),
        .I3(VCNT[2]),
        .I4(VCNT[1]),
        .I5(VCNT[3]),
        .O(VCNT_0[3]));
  LUT5 #(
    .INIT(32'h6AAAAAAA)) 
    \VCNT[4]_i_1 
       (.I0(VCNT[4]),
        .I1(VCNT[1]),
        .I2(VCNT[0]),
        .I3(VCNT[2]),
        .I4(VCNT[3]),
        .O(VCNT_0[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \VCNT[5]_i_1 
       (.I0(VCNT[4]),
        .I1(VCNT[3]),
        .I2(VCNT[2]),
        .I3(VCNT[0]),
        .I4(VCNT[1]),
        .I5(VCNT[5]),
        .O(VCNT_0[5]));
  LUT6 #(
    .INIT(64'hDFFFFFFF20000000)) 
    \VCNT[6]_i_1 
       (.I0(VCNT[5]),
        .I1(\VCNT[6]_i_2_n_0 ),
        .I2(VCNT[2]),
        .I3(VCNT[3]),
        .I4(VCNT[4]),
        .I5(VCNT[6]),
        .O(VCNT_0[6]));
  LUT2 #(
    .INIT(4'h7)) 
    \VCNT[6]_i_2 
       (.I0(VCNT[0]),
        .I1(VCNT[1]),
        .O(\VCNT[6]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \VCNT[7]_i_1 
       (.I0(VCNT[6]),
        .I1(\VCNT[8]_i_2_n_0 ),
        .I2(VCNT[7]),
        .O(VCNT_0[7]));
  LUT4 #(
    .INIT(16'h9AAA)) 
    \VCNT[8]_i_1 
       (.I0(VCNT[8]),
        .I1(\VCNT[8]_i_2_n_0 ),
        .I2(VCNT[6]),
        .I3(VCNT[7]),
        .O(VCNT_0[8]));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \VCNT[8]_i_2 
       (.I0(VCNT[4]),
        .I1(VCNT[3]),
        .I2(VCNT[2]),
        .I3(VCNT[0]),
        .I4(VCNT[1]),
        .I5(VCNT[5]),
        .O(\VCNT[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000001000000)) 
    \VCNT[9]_i_1 
       (.I0(HCNT[6]),
        .I1(HCNT[5]),
        .I2(HCNT[7]),
        .I3(HCNT[8]),
        .I4(HCNT[9]),
        .I5(\VCNT[9]_i_3_n_0 ),
        .O(hcntend));
  LUT6 #(
    .INIT(64'hFFFB00000000FFFF)) 
    \VCNT[9]_i_2 
       (.I0(\VCNT[9]_i_4_n_0 ),
        .I1(VCNT[2]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[9]),
        .I5(\VCNT[9]_i_5_n_0 ),
        .O(VCNT_0[9]));
  LUT5 #(
    .INIT(32'h7FFFFFFF)) 
    \VCNT[9]_i_3 
       (.I0(HCNT[3]),
        .I1(HCNT[1]),
        .I2(HCNT[0]),
        .I3(HCNT[2]),
        .I4(HCNT[4]),
        .O(\VCNT[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \VCNT[9]_i_4 
       (.I0(VCNT[5]),
        .I1(VCNT[6]),
        .I2(VCNT[7]),
        .I3(VCNT[8]),
        .I4(VCNT[3]),
        .I5(VCNT[4]),
        .O(\VCNT[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \VCNT[9]_i_5 
       (.I0(\VCNT[8]_i_2_n_0 ),
        .I1(VCNT[6]),
        .I2(VCNT[7]),
        .I3(VCNT[8]),
        .O(\VCNT[9]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[0] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[0]),
        .Q(VCNT[0]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[1] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[1]),
        .Q(VCNT[1]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[2] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[2]),
        .Q(VCNT[2]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[3] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[3]),
        .Q(VCNT[3]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[4] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[4]),
        .Q(VCNT[4]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[5] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[5]),
        .Q(VCNT[5]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[6] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[6]),
        .Q(VCNT[6]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[7] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[7]),
        .Q(VCNT[7]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[8] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[8]),
        .Q(VCNT[8]),
        .R(RST_IBUF));
  FDRE #(
    .INIT(1'b0)) 
    \VCNT_reg[9] 
       (.C(PCK),
        .CE(hcntend),
        .D(VCNT_0[9]),
        .Q(VCNT[9]),
        .R(RST_IBUF));
  LUT5 #(
    .INIT(32'h0000E11E)) 
    \VGA_B[3]_i_1 
       (.I0(\VGA_G[3]_i_2_n_0 ),
        .I1(\VGA_G_reg[3]_i_3_n_2 ),
        .I2(\VGA_R_reg[3]_i_3_n_7 ),
        .I3(\VGA_R[3]_i_4_n_0 ),
        .I4(\VGA_R[3]_i_5_n_0 ),
        .O(\HCNT_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0000000099999969)) 
    \VGA_G[3]_i_1 
       (.I0(\VGA_R[3]_i_4_n_0 ),
        .I1(\VGA_R_reg[3]_i_3_n_6 ),
        .I2(\VGA_R_reg[3]_i_3_n_7 ),
        .I3(\VGA_G[3]_i_2_n_0 ),
        .I4(\VGA_G_reg[3]_i_3_n_2 ),
        .I5(\VGA_R[3]_i_5_n_0 ),
        .O(\HCNT_reg[8]_1 ));
  (* HLUTNM = "lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \VGA_G[3]_i_10 
       (.I0(\VGA_R_reg[3]_i_3_n_6 ),
        .I1(\HCNT[5]_i_1_n_0 ),
        .O(\VGA_G[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hEBBBBBBBBBBBBBBB)) 
    \VGA_G[3]_i_11 
       (.I0(\VGA_R_reg[3]_i_3_n_7 ),
        .I1(HCNT[4]),
        .I2(HCNT[2]),
        .I3(HCNT[0]),
        .I4(HCNT[1]),
        .I5(HCNT[3]),
        .O(\VGA_G[3]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h6996969696696969)) 
    \VGA_G[3]_i_12 
       (.I0(\VGA_G[3]_i_9_n_0 ),
        .I1(\VGA_R_reg[3]_i_3_n_4 ),
        .I2(\VGA_R_reg[3]_i_3_n_6 ),
        .I3(\VGA_R_reg[3]_i_3_n_7 ),
        .I4(\VGA_R_reg[3]_i_3_n_5 ),
        .I5(rgb_00[7]),
        .O(\VGA_G[3]_i_12_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \VGA_G[3]_i_13 
       (.I0(\VGA_R_reg[3]_i_3_n_7 ),
        .I1(\VGA_R_reg[3]_i_3_n_5 ),
        .I2(rgb_00[6]),
        .I3(\VGA_G[3]_i_10_n_0 ),
        .O(\VGA_G[3]_i_13_n_0 ));
  (* HLUTNM = "lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    \VGA_G[3]_i_14 
       (.I0(\VGA_R_reg[3]_i_3_n_6 ),
        .I1(\HCNT[5]_i_1_n_0 ),
        .I2(\VGA_G[3]_i_11_n_0 ),
        .O(\VGA_G[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'h955555556AAAAAAA)) 
    \VGA_G[3]_i_15 
       (.I0(HCNT[4]),
        .I1(HCNT[2]),
        .I2(HCNT[0]),
        .I3(HCNT[1]),
        .I4(HCNT[3]),
        .I5(\VGA_R_reg[3]_i_3_n_7 ),
        .O(\VGA_G[3]_i_15_n_0 ));
  LUT5 #(
    .INIT(32'h555DAAA2)) 
    \VGA_G[3]_i_16 
       (.I0(HCNT[7]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[6]),
        .I3(HCNT[5]),
        .I4(HCNT[8]),
        .O(\VGA_G[3]_i_16_n_0 ));
  LUT4 #(
    .INIT(16'h5655)) 
    \VGA_G[3]_i_17 
       (.I0(HCNT[7]),
        .I1(HCNT[5]),
        .I2(HCNT[6]),
        .I3(\VCNT[9]_i_3_n_0 ),
        .O(rgb_00[7]));
  LUT5 #(
    .INIT(32'h42AA0000)) 
    \VGA_G[3]_i_2 
       (.I0(\VGA_R_reg[3]_i_3_n_4 ),
        .I1(\VGA_R_reg[3]_i_3_n_6 ),
        .I2(\VGA_R_reg[3]_i_3_n_7 ),
        .I3(\VGA_R_reg[3]_i_3_n_5 ),
        .I4(\VGA_R[3]_i_6_n_0 ),
        .O(\VGA_G[3]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h522A0000)) 
    \VGA_G[3]_i_5 
       (.I0(\VGA_R_reg[3]_i_3_n_5 ),
        .I1(\VGA_R_reg[3]_i_3_n_7 ),
        .I2(\VGA_R_reg[3]_i_3_n_6 ),
        .I3(\VGA_R_reg[3]_i_3_n_4 ),
        .I4(\VGA_G[3]_i_16_n_0 ),
        .O(\VGA_G[3]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'h00008778)) 
    \VGA_G[3]_i_6 
       (.I0(\VGA_R_reg[3]_i_3_n_5 ),
        .I1(\VGA_R_reg[3]_i_3_n_7 ),
        .I2(\VGA_R_reg[3]_i_3_n_6 ),
        .I3(\VGA_R_reg[3]_i_3_n_4 ),
        .I4(rgb_00[7]),
        .O(\VGA_G[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hC9C9C3933C6C6C6C)) 
    \VGA_G[3]_i_7 
       (.I0(\VGA_G[3]_i_16_n_0 ),
        .I1(\VGA_R[3]_i_6_n_0 ),
        .I2(\VGA_R_reg[3]_i_3_n_5 ),
        .I3(\VGA_R_reg[3]_i_3_n_7 ),
        .I4(\VGA_R_reg[3]_i_3_n_6 ),
        .I5(\VGA_R_reg[3]_i_3_n_4 ),
        .O(\VGA_G[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h6969669666969696)) 
    \VGA_G[3]_i_8 
       (.I0(\VGA_G[3]_i_6_n_0 ),
        .I1(\VGA_G[3]_i_16_n_0 ),
        .I2(\VGA_R_reg[3]_i_3_n_5 ),
        .I3(\VGA_R_reg[3]_i_3_n_7 ),
        .I4(\VGA_R_reg[3]_i_3_n_6 ),
        .I5(\VGA_R_reg[3]_i_3_n_4 ),
        .O(\VGA_G[3]_i_8_n_0 ));
  (* HLUTNM = "lutpair1" *) 
  LUT3 #(
    .INIT(8'h6F)) 
    \VGA_G[3]_i_9 
       (.I0(\VGA_R_reg[3]_i_3_n_7 ),
        .I1(\VGA_R_reg[3]_i_3_n_5 ),
        .I2(rgb_00[6]),
        .O(\VGA_G[3]_i_9_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_G_reg[3]_i_3 
       (.CI(\VGA_G_reg[3]_i_4_n_0 ),
        .CO({\NLW_VGA_G_reg[3]_i_3_CO_UNCONNECTED [3:2],\VGA_G_reg[3]_i_3_n_2 ,\NLW_VGA_G_reg[3]_i_3_CO_UNCONNECTED [0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\VGA_G[3]_i_5_n_0 ,\VGA_G[3]_i_6_n_0 }),
        .O(\NLW_VGA_G_reg[3]_i_3_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,\VGA_G[3]_i_7_n_0 ,\VGA_G[3]_i_8_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \VGA_G_reg[3]_i_4 
       (.CI(1'b0),
        .CO({\VGA_G_reg[3]_i_4_n_0 ,\NLW_VGA_G_reg[3]_i_4_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_G[3]_i_9_n_0 ,\VGA_G[3]_i_10_n_0 ,\VGA_G[3]_i_11_n_0 ,1'b0}),
        .O(\NLW_VGA_G_reg[3]_i_4_O_UNCONNECTED [3:0]),
        .S({\VGA_G[3]_i_12_n_0 ,\VGA_G[3]_i_13_n_0 ,\VGA_G[3]_i_14_n_0 ,\VGA_G[3]_i_15_n_0 }));
  LUT4 #(
    .INIT(16'h0009)) 
    VGA_HS_i_1
       (.I0(HCNT[6]),
        .I1(HCNT[5]),
        .I2(HCNT[7]),
        .I3(VGA_HS_i_3_n_0),
        .O(VGA_HS_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    VGA_HS_i_2
       (.I0(HCNT[8]),
        .I1(HCNT[9]),
        .I2(VGA_HS_i_4_n_0),
        .I3(HCNT[4]),
        .I4(VGA_HS_i_5_n_0),
        .O(VGA_HS));
  LUT4 #(
    .INIT(16'hFFFE)) 
    VGA_HS_i_3
       (.I0(HCNT[4]),
        .I1(VGA_HS_i_4_n_0),
        .I2(HCNT[9]),
        .I3(HCNT[8]),
        .O(VGA_HS_i_3_n_0));
  LUT4 #(
    .INIT(16'h7FFF)) 
    VGA_HS_i_4
       (.I0(HCNT[2]),
        .I1(HCNT[0]),
        .I2(HCNT[1]),
        .I3(HCNT[3]),
        .O(VGA_HS_i_4_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    VGA_HS_i_5
       (.I0(HCNT[6]),
        .I1(HCNT[5]),
        .I2(HCNT[7]),
        .O(VGA_HS_i_5_n_0));
  FDSE #(
    .INIT(1'b1)) 
    VGA_HS_reg
       (.C(PCK),
        .CE(VGA_HS_i_1_n_0),
        .D(VGA_HS),
        .Q(VGA_HS_OBUF),
        .S(RST_IBUF));
  LUT4 #(
    .INIT(16'h0096)) 
    \VGA_R[3]_i_1 
       (.I0(\VGA_R[3]_i_2_n_0 ),
        .I1(\VGA_R_reg[3]_i_3_n_5 ),
        .I2(\VGA_R[3]_i_4_n_0 ),
        .I3(\VGA_R[3]_i_5_n_0 ),
        .O(\HCNT_reg[8]_2 ));
  LUT6 #(
    .INIT(64'h000010FFFFFFEF00)) 
    \VGA_R[3]_i_10 
       (.I0(HCNT[5]),
        .I1(HCNT[6]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[7]),
        .I4(HCNT[8]),
        .I5(HCNT[9]),
        .O(\VGA_R[3]_i_10_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_100 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_100_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_106 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_110_n_7 ),
        .O(\VGA_R[3]_i_106_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_107 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_136_n_4 ),
        .O(\VGA_R[3]_i_107_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_108 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_136_n_5 ),
        .O(\VGA_R[3]_i_108_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_109 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_136_n_6 ),
        .O(\VGA_R[3]_i_109_n_0 ));
  LUT5 #(
    .INIT(32'h555DAAA2)) 
    \VGA_R[3]_i_11 
       (.I0(HCNT[7]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[6]),
        .I3(HCNT[5]),
        .I4(HCNT[8]),
        .O(\VGA_R[3]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'h57A8)) 
    \VGA_R[3]_i_111 
       (.I0(VCNT[2]),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[3]),
        .O(rgb_13[3]));
  LUT2 #(
    .INIT(4'hE)) 
    \VGA_R[3]_i_112 
       (.I0(VCNT[0]),
        .I1(VCNT[1]),
        .O(\VGA_R[3]_i_112_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h9)) 
    \VGA_R[3]_i_117 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R[3]_i_145_n_0 ),
        .O(\VGA_R[3]_i_117_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_118 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R[3]_i_170_n_0 ),
        .O(\VGA_R[3]_i_118_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_119 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R[3]_i_171_n_0 ),
        .O(\VGA_R[3]_i_119_n_0 ));
  LUT6 #(
    .INIT(64'h5959595959599659)) 
    \VGA_R[3]_i_12 
       (.I0(HCNT[9]),
        .I1(HCNT[8]),
        .I2(HCNT[7]),
        .I3(\VCNT[9]_i_3_n_0 ),
        .I4(HCNT[6]),
        .I5(HCNT[5]),
        .O(\VGA_R[3]_i_12_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_121 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_121_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_122 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_122_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_123 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_123_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_124 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_124_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_125 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_125_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_126 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_126_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_127 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_127_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_128 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_128_n_0 ));
  LUT5 #(
    .INIT(32'h95A5695A)) 
    \VGA_R[3]_i_13 
       (.I0(HCNT[8]),
        .I1(HCNT[5]),
        .I2(HCNT[6]),
        .I3(\VCNT[9]_i_3_n_0 ),
        .I4(HCNT[7]),
        .O(\VGA_R[3]_i_13_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \VGA_R[3]_i_137 
       (.I0(\VGA_R[3]_i_145_n_0 ),
        .I1(rgb_13[5]),
        .I2(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_137_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'hB0)) 
    \VGA_R[3]_i_138 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R[3]_i_85_n_0 ),
        .I2(\VGA_R[3]_i_170_n_0 ),
        .O(\VGA_R[3]_i_138_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hFFFFFFFF222A8880)) 
    \VGA_R[3]_i_139 
       (.I0(\VGA_R[3]_i_171_n_0 ),
        .I1(VCNT[2]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(VCNT[3]),
        .I5(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_139_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'hFFFF02A8)) 
    \VGA_R[3]_i_140 
       (.I0(\VGA_R[3]_i_192_n_0 ),
        .I1(VCNT[1]),
        .I2(VCNT[0]),
        .I3(VCNT[2]),
        .I4(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_140_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F01EF01E00FE)) 
    \VGA_R[3]_i_141 
       (.I0(VCNT[8]),
        .I1(VCNT[7]),
        .I2(VCNT[9]),
        .I3(VCNT[6]),
        .I4(\VGA_R[3]_i_176_n_0 ),
        .I5(VCNT[5]),
        .O(\VGA_R[3]_i_141_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \VGA_R[3]_i_142 
       (.I0(\VGA_R[3]_i_138_n_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(rgb_13[5]),
        .I3(\VGA_R[3]_i_145_n_0 ),
        .O(\VGA_R[3]_i_142_n_0 ));
  (* HLUTNM = "lutpair3" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'h9CC9C9C9)) 
    \VGA_R[3]_i_143 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R[3]_i_85_n_0 ),
        .I2(\VGA_R[3]_i_170_n_0 ),
        .I3(rgb_13[3]),
        .I4(\VGA_R[3]_i_171_n_0 ),
        .O(\VGA_R[3]_i_143_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \VGA_R[3]_i_144 
       (.I0(\VGA_R[3]_i_140_n_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(\VGA_R[3]_i_171_n_0 ),
        .I3(rgb_13[3]),
        .O(\VGA_R[3]_i_144_n_0 ));
  LUT5 #(
    .INIT(32'h0004FFFB)) 
    \VGA_R[3]_i_145 
       (.I0(VCNT[8]),
        .I1(\VGA_R[3]_i_31_n_0 ),
        .I2(VCNT[6]),
        .I3(VCNT[7]),
        .I4(VCNT[9]),
        .O(\VGA_R[3]_i_145_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_147 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_147_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_148 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_148_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_149 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_149_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \VGA_R[3]_i_15 
       (.I0(VCNT[8]),
        .I1(\VGA_R[3]_i_31_n_0 ),
        .I2(VCNT[6]),
        .I3(VCNT[7]),
        .I4(VCNT[9]),
        .O(\VGA_R[3]_i_102_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_150 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_150_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_151 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_151_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_152 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_152_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_153 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_153_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_154 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_154_n_0 ));
  LUT4 #(
    .INIT(16'h9996)) 
    \VGA_R[3]_i_157 
       (.I0(\VGA_R_reg[3]_i_155_n_4 ),
        .I1(VCNT[2]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .O(\VGA_R[3]_i_157_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \VGA_R[3]_i_158 
       (.I0(\VGA_R_reg[3]_i_155_n_5 ),
        .I1(VCNT[1]),
        .I2(VCNT[0]),
        .O(\VGA_R[3]_i_158_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \VGA_R[3]_i_159 
       (.I0(\VGA_R_reg[3]_i_155_n_6 ),
        .I1(VCNT[0]),
        .O(\VGA_R[3]_i_159_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h9)) 
    \VGA_R[3]_i_164 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R[3]_i_145_n_0 ),
        .O(\VGA_R[3]_i_164_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_165 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R[3]_i_170_n_0 ),
        .O(\VGA_R[3]_i_165_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_166 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R[3]_i_171_n_0 ),
        .O(\VGA_R[3]_i_166_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT4 #(
    .INIT(16'hD741)) 
    \VGA_R[3]_i_168 
       (.I0(\VGA_R[3]_i_145_n_0 ),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(rgb_13[5]),
        .O(\VGA_R[3]_i_168_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \VGA_R[3]_i_169 
       (.I0(\VGA_R[3]_i_145_n_0 ),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(rgb_13[5]),
        .O(\VGA_R[3]_i_169_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'h9669966996696996)) 
    \VGA_R[3]_i_172 
       (.I0(\VGA_R[3]_i_168_n_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(\VGA_R[3]_i_192_n_0 ),
        .I3(VCNT[2]),
        .I4(VCNT[0]),
        .I5(VCNT[1]),
        .O(\VGA_R[3]_i_172_n_0 ));
  (* HLUTNM = "lutpair2" *) 
  LUT5 #(
    .INIT(32'h69965AA5)) 
    \VGA_R[3]_i_173 
       (.I0(\VGA_R[3]_i_145_n_0 ),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(rgb_13[5]),
        .I4(\VGA_R[3]_i_85_n_0 ),
        .O(\VGA_R[3]_i_173_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'h639999999C666666)) 
    \VGA_R[3]_i_174 
       (.I0(VCNT[0]),
        .I1(VCNT[4]),
        .I2(VCNT[1]),
        .I3(VCNT[2]),
        .I4(VCNT[3]),
        .I5(\VGA_R[3]_i_170_n_0 ),
        .O(\VGA_R[3]_i_174_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'h99966666)) 
    \VGA_R[3]_i_175 
       (.I0(\VGA_R[3]_i_171_n_0 ),
        .I1(VCNT[3]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[2]),
        .O(\VGA_R[3]_i_175_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFE000)) 
    \VGA_R[3]_i_176 
       (.I0(VCNT[0]),
        .I1(VCNT[1]),
        .I2(VCNT[2]),
        .I3(VCNT[3]),
        .I4(VCNT[4]),
        .O(\VGA_R[3]_i_176_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_178 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_178_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VGA_R[3]_i_179 
       (.I0(\VGA_R_reg[3]_i_14_n_6 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_179_n_0 ));
  LUT6 #(
    .INIT(64'h0001888811119999)) 
    \VGA_R[3]_i_18 
       (.I0(HCNT[8]),
        .I1(HCNT[9]),
        .I2(HCNT[5]),
        .I3(HCNT[6]),
        .I4(\VCNT[9]_i_3_n_0 ),
        .I5(HCNT[7]),
        .O(\VGA_R[3]_i_18_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VGA_R[3]_i_180 
       (.I0(\VGA_R_reg[3]_i_14_n_7 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_180_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VGA_R[3]_i_181 
       (.I0(\VGA_R_reg[3]_i_146_0 [3]),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_181_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_182 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_182_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'h1E)) 
    \VGA_R[3]_i_183 
       (.I0(\VGA_R_reg[3]_i_14_n_6 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_183_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \VGA_R[3]_i_184 
       (.I0(\VGA_R_reg[3]_i_14_n_7 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(\VGA_R_reg[3]_i_14_n_6 ),
        .O(\VGA_R[3]_i_184_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'hE1)) 
    \VGA_R[3]_i_185 
       (.I0(\VGA_R_reg[3]_i_146_0 [3]),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(\VGA_R_reg[3]_i_14_n_7 ),
        .O(\VGA_R[3]_i_185_n_0 ));
  LUT6 #(
    .INIT(64'hFF00F01EF01E00FE)) 
    \VGA_R[3]_i_187 
       (.I0(VCNT[8]),
        .I1(VCNT[7]),
        .I2(VCNT[9]),
        .I3(VCNT[6]),
        .I4(\VGA_R[3]_i_176_n_0 ),
        .I5(VCNT[5]),
        .O(\VGA_R[3]_i_187_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \VGA_R[3]_i_188 
       (.I0(\VGA_R[3]_i_138_n_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(rgb_13[5]),
        .I3(\VGA_R[3]_i_145_n_0 ),
        .O(\VGA_R[3]_i_188_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'hF7F80807)) 
    \VGA_R[3]_i_189 
       (.I0(rgb_13[3]),
        .I1(\VGA_R[3]_i_171_n_0 ),
        .I2(\VGA_R[3]_i_102_n_0 ),
        .I3(\VGA_R[3]_i_170_n_0 ),
        .I4(\VGA_R[3]_i_85_n_0 ),
        .O(\VGA_R[3]_i_189_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \VGA_R[3]_i_190 
       (.I0(\VGA_R[3]_i_140_n_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(\VGA_R[3]_i_171_n_0 ),
        .I3(rgb_13[3]),
        .O(\VGA_R[3]_i_190_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \VGA_R[3]_i_193 
       (.I0(VCNT[1]),
        .I1(VCNT[0]),
        .O(rgb_13[1]));
  LUT5 #(
    .INIT(32'h8880777F)) 
    \VGA_R[3]_i_194 
       (.I0(VCNT[3]),
        .I1(VCNT[2]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[4]),
        .O(rgb_13[4]));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h9996)) 
    \VGA_R[3]_i_195 
       (.I0(\VGA_R[3]_i_192_n_0 ),
        .I1(VCNT[2]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .O(\VGA_R[3]_i_195_n_0 ));
  LUT6 #(
    .INIT(64'hAA95556A556AAA55)) 
    \VGA_R[3]_i_196 
       (.I0(VCNT[5]),
        .I1(VCNT[2]),
        .I2(VCNT[3]),
        .I3(VCNT[4]),
        .I4(VCNT[1]),
        .I5(VCNT[0]),
        .O(\VGA_R[3]_i_196_n_0 ));
  LUT5 #(
    .INIT(32'h88777F80)) 
    \VGA_R[3]_i_197 
       (.I0(VCNT[3]),
        .I1(VCNT[2]),
        .I2(VCNT[1]),
        .I3(VCNT[4]),
        .I4(VCNT[0]),
        .O(\VGA_R[3]_i_197_n_0 ));
  LUT4 #(
    .INIT(16'h57A8)) 
    \VGA_R[3]_i_198 
       (.I0(VCNT[2]),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[3]),
        .O(\VGA_R[3]_i_198_n_0 ));
  LUT6 #(
    .INIT(64'hAEFFEAFFFFFFFFFF)) 
    \VGA_R[3]_i_2 
       (.I0(\VGA_G_reg[3]_i_3_n_2 ),
        .I1(\VGA_R[3]_i_6_n_0 ),
        .I2(\VGA_R_reg[3]_i_3_n_5 ),
        .I3(\VGA_R_reg[3]_i_3_n_7 ),
        .I4(\VGA_R_reg[3]_i_3_n_4 ),
        .I5(\VGA_R_reg[3]_i_3_n_6 ),
        .O(\VGA_R[3]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFD02)) 
    \VGA_R[3]_i_20 
       (.I0(\VCNT[9]_i_3_n_0 ),
        .I1(HCNT[6]),
        .I2(HCNT[5]),
        .I3(HCNT[7]),
        .O(\VGA_R[3]_i_20_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \VGA_R[3]_i_200 
       (.I0(\VGA_R_reg[3]_i_146_0 [2]),
        .I1(\VGA_R[3]_i_145_n_0 ),
        .O(\VGA_R[3]_i_200_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VGA_R[3]_i_201 
       (.I0(\VGA_R_reg[3]_i_146_0 [1]),
        .I1(\VGA_R[3]_i_170_n_0 ),
        .O(\VGA_R[3]_i_201_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h2)) 
    \VGA_R[3]_i_202 
       (.I0(\VGA_R_reg[3]_i_146_0 [0]),
        .I1(\VGA_R[3]_i_171_n_0 ),
        .O(\VGA_R[3]_i_202_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'hB)) 
    \VGA_R[3]_i_203 
       (.I0(\VGA_R_reg[3]_i_199_0 [3]),
        .I1(\VGA_R[3]_i_192_n_0 ),
        .O(\VGA_R[3]_i_203_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h7887)) 
    \VGA_R[3]_i_204 
       (.I0(\VGA_R[3]_i_145_n_0 ),
        .I1(\VGA_R_reg[3]_i_146_0 [2]),
        .I2(\VGA_R[3]_i_102_n_0 ),
        .I3(\VGA_R_reg[3]_i_146_0 [3]),
        .O(\VGA_R[3]_i_204_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \VGA_R[3]_i_205 
       (.I0(\VGA_R[3]_i_201_n_0 ),
        .I1(\VGA_R[3]_i_145_n_0 ),
        .I2(\VGA_R_reg[3]_i_146_0 [2]),
        .O(\VGA_R[3]_i_205_n_0 ));
  (* HLUTNM = "lutpair8" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'h69)) 
    \VGA_R[3]_i_206 
       (.I0(\VGA_R_reg[3]_i_146_0 [1]),
        .I1(\VGA_R[3]_i_170_n_0 ),
        .I2(\VGA_R[3]_i_202_n_0 ),
        .O(\VGA_R[3]_i_206_n_0 ));
  (* HLUTNM = "lutpair7" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'h69)) 
    \VGA_R[3]_i_207 
       (.I0(\VGA_R_reg[3]_i_146_0 [0]),
        .I1(\VGA_R[3]_i_171_n_0 ),
        .I2(\VGA_R[3]_i_203_n_0 ),
        .O(\VGA_R[3]_i_207_n_0 ));
  LUT4 #(
    .INIT(16'h6996)) 
    \VGA_R[3]_i_208 
       (.I0(\VGA_R[3]_i_145_n_0 ),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(rgb_13[5]),
        .O(\VGA_R[3]_i_208_n_0 ));
  LUT3 #(
    .INIT(8'h78)) 
    \VGA_R[3]_i_21 
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .I2(HCNT[2]),
        .O(\VGA_R[3]_i_21_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'h9669966996696996)) 
    \VGA_R[3]_i_210 
       (.I0(\VGA_R[3]_i_168_n_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(\VGA_R[3]_i_192_n_0 ),
        .I3(VCNT[2]),
        .I4(VCNT[0]),
        .I5(VCNT[1]),
        .O(\VGA_R[3]_i_210_n_0 ));
  LUT5 #(
    .INIT(32'h69966969)) 
    \VGA_R[3]_i_211 
       (.I0(rgb_13[5]),
        .I1(VCNT[1]),
        .I2(\VGA_R[3]_i_145_n_0 ),
        .I3(VCNT[0]),
        .I4(\VGA_R[3]_i_85_n_0 ),
        .O(\VGA_R[3]_i_211_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'h639999999C666666)) 
    \VGA_R[3]_i_212 
       (.I0(VCNT[0]),
        .I1(VCNT[4]),
        .I2(VCNT[1]),
        .I3(VCNT[2]),
        .I4(VCNT[3]),
        .I5(\VGA_R[3]_i_170_n_0 ),
        .O(\VGA_R[3]_i_212_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'h99966666)) 
    \VGA_R[3]_i_213 
       (.I0(\VGA_R[3]_i_171_n_0 ),
        .I1(VCNT[3]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[2]),
        .O(\VGA_R[3]_i_213_n_0 ));
  LUT5 #(
    .INIT(32'h8880777F)) 
    \VGA_R[3]_i_215 
       (.I0(VCNT[3]),
        .I1(VCNT[2]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[4]),
        .O(\VGA_R[3]_i_215_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h9996)) 
    \VGA_R[3]_i_216 
       (.I0(\VGA_R[3]_i_192_n_0 ),
        .I1(VCNT[2]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .O(\VGA_R[3]_i_216_n_0 ));
  LUT6 #(
    .INIT(64'hAA95556A556AAA55)) 
    \VGA_R[3]_i_217 
       (.I0(VCNT[5]),
        .I1(VCNT[2]),
        .I2(VCNT[3]),
        .I3(VCNT[4]),
        .I4(VCNT[1]),
        .I5(VCNT[0]),
        .O(\VGA_R[3]_i_217_n_0 ));
  LUT5 #(
    .INIT(32'h88777F80)) 
    \VGA_R[3]_i_218 
       (.I0(VCNT[3]),
        .I1(VCNT[2]),
        .I2(VCNT[1]),
        .I3(VCNT[4]),
        .I4(VCNT[0]),
        .O(\VGA_R[3]_i_218_n_0 ));
  LUT4 #(
    .INIT(16'h57A8)) 
    \VGA_R[3]_i_219 
       (.I0(VCNT[2]),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[3]),
        .O(\VGA_R[3]_i_219_n_0 ));
  LUT4 #(
    .INIT(16'hA758)) 
    \VGA_R[3]_i_22 
       (.I0(\VCNT[9]_i_3_n_0 ),
        .I1(HCNT[6]),
        .I2(HCNT[5]),
        .I3(HCNT[7]),
        .O(\VGA_R[3]_i_22_n_0 ));
  LUT2 #(
    .INIT(4'hB)) 
    \VGA_R[3]_i_220 
       (.I0(\VGA_R_reg[3]_i_199_0 [2]),
        .I1(rgb_13[5]),
        .O(\VGA_R[3]_i_220_n_0 ));
  LUT6 #(
    .INIT(64'hBFBFBFFFEAEAEAAA)) 
    \VGA_R[3]_i_221 
       (.I0(\VGA_R_reg[3]_i_199_0 [1]),
        .I1(VCNT[3]),
        .I2(VCNT[2]),
        .I3(VCNT[1]),
        .I4(VCNT[0]),
        .I5(VCNT[4]),
        .O(\VGA_R[3]_i_221_n_0 ));
  LUT5 #(
    .INIT(32'hEEEBBBBB)) 
    \VGA_R[3]_i_222 
       (.I0(\VGA_R_reg[3]_i_199_0 [0]),
        .I1(VCNT[3]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[2]),
        .O(\VGA_R[3]_i_222_n_0 ));
  (* HLUTNM = "lutpair6" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h9969)) 
    \VGA_R[3]_i_223 
       (.I0(\VGA_R_reg[3]_i_199_0 [3]),
        .I1(\VGA_R[3]_i_192_n_0 ),
        .I2(rgb_13[5]),
        .I3(\VGA_R_reg[3]_i_199_0 [2]),
        .O(\VGA_R[3]_i_223_n_0 ));
  LUT3 #(
    .INIT(8'h96)) 
    \VGA_R[3]_i_224 
       (.I0(\VGA_R[3]_i_221_n_0 ),
        .I1(\VGA_R_reg[3]_i_199_0 [2]),
        .I2(rgb_13[5]),
        .O(\VGA_R[3]_i_224_n_0 ));
  LUT4 #(
    .INIT(16'h2DD2)) 
    \VGA_R[3]_i_225 
       (.I0(rgb_13[3]),
        .I1(\VGA_R_reg[3]_i_199_0 [0]),
        .I2(\VGA_R[3]_i_85_n_0 ),
        .I3(\VGA_R_reg[3]_i_199_0 [1]),
        .O(\VGA_R[3]_i_225_n_0 ));
  LUT5 #(
    .INIT(32'hA95556AA)) 
    \VGA_R[3]_i_226 
       (.I0(VCNT[3]),
        .I1(VCNT[1]),
        .I2(VCNT[0]),
        .I3(VCNT[2]),
        .I4(\VGA_R_reg[3]_i_199_0 [0]),
        .O(\VGA_R[3]_i_226_n_0 ));
  LUT6 #(
    .INIT(64'h6AAAAAAA95555555)) 
    \VGA_R[3]_i_23 
       (.I0(HCNT[4]),
        .I1(HCNT[2]),
        .I2(HCNT[0]),
        .I3(HCNT[1]),
        .I4(HCNT[3]),
        .I5(rgb_00[6]),
        .O(\VGA_R[3]_i_23_n_0 ));
  LUT6 #(
    .INIT(64'h15559555EAAA6AAA)) 
    \VGA_R[3]_i_24 
       (.I0(HCNT[3]),
        .I1(HCNT[1]),
        .I2(HCNT[0]),
        .I3(HCNT[2]),
        .I4(HCNT[4]),
        .I5(HCNT[5]),
        .O(\VGA_R[3]_i_24_n_0 ));
  LUT5 #(
    .INIT(32'hA9996999)) 
    \VGA_R[3]_i_25 
       (.I0(HCNT[4]),
        .I1(HCNT[2]),
        .I2(HCNT[0]),
        .I3(HCNT[1]),
        .I4(HCNT[3]),
        .O(\VGA_R[3]_i_25_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h9)) 
    \VGA_R[3]_i_29 
       (.I0(\VGA_R_reg[3]_i_28_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h15151555FFFFFFFF)) 
    \VGA_R[3]_i_31 
       (.I0(VCNT[4]),
        .I1(VCNT[3]),
        .I2(VCNT[2]),
        .I3(VCNT[1]),
        .I4(VCNT[0]),
        .I5(VCNT[5]),
        .O(\VGA_R[3]_i_31_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_33 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_33_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_34 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_34_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'hF8)) 
    \VGA_R[3]_i_36 
       (.I0(\VGA_R[3]_i_192_n_0 ),
        .I1(\VGA_R_reg[3]_i_83_n_4 ),
        .I2(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_36_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'hE8)) 
    \VGA_R[3]_i_37 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_83_n_5 ),
        .I2(rgb_13[5]),
        .O(\VGA_R[3]_i_37_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'hB2)) 
    \VGA_R[3]_i_38 
       (.I0(\VGA_R_reg[3]_i_83_n_6 ),
        .I1(\VGA_R[3]_i_85_n_0 ),
        .I2(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_38_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hBBBEEEEE22288888)) 
    \VGA_R[3]_i_39 
       (.I0(\VGA_R_reg[3]_i_83_n_7 ),
        .I1(VCNT[3]),
        .I2(VCNT[1]),
        .I3(VCNT[0]),
        .I4(VCNT[2]),
        .I5(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_39_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'hF10E)) 
    \VGA_R[3]_i_4 
       (.I0(\VGA_R_reg[3]_i_14_n_1 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(\VGA_R_reg[3]_i_16_n_3 ),
        .I3(\VCNT_reg[3]_0 ),
        .O(\VGA_R[3]_i_4_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'h0F0F8778)) 
    \VGA_R[3]_i_40 
       (.I0(\VGA_R_reg[3]_i_83_n_4 ),
        .I1(\VGA_R[3]_i_192_n_0 ),
        .I2(\VGA_R_reg[3]_i_86_n_3 ),
        .I3(\VGA_R[3]_i_171_n_0 ),
        .I4(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_40_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'h1E1E8778)) 
    \VGA_R[3]_i_41 
       (.I0(rgb_13[5]),
        .I1(\VGA_R_reg[3]_i_83_n_5 ),
        .I2(\VGA_R_reg[3]_i_83_n_4 ),
        .I3(\VGA_R[3]_i_192_n_0 ),
        .I4(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_41_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \VGA_R[3]_i_42 
       (.I0(\VGA_R[3]_i_38_n_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(rgb_13[5]),
        .I3(\VGA_R_reg[3]_i_83_n_5 ),
        .O(\VGA_R[3]_i_42_n_0 ));
  (* HLUTNM = "lutpair5" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \VGA_R[3]_i_43 
       (.I0(\VGA_R_reg[3]_i_83_n_6 ),
        .I1(\VGA_R[3]_i_85_n_0 ),
        .I2(\VGA_R[3]_i_102_n_0 ),
        .I3(\VGA_R[3]_i_39_n_0 ),
        .O(\VGA_R[3]_i_43_n_0 ));
  LUT2 #(
    .INIT(4'h6)) 
    \VGA_R[3]_i_44 
       (.I0(HCNT[0]),
        .I1(HCNT[1]),
        .O(\VGA_R[3]_i_44_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_R[3]_i_45 
       (.I0(HCNT[0]),
        .O(\VGA_R[3]_i_45_n_0 ));
  LUT4 #(
    .INIT(16'hA969)) 
    \VGA_R[3]_i_46 
       (.I0(HCNT[3]),
        .I1(HCNT[1]),
        .I2(HCNT[0]),
        .I3(HCNT[2]),
        .O(\VGA_R[3]_i_46_n_0 ));
  LUT3 #(
    .INIT(8'hA6)) 
    \VGA_R[3]_i_47 
       (.I0(HCNT[2]),
        .I1(HCNT[0]),
        .I2(HCNT[1]),
        .O(\VGA_R[3]_i_47_n_0 ));
  LUT2 #(
    .INIT(4'h9)) 
    \VGA_R[3]_i_48 
       (.I0(HCNT[1]),
        .I1(HCNT[0]),
        .O(\VGA_R[3]_i_48_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_R[3]_i_49 
       (.I0(HCNT[0]),
        .O(\VGA_R[3]_i_49_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFF80)) 
    \VGA_R[3]_i_5 
       (.I0(VGA_HS_i_5_n_0),
        .I1(HCNT[8]),
        .I2(HCNT[9]),
        .I3(RST_IBUF),
        .I4(\VGA_R[3]_i_18_n_0 ),
        .I5(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \VGA_R[3]_i_50 
       (.I0(HCNT[5]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[6]),
        .O(rgb_00[6]));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h4)) 
    \VGA_R[3]_i_59 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R[3]_i_170_n_0 ),
        .O(\VGA_R[3]_i_59_n_0 ));
  LUT6 #(
    .INIT(64'h000010FFFFFFEF00)) 
    \VGA_R[3]_i_6 
       (.I0(HCNT[5]),
        .I1(HCNT[6]),
        .I2(\VCNT[9]_i_3_n_0 ),
        .I3(HCNT[7]),
        .I4(HCNT[8]),
        .I5(HCNT[9]),
        .O(\VGA_R[3]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA9AA)) 
    \VGA_R[3]_i_62 
       (.I0(VCNT[9]),
        .I1(VCNT[7]),
        .I2(VCNT[6]),
        .I3(\VGA_R[3]_i_31_n_0 ),
        .I4(VCNT[8]),
        .O(\VGA_R[3]_i_62_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'hF7F8)) 
    \VGA_R[3]_i_63 
       (.I0(\VGA_R_reg[3]_i_86_n_3 ),
        .I1(\VGA_R[3]_i_171_n_0 ),
        .I2(\VGA_R[3]_i_102_n_0 ),
        .I3(\VGA_R[3]_i_170_n_0 ),
        .O(\VGA_R[3]_i_63_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_65 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_65_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_66 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_66_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_67 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_67_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_68 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_68_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_69 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_69_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_70 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_70_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_71 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_71_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_72 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_72_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'hBBBE2228)) 
    \VGA_R[3]_i_74 
       (.I0(\VGA_R_reg[3]_i_110_n_4 ),
        .I1(VCNT[2]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(\VGA_R[3]_i_102_n_0 ),
        .O(\VGA_R[3]_i_74_n_0 ));
  (* HLUTNM = "lutpair4" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'hEB82)) 
    \VGA_R[3]_i_75 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(\VGA_R_reg[3]_i_110_n_5 ),
        .O(\VGA_R[3]_i_75_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h9669)) 
    \VGA_R[3]_i_76 
       (.I0(VCNT[1]),
        .I1(VCNT[0]),
        .I2(\VGA_R[3]_i_102_n_0 ),
        .I3(\VGA_R_reg[3]_i_110_n_5 ),
        .O(\VGA_R[3]_i_76_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \VGA_R[3]_i_77 
       (.I0(VCNT[0]),
        .O(rgb_13[0]));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'h6996)) 
    \VGA_R[3]_i_78 
       (.I0(\VGA_R[3]_i_74_n_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(\VGA_R_reg[3]_i_83_n_7 ),
        .I3(rgb_13[3]),
        .O(\VGA_R[3]_i_78_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'h9696966969696996)) 
    \VGA_R[3]_i_79 
       (.I0(\VGA_R[3]_i_75_n_0 ),
        .I1(\VGA_R[3]_i_102_n_0 ),
        .I2(VCNT[2]),
        .I3(VCNT[0]),
        .I4(VCNT[1]),
        .I5(\VGA_R_reg[3]_i_110_n_4 ),
        .O(\VGA_R[3]_i_79_n_0 ));
  LUT5 #(
    .INIT(32'hA9AA5555)) 
    \VGA_R[3]_i_8 
       (.I0(HCNT[8]),
        .I1(HCNT[5]),
        .I2(HCNT[6]),
        .I3(\VCNT[9]_i_3_n_0 ),
        .I4(HCNT[7]),
        .O(rgb_00[8]));
  (* HLUTNM = "lutpair4" *) 
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT5 #(
    .INIT(32'h3CC39669)) 
    \VGA_R[3]_i_80 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(\VGA_R_reg[3]_i_110_n_5 ),
        .I4(\VGA_R_reg[3]_i_110_n_6 ),
        .O(\VGA_R[3]_i_80_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'h69)) 
    \VGA_R[3]_i_81 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_110_n_6 ),
        .I2(VCNT[0]),
        .O(\VGA_R[3]_i_81_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT6 #(
    .INIT(64'hAAAA800055557FFF)) 
    \VGA_R[3]_i_82 
       (.I0(VCNT[5]),
        .I1(\VGA_R[3]_i_112_n_0 ),
        .I2(VCNT[2]),
        .I3(VCNT[3]),
        .I4(VCNT[4]),
        .I5(VCNT[6]),
        .O(\VGA_R[3]_i_192_n_0 ));
  LUT6 #(
    .INIT(64'h15151555EAEAEAAA)) 
    \VGA_R[3]_i_84 
       (.I0(VCNT[4]),
        .I1(VCNT[3]),
        .I2(VCNT[2]),
        .I3(VCNT[1]),
        .I4(VCNT[0]),
        .I5(VCNT[5]),
        .O(rgb_13[5]));
  LUT5 #(
    .INIT(32'h56AAAAAA)) 
    \VGA_R[3]_i_85 
       (.I0(VCNT[4]),
        .I1(VCNT[0]),
        .I2(VCNT[1]),
        .I3(VCNT[2]),
        .I4(VCNT[3]),
        .O(\VGA_R[3]_i_85_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT3 #(
    .INIT(8'hA6)) 
    \VGA_R[3]_i_87 
       (.I0(VCNT[7]),
        .I1(\VGA_R[3]_i_31_n_0 ),
        .I2(VCNT[6]),
        .O(\VGA_R[3]_i_171_n_0 ));
  LUT3 #(
    .INIT(8'hB4)) 
    \VGA_R[3]_i_9 
       (.I0(HCNT[5]),
        .I1(\VCNT[9]_i_3_n_0 ),
        .I2(HCNT[6]),
        .O(\VGA_R[3]_i_9_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT4 #(
    .INIT(16'hEF10)) 
    \VGA_R[3]_i_91 
       (.I0(VCNT[7]),
        .I1(VCNT[6]),
        .I2(\VGA_R[3]_i_31_n_0 ),
        .I3(VCNT[8]),
        .O(\VGA_R[3]_i_170_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_93 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_93_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_94 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_94_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_95 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_95_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h1)) 
    \VGA_R[3]_i_96 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_96_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_97 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_97_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_98 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_98_n_0 ));
  (* OPT_MODIFIED = "RETARGET " *) 
  LUT2 #(
    .INIT(4'h7)) 
    \VGA_R[3]_i_99 
       (.I0(\VGA_R[3]_i_102_n_0 ),
        .I1(\VGA_R_reg[3]_i_14_n_1 ),
        .O(\VGA_R[3]_i_99_n_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_101 
       (.CI(\VGA_R_reg[3]_i_129_n_0 ),
        .CO({\VGA_R_reg[3]_i_101_n_0 ,\NLW_VGA_R_reg[3]_i_101_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({CO,\VGA_R[3]_i_166_0 [3:1]}),
        .O(\NLW_VGA_R_reg[3]_i_101_O_UNCONNECTED [3:0]),
        .S(\VGA_R_reg[3]_i_73_0 ));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_110 
       (.CI(\VGA_R_reg[3]_i_136_n_0 ),
        .CO({\VGA_R_reg[3]_i_110_n_0 ,\NLW_VGA_R_reg[3]_i_110_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_137_n_0 ,\VGA_R[3]_i_138_n_0 ,\VGA_R[3]_i_139_n_0 ,\VGA_R[3]_i_140_n_0 }),
        .O({\VGA_R_reg[3]_i_110_n_4 ,\VGA_R_reg[3]_i_110_n_5 ,\VGA_R_reg[3]_i_110_n_6 ,\VGA_R_reg[3]_i_110_n_7 }),
        .S({\VGA_R[3]_i_141_n_0 ,\VGA_R[3]_i_142_n_0 ,\VGA_R[3]_i_143_n_0 ,\VGA_R[3]_i_144_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_120 
       (.CI(\VGA_R_reg[3]_i_146_n_0 ),
        .CO({\VGA_R_reg[3]_i_120_n_0 ,\NLW_VGA_R_reg[3]_i_120_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_147_n_0 ,\VGA_R[3]_i_148_n_0 ,\VGA_R[3]_i_149_n_0 ,\VGA_R[3]_i_150_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_120_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_151_n_0 ,\VGA_R[3]_i_152_n_0 ,\VGA_R[3]_i_153_n_0 ,\VGA_R[3]_i_154_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_129 
       (.CI(1'b0),
        .CO({\VGA_R_reg[3]_i_129_n_0 ,\NLW_VGA_R_reg[3]_i_129_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_166_0 [0],\VGA_R_reg[3]_i_155_n_4 ,\VGA_R_reg[3]_i_155_n_5 ,\VGA_R_reg[3]_i_155_n_6 }),
        .O(\NLW_VGA_R_reg[3]_i_129_O_UNCONNECTED [3:0]),
        .S({S,\VGA_R[3]_i_157_n_0 ,\VGA_R[3]_i_158_n_0 ,\VGA_R[3]_i_159_n_0 }));
  CARRY4 \VGA_R_reg[3]_i_130 
       (.CI(\VGA_R_reg[3]_i_131_n_0 ),
        .CO({\NLW_VGA_R_reg[3]_i_130_CO_UNCONNECTED [3:1],CO}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_VGA_R_reg[3]_i_130_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* OPT_MODIFIED = "RETARGET SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_131 
       (.CI(\VGA_R_reg[3]_i_155_n_0 ),
        .CO({\VGA_R_reg[3]_i_131_n_0 ,\NLW_VGA_R_reg[3]_i_131_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 }),
        .O(\VGA_R[3]_i_166_0 ),
        .S({1'b0,\VGA_R[3]_i_164_n_0 ,\VGA_R[3]_i_165_n_0 ,\VGA_R[3]_i_166_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_136 
       (.CI(\VGA_R_reg[3]_i_167_n_0 ),
        .CO({\VGA_R_reg[3]_i_136_n_0 ,\NLW_VGA_R_reg[3]_i_136_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_168_n_0 ,\VGA_R[3]_i_169_n_0 ,\VGA_R[3]_i_170_n_0 ,\VGA_R[3]_i_171_n_0 }),
        .O({\VGA_R_reg[3]_i_136_n_4 ,\VGA_R_reg[3]_i_136_n_5 ,\VGA_R_reg[3]_i_136_n_6 ,\VCNT_reg[0]_0 }),
        .S({\VGA_R[3]_i_172_n_0 ,\VGA_R[3]_i_173_n_0 ,\VGA_R[3]_i_174_n_0 ,\VGA_R[3]_i_175_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_14 
       (.CI(\VGA_R[3]_i_185_0 ),
        .CO({\NLW_VGA_R_reg[3]_i_14_CO_UNCONNECTED [3],\VGA_R_reg[3]_i_14_n_1 ,\NLW_VGA_R_reg[3]_i_14_CO_UNCONNECTED [1:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,\VGA_R_reg[3]_i_28_0 ,\VCNT_reg[9]_0 [3]}),
        .O({\NLW_VGA_R_reg[3]_i_14_O_UNCONNECTED [3:2],\VGA_R_reg[3]_i_14_n_6 ,\VGA_R_reg[3]_i_14_n_7 }),
        .S({1'b0,1'b1,\VGA_R[3]_i_29_n_0 ,\VGA_R[3]_i_185_1 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_146 
       (.CI(\VGA_R_reg[3]_i_177_n_0 ),
        .CO({\VGA_R_reg[3]_i_146_n_0 ,\NLW_VGA_R_reg[3]_i_146_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_178_n_0 ,\VGA_R[3]_i_179_n_0 ,\VGA_R[3]_i_180_n_0 ,\VGA_R[3]_i_181_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_146_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_182_n_0 ,\VGA_R[3]_i_183_n_0 ,\VGA_R[3]_i_184_n_0 ,\VGA_R[3]_i_185_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_155 
       (.CI(\VGA_R_reg[3]_i_186_n_0 ),
        .CO({\VGA_R_reg[3]_i_155_n_0 ,\NLW_VGA_R_reg[3]_i_155_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_137_n_0 ,\VGA_R[3]_i_138_n_0 ,\VGA_R[3]_i_139_n_0 ,\VGA_R[3]_i_140_n_0 }),
        .O({\VGA_R_reg[3]_i_155_n_4 ,\VGA_R_reg[3]_i_155_n_5 ,\VGA_R_reg[3]_i_155_n_6 ,\NLW_VGA_R_reg[3]_i_155_O_UNCONNECTED [0]}),
        .S({\VGA_R[3]_i_187_n_0 ,\VGA_R[3]_i_188_n_0 ,\VGA_R[3]_i_189_n_0 ,\VGA_R[3]_i_190_n_0 }));
  CARRY4 \VGA_R_reg[3]_i_16 
       (.CI(\VGA_R_reg[3]_i_32_n_0 ),
        .CO({\NLW_VGA_R_reg[3]_i_16_CO_UNCONNECTED [3:1],\VGA_R_reg[3]_i_16_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\VGA_R[3]_i_33_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_16_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,\VGA_R[3]_i_34_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_167 
       (.CI(1'b0),
        .CO({\VGA_R_reg[3]_i_167_n_0 ,\NLW_VGA_R_reg[3]_i_167_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_192_n_0 ,rgb_13[1],rgb_13[4],1'b0}),
        .O({\VCNT_reg[1]_0 ,\NLW_VGA_R_reg[3]_i_167_O_UNCONNECTED [0]}),
        .S({\VGA_R[3]_i_195_n_0 ,\VGA_R[3]_i_196_n_0 ,\VGA_R[3]_i_197_n_0 ,\VGA_R[3]_i_198_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_17 
       (.CI(\VGA_R_reg[3]_i_35_n_0 ),
        .CO({\VGA_R_reg[3]_i_17_n_0 ,\NLW_VGA_R_reg[3]_i_17_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_36_n_0 ,\VGA_R[3]_i_37_n_0 ,\VGA_R[3]_i_38_n_0 ,\VGA_R[3]_i_39_n_0 }),
        .O({\VCNT_reg[3]_0 ,\NLW_VGA_R_reg[3]_i_17_O_UNCONNECTED [2:0]}),
        .S({\VGA_R[3]_i_40_n_0 ,\VGA_R[3]_i_41_n_0 ,\VGA_R[3]_i_42_n_0 ,\VGA_R[3]_i_43_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_177 
       (.CI(\VGA_R_reg[3]_i_199_n_0 ),
        .CO({\VGA_R_reg[3]_i_177_n_0 ,\NLW_VGA_R_reg[3]_i_177_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_200_n_0 ,\VGA_R[3]_i_201_n_0 ,\VGA_R[3]_i_202_n_0 ,\VGA_R[3]_i_203_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_177_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_204_n_0 ,\VGA_R[3]_i_205_n_0 ,\VGA_R[3]_i_206_n_0 ,\VGA_R[3]_i_207_n_0 }));
  (* OPT_MODIFIED = "RETARGET SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_186 
       (.CI(\VGA_R_reg[3]_i_191_n_0 ),
        .CO({\VGA_R_reg[3]_i_186_n_0 ,\NLW_VGA_R_reg[3]_i_186_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_168_n_0 ,\VGA_R[3]_i_208_n_0 ,\VGA_R[3]_i_170_n_0 ,\VGA_R[3]_i_171_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_186_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_210_n_0 ,\VGA_R[3]_i_211_n_0 ,\VGA_R[3]_i_212_n_0 ,\VGA_R[3]_i_213_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_19 
       (.CI(1'b0),
        .CO({\VGA_R_reg[3]_i_19_n_0 ,\NLW_VGA_R_reg[3]_i_19_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_44_n_0 ,\VGA_R[3]_i_45_n_0 ,1'b0,1'b1}),
        .O(\NLW_VGA_R_reg[3]_i_19_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_46_n_0 ,\VGA_R[3]_i_47_n_0 ,\VGA_R[3]_i_48_n_0 ,\VGA_R[3]_i_49_n_0 }));
  (* OPT_MODIFIED = "RETARGET PROPCONST SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_191 
       (.CI(1'b0),
        .CO({\VGA_R_reg[3]_i_191_n_0 ,\NLW_VGA_R_reg[3]_i_191_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_192_n_0 ,rgb_13[1],\VGA_R[3]_i_215_n_0 ,1'b0}),
        .O({\NLW_VGA_R_reg[3]_i_191_O_UNCONNECTED [3:1],O}),
        .S({\VGA_R[3]_i_216_n_0 ,\VGA_R[3]_i_217_n_0 ,\VGA_R[3]_i_218_n_0 ,\VGA_R[3]_i_219_n_0 }));
  (* OPT_MODIFIED = "PROPCONST SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_199 
       (.CI(1'b0),
        .CO({\VGA_R_reg[3]_i_199_n_0 ,\NLW_VGA_R_reg[3]_i_199_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_220_n_0 ,\VGA_R[3]_i_221_n_0 ,\VGA_R[3]_i_222_n_0 ,1'b0}),
        .O(\NLW_VGA_R_reg[3]_i_199_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_223_n_0 ,\VGA_R[3]_i_224_n_0 ,\VGA_R[3]_i_225_n_0 ,\VGA_R[3]_i_226_n_0 }));
  CARRY4 \VGA_R_reg[3]_i_27 
       (.CI(\VGA_R_reg[3]_i_28_n_0 ),
        .CO({\NLW_VGA_R_reg[3]_i_27_CO_UNCONNECTED [3:1],\VGA_R_reg[3]_i_28_0 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_VGA_R_reg[3]_i_27_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* OPT_MODIFIED = "RETARGET SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_28 
       (.CI(\VGA_R_reg[3]_i_17_n_0 ),
        .CO({\VGA_R_reg[3]_i_28_n_0 ,\NLW_VGA_R_reg[3]_i_28_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_59_n_0 }),
        .O(\VCNT_reg[9]_0 ),
        .S({\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_62_n_0 ,\VGA_R[3]_i_63_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_3 
       (.CI(\VGA_R_reg[3]_i_7_n_0 ),
        .CO(\NLW_VGA_R_reg[3]_i_3_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,rgb_00[8],\VGA_R[3]_i_6_n_0 ,\VGA_R[3]_i_9_n_0 }),
        .O({\VGA_R_reg[3]_i_3_n_4 ,\VGA_R_reg[3]_i_3_n_5 ,\VGA_R_reg[3]_i_3_n_6 ,\VGA_R_reg[3]_i_3_n_7 }),
        .S({\VGA_R[3]_i_10_n_0 ,\VGA_R[3]_i_11_n_0 ,\VGA_R[3]_i_12_n_0 ,\VGA_R[3]_i_13_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_32 
       (.CI(\VGA_R_reg[3]_i_64_n_0 ),
        .CO({\VGA_R_reg[3]_i_32_n_0 ,\NLW_VGA_R_reg[3]_i_32_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_65_n_0 ,\VGA_R[3]_i_66_n_0 ,\VGA_R[3]_i_67_n_0 ,\VGA_R[3]_i_68_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_32_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_69_n_0 ,\VGA_R[3]_i_70_n_0 ,\VGA_R[3]_i_71_n_0 ,\VGA_R[3]_i_72_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_35 
       (.CI(\VGA_R_reg[3]_i_73_n_0 ),
        .CO({\VGA_R_reg[3]_i_35_n_0 ,\NLW_VGA_R_reg[3]_i_35_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_74_n_0 ,\VGA_R[3]_i_75_n_0 ,\VGA_R[3]_i_76_n_0 ,rgb_13[0]}),
        .O(\NLW_VGA_R_reg[3]_i_35_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_78_n_0 ,\VGA_R[3]_i_79_n_0 ,\VGA_R[3]_i_80_n_0 ,\VGA_R[3]_i_81_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_64 
       (.CI(\VGA_R_reg[3]_i_92_n_0 ),
        .CO({\VGA_R_reg[3]_i_64_n_0 ,\NLW_VGA_R_reg[3]_i_64_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_93_n_0 ,\VGA_R[3]_i_94_n_0 ,\VGA_R[3]_i_95_n_0 ,\VGA_R[3]_i_96_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_64_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_97_n_0 ,\VGA_R[3]_i_98_n_0 ,\VGA_R[3]_i_99_n_0 ,\VGA_R[3]_i_100_n_0 }));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_7 
       (.CI(\VGA_R_reg[3]_i_19_n_0 ),
        .CO({\VGA_R_reg[3]_i_7_n_0 ,\NLW_VGA_R_reg[3]_i_7_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_20_n_0 ,\HCNT[4]_i_1_n_0 ,\HCNT[5]_i_1_n_0 ,\VGA_R[3]_i_21_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_7_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_22_n_0 ,\VGA_R[3]_i_23_n_0 ,\VGA_R[3]_i_24_n_0 ,\VGA_R[3]_i_25_n_0 }));
  (* OPT_MODIFIED = "RETARGET SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_73 
       (.CI(\VGA_R_reg[3]_i_101_n_0 ),
        .CO({\VGA_R_reg[3]_i_73_n_0 ,\NLW_VGA_R_reg[3]_i_73_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_73_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_106_n_0 ,\VGA_R[3]_i_107_n_0 ,\VGA_R[3]_i_108_n_0 ,\VGA_R[3]_i_109_n_0 }));
  (* OPT_MODIFIED = "RETARGET SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_83 
       (.CI(\VGA_R_reg[3]_i_110_n_0 ),
        .CO({\VGA_R_reg[3]_i_83_n_0 ,\NLW_VGA_R_reg[3]_i_83_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 ,\VGA_R[3]_i_102_n_0 }),
        .O({\VGA_R_reg[3]_i_83_n_4 ,\VGA_R_reg[3]_i_83_n_5 ,\VGA_R_reg[3]_i_83_n_6 ,\VGA_R_reg[3]_i_83_n_7 }),
        .S({1'b0,\VGA_R[3]_i_117_n_0 ,\VGA_R[3]_i_118_n_0 ,\VGA_R[3]_i_119_n_0 }));
  CARRY4 \VGA_R_reg[3]_i_86 
       (.CI(\VGA_R_reg[3]_i_83_n_0 ),
        .CO({\NLW_VGA_R_reg[3]_i_86_CO_UNCONNECTED [3:1],\VGA_R_reg[3]_i_86_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(\NLW_VGA_R_reg[3]_i_86_O_UNCONNECTED [3:0]),
        .S({1'b0,1'b0,1'b0,1'b1}));
  (* OPT_MODIFIED = "SWEEP " *) 
  CARRY4 \VGA_R_reg[3]_i_92 
       (.CI(\VGA_R_reg[3]_i_120_n_0 ),
        .CO({\VGA_R_reg[3]_i_92_n_0 ,\NLW_VGA_R_reg[3]_i_92_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({\VGA_R[3]_i_121_n_0 ,\VGA_R[3]_i_122_n_0 ,\VGA_R[3]_i_123_n_0 ,\VGA_R[3]_i_124_n_0 }),
        .O(\NLW_VGA_R_reg[3]_i_92_O_UNCONNECTED [3:0]),
        .S({\VGA_R[3]_i_125_n_0 ,\VGA_R[3]_i_126_n_0 ,\VGA_R[3]_i_127_n_0 ,\VGA_R[3]_i_128_n_0 }));
  LUT6 #(
    .INIT(64'h0000000000010100)) 
    VGA_VS_i_1
       (.I0(\VCNT[9]_i_4_n_0 ),
        .I1(VCNT[9]),
        .I2(VCNT[0]),
        .I3(VCNT[1]),
        .I4(VCNT[2]),
        .I5(VGA_HS),
        .O(VGA_VS));
  LUT2 #(
    .INIT(4'hB)) 
    VGA_VS_i_2
       (.I0(VCNT[2]),
        .I1(VCNT[1]),
        .O(VGA_VS_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    VGA_VS_reg
       (.C(PCK),
        .CE(VGA_VS),
        .D(VGA_VS_i_2_n_0),
        .Q(VGA_VS_OBUF),
        .S(RST_IBUF));
  pckgen pckgen
       (.PCK(PCK),
        .SYSCLK(SYSCLK));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
