// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Mon Apr 22 13:52:51 2024
// Host        : Gina running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top FIR_design_FIR_IP_v1_0_S00_AXI_0_0 -prefix
//               FIR_design_FIR_IP_v1_0_S00_AXI_0_0_ FIR_design_FIR_IP_v1_0_S00_AXI_0_0_sim_netlist.v
// Design      : FIR_design_FIR_IP_v1_0_S00_AXI_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_Control_Unit
   (we_reg_0,
    q_reg,
    mac_init,
    Q,
    D,
    E,
    S_AXI_ACLK,
    rst,
    valid_in);
  output we_reg_0;
  output q_reg;
  output mac_init;
  output [2:0]Q;
  output [3:0]D;
  input [0:0]E;
  input S_AXI_ACLK;
  input rst;
  input valid_in;

  wire [3:0]D;
  wire [0:0]E;
  wire [2:0]Q;
  wire S_AXI_ACLK;
  wire calculate;
  wire calculate_i_1_n_0;
  wire [2:0]count_reg;
  wire \count_reg[0]_i_1_n_0 ;
  wire \count_reg[1]_i_1_n_0 ;
  wire \count_reg[2]_i_1_n_0 ;
  wire eqOp;
  wire flag;
  wire flag_i_1_n_0;
  wire flag_i_2_n_0;
  wire mac_init;
  wire q_reg;
  wire rst;
  wire valid_in;
  wire valid_out_deff1_n_0;
  wire valid_out_deff2_n_0;
  wire valid_out_deff3_n_0;
  wire valid_out_temp;
  wire valid_out_temp_reg_n_0;
  wire we_i_1_n_0;
  wire we_reg_0;

  LUT6 #(
    .INIT(64'hFFFFFFFE00000002)) 
    calculate_i_1
       (.I0(valid_in),
        .I1(count_reg[2]),
        .I2(count_reg[1]),
        .I3(count_reg[0]),
        .I4(rst),
        .I5(calculate),
        .O(calculate_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    calculate_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(calculate_i_1_n_0),
        .Q(calculate),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count_reg[0]_i_1 
       (.I0(flag),
        .I1(count_reg[0]),
        .O(\count_reg[0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h28)) 
    \count_reg[1]_i_1 
       (.I0(flag),
        .I1(count_reg[0]),
        .I2(count_reg[1]),
        .O(\count_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7080)) 
    \count_reg[2]_i_1 
       (.I0(count_reg[1]),
        .I1(count_reg[0]),
        .I2(flag),
        .I3(count_reg[2]),
        .O(\count_reg[2]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[0]_i_1_n_0 ),
        .Q(count_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[1]_i_1_n_0 ),
        .Q(count_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \count_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\count_reg[2]_i_1_n_0 ),
        .Q(count_reg[2]));
  LUT5 #(
    .INIT(32'hFF7F0000)) 
    flag_i_1
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .I3(rst),
        .I4(flag_i_2_n_0),
        .O(flag_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFF04)) 
    flag_i_2
       (.I0(calculate),
        .I1(valid_in),
        .I2(rst),
        .I3(flag),
        .O(flag_i_2_n_0));
  FDRE flag_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(flag_i_1_n_0),
        .Q(flag),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h01)) 
    mac_init_i_1
       (.I0(count_reg[0]),
        .I1(count_reg[1]),
        .I2(count_reg[2]),
        .O(eqOp));
  FDPE mac_init_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(eqOp),
        .PRE(rst),
        .Q(mac_init));
  FDRE \ram_addr_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(count_reg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \ram_addr_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(count_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \ram_addr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(count_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \rom_out[0]_i_1 
       (.I0(Q[0]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \rom_out[1]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h6C)) 
    \rom_out[2]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \rom_out[3]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .O(D[3]));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2_2 valid_out_deff1
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg(valid_out_deff1_n_0),
        .q_reg_0(valid_out_temp_reg_n_0),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2_3 valid_out_deff2
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg(valid_out_deff2_n_0),
        .q_reg_0(valid_out_deff1_n_0),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2_4 valid_out_deff3
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg(valid_out_deff3_n_0),
        .q_reg_0(valid_out_deff2_n_0),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2_5 valid_out_deff4
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg(q_reg),
        .q_reg_0(valid_out_deff3_n_0),
        .rst(rst));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    valid_out_temp_i_1
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(calculate),
        .O(valid_out_temp));
  FDCE valid_out_temp_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(valid_out_temp),
        .Q(valid_out_temp_reg_n_0));
  LUT4 #(
    .INIT(16'h0100)) 
    we_i_1
       (.I0(count_reg[2]),
        .I1(count_reg[1]),
        .I2(count_reg[0]),
        .I3(valid_in),
        .O(we_i_1_n_0));
  FDRE we_reg
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(we_i_1_n_0),
        .Q(we_reg_0),
        .R(1'b0));
endmodule

module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_FIR
   (valid_out_ip,
    E,
    S_AXI_ARESETN_0,
    Q,
    S_AXI_ACLK,
    rst,
    valid_in,
    \axi_rdata_reg[0] ,
    S_AXI_ARVALID,
    \axi_rdata_reg[0]_0 ,
    S_AXI_ARESETN,
    D);
  output valid_out_ip;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  output [18:0]Q;
  input S_AXI_ACLK;
  input rst;
  input valid_in;
  input \axi_rdata_reg[0] ;
  input S_AXI_ARVALID;
  input \axi_rdata_reg[0]_0 ;
  input S_AXI_ARESETN;
  input [7:0]D;

  wire [7:0]D;
  wire [0:0]E;
  wire [18:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARVALID;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire control_n_0;
  wire control_n_1;
  wire control_n_3;
  wire control_n_4;
  wire control_n_5;
  wire [7:0]do;
  wire mac_init;
  wire mac_init_reg_n_0;
  wire macc_n_0;
  wire p_1_in;
  wire ram_n_0;
  wire ram_n_10;
  wire ram_n_11;
  wire ram_n_12;
  wire ram_n_13;
  wire ram_n_14;
  wire ram_n_15;
  wire ram_n_16;
  wire ram_n_17;
  wire ram_n_9;
  wire [3:0]rdata;
  wire rom_n_0;
  wire rom_n_1;
  wire rom_n_10;
  wire rom_n_11;
  wire rom_n_12;
  wire rom_n_13;
  wire rom_n_14;
  wire rom_n_15;
  wire rom_n_16;
  wire rom_n_17;
  wire rom_n_18;
  wire rom_n_19;
  wire rom_n_20;
  wire rom_n_21;
  wire rom_n_22;
  wire rom_n_6;
  wire rom_n_7;
  wire rom_n_8;
  wire rom_n_9;
  wire [3:0]rom_out;
  wire rst;
  wire valid_in;
  wire valid_out_ip;
  wire x_reg_n_0;
  wire x_reg_n_1;
  wire x_reg_n_2;
  wire x_reg_n_3;
  wire x_reg_n_4;
  wire x_reg_n_5;
  wire x_reg_n_6;
  wire x_reg_n_7;

  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_Control_Unit control
       (.D(rdata),
        .E(p_1_in),
        .Q({control_n_3,control_n_4,control_n_5}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .mac_init(mac_init),
        .q_reg(control_n_1),
        .rst(rst),
        .valid_in(valid_in),
        .we_reg_0(control_n_0));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff mac_init_reg
       (.S_AXI_ACLK(S_AXI_ACLK),
        .mac_init(mac_init),
        .q_reg_0(mac_init_reg_n_0),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_MAC macc
       (.CO(macc_n_0),
        .DI({rom_n_0,rom_n_1,ram_n_17}),
        .E(p_1_in),
        .Q(Q),
        .S({rom_n_14,ram_n_15,rom_n_15,ram_n_16}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .rst(rst),
        .\sum[4]_i_9_0 ({rom_n_6,ram_n_0,rom_n_7,rom_n_8}),
        .\sum[4]_i_9_1 ({rom_n_16,rom_n_17,rom_n_18,rom_n_19}),
        .\sum[8]_i_9_0 ({rom_n_10,rom_n_11,ram_n_12}),
        .\sum[8]_i_9_1 ({rom_n_20,rom_n_21,rom_n_22}),
        .\sum_reg[11]_0 (rom_n_13),
        .\sum_reg[3]_0 (mac_init_reg_n_0));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_mlab_ram ram
       (.DI(ram_n_17),
        .E(p_1_in),
        .Q(do),
        .\RAM_reg[0][7]_0 ({x_reg_n_0,x_reg_n_1,x_reg_n_2,x_reg_n_3,x_reg_n_4,x_reg_n_5,x_reg_n_6,x_reg_n_7}),
        .\RAM_reg[7][0]_0 (control_n_0),
        .S({ram_n_15,ram_n_16}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .\do_reg[0]_0 ({control_n_3,control_n_4,control_n_5}),
        .\do_reg[2]_0 (ram_n_9),
        .\do_reg[2]_1 (ram_n_10),
        .\do_reg[3]_0 (ram_n_11),
        .\do_reg[4]_0 (ram_n_13),
        .\do_reg[5]_0 (ram_n_0),
        .\do_reg[5]_1 (ram_n_14),
        .\do_reg[7]_0 (ram_n_12),
        .multOp__0_carry__0(rom_n_9),
        .multOp__0_carry__1(rom_n_12),
        .multOp__0_carry__1_i_6(rom_out),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_mlab_rom rom
       (.CO(macc_n_0),
        .D(rdata),
        .DI({rom_n_0,rom_n_1}),
        .Q(rom_out),
        .S({rom_n_14,rom_n_15}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .\do_reg[6] ({rom_n_6,rom_n_7,rom_n_8}),
        .\do_reg[7] ({rom_n_16,rom_n_17,rom_n_18,rom_n_19}),
        .multOp__0_carry(ram_n_11),
        .multOp__0_carry__0(ram_n_10),
        .multOp__0_carry__0_0(ram_n_9),
        .multOp__0_carry__0_1(ram_n_0),
        .multOp__0_carry__1(ram_n_14),
        .multOp__0_carry__1_0(ram_n_13),
        .multOp__0_carry__1_i_6_0(do),
        .q_reg(rom_n_13),
        .\rom_out_reg[1]_0 (rom_n_9),
        .\rom_out_reg[1]_1 ({rom_n_10,rom_n_11}),
        .\rom_out_reg[1]_2 (rom_n_12),
        .\rom_out_reg[2]_0 ({rom_n_20,rom_n_21,rom_n_22}),
        .\sum_reg[11] (mac_init_reg_n_0));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2 valid_out_reg
       (.E(E),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .\axi_rdata_reg[0]_0 (\axi_rdata_reg[0]_0 ),
        .q_reg(control_n_1),
        .rst(rst),
        .valid_out_ip(valid_out_ip));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_big x_reg
       (.D(D),
        .Q({x_reg_n_0,x_reg_n_1,x_reg_n_2,x_reg_n_3,x_reg_n_4,x_reg_n_5,x_reg_n_6,x_reg_n_7}),
        .S_AXI_ACLK(S_AXI_ACLK),
        .rst(rst));
endmodule

module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_FIR_IP_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    axi_rvalid_reg_0,
    S_AXI_RDATA,
    S_AXI_BVALID,
    S_AXI_AWADDR,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ACLK,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_ARVALID,
    S_AXI_ARESETN,
    S_AXI_WSTRB,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output axi_rvalid_reg_0;
  output [31:0]S_AXI_RDATA;
  output S_AXI_BVALID;
  input [1:0]S_AXI_AWADDR;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ACLK;
  input [31:0]S_AXI_WDATA;
  input [1:0]S_AXI_ARADDR;
  input S_AXI_ARVALID;
  input S_AXI_ARESETN;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire FIR_bb_n_2;
  wire S_AXI_ACLK;
  wire [1:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [1:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire [3:2]axi_awaddr;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_awready_i_1_n_0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rdata;
  wire axi_rvalid_i_1_n_0;
  wire axi_rvalid_reg_0;
  wire axi_wready0;
  wire [31:7]p_1_in;
  wire [31:0]p_2_in;
  wire [31:0]reg_data_out;
  wire rst;
  wire \slv_reg0[15]_i_1_n_0 ;
  wire \slv_reg0[23]_i_1_n_0 ;
  wire \slv_reg0[31]_i_1_n_0 ;
  wire \slv_reg0[7]_i_1_n_0 ;
  wire \slv_reg0[8]_i_1_n_0 ;
  wire \slv_reg0[8]_i_2_n_0 ;
  wire \slv_reg0_reg_n_0_[0] ;
  wire \slv_reg0_reg_n_0_[10] ;
  wire \slv_reg0_reg_n_0_[11] ;
  wire \slv_reg0_reg_n_0_[12] ;
  wire \slv_reg0_reg_n_0_[13] ;
  wire \slv_reg0_reg_n_0_[14] ;
  wire \slv_reg0_reg_n_0_[15] ;
  wire \slv_reg0_reg_n_0_[16] ;
  wire \slv_reg0_reg_n_0_[17] ;
  wire \slv_reg0_reg_n_0_[18] ;
  wire \slv_reg0_reg_n_0_[19] ;
  wire \slv_reg0_reg_n_0_[1] ;
  wire \slv_reg0_reg_n_0_[20] ;
  wire \slv_reg0_reg_n_0_[21] ;
  wire \slv_reg0_reg_n_0_[22] ;
  wire \slv_reg0_reg_n_0_[23] ;
  wire \slv_reg0_reg_n_0_[24] ;
  wire \slv_reg0_reg_n_0_[25] ;
  wire \slv_reg0_reg_n_0_[26] ;
  wire \slv_reg0_reg_n_0_[27] ;
  wire \slv_reg0_reg_n_0_[28] ;
  wire \slv_reg0_reg_n_0_[29] ;
  wire \slv_reg0_reg_n_0_[2] ;
  wire \slv_reg0_reg_n_0_[30] ;
  wire \slv_reg0_reg_n_0_[31] ;
  wire \slv_reg0_reg_n_0_[3] ;
  wire \slv_reg0_reg_n_0_[4] ;
  wire \slv_reg0_reg_n_0_[5] ;
  wire \slv_reg0_reg_n_0_[6] ;
  wire \slv_reg0_reg_n_0_[7] ;
  wire [19:0]slv_reg1;
  wire \slv_reg1[19]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_wren__2;
  wire valid_in;
  wire valid_out_ip;
  wire [18:0]y;

  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_FIR FIR_bb
       (.D({\slv_reg0_reg_n_0_[7] ,\slv_reg0_reg_n_0_[6] ,\slv_reg0_reg_n_0_[5] ,\slv_reg0_reg_n_0_[4] ,\slv_reg0_reg_n_0_[3] ,\slv_reg0_reg_n_0_[2] ,\slv_reg0_reg_n_0_[1] ,\slv_reg0_reg_n_0_[0] }),
        .E(axi_rdata),
        .Q(y),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(FIR_bb_n_2),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .\axi_rdata_reg[0] (axi_rvalid_reg_0),
        .\axi_rdata_reg[0]_0 (S_AXI_ARREADY),
        .rst(rst),
        .valid_in(valid_in),
        .valid_out_ip(valid_out_ip));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(S_AXI_ARADDR[0]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(S_AXI_ARADDR[1]),
        .I1(S_AXI_ARVALID),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDSE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .S(axi_awready_i_1_n_0));
  FDSE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .S(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(axi_awready_i_1_n_0));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(S_AXI_AWADDR[0]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[2]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(S_AXI_AWADDR[1]),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWVALID),
        .I3(S_AXI_AWREADY),
        .I4(axi_awaddr[3]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(axi_awaddr[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(axi_awaddr[3]),
        .R(axi_awready_i_1_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(S_AXI_ARESETN),
        .O(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(S_AXI_BVALID),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg2[0]),
        .I1(slv_reg3[0]),
        .I2(\slv_reg0_reg_n_0_[0] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg2[10]),
        .I1(slv_reg3[10]),
        .I2(\slv_reg0_reg_n_0_[10] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg2[11]),
        .I1(slv_reg3[11]),
        .I2(\slv_reg0_reg_n_0_[11] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg2[12]),
        .I1(slv_reg3[12]),
        .I2(\slv_reg0_reg_n_0_[12] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg2[13]),
        .I1(slv_reg3[13]),
        .I2(\slv_reg0_reg_n_0_[13] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg2[14]),
        .I1(slv_reg3[14]),
        .I2(\slv_reg0_reg_n_0_[14] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg2[15]),
        .I1(slv_reg3[15]),
        .I2(\slv_reg0_reg_n_0_[15] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg2[16]),
        .I1(slv_reg3[16]),
        .I2(\slv_reg0_reg_n_0_[16] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg2[17]),
        .I1(slv_reg3[17]),
        .I2(\slv_reg0_reg_n_0_[17] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg2[18]),
        .I1(slv_reg3[18]),
        .I2(\slv_reg0_reg_n_0_[18] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg2[19]),
        .I1(slv_reg3[19]),
        .I2(\slv_reg0_reg_n_0_[19] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg2[1]),
        .I1(slv_reg3[1]),
        .I2(\slv_reg0_reg_n_0_[1] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[1]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[20]_i_1 
       (.I0(\slv_reg0_reg_n_0_[20] ),
        .I1(slv_reg2[20]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[20]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[21]_i_1 
       (.I0(\slv_reg0_reg_n_0_[21] ),
        .I1(slv_reg2[21]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[21]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[22]_i_1 
       (.I0(\slv_reg0_reg_n_0_[22] ),
        .I1(slv_reg2[22]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[22]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[23]_i_1 
       (.I0(\slv_reg0_reg_n_0_[23] ),
        .I1(slv_reg2[23]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[23]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[24]_i_1 
       (.I0(\slv_reg0_reg_n_0_[24] ),
        .I1(slv_reg2[24]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[24]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[25]_i_1 
       (.I0(\slv_reg0_reg_n_0_[25] ),
        .I1(slv_reg2[25]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[25]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[26]_i_1 
       (.I0(\slv_reg0_reg_n_0_[26] ),
        .I1(slv_reg2[26]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[26]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[27]_i_1 
       (.I0(\slv_reg0_reg_n_0_[27] ),
        .I1(slv_reg2[27]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[27]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[28]_i_1 
       (.I0(\slv_reg0_reg_n_0_[28] ),
        .I1(slv_reg2[28]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[28]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[29]_i_1 
       (.I0(\slv_reg0_reg_n_0_[29] ),
        .I1(slv_reg2[29]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg2[2]),
        .I1(slv_reg3[2]),
        .I2(\slv_reg0_reg_n_0_[2] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[2]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[30]_i_1 
       (.I0(\slv_reg0_reg_n_0_[30] ),
        .I1(slv_reg2[30]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[30]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'hFC0A0C0A)) 
    \axi_rdata[31]_i_2 
       (.I0(\slv_reg0_reg_n_0_[31] ),
        .I1(slv_reg2[31]),
        .I2(axi_araddr[2]),
        .I3(axi_araddr[3]),
        .I4(slv_reg3[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg2[3]),
        .I1(slv_reg3[3]),
        .I2(\slv_reg0_reg_n_0_[3] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg2[4]),
        .I1(slv_reg3[4]),
        .I2(\slv_reg0_reg_n_0_[4] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg2[5]),
        .I1(slv_reg3[5]),
        .I2(\slv_reg0_reg_n_0_[5] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg2[6]),
        .I1(slv_reg3[6]),
        .I2(\slv_reg0_reg_n_0_[6] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg2[7]),
        .I1(slv_reg3[7]),
        .I2(\slv_reg0_reg_n_0_[7] ),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg2[8]),
        .I1(slv_reg3[8]),
        .I2(valid_in),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hCCFFAAF0CC00AAF0)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg2[9]),
        .I1(slv_reg3[9]),
        .I2(rst),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg1[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[0]),
        .Q(S_AXI_RDATA[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[10]),
        .Q(S_AXI_RDATA[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[11]),
        .Q(S_AXI_RDATA[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[12]),
        .Q(S_AXI_RDATA[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[13]),
        .Q(S_AXI_RDATA[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[14]),
        .Q(S_AXI_RDATA[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[15]),
        .Q(S_AXI_RDATA[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[16]),
        .Q(S_AXI_RDATA[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[17]),
        .Q(S_AXI_RDATA[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[18]),
        .Q(S_AXI_RDATA[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[19]),
        .Q(S_AXI_RDATA[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[1]),
        .Q(S_AXI_RDATA[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[20]),
        .Q(S_AXI_RDATA[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[21]),
        .Q(S_AXI_RDATA[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[22]),
        .Q(S_AXI_RDATA[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[23]),
        .Q(S_AXI_RDATA[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[24]),
        .Q(S_AXI_RDATA[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[25]),
        .Q(S_AXI_RDATA[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[26]),
        .Q(S_AXI_RDATA[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[27]),
        .Q(S_AXI_RDATA[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[28]),
        .Q(S_AXI_RDATA[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[29]),
        .Q(S_AXI_RDATA[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[2]),
        .Q(S_AXI_RDATA[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[30]),
        .Q(S_AXI_RDATA[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[31]),
        .Q(S_AXI_RDATA[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[3]),
        .Q(S_AXI_RDATA[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[4]),
        .Q(S_AXI_RDATA[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[5]),
        .Q(S_AXI_RDATA[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[6]),
        .Q(S_AXI_RDATA[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[7]),
        .Q(S_AXI_RDATA[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[8]),
        .Q(S_AXI_RDATA[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(axi_rdata),
        .D(reg_data_out[9]),
        .Q(S_AXI_RDATA[9]),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(axi_rvalid_reg_0),
        .I3(S_AXI_RREADY),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(axi_rvalid_reg_0),
        .R(axi_awready_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(S_AXI_WSTRB[1]),
        .O(\slv_reg0[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(S_AXI_WSTRB[2]),
        .O(\slv_reg0[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(S_AXI_WSTRB[3]),
        .O(\slv_reg0[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg0[31]_i_2 
       (.I0(S_AXI_AWVALID),
        .I1(S_AXI_AWREADY),
        .I2(S_AXI_WREADY),
        .I3(S_AXI_WVALID),
        .O(slv_reg_wren__2));
  LUT4 #(
    .INIT(16'h0200)) 
    \slv_reg0[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(axi_awaddr[3]),
        .I2(axi_awaddr[2]),
        .I3(S_AXI_WSTRB[0]),
        .O(\slv_reg0[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEA2A000000000000)) 
    \slv_reg0[8]_i_1 
       (.I0(valid_in),
        .I1(\slv_reg0[8]_i_2_n_0 ),
        .I2(S_AXI_WSTRB[1]),
        .I3(S_AXI_WDATA[8]),
        .I4(S_AXI_ARESETN),
        .I5(slv_reg_wren__2),
        .O(\slv_reg0[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \slv_reg0[8]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(axi_awaddr[2]),
        .O(\slv_reg0[8]_i_2_n_0 ));
  FDRE \slv_reg0_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[0]),
        .Q(\slv_reg0_reg_n_0_[0] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[10]),
        .Q(\slv_reg0_reg_n_0_[10] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[11]),
        .Q(\slv_reg0_reg_n_0_[11] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[12]),
        .Q(\slv_reg0_reg_n_0_[12] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[13]),
        .Q(\slv_reg0_reg_n_0_[13] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[14]),
        .Q(\slv_reg0_reg_n_0_[14] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[15]),
        .Q(\slv_reg0_reg_n_0_[15] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[16]),
        .Q(\slv_reg0_reg_n_0_[16] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[17]),
        .Q(\slv_reg0_reg_n_0_[17] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[18]),
        .Q(\slv_reg0_reg_n_0_[18] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[19]),
        .Q(\slv_reg0_reg_n_0_[19] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[1]),
        .Q(\slv_reg0_reg_n_0_[1] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[20]),
        .Q(\slv_reg0_reg_n_0_[20] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[21]),
        .Q(\slv_reg0_reg_n_0_[21] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[22]),
        .Q(\slv_reg0_reg_n_0_[22] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[23]_i_1_n_0 ),
        .D(S_AXI_WDATA[23]),
        .Q(\slv_reg0_reg_n_0_[23] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[24]),
        .Q(\slv_reg0_reg_n_0_[24] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[25]),
        .Q(\slv_reg0_reg_n_0_[25] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[26]),
        .Q(\slv_reg0_reg_n_0_[26] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[27]),
        .Q(\slv_reg0_reg_n_0_[27] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[28]),
        .Q(\slv_reg0_reg_n_0_[28] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[29]),
        .Q(\slv_reg0_reg_n_0_[29] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[2]),
        .Q(\slv_reg0_reg_n_0_[2] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[30]),
        .Q(\slv_reg0_reg_n_0_[30] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[31]_i_1_n_0 ),
        .D(S_AXI_WDATA[31]),
        .Q(\slv_reg0_reg_n_0_[31] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[3]),
        .Q(\slv_reg0_reg_n_0_[3] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[4]),
        .Q(\slv_reg0_reg_n_0_[4] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[5]),
        .Q(\slv_reg0_reg_n_0_[5] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[6]),
        .Q(\slv_reg0_reg_n_0_[6] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[7]_i_1_n_0 ),
        .D(S_AXI_WDATA[7]),
        .Q(\slv_reg0_reg_n_0_[7] ),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg0_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg0[8]_i_1_n_0 ),
        .Q(valid_in),
        .R(1'b0));
  FDRE \slv_reg0_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg0[15]_i_1_n_0 ),
        .D(S_AXI_WDATA[9]),
        .Q(rst),
        .R(axi_awready_i_1_n_0));
  LUT6 #(
    .INIT(64'hFFFFFF7FAAAA0000)) 
    \slv_reg1[19]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_ARVALID),
        .I3(axi_rvalid_reg_0),
        .I4(valid_out_ip),
        .I5(slv_reg1[19]),
        .O(\slv_reg1[19]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[0]),
        .Q(slv_reg1[0]),
        .R(1'b0));
  FDRE \slv_reg1_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[10]),
        .Q(slv_reg1[10]),
        .R(1'b0));
  FDRE \slv_reg1_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[11]),
        .Q(slv_reg1[11]),
        .R(1'b0));
  FDRE \slv_reg1_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[12]),
        .Q(slv_reg1[12]),
        .R(1'b0));
  FDRE \slv_reg1_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[13]),
        .Q(slv_reg1[13]),
        .R(1'b0));
  FDRE \slv_reg1_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[14]),
        .Q(slv_reg1[14]),
        .R(1'b0));
  FDRE \slv_reg1_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[15]),
        .Q(slv_reg1[15]),
        .R(1'b0));
  FDRE \slv_reg1_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[16]),
        .Q(slv_reg1[16]),
        .R(1'b0));
  FDRE \slv_reg1_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[17]),
        .Q(slv_reg1[17]),
        .R(1'b0));
  FDRE \slv_reg1_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[18]),
        .Q(slv_reg1[18]),
        .R(1'b0));
  FDRE \slv_reg1_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(\slv_reg1[19]_i_1_n_0 ),
        .Q(slv_reg1[19]),
        .R(1'b0));
  FDRE \slv_reg1_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[1]),
        .Q(slv_reg1[1]),
        .R(1'b0));
  FDRE \slv_reg1_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[2]),
        .Q(slv_reg1[2]),
        .R(1'b0));
  FDRE \slv_reg1_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[3]),
        .Q(slv_reg1[3]),
        .R(1'b0));
  FDRE \slv_reg1_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[4]),
        .Q(slv_reg1[4]),
        .R(1'b0));
  FDRE \slv_reg1_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[5]),
        .Q(slv_reg1[5]),
        .R(1'b0));
  FDRE \slv_reg1_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[6]),
        .Q(slv_reg1[6]),
        .R(1'b0));
  FDRE \slv_reg1_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[7]),
        .Q(slv_reg1[7]),
        .R(1'b0));
  FDRE \slv_reg1_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[8]),
        .Q(slv_reg1[8]),
        .R(1'b0));
  FDRE \slv_reg1_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(FIR_bb_n_2),
        .D(y[9]),
        .Q(slv_reg1[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[0]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[0]),
        .O(p_2_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[10]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[10]),
        .O(p_2_in[10]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[11]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[11]),
        .O(p_2_in[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[12]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[12]),
        .O(p_2_in[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[13]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[13]),
        .O(p_2_in[13]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[14]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[14]),
        .O(p_2_in[14]));
  LUT4 #(
    .INIT(16'h0A80)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[15]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[15]),
        .O(p_2_in[15]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[16]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[16]),
        .O(p_2_in[16]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[17]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[17]),
        .O(p_2_in[17]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[18]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[18]),
        .O(p_2_in[18]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[19]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[19]),
        .O(p_2_in[19]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[1]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[1]),
        .O(p_2_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[20]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[20]),
        .O(p_2_in[20]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[21]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[21]),
        .O(p_2_in[21]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[22]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[22]),
        .O(p_2_in[22]));
  LUT4 #(
    .INIT(16'h0A80)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[23]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[23]),
        .O(p_2_in[23]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[24]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[24]),
        .O(p_2_in[24]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[25]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[25]),
        .O(p_2_in[25]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[26]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[26]),
        .O(p_2_in[26]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[27]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[27]),
        .O(p_2_in[27]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[28]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[28]),
        .O(p_2_in[28]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[29]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[29]),
        .O(p_2_in[29]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[2]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[2]),
        .O(p_2_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[30]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[30]),
        .O(p_2_in[30]));
  LUT4 #(
    .INIT(16'h0A80)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[31]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[31]),
        .O(p_2_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[3]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[3]),
        .O(p_2_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[4]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[4]),
        .O(p_2_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[5]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[5]),
        .O(p_2_in[5]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[6]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[6]),
        .O(p_2_in[6]));
  LUT4 #(
    .INIT(16'h0A80)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[3]),
        .I3(axi_awaddr[2]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[7]_i_2 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[7]),
        .O(p_2_in[7]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[8]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[8]),
        .O(p_2_in[8]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg2[9]_i_1 
       (.I0(axi_awaddr[3]),
        .I1(S_AXI_WDATA[9]),
        .O(p_2_in[9]));
  FDRE \slv_reg2_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(p_2_in[0]),
        .Q(slv_reg2[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(p_2_in[10]),
        .Q(slv_reg2[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(p_2_in[11]),
        .Q(slv_reg2[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(p_2_in[12]),
        .Q(slv_reg2[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(p_2_in[13]),
        .Q(slv_reg2[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(p_2_in[14]),
        .Q(slv_reg2[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(p_2_in[15]),
        .Q(slv_reg2[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(p_2_in[16]),
        .Q(slv_reg2[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(p_2_in[17]),
        .Q(slv_reg2[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(p_2_in[18]),
        .Q(slv_reg2[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(p_2_in[19]),
        .Q(slv_reg2[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(p_2_in[1]),
        .Q(slv_reg2[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(p_2_in[20]),
        .Q(slv_reg2[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(p_2_in[21]),
        .Q(slv_reg2[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(p_2_in[22]),
        .Q(slv_reg2[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(p_2_in[23]),
        .Q(slv_reg2[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(p_2_in[24]),
        .Q(slv_reg2[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(p_2_in[25]),
        .Q(slv_reg2[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(p_2_in[26]),
        .Q(slv_reg2[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(p_2_in[27]),
        .Q(slv_reg2[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(p_2_in[28]),
        .Q(slv_reg2[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(p_2_in[29]),
        .Q(slv_reg2[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(p_2_in[2]),
        .Q(slv_reg2[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(p_2_in[30]),
        .Q(slv_reg2[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(p_2_in[31]),
        .Q(slv_reg2[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(p_2_in[3]),
        .Q(slv_reg2[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(p_2_in[4]),
        .Q(slv_reg2[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(p_2_in[5]),
        .Q(slv_reg2[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(p_2_in[6]),
        .Q(slv_reg2[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(p_2_in[7]),
        .Q(slv_reg2[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(p_2_in[8]),
        .Q(slv_reg2[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg2_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(p_2_in[9]),
        .Q(slv_reg2[9]),
        .R(axi_awready_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(S_AXI_WSTRB[1]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(S_AXI_WSTRB[2]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(S_AXI_WSTRB[3]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[31]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__2),
        .I1(S_AXI_WSTRB[0]),
        .I2(axi_awaddr[2]),
        .I3(axi_awaddr[3]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[0]),
        .Q(slv_reg3[0]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[10]),
        .Q(slv_reg3[10]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[11]),
        .Q(slv_reg3[11]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[12]),
        .Q(slv_reg3[12]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[13]),
        .Q(slv_reg3[13]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[14]),
        .Q(slv_reg3[14]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[15]),
        .Q(slv_reg3[15]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[16]),
        .Q(slv_reg3[16]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[17]),
        .Q(slv_reg3[17]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[18]),
        .Q(slv_reg3[18]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[19]),
        .Q(slv_reg3[19]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[1]),
        .Q(slv_reg3[1]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[20] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[20]),
        .Q(slv_reg3[20]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[21] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[21]),
        .Q(slv_reg3[21]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[22] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[22]),
        .Q(slv_reg3[22]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[23] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[23]),
        .D(S_AXI_WDATA[23]),
        .Q(slv_reg3[23]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[24] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[24]),
        .Q(slv_reg3[24]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[25] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[25]),
        .Q(slv_reg3[25]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[26] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[26]),
        .Q(slv_reg3[26]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[27] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[27]),
        .Q(slv_reg3[27]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[28] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[28]),
        .Q(slv_reg3[28]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[29] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[29]),
        .Q(slv_reg3[29]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[2]),
        .Q(slv_reg3[2]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[30] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[30]),
        .Q(slv_reg3[30]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[31] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[31]),
        .D(S_AXI_WDATA[31]),
        .Q(slv_reg3[31]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[3]),
        .Q(slv_reg3[3]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[4]),
        .Q(slv_reg3[4]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[5]),
        .Q(slv_reg3[5]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[6]),
        .Q(slv_reg3[6]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[7]),
        .D(S_AXI_WDATA[7]),
        .Q(slv_reg3[7]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[8]),
        .Q(slv_reg3[8]),
        .R(axi_awready_i_1_n_0));
  FDRE \slv_reg3_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(p_1_in[15]),
        .D(S_AXI_WDATA[9]),
        .Q(slv_reg3[9]),
        .R(axi_awready_i_1_n_0));
endmodule

(* CHECK_LICENSE_TYPE = "FIR_design_FIR_IP_v1_0_S00_AXI_0_0,FIR_IP_v1_0_S00_AXI,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* ip_definition_source = "package_project" *) 
(* x_core_info = "FIR_IP_v1_0_S00_AXI,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0
   (S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_AWPROT,
    S_AXI_AWVALID,
    S_AXI_AWREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    S_AXI_WREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_BREADY,
    S_AXI_ARADDR,
    S_AXI_ARPROT,
    S_AXI_ARVALID,
    S_AXI_ARREADY,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_RREADY);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN FIR_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input S_AXI_ACLK;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input S_AXI_ARESETN;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) (* x_interface_parameter = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN FIR_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 4, NUM_WRITE_THREADS 4, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]S_AXI_AWADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]S_AXI_AWPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output S_AXI_WREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [3:0]S_AXI_ARADDR;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]S_AXI_ARPROT;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [3:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [3:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [31:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire [3:0]S_AXI_WSTRB;
  wire S_AXI_WVALID;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_FIR_IP_v1_0_S00_AXI U0
       (.S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[3:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[3:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WSTRB(S_AXI_WSTRB),
        .S_AXI_WVALID(S_AXI_WVALID),
        .axi_rvalid_reg_0(S_AXI_RVALID));
endmodule

module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_MAC
   (CO,
    E,
    Q,
    S_AXI_ACLK,
    rst,
    DI,
    S,
    \sum[4]_i_9_0 ,
    \sum[4]_i_9_1 ,
    \sum[8]_i_9_0 ,
    \sum[8]_i_9_1 ,
    \sum_reg[3]_0 ,
    \sum_reg[11]_0 );
  output [0:0]CO;
  output [0:0]E;
  output [18:0]Q;
  input S_AXI_ACLK;
  input rst;
  input [2:0]DI;
  input [3:0]S;
  input [3:0]\sum[4]_i_9_0 ;
  input [3:0]\sum[4]_i_9_1 ;
  input [2:0]\sum[8]_i_9_0 ;
  input [2:0]\sum[8]_i_9_1 ;
  input \sum_reg[3]_0 ;
  input [0:0]\sum_reg[11]_0 ;

  wire [0:0]CO;
  wire [2:0]DI;
  wire [0:0]E;
  wire [18:0]Q;
  wire [3:0]S;
  wire S_AXI_ACLK;
  wire multOp__0_carry__0_n_0;
  wire multOp__0_carry__0_n_1;
  wire multOp__0_carry__0_n_2;
  wire multOp__0_carry__0_n_3;
  wire multOp__0_carry__0_n_4;
  wire multOp__0_carry__0_n_5;
  wire multOp__0_carry__0_n_6;
  wire multOp__0_carry__0_n_7;
  wire multOp__0_carry__1_n_2;
  wire multOp__0_carry__1_n_3;
  wire multOp__0_carry__1_n_5;
  wire multOp__0_carry__1_n_6;
  wire multOp__0_carry__1_n_7;
  wire multOp__0_carry_n_0;
  wire multOp__0_carry_n_1;
  wire multOp__0_carry_n_2;
  wire multOp__0_carry_n_3;
  wire multOp__0_carry_n_4;
  wire multOp__0_carry_n_5;
  wire multOp__0_carry_n_6;
  wire multOp__0_carry_n_7;
  wire rst;
  wire \sum[0]_i_2_n_0 ;
  wire \sum[0]_i_3_n_0 ;
  wire \sum[0]_i_4_n_0 ;
  wire \sum[0]_i_5_n_0 ;
  wire \sum[0]_i_6_n_0 ;
  wire \sum[0]_i_7_n_0 ;
  wire \sum[0]_i_8_n_0 ;
  wire \sum[0]_i_9_n_0 ;
  wire \sum[12]_i_2_n_0 ;
  wire \sum[12]_i_3_n_0 ;
  wire \sum[12]_i_4_n_0 ;
  wire \sum[12]_i_5_n_0 ;
  wire \sum[16]_i_2_n_0 ;
  wire \sum[16]_i_3_n_0 ;
  wire \sum[16]_i_4_n_0 ;
  wire \sum[4]_i_2_n_0 ;
  wire \sum[4]_i_3_n_0 ;
  wire \sum[4]_i_4_n_0 ;
  wire \sum[4]_i_5_n_0 ;
  wire \sum[4]_i_6_n_0 ;
  wire \sum[4]_i_7_n_0 ;
  wire \sum[4]_i_8_n_0 ;
  wire [3:0]\sum[4]_i_9_0 ;
  wire [3:0]\sum[4]_i_9_1 ;
  wire \sum[4]_i_9_n_0 ;
  wire \sum[8]_i_3_n_0 ;
  wire \sum[8]_i_4_n_0 ;
  wire \sum[8]_i_5_n_0 ;
  wire \sum[8]_i_6_n_0 ;
  wire \sum[8]_i_7_n_0 ;
  wire \sum[8]_i_8_n_0 ;
  wire [2:0]\sum[8]_i_9_0 ;
  wire [2:0]\sum[8]_i_9_1 ;
  wire \sum[8]_i_9_n_0 ;
  wire [18:0]sum_reg;
  wire \sum_reg[0]_i_1_n_0 ;
  wire \sum_reg[0]_i_1_n_1 ;
  wire \sum_reg[0]_i_1_n_2 ;
  wire \sum_reg[0]_i_1_n_3 ;
  wire \sum_reg[0]_i_1_n_4 ;
  wire \sum_reg[0]_i_1_n_5 ;
  wire \sum_reg[0]_i_1_n_6 ;
  wire \sum_reg[0]_i_1_n_7 ;
  wire [0:0]\sum_reg[11]_0 ;
  wire \sum_reg[12]_i_1_n_0 ;
  wire \sum_reg[12]_i_1_n_1 ;
  wire \sum_reg[12]_i_1_n_2 ;
  wire \sum_reg[12]_i_1_n_3 ;
  wire \sum_reg[12]_i_1_n_4 ;
  wire \sum_reg[12]_i_1_n_5 ;
  wire \sum_reg[12]_i_1_n_6 ;
  wire \sum_reg[12]_i_1_n_7 ;
  wire \sum_reg[16]_i_1_n_2 ;
  wire \sum_reg[16]_i_1_n_3 ;
  wire \sum_reg[16]_i_1_n_5 ;
  wire \sum_reg[16]_i_1_n_6 ;
  wire \sum_reg[16]_i_1_n_7 ;
  wire \sum_reg[3]_0 ;
  wire \sum_reg[4]_i_1_n_0 ;
  wire \sum_reg[4]_i_1_n_1 ;
  wire \sum_reg[4]_i_1_n_2 ;
  wire \sum_reg[4]_i_1_n_3 ;
  wire \sum_reg[4]_i_1_n_4 ;
  wire \sum_reg[4]_i_1_n_5 ;
  wire \sum_reg[4]_i_1_n_6 ;
  wire \sum_reg[4]_i_1_n_7 ;
  wire \sum_reg[8]_i_1_n_0 ;
  wire \sum_reg[8]_i_1_n_1 ;
  wire \sum_reg[8]_i_1_n_2 ;
  wire \sum_reg[8]_i_1_n_3 ;
  wire \sum_reg[8]_i_1_n_4 ;
  wire \sum_reg[8]_i_1_n_5 ;
  wire \sum_reg[8]_i_1_n_6 ;
  wire \sum_reg[8]_i_1_n_7 ;
  wire [2:2]NLW_multOp__0_carry__1_CO_UNCONNECTED;
  wire [3:3]NLW_multOp__0_carry__1_O_UNCONNECTED;
  wire [3:2]\NLW_sum_reg[16]_i_1_CO_UNCONNECTED ;
  wire [3:3]\NLW_sum_reg[16]_i_1_O_UNCONNECTED ;

  CARRY4 multOp__0_carry
       (.CI(1'b0),
        .CO({multOp__0_carry_n_0,multOp__0_carry_n_1,multOp__0_carry_n_2,multOp__0_carry_n_3}),
        .CYINIT(1'b0),
        .DI({DI,1'b0}),
        .O({multOp__0_carry_n_4,multOp__0_carry_n_5,multOp__0_carry_n_6,multOp__0_carry_n_7}),
        .S(S));
  CARRY4 multOp__0_carry__0
       (.CI(multOp__0_carry_n_0),
        .CO({multOp__0_carry__0_n_0,multOp__0_carry__0_n_1,multOp__0_carry__0_n_2,multOp__0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI(\sum[4]_i_9_0 ),
        .O({multOp__0_carry__0_n_4,multOp__0_carry__0_n_5,multOp__0_carry__0_n_6,multOp__0_carry__0_n_7}),
        .S(\sum[4]_i_9_1 ));
  CARRY4 multOp__0_carry__1
       (.CI(multOp__0_carry__0_n_0),
        .CO({CO,NLW_multOp__0_carry__1_CO_UNCONNECTED[2],multOp__0_carry__1_n_2,multOp__0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,\sum[8]_i_9_0 }),
        .O({NLW_multOp__0_carry__1_O_UNCONNECTED[3],multOp__0_carry__1_n_5,multOp__0_carry__1_n_6,multOp__0_carry__1_n_7}),
        .S({1'b1,\sum[8]_i_9_1 }));
  LUT1 #(
    .INIT(2'h1)) 
    \ram_addr[2]_i_1 
       (.I0(rst),
        .O(E));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[0]_i_2 
       (.I0(multOp__0_carry_n_4),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[0]_i_3 
       (.I0(multOp__0_carry_n_5),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[0]_i_4 
       (.I0(multOp__0_carry_n_6),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[0]_i_5 
       (.I0(multOp__0_carry_n_7),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[0]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[0]_i_6 
       (.I0(sum_reg[3]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry_n_4),
        .O(\sum[0]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[0]_i_7 
       (.I0(sum_reg[2]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry_n_5),
        .O(\sum[0]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[0]_i_8 
       (.I0(sum_reg[1]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry_n_6),
        .O(\sum[0]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[0]_i_9 
       (.I0(sum_reg[0]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry_n_7),
        .O(\sum[0]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[12]_i_2 
       (.I0(sum_reg[15]),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[12]_i_3 
       (.I0(sum_reg[14]),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[12]_i_4 
       (.I0(sum_reg[13]),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[12]_i_5 
       (.I0(sum_reg[12]),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[16]_i_2 
       (.I0(sum_reg[18]),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[16]_i_3 
       (.I0(sum_reg[17]),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[16]_i_4 
       (.I0(sum_reg[16]),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[4]_i_2 
       (.I0(multOp__0_carry__0_n_4),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[4]_i_3 
       (.I0(multOp__0_carry__0_n_5),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[4]_i_4 
       (.I0(multOp__0_carry__0_n_6),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[4]_i_5 
       (.I0(multOp__0_carry__0_n_7),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[4]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[4]_i_6 
       (.I0(sum_reg[7]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry__0_n_4),
        .O(\sum[4]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[4]_i_7 
       (.I0(sum_reg[6]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry__0_n_5),
        .O(\sum[4]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[4]_i_8 
       (.I0(sum_reg[5]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry__0_n_6),
        .O(\sum[4]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[4]_i_9 
       (.I0(sum_reg[4]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry__0_n_7),
        .O(\sum[4]_i_9_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[8]_i_3 
       (.I0(multOp__0_carry__1_n_5),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[8]_i_4 
       (.I0(multOp__0_carry__1_n_6),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[8]_i_5 
       (.I0(multOp__0_carry__1_n_7),
        .I1(\sum_reg[3]_0 ),
        .O(\sum[8]_i_5_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[8]_i_6 
       (.I0(sum_reg[11]),
        .I1(\sum_reg[3]_0 ),
        .I2(CO),
        .O(\sum[8]_i_6_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[8]_i_7 
       (.I0(sum_reg[10]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry__1_n_5),
        .O(\sum[8]_i_7_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[8]_i_8 
       (.I0(sum_reg[9]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry__1_n_6),
        .O(\sum[8]_i_8_n_0 ));
  LUT3 #(
    .INIT(8'hD2)) 
    \sum[8]_i_9 
       (.I0(sum_reg[8]),
        .I1(\sum_reg[3]_0 ),
        .I2(multOp__0_carry__1_n_7),
        .O(\sum[8]_i_9_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[0]_i_1_n_7 ),
        .Q(sum_reg[0]));
  CARRY4 \sum_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\sum_reg[0]_i_1_n_0 ,\sum_reg[0]_i_1_n_1 ,\sum_reg[0]_i_1_n_2 ,\sum_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum[0]_i_2_n_0 ,\sum[0]_i_3_n_0 ,\sum[0]_i_4_n_0 ,\sum[0]_i_5_n_0 }),
        .O({\sum_reg[0]_i_1_n_4 ,\sum_reg[0]_i_1_n_5 ,\sum_reg[0]_i_1_n_6 ,\sum_reg[0]_i_1_n_7 }),
        .S({\sum[0]_i_6_n_0 ,\sum[0]_i_7_n_0 ,\sum[0]_i_8_n_0 ,\sum[0]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[8]_i_1_n_5 ),
        .Q(sum_reg[10]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[8]_i_1_n_4 ),
        .Q(sum_reg[11]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[12]_i_1_n_7 ),
        .Q(sum_reg[12]));
  CARRY4 \sum_reg[12]_i_1 
       (.CI(\sum_reg[8]_i_1_n_0 ),
        .CO({\sum_reg[12]_i_1_n_0 ,\sum_reg[12]_i_1_n_1 ,\sum_reg[12]_i_1_n_2 ,\sum_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\sum_reg[12]_i_1_n_4 ,\sum_reg[12]_i_1_n_5 ,\sum_reg[12]_i_1_n_6 ,\sum_reg[12]_i_1_n_7 }),
        .S({\sum[12]_i_2_n_0 ,\sum[12]_i_3_n_0 ,\sum[12]_i_4_n_0 ,\sum[12]_i_5_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[12]_i_1_n_6 ),
        .Q(sum_reg[13]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[12]_i_1_n_5 ),
        .Q(sum_reg[14]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[12]_i_1_n_4 ),
        .Q(sum_reg[15]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[16]_i_1_n_7 ),
        .Q(sum_reg[16]));
  CARRY4 \sum_reg[16]_i_1 
       (.CI(\sum_reg[12]_i_1_n_0 ),
        .CO({\NLW_sum_reg[16]_i_1_CO_UNCONNECTED [3:2],\sum_reg[16]_i_1_n_2 ,\sum_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sum_reg[16]_i_1_O_UNCONNECTED [3],\sum_reg[16]_i_1_n_5 ,\sum_reg[16]_i_1_n_6 ,\sum_reg[16]_i_1_n_7 }),
        .S({1'b0,\sum[16]_i_2_n_0 ,\sum[16]_i_3_n_0 ,\sum[16]_i_4_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[16]_i_1_n_6 ),
        .Q(sum_reg[17]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[16]_i_1_n_5 ),
        .Q(sum_reg[18]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[0]_i_1_n_6 ),
        .Q(sum_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[0]_i_1_n_5 ),
        .Q(sum_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[0]_i_1_n_4 ),
        .Q(sum_reg[3]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[4]_i_1_n_7 ),
        .Q(sum_reg[4]));
  CARRY4 \sum_reg[4]_i_1 
       (.CI(\sum_reg[0]_i_1_n_0 ),
        .CO({\sum_reg[4]_i_1_n_0 ,\sum_reg[4]_i_1_n_1 ,\sum_reg[4]_i_1_n_2 ,\sum_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum[4]_i_2_n_0 ,\sum[4]_i_3_n_0 ,\sum[4]_i_4_n_0 ,\sum[4]_i_5_n_0 }),
        .O({\sum_reg[4]_i_1_n_4 ,\sum_reg[4]_i_1_n_5 ,\sum_reg[4]_i_1_n_6 ,\sum_reg[4]_i_1_n_7 }),
        .S({\sum[4]_i_6_n_0 ,\sum[4]_i_7_n_0 ,\sum[4]_i_8_n_0 ,\sum[4]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[4]_i_1_n_6 ),
        .Q(sum_reg[5]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[4]_i_1_n_5 ),
        .Q(sum_reg[6]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[4]_i_1_n_4 ),
        .Q(sum_reg[7]));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[8]_i_1_n_7 ),
        .Q(sum_reg[8]));
  CARRY4 \sum_reg[8]_i_1 
       (.CI(\sum_reg[4]_i_1_n_0 ),
        .CO({\sum_reg[8]_i_1_n_0 ,\sum_reg[8]_i_1_n_1 ,\sum_reg[8]_i_1_n_2 ,\sum_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({\sum_reg[11]_0 ,\sum[8]_i_3_n_0 ,\sum[8]_i_4_n_0 ,\sum[8]_i_5_n_0 }),
        .O({\sum_reg[8]_i_1_n_4 ,\sum_reg[8]_i_1_n_5 ,\sum_reg[8]_i_1_n_6 ,\sum_reg[8]_i_1_n_7 }),
        .S({\sum[8]_i_6_n_0 ,\sum[8]_i_7_n_0 ,\sum[8]_i_8_n_0 ,\sum[8]_i_9_n_0 }));
  FDCE #(
    .INIT(1'b0)) 
    \sum_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(\sum_reg[8]_i_1_n_6 ),
        .Q(sum_reg[9]));
  FDRE \y_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \y_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \y_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \y_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \y_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \y_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \y_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \y_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \y_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \y_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \y_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \y_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \y_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \y_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \y_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \y_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \y_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \y_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \y_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(sum_reg[9]),
        .Q(Q[9]),
        .R(1'b0));
endmodule

module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff
   (q_reg_0,
    mac_init,
    S_AXI_ACLK,
    rst);
  output q_reg_0;
  input mac_init;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire mac_init;
  wire q_reg_0;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(mac_init),
        .Q(q_reg_0));
endmodule

module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2
   (valid_out_ip,
    E,
    S_AXI_ARESETN_0,
    q_reg,
    S_AXI_ACLK,
    rst,
    \axi_rdata_reg[0] ,
    S_AXI_ARVALID,
    \axi_rdata_reg[0]_0 ,
    S_AXI_ARESETN);
  output valid_out_ip;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input q_reg;
  input S_AXI_ACLK;
  input rst;
  input \axi_rdata_reg[0] ;
  input S_AXI_ARVALID;
  input \axi_rdata_reg[0]_0 ;
  input S_AXI_ARESETN;

  wire [0:0]E;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARVALID;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire delay3_n_0;
  wire q_reg;
  wire rst;
  wire valid_out_ip;

  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_0 delay3
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg_0(delay3_n_0),
        .q_reg_1(q_reg),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_1 delay4
       (.E(E),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(S_AXI_ARESETN_0),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .\axi_rdata_reg[0] (\axi_rdata_reg[0] ),
        .\axi_rdata_reg[0]_0 (\axi_rdata_reg[0]_0 ),
        .q_reg_0(delay3_n_0),
        .rst(rst),
        .valid_out_ip(valid_out_ip));
endmodule

(* ORIG_REF_NAME = "dff2" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2_2
   (q_reg,
    q_reg_0,
    S_AXI_ACLK,
    rst);
  output q_reg;
  input q_reg_0;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire d;
  wire q_reg;
  wire q_reg_0;
  wire rst;

  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_12 delay3
       (.S_AXI_ACLK(S_AXI_ACLK),
        .d(d),
        .q_reg_0(q_reg_0),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_13 delay4
       (.S_AXI_ACLK(S_AXI_ACLK),
        .d(d),
        .q_reg_0(q_reg),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "dff2" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2_3
   (q_reg,
    q_reg_0,
    S_AXI_ACLK,
    rst);
  output q_reg;
  input q_reg_0;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire delay3_n_0;
  wire q_reg;
  wire q_reg_0;
  wire rst;

  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_10 delay3
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg_0(delay3_n_0),
        .q_reg_1(q_reg_0),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_11 delay4
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg_0(q_reg),
        .q_reg_1(delay3_n_0),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "dff2" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2_4
   (q_reg,
    q_reg_0,
    S_AXI_ACLK,
    rst);
  output q_reg;
  input q_reg_0;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire delay3_n_0;
  wire q_reg;
  wire q_reg_0;
  wire rst;

  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_8 delay3
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg_0(delay3_n_0),
        .q_reg_1(q_reg_0),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_9 delay4
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg_0(q_reg),
        .q_reg_1(delay3_n_0),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "dff2" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff2_5
   (q_reg,
    q_reg_0,
    S_AXI_ACLK,
    rst);
  output q_reg;
  input q_reg_0;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire delay3_n_0;
  wire q_reg;
  wire q_reg_0;
  wire rst;

  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_6 delay3
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg_0(delay3_n_0),
        .q_reg_1(q_reg_0),
        .rst(rst));
  FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_7 delay4
       (.S_AXI_ACLK(S_AXI_ACLK),
        .q_reg_0(q_reg),
        .q_reg_1(delay3_n_0),
        .rst(rst));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_0
   (q_reg_0,
    q_reg_1,
    S_AXI_ACLK,
    rst);
  output q_reg_0;
  input q_reg_1;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire q_reg_0;
  wire q_reg_1;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_1
   (valid_out_ip,
    E,
    S_AXI_ARESETN_0,
    q_reg_0,
    S_AXI_ACLK,
    rst,
    \axi_rdata_reg[0] ,
    S_AXI_ARVALID,
    \axi_rdata_reg[0]_0 ,
    S_AXI_ARESETN);
  output valid_out_ip;
  output [0:0]E;
  output [0:0]S_AXI_ARESETN_0;
  input q_reg_0;
  input S_AXI_ACLK;
  input rst;
  input \axi_rdata_reg[0] ;
  input S_AXI_ARVALID;
  input \axi_rdata_reg[0]_0 ;
  input S_AXI_ARESETN;

  wire [0:0]E;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire [0:0]S_AXI_ARESETN_0;
  wire S_AXI_ARVALID;
  wire \axi_rdata_reg[0] ;
  wire \axi_rdata_reg[0]_0 ;
  wire q_reg_0;
  wire rst;
  wire valid_out_ip;

  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0040)) 
    \axi_rdata[31]_i_1 
       (.I0(\axi_rdata_reg[0] ),
        .I1(S_AXI_ARVALID),
        .I2(\axi_rdata_reg[0]_0 ),
        .I3(valid_out_ip),
        .O(E));
  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(q_reg_0),
        .Q(valid_out_ip));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \slv_reg1[18]_i_1 
       (.I0(S_AXI_ARESETN),
        .I1(valid_out_ip),
        .O(S_AXI_ARESETN_0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_10
   (q_reg_0,
    q_reg_1,
    S_AXI_ACLK,
    rst);
  output q_reg_0;
  input q_reg_1;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire q_reg_0;
  wire q_reg_1;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_11
   (q_reg_0,
    q_reg_1,
    S_AXI_ACLK,
    rst);
  output q_reg_0;
  input q_reg_1;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire q_reg_0;
  wire q_reg_1;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_12
   (d,
    q_reg_0,
    S_AXI_ACLK,
    rst);
  output d;
  input q_reg_0;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire d;
  wire q_reg_0;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(q_reg_0),
        .Q(d));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_13
   (q_reg_0,
    d,
    S_AXI_ACLK,
    rst);
  output q_reg_0;
  input d;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire d;
  wire q_reg_0;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(d),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_6
   (q_reg_0,
    q_reg_1,
    S_AXI_ACLK,
    rst);
  output q_reg_0;
  input q_reg_1;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire q_reg_0;
  wire q_reg_1;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_7
   (q_reg_0,
    q_reg_1,
    S_AXI_ACLK,
    rst);
  output q_reg_0;
  input q_reg_1;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire q_reg_0;
  wire q_reg_1;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_8
   (q_reg_0,
    q_reg_1,
    S_AXI_ACLK,
    rst);
  output q_reg_0;
  input q_reg_1;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire q_reg_0;
  wire q_reg_1;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

(* ORIG_REF_NAME = "dff" *) 
module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_9
   (q_reg_0,
    q_reg_1,
    S_AXI_ACLK,
    rst);
  output q_reg_0;
  input q_reg_1;
  input S_AXI_ACLK;
  input rst;

  wire S_AXI_ACLK;
  wire q_reg_0;
  wire q_reg_1;
  wire rst;

  FDCE q_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(q_reg_1),
        .Q(q_reg_0));
endmodule

module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_dff_big
   (Q,
    D,
    S_AXI_ACLK,
    rst);
  output [7:0]Q;
  input [7:0]D;
  input S_AXI_ACLK;
  input rst;

  wire [7:0]D;
  wire [7:0]Q;
  wire S_AXI_ACLK;
  wire rst;

  FDCE \q_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \q_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(D[1]),
        .Q(Q[1]));
  FDCE \q_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(D[2]),
        .Q(Q[2]));
  FDCE \q_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(D[3]),
        .Q(Q[3]));
  FDCE \q_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(D[4]),
        .Q(Q[4]));
  FDCE \q_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(D[5]),
        .Q(Q[5]));
  FDCE \q_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(D[6]),
        .Q(Q[6]));
  FDCE \q_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(rst),
        .D(D[7]),
        .Q(Q[7]));
endmodule

module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_mlab_ram
   (\do_reg[5]_0 ,
    Q,
    \do_reg[2]_0 ,
    \do_reg[2]_1 ,
    \do_reg[3]_0 ,
    \do_reg[7]_0 ,
    \do_reg[4]_0 ,
    \do_reg[5]_1 ,
    S,
    DI,
    multOp__0_carry__1_i_6,
    multOp__0_carry__0,
    multOp__0_carry__1,
    \RAM_reg[7][0]_0 ,
    \RAM_reg[0][7]_0 ,
    S_AXI_ACLK,
    rst,
    E,
    \do_reg[0]_0 );
  output [0:0]\do_reg[5]_0 ;
  output [7:0]Q;
  output \do_reg[2]_0 ;
  output \do_reg[2]_1 ;
  output \do_reg[3]_0 ;
  output [0:0]\do_reg[7]_0 ;
  output \do_reg[4]_0 ;
  output \do_reg[5]_1 ;
  output [1:0]S;
  output [0:0]DI;
  input [3:0]multOp__0_carry__1_i_6;
  input multOp__0_carry__0;
  input multOp__0_carry__1;
  input \RAM_reg[7][0]_0 ;
  input [7:0]\RAM_reg[0][7]_0 ;
  input S_AXI_ACLK;
  input rst;
  input [0:0]E;
  input [2:0]\do_reg[0]_0 ;

  wire [0:0]DI;
  wire [0:0]E;
  wire [7:0]Q;
  wire [7:0]\RAM_reg[0] ;
  wire [7:0]\RAM_reg[0][7]_0 ;
  wire [7:0]\RAM_reg[1] ;
  wire [7:0]\RAM_reg[2] ;
  wire [7:0]\RAM_reg[3] ;
  wire [7:0]\RAM_reg[4] ;
  wire [7:0]\RAM_reg[5] ;
  wire [7:0]\RAM_reg[6] ;
  wire [7:0]\RAM_reg[7] ;
  wire \RAM_reg[7][0]_0 ;
  wire [1:0]S;
  wire S_AXI_ACLK;
  wire \do[0]_i_1_n_0 ;
  wire \do[0]_i_2_n_0 ;
  wire \do[0]_i_3_n_0 ;
  wire \do[1]_i_1_n_0 ;
  wire \do[1]_i_2_n_0 ;
  wire \do[1]_i_3_n_0 ;
  wire \do[2]_i_1_n_0 ;
  wire \do[2]_i_2_n_0 ;
  wire \do[2]_i_3_n_0 ;
  wire \do[3]_i_1_n_0 ;
  wire \do[3]_i_2_n_0 ;
  wire \do[3]_i_3_n_0 ;
  wire \do[4]_i_1_n_0 ;
  wire \do[4]_i_2_n_0 ;
  wire \do[4]_i_3_n_0 ;
  wire \do[5]_i_1_n_0 ;
  wire \do[5]_i_2_n_0 ;
  wire \do[5]_i_3_n_0 ;
  wire \do[6]_i_1_n_0 ;
  wire \do[6]_i_2_n_0 ;
  wire \do[6]_i_3_n_0 ;
  wire \do[7]_i_1_n_0 ;
  wire \do[7]_i_2_n_0 ;
  wire \do[7]_i_3_n_0 ;
  wire [2:0]\do_reg[0]_0 ;
  wire \do_reg[2]_0 ;
  wire \do_reg[2]_1 ;
  wire \do_reg[3]_0 ;
  wire \do_reg[4]_0 ;
  wire [0:0]\do_reg[5]_0 ;
  wire \do_reg[5]_1 ;
  wire [0:0]\do_reg[7]_0 ;
  wire multOp__0_carry__0;
  wire multOp__0_carry__1;
  wire [3:0]multOp__0_carry__1_i_6;
  wire rst;

  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0][7]_0 [0]),
        .Q(\RAM_reg[0] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0][7]_0 [1]),
        .Q(\RAM_reg[0] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0][7]_0 [2]),
        .Q(\RAM_reg[0] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0][7]_0 [3]),
        .Q(\RAM_reg[0] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0][7]_0 [4]),
        .Q(\RAM_reg[0] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0][7]_0 [5]),
        .Q(\RAM_reg[0] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0][7]_0 [6]),
        .Q(\RAM_reg[0] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0][7]_0 [7]),
        .Q(\RAM_reg[0] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0] [0]),
        .Q(\RAM_reg[1] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0] [1]),
        .Q(\RAM_reg[1] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0] [2]),
        .Q(\RAM_reg[1] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0] [3]),
        .Q(\RAM_reg[1] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0] [4]),
        .Q(\RAM_reg[1] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0] [5]),
        .Q(\RAM_reg[1] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0] [6]),
        .Q(\RAM_reg[1] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[0] [7]),
        .Q(\RAM_reg[1] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[1] [0]),
        .Q(\RAM_reg[2] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[1] [1]),
        .Q(\RAM_reg[2] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[1] [2]),
        .Q(\RAM_reg[2] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[1] [3]),
        .Q(\RAM_reg[2] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][4] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[1] [4]),
        .Q(\RAM_reg[2] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][5] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[1] [5]),
        .Q(\RAM_reg[2] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][6] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[1] [6]),
        .Q(\RAM_reg[2] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[2][7] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[1] [7]),
        .Q(\RAM_reg[2] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[2] [0]),
        .Q(\RAM_reg[3] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[2] [1]),
        .Q(\RAM_reg[3] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][2] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[2] [2]),
        .Q(\RAM_reg[3] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][3] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[2] [3]),
        .Q(\RAM_reg[3] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][4] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[2] [4]),
        .Q(\RAM_reg[3] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][5] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[2] [5]),
        .Q(\RAM_reg[3] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][6] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[2] [6]),
        .Q(\RAM_reg[3] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[3][7] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[2] [7]),
        .Q(\RAM_reg[3] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[3] [0]),
        .Q(\RAM_reg[4] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[3] [1]),
        .Q(\RAM_reg[4] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][2] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[3] [2]),
        .Q(\RAM_reg[4] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][3] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[3] [3]),
        .Q(\RAM_reg[4] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][4] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[3] [4]),
        .Q(\RAM_reg[4] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][5] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[3] [5]),
        .Q(\RAM_reg[4] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][6] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[3] [6]),
        .Q(\RAM_reg[4] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[4][7] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[3] [7]),
        .Q(\RAM_reg[4] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[4] [0]),
        .Q(\RAM_reg[5] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[4] [1]),
        .Q(\RAM_reg[5] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][2] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[4] [2]),
        .Q(\RAM_reg[5] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][3] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[4] [3]),
        .Q(\RAM_reg[5] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][4] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[4] [4]),
        .Q(\RAM_reg[5] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][5] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[4] [5]),
        .Q(\RAM_reg[5] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][6] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[4] [6]),
        .Q(\RAM_reg[5] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[5][7] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[4] [7]),
        .Q(\RAM_reg[5] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[5] [0]),
        .Q(\RAM_reg[6] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[5] [1]),
        .Q(\RAM_reg[6] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][2] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[5] [2]),
        .Q(\RAM_reg[6] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][3] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[5] [3]),
        .Q(\RAM_reg[6] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][4] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[5] [4]),
        .Q(\RAM_reg[6] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][5] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[5] [5]),
        .Q(\RAM_reg[6] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][6] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[5] [6]),
        .Q(\RAM_reg[6] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[6][7] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[5] [7]),
        .Q(\RAM_reg[6] [7]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][0] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[6] [0]),
        .Q(\RAM_reg[7] [0]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][1] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[6] [1]),
        .Q(\RAM_reg[7] [1]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][2] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[6] [2]),
        .Q(\RAM_reg[7] [2]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][3] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[6] [3]),
        .Q(\RAM_reg[7] [3]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][4] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[6] [4]),
        .Q(\RAM_reg[7] [4]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][5] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[6] [5]),
        .Q(\RAM_reg[7] [5]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][6] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[6] [6]),
        .Q(\RAM_reg[7] [6]));
  FDCE #(
    .INIT(1'b0)) 
    \RAM_reg[7][7] 
       (.C(S_AXI_ACLK),
        .CE(\RAM_reg[7][0]_0 ),
        .CLR(rst),
        .D(\RAM_reg[6] [7]),
        .Q(\RAM_reg[7] [7]));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \do[0]_i_1 
       (.I0(\RAM_reg[0][7]_0 [0]),
        .I1(\do[0]_i_2_n_0 ),
        .I2(\do_reg[0]_0 [2]),
        .I3(\do[0]_i_3_n_0 ),
        .I4(\RAM_reg[7][0]_0 ),
        .O(\do[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[0]_i_2 
       (.I0(\RAM_reg[7] [0]),
        .I1(\RAM_reg[6] [0]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [0]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [0]),
        .O(\do[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[0]_i_3 
       (.I0(\RAM_reg[3] [0]),
        .I1(\RAM_reg[2] [0]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [0]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [0]),
        .O(\do[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \do[1]_i_1 
       (.I0(\RAM_reg[0][7]_0 [1]),
        .I1(\do[1]_i_2_n_0 ),
        .I2(\do_reg[0]_0 [2]),
        .I3(\do[1]_i_3_n_0 ),
        .I4(\RAM_reg[7][0]_0 ),
        .O(\do[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[1]_i_2 
       (.I0(\RAM_reg[7] [1]),
        .I1(\RAM_reg[6] [1]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [1]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [1]),
        .O(\do[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[1]_i_3 
       (.I0(\RAM_reg[3] [1]),
        .I1(\RAM_reg[2] [1]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [1]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [1]),
        .O(\do[1]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \do[2]_i_1 
       (.I0(\RAM_reg[0][7]_0 [2]),
        .I1(\do[2]_i_2_n_0 ),
        .I2(\do_reg[0]_0 [2]),
        .I3(\do[2]_i_3_n_0 ),
        .I4(\RAM_reg[7][0]_0 ),
        .O(\do[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[2]_i_2 
       (.I0(\RAM_reg[7] [2]),
        .I1(\RAM_reg[6] [2]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [2]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [2]),
        .O(\do[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[2]_i_3 
       (.I0(\RAM_reg[3] [2]),
        .I1(\RAM_reg[2] [2]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [2]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [2]),
        .O(\do[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \do[3]_i_1 
       (.I0(\RAM_reg[0][7]_0 [3]),
        .I1(\do[3]_i_2_n_0 ),
        .I2(\do_reg[0]_0 [2]),
        .I3(\do[3]_i_3_n_0 ),
        .I4(\RAM_reg[7][0]_0 ),
        .O(\do[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[3]_i_2 
       (.I0(\RAM_reg[7] [3]),
        .I1(\RAM_reg[6] [3]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [3]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [3]),
        .O(\do[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[3]_i_3 
       (.I0(\RAM_reg[3] [3]),
        .I1(\RAM_reg[2] [3]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [3]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [3]),
        .O(\do[3]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \do[4]_i_1 
       (.I0(\RAM_reg[0][7]_0 [4]),
        .I1(\do[4]_i_2_n_0 ),
        .I2(\do_reg[0]_0 [2]),
        .I3(\do[4]_i_3_n_0 ),
        .I4(\RAM_reg[7][0]_0 ),
        .O(\do[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[4]_i_2 
       (.I0(\RAM_reg[7] [4]),
        .I1(\RAM_reg[6] [4]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [4]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [4]),
        .O(\do[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[4]_i_3 
       (.I0(\RAM_reg[3] [4]),
        .I1(\RAM_reg[2] [4]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [4]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [4]),
        .O(\do[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \do[5]_i_1 
       (.I0(\RAM_reg[0][7]_0 [5]),
        .I1(\do[5]_i_2_n_0 ),
        .I2(\do_reg[0]_0 [2]),
        .I3(\do[5]_i_3_n_0 ),
        .I4(\RAM_reg[7][0]_0 ),
        .O(\do[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[5]_i_2 
       (.I0(\RAM_reg[7] [5]),
        .I1(\RAM_reg[6] [5]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [5]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [5]),
        .O(\do[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[5]_i_3 
       (.I0(\RAM_reg[3] [5]),
        .I1(\RAM_reg[2] [5]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [5]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [5]),
        .O(\do[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \do[6]_i_1 
       (.I0(\RAM_reg[0][7]_0 [6]),
        .I1(\do[6]_i_2_n_0 ),
        .I2(\do_reg[0]_0 [2]),
        .I3(\do[6]_i_3_n_0 ),
        .I4(\RAM_reg[7][0]_0 ),
        .O(\do[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[6]_i_2 
       (.I0(\RAM_reg[7] [6]),
        .I1(\RAM_reg[6] [6]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [6]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [6]),
        .O(\do[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[6]_i_3 
       (.I0(\RAM_reg[3] [6]),
        .I1(\RAM_reg[2] [6]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [6]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [6]),
        .O(\do[6]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hAAAACFC0)) 
    \do[7]_i_1 
       (.I0(\RAM_reg[0][7]_0 [7]),
        .I1(\do[7]_i_2_n_0 ),
        .I2(\do_reg[0]_0 [2]),
        .I3(\do[7]_i_3_n_0 ),
        .I4(\RAM_reg[7][0]_0 ),
        .O(\do[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[7]_i_2 
       (.I0(\RAM_reg[7] [7]),
        .I1(\RAM_reg[6] [7]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[5] [7]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[4] [7]),
        .O(\do[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \do[7]_i_3 
       (.I0(\RAM_reg[3] [7]),
        .I1(\RAM_reg[2] [7]),
        .I2(\do_reg[0]_0 [1]),
        .I3(\RAM_reg[1] [7]),
        .I4(\do_reg[0]_0 [0]),
        .I5(\RAM_reg[0] [7]),
        .O(\do[7]_i_3_n_0 ));
  FDRE \do_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\do[0]_i_1_n_0 ),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \do_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\do[1]_i_1_n_0 ),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \do_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\do[2]_i_1_n_0 ),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \do_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\do[3]_i_1_n_0 ),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \do_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\do[4]_i_1_n_0 ),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \do_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\do[5]_i_1_n_0 ),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \do_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\do[6]_i_1_n_0 ),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \do_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(E),
        .D(\do[7]_i_1_n_0 ),
        .Q(Q[7]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__0_i_12
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6[2]),
        .I2(Q[3]),
        .I3(multOp__0_carry__1_i_6[3]),
        .I4(Q[1]),
        .I5(multOp__0_carry__1_i_6[1]),
        .O(\do_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hF888800080008000)) 
    multOp__0_carry__0_i_15
       (.I0(Q[4]),
        .I1(multOp__0_carry__1_i_6[2]),
        .I2(Q[3]),
        .I3(multOp__0_carry__1_i_6[3]),
        .I4(Q[5]),
        .I5(multOp__0_carry__1_i_6[1]),
        .O(\do_reg[4]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry__0_i_17
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6[1]),
        .O(\do_reg[2]_1 ));
  LUT4 #(
    .INIT(16'hF880)) 
    multOp__0_carry__0_i_2
       (.I0(Q[5]),
        .I1(multOp__0_carry__1_i_6[0]),
        .I2(multOp__0_carry__0),
        .I3(\do_reg[2]_0 ),
        .O(\do_reg[5]_0 ));
  LUT4 #(
    .INIT(16'hF880)) 
    multOp__0_carry__1_i_3
       (.I0(Q[7]),
        .I1(multOp__0_carry__1_i_6[0]),
        .I2(multOp__0_carry__1),
        .I3(\do_reg[4]_0 ),
        .O(\do_reg[7]_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry__1_i_8
       (.I0(Q[5]),
        .I1(multOp__0_carry__1_i_6[2]),
        .O(\do_reg[5]_1 ));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_3
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6[0]),
        .O(DI));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_5
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6[2]),
        .I2(Q[1]),
        .I3(multOp__0_carry__1_i_6[1]),
        .I4(multOp__0_carry__1_i_6[0]),
        .I5(Q[2]),
        .O(S[1]));
  LUT2 #(
    .INIT(4'h8)) 
    multOp__0_carry_i_7
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry_i_9
       (.I0(Q[3]),
        .I1(multOp__0_carry__1_i_6[0]),
        .O(\do_reg[3]_0 ));
endmodule

module FIR_design_FIR_IP_v1_0_S00_AXI_0_0_mlab_rom
   (DI,
    Q,
    \do_reg[6] ,
    \rom_out_reg[1]_0 ,
    \rom_out_reg[1]_1 ,
    \rom_out_reg[1]_2 ,
    q_reg,
    S,
    \do_reg[7] ,
    \rom_out_reg[2]_0 ,
    multOp__0_carry__1_i_6_0,
    multOp__0_carry__1,
    CO,
    \sum_reg[11] ,
    multOp__0_carry,
    multOp__0_carry__0,
    multOp__0_carry__0_0,
    multOp__0_carry__0_1,
    multOp__0_carry__1_0,
    D,
    S_AXI_ACLK);
  output [1:0]DI;
  output [3:0]Q;
  output [2:0]\do_reg[6] ;
  output \rom_out_reg[1]_0 ;
  output [1:0]\rom_out_reg[1]_1 ;
  output \rom_out_reg[1]_2 ;
  output [0:0]q_reg;
  output [1:0]S;
  output [3:0]\do_reg[7] ;
  output [2:0]\rom_out_reg[2]_0 ;
  input [7:0]multOp__0_carry__1_i_6_0;
  input multOp__0_carry__1;
  input [0:0]CO;
  input \sum_reg[11] ;
  input multOp__0_carry;
  input multOp__0_carry__0;
  input multOp__0_carry__0_0;
  input [0:0]multOp__0_carry__0_1;
  input multOp__0_carry__1_0;
  input [3:0]D;
  input S_AXI_ACLK;

  wire [0:0]CO;
  wire [3:0]D;
  wire [1:0]DI;
  wire [3:0]Q;
  wire [1:0]S;
  wire S_AXI_ACLK;
  wire [2:0]\do_reg[6] ;
  wire [3:0]\do_reg[7] ;
  wire multOp__0_carry;
  wire multOp__0_carry__0;
  wire multOp__0_carry__0_0;
  wire [0:0]multOp__0_carry__0_1;
  wire multOp__0_carry__0_i_10_n_0;
  wire multOp__0_carry__0_i_13_n_0;
  wire multOp__0_carry__0_i_14_n_0;
  wire multOp__0_carry__0_i_9_n_0;
  wire multOp__0_carry__1;
  wire multOp__0_carry__1_0;
  wire multOp__0_carry__1_i_10_n_0;
  wire [7:0]multOp__0_carry__1_i_6_0;
  wire multOp__0_carry__1_i_7_n_0;
  wire multOp__0_carry__1_i_9_n_0;
  wire multOp__0_carry_i_8_n_0;
  wire [0:0]q_reg;
  wire \rom_out_reg[1]_0 ;
  wire [1:0]\rom_out_reg[1]_1 ;
  wire \rom_out_reg[1]_2 ;
  wire [2:0]\rom_out_reg[2]_0 ;
  wire \sum_reg[11] ;

  LUT4 #(
    .INIT(16'hF880)) 
    multOp__0_carry__0_i_1
       (.I0(multOp__0_carry__1_i_6_0[6]),
        .I1(Q[0]),
        .I2(multOp__0_carry__0_i_9_n_0),
        .I3(multOp__0_carry__0_i_10_n_0),
        .O(\do_reg[6] [2]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__0_i_10
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[3]),
        .I2(multOp__0_carry__1_i_6_0[2]),
        .I3(Q[1]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[3]),
        .O(multOp__0_carry__0_i_10_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_11
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[4]),
        .I2(multOp__0_carry__1_i_6_0[3]),
        .I3(Q[2]),
        .I4(multOp__0_carry__1_i_6_0[2]),
        .I5(Q[3]),
        .O(\rom_out_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    multOp__0_carry__0_i_13
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6_0[3]),
        .I2(Q[2]),
        .I3(multOp__0_carry__1_i_6_0[1]),
        .I4(multOp__0_carry__1_i_6_0[0]),
        .I5(Q[1]),
        .O(multOp__0_carry__0_i_13_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_14
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[3]),
        .I2(Q[3]),
        .I3(multOp__0_carry__1_i_6_0[1]),
        .I4(multOp__0_carry__1_i_6_0[2]),
        .I5(Q[2]),
        .O(multOp__0_carry__0_i_14_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_16
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(multOp__0_carry__1_i_6_0[5]),
        .I3(Q[2]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[3]),
        .O(\rom_out_reg[1]_2 ));
  LUT4 #(
    .INIT(16'h8F0C)) 
    multOp__0_carry__0_i_3
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6_0[4]),
        .I2(multOp__0_carry__0_i_13_n_0),
        .I3(multOp__0_carry__0_i_14_n_0),
        .O(\do_reg[6] [1]));
  LUT4 #(
    .INIT(16'h6999)) 
    multOp__0_carry__0_i_4
       (.I0(multOp__0_carry__0_i_13_n_0),
        .I1(multOp__0_carry__0_i_14_n_0),
        .I2(multOp__0_carry__1_i_6_0[4]),
        .I3(Q[0]),
        .O(\do_reg[6] [0]));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    multOp__0_carry__0_i_5
       (.I0(\do_reg[6] [2]),
        .I1(multOp__0_carry__1_i_6_0[7]),
        .I2(Q[0]),
        .I3(multOp__0_carry__1_0),
        .I4(\rom_out_reg[1]_2 ),
        .O(\do_reg[7] [3]));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    multOp__0_carry__0_i_6
       (.I0(multOp__0_carry__0_1),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(Q[0]),
        .I3(multOp__0_carry__0_i_10_n_0),
        .I4(multOp__0_carry__0_i_9_n_0),
        .O(\do_reg[7] [2]));
  LUT5 #(
    .INIT(32'h6A95956A)) 
    multOp__0_carry__0_i_7
       (.I0(\do_reg[6] [1]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(Q[0]),
        .I3(multOp__0_carry__0_0),
        .I4(\rom_out_reg[1]_0 ),
        .O(\do_reg[7] [1]));
  LUT6 #(
    .INIT(64'h6A55AA6AAA6AAA6A)) 
    multOp__0_carry__0_i_8
       (.I0(\do_reg[6] [0]),
        .I1(multOp__0_carry__1_i_6_0[0]),
        .I2(Q[3]),
        .I3(multOp__0_carry__0),
        .I4(Q[2]),
        .I5(multOp__0_carry__1_i_6_0[1]),
        .O(\do_reg[7] [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__0_i_9
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(multOp__0_carry__1_i_6_0[3]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[2]),
        .O(multOp__0_carry__0_i_9_n_0));
  LUT6 #(
    .INIT(64'hF8A0C00080000000)) 
    multOp__0_carry__1_i_1
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(multOp__0_carry__1_i_6_0[6]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[7]),
        .I5(Q[2]),
        .O(\rom_out_reg[1]_1 [1]));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__1_i_10
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[5]),
        .I2(multOp__0_carry__1_i_6_0[6]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[4]),
        .I5(Q[1]),
        .O(multOp__0_carry__1_i_10_n_0));
  LUT6 #(
    .INIT(64'h80000000A888A000)) 
    multOp__0_carry__1_i_2
       (.I0(multOp__0_carry__1_i_7_n_0),
        .I1(Q[1]),
        .I2(multOp__0_carry__1_i_6_0[4]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[6]),
        .I5(multOp__0_carry__1),
        .O(\rom_out_reg[1]_1 [0]));
  LUT6 #(
    .INIT(64'h1777880080800000)) 
    multOp__0_carry__1_i_4
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(multOp__0_carry__1_i_6_0[5]),
        .I3(Q[1]),
        .I4(Q[3]),
        .I5(multOp__0_carry__1_i_6_0[7]),
        .O(\rom_out_reg[2]_0 [2]));
  LUT6 #(
    .INIT(64'h6A959595956A6A6A)) 
    multOp__0_carry__1_i_5
       (.I0(\rom_out_reg[1]_1 [0]),
        .I1(Q[2]),
        .I2(multOp__0_carry__1_i_6_0[7]),
        .I3(Q[3]),
        .I4(multOp__0_carry__1_i_6_0[6]),
        .I5(multOp__0_carry__1_i_9_n_0),
        .O(\rom_out_reg[2]_0 [1]));
  LUT6 #(
    .INIT(64'hE88817771777E888)) 
    multOp__0_carry__1_i_6
       (.I0(multOp__0_carry__1_0),
        .I1(\rom_out_reg[1]_2 ),
        .I2(Q[0]),
        .I3(multOp__0_carry__1_i_6_0[7]),
        .I4(multOp__0_carry__1_i_7_n_0),
        .I5(multOp__0_carry__1_i_10_n_0),
        .O(\rom_out_reg[2]_0 [0]));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry__1_i_7
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[7]),
        .I2(multOp__0_carry__1_i_6_0[6]),
        .I3(Q[2]),
        .I4(multOp__0_carry__1_i_6_0[5]),
        .I5(Q[3]),
        .O(multOp__0_carry__1_i_7_n_0));
  LUT6 #(
    .INIT(64'hF880808088000000)) 
    multOp__0_carry__1_i_9
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[6]),
        .I2(multOp__0_carry__1_i_6_0[5]),
        .I3(Q[1]),
        .I4(multOp__0_carry__1_i_6_0[7]),
        .I5(Q[3]),
        .O(multOp__0_carry__1_i_9_n_0));
  LUT6 #(
    .INIT(64'h8777788878887888)) 
    multOp__0_carry_i_1
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[2]),
        .I2(Q[2]),
        .I3(multOp__0_carry__1_i_6_0[1]),
        .I4(Q[3]),
        .I5(multOp__0_carry__1_i_6_0[0]),
        .O(DI[1]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_2
       (.I0(Q[1]),
        .I1(multOp__0_carry__1_i_6_0[1]),
        .I2(Q[2]),
        .I3(multOp__0_carry__1_i_6_0[0]),
        .O(DI[0]));
  LUT6 #(
    .INIT(64'h6AC0653F953F9AC0)) 
    multOp__0_carry_i_4
       (.I0(Q[3]),
        .I1(multOp__0_carry__1_i_6_0[2]),
        .I2(Q[1]),
        .I3(multOp__0_carry__1_i_6_0[0]),
        .I4(multOp__0_carry_i_8_n_0),
        .I5(multOp__0_carry),
        .O(S[1]));
  LUT4 #(
    .INIT(16'h7888)) 
    multOp__0_carry_i_6
       (.I0(Q[0]),
        .I1(multOp__0_carry__1_i_6_0[1]),
        .I2(Q[1]),
        .I3(multOp__0_carry__1_i_6_0[0]),
        .O(S[0]));
  LUT2 #(
    .INIT(4'h7)) 
    multOp__0_carry_i_8
       (.I0(Q[2]),
        .I1(multOp__0_carry__1_i_6_0[1]),
        .O(multOp__0_carry_i_8_n_0));
  FDRE \rom_out_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \rom_out_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \rom_out_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \rom_out_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .D(D[3]),
        .Q(Q[3]),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \sum[8]_i_2 
       (.I0(CO),
        .I1(\sum_reg[11] ),
        .O(q_reg));
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
