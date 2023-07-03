// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jun  9 11:42:21 2023
// Host        : focus running 64-bit openSUSE Tumbleweed
// Command     : write_verilog -force -mode funcsim
//               /home/george/Documents/piradio_driver_dev/test_cores/ip/zf_equalizer/zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_scheduler_0_0/zf_equalizer_pilot_scheduler_0_0_sim_netlist.v
// Design      : zf_equalizer_pilot_scheduler_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "zf_equalizer_pilot_scheduler_0_0,pilot_scheduler,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* IP_DEFINITION_SOURCE = "module_ref" *) 
(* X_CORE_INFO = "pilot_scheduler,Vivado 2021.1" *) 
(* NotValidForBitStream *)
module zf_equalizer_pilot_scheduler_0_0
   (axis_aclk,
    axis_aresetn,
    i_stage_1_en,
    i_valid_frame,
    BRAM_PORT_addr,
    BRAM_PORT_clk,
    BRAM_PORT_din,
    BRAM_PORT_dout,
    BRAM_PORT_en,
    BRAM_PORT_rst,
    BRAM_PORT_we,
    M_AXIS_1_tdata,
    M_AXIS_1_tvalid,
    M_AXIS_1_tlast,
    M_AXIS_1_tready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *) (* X_INTERFACE_PARAMETER = "ASSOCIATED_BUSIF axis_aclk:M_AXIS_1:M_AXIS_2:M_AXIS_3" *) input axis_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input axis_aresetn;
  input i_stage_1_en;
  input i_valid_frame;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) output [31:0]BRAM_PORT_addr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT CLK" *) output BRAM_PORT_clk;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DIN" *) output [31:0]BRAM_PORT_din;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT" *) (* X_INTERFACE_PARAMETER = "MASTER_TYPE BRAM_CTRL" *) input [31:0]BRAM_PORT_dout;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT EN" *) output BRAM_PORT_en;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT RST" *) output BRAM_PORT_rst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:bram:1.0 BRAM_PORT WE" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME BRAM_PORT, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1" *) output [0:0]BRAM_PORT_we;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_1 TDATA" *) output [31:0]M_AXIS_1_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_1 TVALID" *) output M_AXIS_1_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_1 TLAST" *) output M_AXIS_1_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 M_AXIS_1 TREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXIS_1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN zf_equalizer_s_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *) input M_AXIS_1_tready;

  wire \<const0> ;
  wire \<const1> ;
  wire [31:0]BRAM_PORT_addr;
  wire [31:0]BRAM_PORT_dout;
  wire [31:0]M_AXIS_1_tdata;
  wire M_AXIS_1_tvalid;
  wire axis_aclk;
  wire axis_aresetn;
  wire i_stage_1_en;
  wire i_valid_frame;

  assign BRAM_PORT_clk = axis_aclk;
  assign BRAM_PORT_din[31] = \<const0> ;
  assign BRAM_PORT_din[30] = \<const0> ;
  assign BRAM_PORT_din[29] = \<const0> ;
  assign BRAM_PORT_din[28] = \<const0> ;
  assign BRAM_PORT_din[27] = \<const0> ;
  assign BRAM_PORT_din[26] = \<const0> ;
  assign BRAM_PORT_din[25] = \<const0> ;
  assign BRAM_PORT_din[24] = \<const0> ;
  assign BRAM_PORT_din[23] = \<const0> ;
  assign BRAM_PORT_din[22] = \<const0> ;
  assign BRAM_PORT_din[21] = \<const0> ;
  assign BRAM_PORT_din[20] = \<const0> ;
  assign BRAM_PORT_din[19] = \<const0> ;
  assign BRAM_PORT_din[18] = \<const0> ;
  assign BRAM_PORT_din[17] = \<const0> ;
  assign BRAM_PORT_din[16] = \<const0> ;
  assign BRAM_PORT_din[15] = \<const0> ;
  assign BRAM_PORT_din[14] = \<const0> ;
  assign BRAM_PORT_din[13] = \<const0> ;
  assign BRAM_PORT_din[12] = \<const0> ;
  assign BRAM_PORT_din[11] = \<const0> ;
  assign BRAM_PORT_din[10] = \<const0> ;
  assign BRAM_PORT_din[9] = \<const0> ;
  assign BRAM_PORT_din[8] = \<const0> ;
  assign BRAM_PORT_din[7] = \<const0> ;
  assign BRAM_PORT_din[6] = \<const0> ;
  assign BRAM_PORT_din[5] = \<const0> ;
  assign BRAM_PORT_din[4] = \<const0> ;
  assign BRAM_PORT_din[3] = \<const0> ;
  assign BRAM_PORT_din[2] = \<const0> ;
  assign BRAM_PORT_din[1] = \<const0> ;
  assign BRAM_PORT_din[0] = \<const0> ;
  assign BRAM_PORT_en = \<const1> ;
  assign BRAM_PORT_rst = \<const0> ;
  assign BRAM_PORT_we[0] = \<const0> ;
  assign M_AXIS_1_tlast = \<const0> ;
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  zf_equalizer_pilot_scheduler_0_0_pilot_scheduler inst
       (.BRAM_PORT_addr(BRAM_PORT_addr),
        .BRAM_PORT_dout(BRAM_PORT_dout),
        .M_AXIS_1_tdata(M_AXIS_1_tdata),
        .M_AXIS_1_tvalid(M_AXIS_1_tvalid),
        .axis_aclk(axis_aclk),
        .axis_aresetn(axis_aresetn),
        .i_stage_1_en(i_stage_1_en),
        .i_valid_frame(i_valid_frame));
