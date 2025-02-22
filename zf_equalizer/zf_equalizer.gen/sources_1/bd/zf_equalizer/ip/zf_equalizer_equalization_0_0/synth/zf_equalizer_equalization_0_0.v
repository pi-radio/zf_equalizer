// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:equalization:1.0
// IP Revision: 1

(* X_CORE_INFO = "equalization,Vivado 2021.1" *)
(* CHECK_LICENSE_TYPE = "zf_equalizer_equalization_0_0,equalization,{}" *)
(* CORE_GENERATION_INFO = "zf_equalizer_equalization_0_0,equalization,{x_ipProduct=Vivado 2021.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=equalization,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module zf_equalizer_equalization_0_0 (
  axis_aclk,
  axis_aresetn,
  s_din_axis_tdata,
  s_din_axis_tvalid,
  s_din_axis_tlast,
  s_ch_est_axis_tdata,
  s_ch_est_axis_tvalid,
  s_ch_est_axis_tlast,
  m_axis_tdata,
  m_axis_tvalid,
  m_axis_tlast
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aclk, ASSOCIATED_BUSIF m_axis, ASSOCIATED_RESET axis_aresetn, FREQ_HZ 99999001, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN zf_equalizer_s_axi_aclk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 axis_aclk CLK" *)
input wire axis_aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 axis_aresetn RST" *)
input wire axis_aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_din_axis TDATA" *)
input wire [127 : 0] s_din_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_din_axis TVALID" *)
input wire s_din_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_din_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN zf_equalizer_s_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_din_axis TLAST" *)
input wire s_din_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_ch_est_axis TDATA" *)
input wire [31 : 0] s_ch_est_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_ch_est_axis TVALID" *)
input wire s_ch_est_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME s_ch_est_axis, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN zf_equalizer_s_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 s_ch_est_axis TLAST" *)
input wire s_ch_est_axis_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TDATA" *)
output wire [127 : 0] m_axis_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TVALID" *)
output wire m_axis_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME m_axis, TDATA_NUM_BYTES 16, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN zf_equalizer_s_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 m_axis TLAST" *)
output wire m_axis_tlast;

  equalization inst (
    .axis_aclk(axis_aclk),
    .axis_aresetn(axis_aresetn),
    .s_din_axis_tdata(s_din_axis_tdata),
    .s_din_axis_tvalid(s_din_axis_tvalid),
    .s_din_axis_tlast(s_din_axis_tlast),
    .s_ch_est_axis_tdata(s_ch_est_axis_tdata),
    .s_ch_est_axis_tvalid(s_ch_est_axis_tvalid),
    .s_ch_est_axis_tlast(s_ch_est_axis_tlast),
    .m_axis_tdata(m_axis_tdata),
    .m_axis_tvalid(m_axis_tvalid),
    .m_axis_tlast(m_axis_tlast)
  );
endmodule
