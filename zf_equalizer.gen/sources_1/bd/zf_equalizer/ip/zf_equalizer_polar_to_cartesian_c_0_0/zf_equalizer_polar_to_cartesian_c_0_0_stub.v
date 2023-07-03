// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jun  9 11:43:01 2023
// Host        : focus running 64-bit openSUSE Tumbleweed
// Command     : write_verilog -force -mode synth_stub
//               /home/george/Documents/piradio_driver_dev/test_cores/ip/zf_equalizer/zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_polar_to_cartesian_c_0_0/zf_equalizer_polar_to_cartesian_c_0_0_stub.v
// Design      : zf_equalizer_polar_to_cartesian_c_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "polar_to_cartesian_cordic,Vivado 2021.1" *)
module zf_equalizer_polar_to_cartesian_c_0_0(axis_aclk, axis_aresetn, s_axis_tdata, 
  s_axis_tvalid, s_axis_tlast, m_axis_tdata, m_axis_tvalid, m_axis_tlast)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,s_axis_tdata[95:0],s_axis_tvalid,s_axis_tlast,m_axis_tdata[95:0],m_axis_tvalid,m_axis_tlast" */;
  input axis_aclk;
  input axis_aresetn;
  input [95:0]s_axis_tdata;
  input s_axis_tvalid;
  input s_axis_tlast;
  output [95:0]m_axis_tdata;
  output m_axis_tvalid;
  output m_axis_tlast;
endmodule