endmodule

(* ORIG_REF_NAME = "pilot_scheduler" *) 
module zf_equalizer_pilot_scheduler_0_0_pilot_scheduler
   (M_AXIS_1_tdata,
    M_AXIS_1_tvalid,
    BRAM_PORT_addr,
    axis_aresetn,
    i_valid_frame,
    BRAM_PORT_dout,
    axis_aclk,
    i_stage_1_en);
  output [31:0]M_AXIS_1_tdata;
  output M_AXIS_1_tvalid;
  output [31:0]BRAM_PORT_addr;
  input axis_aresetn;
  input i_valid_frame;
  input [31:0]BRAM_PORT_dout;
  input axis_aclk;
  input i_stage_1_en;

  wire [31:0]BRAM_PORT_addr;
  wire [31:0]BRAM_PORT_dout;
  wire [31:0]M_AXIS_1_tdata;
  wire M_AXIS_1_tvalid;
  wire axis_aclk;
  wire axis_aresetn;
  wire bram_addr0;
  wire \bram_addr[31]_i_1_n_0 ;
  wire \bram_addr[7]_i_2_n_0 ;
  wire \bram_addr_reg[15]_i_1_n_0 ;
  wire \bram_addr_reg[15]_i_1_n_1 ;
  wire \bram_addr_reg[15]_i_1_n_10 ;
  wire \bram_addr_reg[15]_i_1_n_11 ;
  wire \bram_addr_reg[15]_i_1_n_12 ;
  wire \bram_addr_reg[15]_i_1_n_13 ;
  wire \bram_addr_reg[15]_i_1_n_14 ;
  wire \bram_addr_reg[15]_i_1_n_15 ;
  wire \bram_addr_reg[15]_i_1_n_2 ;
  wire \bram_addr_reg[15]_i_1_n_3 ;
  wire \bram_addr_reg[15]_i_1_n_4 ;
  wire \bram_addr_reg[15]_i_1_n_5 ;
  wire \bram_addr_reg[15]_i_1_n_6 ;
  wire \bram_addr_reg[15]_i_1_n_7 ;
  wire \bram_addr_reg[15]_i_1_n_8 ;
  wire \bram_addr_reg[15]_i_1_n_9 ;
  wire \bram_addr_reg[23]_i_1_n_0 ;
  wire \bram_addr_reg[23]_i_1_n_1 ;
  wire \bram_addr_reg[23]_i_1_n_10 ;
  wire \bram_addr_reg[23]_i_1_n_11 ;
  wire \bram_addr_reg[23]_i_1_n_12 ;
  wire \bram_addr_reg[23]_i_1_n_13 ;
  wire \bram_addr_reg[23]_i_1_n_14 ;
  wire \bram_addr_reg[23]_i_1_n_15 ;
  wire \bram_addr_reg[23]_i_1_n_2 ;
  wire \bram_addr_reg[23]_i_1_n_3 ;
  wire \bram_addr_reg[23]_i_1_n_4 ;
  wire \bram_addr_reg[23]_i_1_n_5 ;
  wire \bram_addr_reg[23]_i_1_n_6 ;
  wire \bram_addr_reg[23]_i_1_n_7 ;
  wire \bram_addr_reg[23]_i_1_n_8 ;
  wire \bram_addr_reg[23]_i_1_n_9 ;
  wire \bram_addr_reg[31]_i_3_n_1 ;
  wire \bram_addr_reg[31]_i_3_n_10 ;
  wire \bram_addr_reg[31]_i_3_n_11 ;
  wire \bram_addr_reg[31]_i_3_n_12 ;
  wire \bram_addr_reg[31]_i_3_n_13 ;
  wire \bram_addr_reg[31]_i_3_n_14 ;
  wire \bram_addr_reg[31]_i_3_n_15 ;
  wire \bram_addr_reg[31]_i_3_n_2 ;
  wire \bram_addr_reg[31]_i_3_n_3 ;
  wire \bram_addr_reg[31]_i_3_n_4 ;
  wire \bram_addr_reg[31]_i_3_n_5 ;
  wire \bram_addr_reg[31]_i_3_n_6 ;
  wire \bram_addr_reg[31]_i_3_n_7 ;
  wire \bram_addr_reg[31]_i_3_n_8 ;
  wire \bram_addr_reg[31]_i_3_n_9 ;
  wire \bram_addr_reg[7]_i_1_n_0 ;
  wire \bram_addr_reg[7]_i_1_n_1 ;
  wire \bram_addr_reg[7]_i_1_n_10 ;
  wire \bram_addr_reg[7]_i_1_n_11 ;
  wire \bram_addr_reg[7]_i_1_n_12 ;
  wire \bram_addr_reg[7]_i_1_n_13 ;
  wire \bram_addr_reg[7]_i_1_n_14 ;
  wire \bram_addr_reg[7]_i_1_n_15 ;
  wire \bram_addr_reg[7]_i_1_n_2 ;
  wire \bram_addr_reg[7]_i_1_n_3 ;
  wire \bram_addr_reg[7]_i_1_n_4 ;
  wire \bram_addr_reg[7]_i_1_n_5 ;
  wire \bram_addr_reg[7]_i_1_n_6 ;
  wire \bram_addr_reg[7]_i_1_n_7 ;
  wire \bram_addr_reg[7]_i_1_n_8 ;
  wire \bram_addr_reg[7]_i_1_n_9 ;
  wire i_stage_1_en;
  wire i_valid_frame;
  wire out_tvalid;
  wire out_tvalid2;
  wire out_tvalid_i_1_n_0;
  wire p_0_in;
  wire [7:7]\NLW_bram_addr_reg[31]_i_3_CO_UNCONNECTED ;

  LUT1 #(
    .INIT(2'h1)) 
    \M_AXIS_1_tdata[31]_i_1 
       (.I0(axis_aresetn),
        .O(p_0_in));
  FDCE \M_AXIS_1_tdata_reg[0] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[0]),
        .Q(M_AXIS_1_tdata[0]));
  FDCE \M_AXIS_1_tdata_reg[10] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[10]),
        .Q(M_AXIS_1_tdata[10]));
  FDCE \M_AXIS_1_tdata_reg[11] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[11]),
        .Q(M_AXIS_1_tdata[11]));
  FDCE \M_AXIS_1_tdata_reg[12] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[12]),
        .Q(M_AXIS_1_tdata[12]));
  FDCE \M_AXIS_1_tdata_reg[13] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[13]),
        .Q(M_AXIS_1_tdata[13]));
  FDCE \M_AXIS_1_tdata_reg[14] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[14]),
        .Q(M_AXIS_1_tdata[14]));
  FDCE \M_AXIS_1_tdata_reg[15] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[15]),
        .Q(M_AXIS_1_tdata[15]));
  FDCE \M_AXIS_1_tdata_reg[16] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[16]),
        .Q(M_AXIS_1_tdata[16]));
  FDCE \M_AXIS_1_tdata_reg[17] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[17]),
        .Q(M_AXIS_1_tdata[17]));
  FDCE \M_AXIS_1_tdata_reg[18] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[18]),
        .Q(M_AXIS_1_tdata[18]));
  FDCE \M_AXIS_1_tdata_reg[19] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[19]),
        .Q(M_AXIS_1_tdata[19]));
  FDCE \M_AXIS_1_tdata_reg[1] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[1]),
        .Q(M_AXIS_1_tdata[1]));
  FDCE \M_AXIS_1_tdata_reg[20] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[20]),
        .Q(M_AXIS_1_tdata[20]));
  FDCE \M_AXIS_1_tdata_reg[21] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[21]),
        .Q(M_AXIS_1_tdata[21]));
  FDCE \M_AXIS_1_tdata_reg[22] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[22]),
        .Q(M_AXIS_1_tdata[22]));
  FDCE \M_AXIS_1_tdata_reg[23] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[23]),
        .Q(M_AXIS_1_tdata[23]));
  FDCE \M_AXIS_1_tdata_reg[24] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[24]),
        .Q(M_AXIS_1_tdata[24]));
  FDCE \M_AXIS_1_tdata_reg[25] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[25]),
        .Q(M_AXIS_1_tdata[25]));
  FDCE \M_AXIS_1_tdata_reg[26] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[26]),
        .Q(M_AXIS_1_tdata[26]));
  FDCE \M_AXIS_1_tdata_reg[27] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[27]),
        .Q(M_AXIS_1_tdata[27]));
  FDCE \M_AXIS_1_tdata_reg[28] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[28]),
        .Q(M_AXIS_1_tdata[28]));
  FDCE \M_AXIS_1_tdata_reg[29] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[29]),
        .Q(M_AXIS_1_tdata[29]));
  FDCE \M_AXIS_1_tdata_reg[2] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[2]),
        .Q(M_AXIS_1_tdata[2]));
  FDCE \M_AXIS_1_tdata_reg[30] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[30]),
        .Q(M_AXIS_1_tdata[30]));
  FDCE \M_AXIS_1_tdata_reg[31] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[31]),
        .Q(M_AXIS_1_tdata[31]));
  FDCE \M_AXIS_1_tdata_reg[3] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[3]),
        .Q(M_AXIS_1_tdata[3]));
  FDCE \M_AXIS_1_tdata_reg[4] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[4]),
        .Q(M_AXIS_1_tdata[4]));
  FDCE \M_AXIS_1_tdata_reg[5] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[5]),
        .Q(M_AXIS_1_tdata[5]));
  FDCE \M_AXIS_1_tdata_reg[6] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[6]),
        .Q(M_AXIS_1_tdata[6]));
  FDCE \M_AXIS_1_tdata_reg[7] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[7]),
        .Q(M_AXIS_1_tdata[7]));
  FDCE \M_AXIS_1_tdata_reg[8] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[8]),
        .Q(M_AXIS_1_tdata[8]));
  FDCE \M_AXIS_1_tdata_reg[9] 
       (.C(axis_aclk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(BRAM_PORT_dout[9]),
        .Q(M_AXIS_1_tdata[9]));
  FDRE M_AXIS_1_tvalid_reg
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(out_tvalid2),
        .Q(M_AXIS_1_tvalid),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \bram_addr[31]_i_1 
       (.I0(axis_aresetn),
        .I1(i_valid_frame),
        .O(\bram_addr[31]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \bram_addr[31]_i_2 
       (.I0(axis_aresetn),
        .I1(i_stage_1_en),
        .O(bram_addr0));
  LUT1 #(
    .INIT(2'h1)) 
    \bram_addr[7]_i_2 
       (.I0(BRAM_PORT_addr[0]),
        .O(\bram_addr[7]_i_2_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[0] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[7]_i_1_n_15 ),
        .Q(BRAM_PORT_addr[0]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[10] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[15]_i_1_n_13 ),
        .Q(BRAM_PORT_addr[10]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[11] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[15]_i_1_n_12 ),
        .Q(BRAM_PORT_addr[11]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[12] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[15]_i_1_n_11 ),
        .Q(BRAM_PORT_addr[12]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[13] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[15]_i_1_n_10 ),
        .Q(BRAM_PORT_addr[13]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[14] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[15]_i_1_n_9 ),
        .Q(BRAM_PORT_addr[14]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[15] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[15]_i_1_n_8 ),
        .Q(BRAM_PORT_addr[15]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[15]_i_1 
       (.CI(\bram_addr_reg[7]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bram_addr_reg[15]_i_1_n_0 ,\bram_addr_reg[15]_i_1_n_1 ,\bram_addr_reg[15]_i_1_n_2 ,\bram_addr_reg[15]_i_1_n_3 ,\bram_addr_reg[15]_i_1_n_4 ,\bram_addr_reg[15]_i_1_n_5 ,\bram_addr_reg[15]_i_1_n_6 ,\bram_addr_reg[15]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[15]_i_1_n_8 ,\bram_addr_reg[15]_i_1_n_9 ,\bram_addr_reg[15]_i_1_n_10 ,\bram_addr_reg[15]_i_1_n_11 ,\bram_addr_reg[15]_i_1_n_12 ,\bram_addr_reg[15]_i_1_n_13 ,\bram_addr_reg[15]_i_1_n_14 ,\bram_addr_reg[15]_i_1_n_15 }),
        .S(BRAM_PORT_addr[15:8]));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[16] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[23]_i_1_n_15 ),
        .Q(BRAM_PORT_addr[16]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[17] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[23]_i_1_n_14 ),
        .Q(BRAM_PORT_addr[17]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[18] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[23]_i_1_n_13 ),
        .Q(BRAM_PORT_addr[18]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[19] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[23]_i_1_n_12 ),
        .Q(BRAM_PORT_addr[19]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[1] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[7]_i_1_n_14 ),
        .Q(BRAM_PORT_addr[1]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[20] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[23]_i_1_n_11 ),
        .Q(BRAM_PORT_addr[20]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[21] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[23]_i_1_n_10 ),
        .Q(BRAM_PORT_addr[21]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[22] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[23]_i_1_n_9 ),
        .Q(BRAM_PORT_addr[22]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[23] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[23]_i_1_n_8 ),
        .Q(BRAM_PORT_addr[23]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[23]_i_1 
       (.CI(\bram_addr_reg[15]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\bram_addr_reg[23]_i_1_n_0 ,\bram_addr_reg[23]_i_1_n_1 ,\bram_addr_reg[23]_i_1_n_2 ,\bram_addr_reg[23]_i_1_n_3 ,\bram_addr_reg[23]_i_1_n_4 ,\bram_addr_reg[23]_i_1_n_5 ,\bram_addr_reg[23]_i_1_n_6 ,\bram_addr_reg[23]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[23]_i_1_n_8 ,\bram_addr_reg[23]_i_1_n_9 ,\bram_addr_reg[23]_i_1_n_10 ,\bram_addr_reg[23]_i_1_n_11 ,\bram_addr_reg[23]_i_1_n_12 ,\bram_addr_reg[23]_i_1_n_13 ,\bram_addr_reg[23]_i_1_n_14 ,\bram_addr_reg[23]_i_1_n_15 }),
        .S(BRAM_PORT_addr[23:16]));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[24] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[31]_i_3_n_15 ),
        .Q(BRAM_PORT_addr[24]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[25] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[31]_i_3_n_14 ),
        .Q(BRAM_PORT_addr[25]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[26] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[31]_i_3_n_13 ),
        .Q(BRAM_PORT_addr[26]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[27] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[31]_i_3_n_12 ),
        .Q(BRAM_PORT_addr[27]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[28] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[31]_i_3_n_11 ),
        .Q(BRAM_PORT_addr[28]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[29] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[31]_i_3_n_10 ),
        .Q(BRAM_PORT_addr[29]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[2] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[7]_i_1_n_13 ),
        .Q(BRAM_PORT_addr[2]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[30] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[31]_i_3_n_9 ),
        .Q(BRAM_PORT_addr[30]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[31] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[31]_i_3_n_8 ),
        .Q(BRAM_PORT_addr[31]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[31]_i_3 
       (.CI(\bram_addr_reg[23]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_bram_addr_reg[31]_i_3_CO_UNCONNECTED [7],\bram_addr_reg[31]_i_3_n_1 ,\bram_addr_reg[31]_i_3_n_2 ,\bram_addr_reg[31]_i_3_n_3 ,\bram_addr_reg[31]_i_3_n_4 ,\bram_addr_reg[31]_i_3_n_5 ,\bram_addr_reg[31]_i_3_n_6 ,\bram_addr_reg[31]_i_3_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\bram_addr_reg[31]_i_3_n_8 ,\bram_addr_reg[31]_i_3_n_9 ,\bram_addr_reg[31]_i_3_n_10 ,\bram_addr_reg[31]_i_3_n_11 ,\bram_addr_reg[31]_i_3_n_12 ,\bram_addr_reg[31]_i_3_n_13 ,\bram_addr_reg[31]_i_3_n_14 ,\bram_addr_reg[31]_i_3_n_15 }),
        .S(BRAM_PORT_addr[31:24]));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[3] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[7]_i_1_n_12 ),
        .Q(BRAM_PORT_addr[3]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[4] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[7]_i_1_n_11 ),
        .Q(BRAM_PORT_addr[4]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[5] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[7]_i_1_n_10 ),
        .Q(BRAM_PORT_addr[5]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[6] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[7]_i_1_n_9 ),
        .Q(BRAM_PORT_addr[6]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[7] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[7]_i_1_n_8 ),
        .Q(BRAM_PORT_addr[7]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \bram_addr_reg[7]_i_1 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\bram_addr_reg[7]_i_1_n_0 ,\bram_addr_reg[7]_i_1_n_1 ,\bram_addr_reg[7]_i_1_n_2 ,\bram_addr_reg[7]_i_1_n_3 ,\bram_addr_reg[7]_i_1_n_4 ,\bram_addr_reg[7]_i_1_n_5 ,\bram_addr_reg[7]_i_1_n_6 ,\bram_addr_reg[7]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\bram_addr_reg[7]_i_1_n_8 ,\bram_addr_reg[7]_i_1_n_9 ,\bram_addr_reg[7]_i_1_n_10 ,\bram_addr_reg[7]_i_1_n_11 ,\bram_addr_reg[7]_i_1_n_12 ,\bram_addr_reg[7]_i_1_n_13 ,\bram_addr_reg[7]_i_1_n_14 ,\bram_addr_reg[7]_i_1_n_15 }),
        .S({BRAM_PORT_addr[7:1],\bram_addr[7]_i_2_n_0 }));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[8] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[15]_i_1_n_15 ),
        .Q(BRAM_PORT_addr[8]),
        .R(\bram_addr[31]_i_1_n_0 ));
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR" *) 
  (* x_interface_parameter = "MASTER_TYPE BRAM_CTRL" *) 
  FDRE \bram_addr_reg[9] 
       (.C(axis_aclk),
        .CE(bram_addr0),
        .D(\bram_addr_reg[15]_i_1_n_14 ),
        .Q(BRAM_PORT_addr[9]),
        .R(\bram_addr[31]_i_1_n_0 ));
  FDRE out_tvalid2_reg
       (.C(axis_aclk),
        .CE(axis_aresetn),
        .D(out_tvalid),
        .Q(out_tvalid2),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hC0AA)) 
    out_tvalid_i_1
       (.I0(out_tvalid),
        .I1(i_stage_1_en),
        .I2(i_valid_frame),
        .I3(axis_aresetn),
        .O(out_tvalid_i_1_n_0));
  FDRE out_tvalid_reg
       (.C(axis_aclk),
        .CE(1'b1),
        .D(out_tvalid_i_1_n_0),
        .Q(out_tvalid),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
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
    reg GRESTORE_int;

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
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

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

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
