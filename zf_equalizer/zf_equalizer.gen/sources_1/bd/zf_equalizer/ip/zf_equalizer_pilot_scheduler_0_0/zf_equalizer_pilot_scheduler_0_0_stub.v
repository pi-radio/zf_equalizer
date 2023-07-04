// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
// Date        : Fri Jun  9 11:42:21 2023
// Host        : focus running 64-bit openSUSE Tumbleweed
// Command     : write_verilog -force -mode synth_stub
//               /home/george/Documents/piradio_driver_dev/test_cores/ip/zf_equalizer/zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_scheduler_0_0/zf_equalizer_pilot_scheduler_0_0_stub.v
// Design      : zf_equalizer_pilot_scheduler_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu28dr-ffvg1517-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "pilot_scheduler,Vivado 2021.1" *)
module zf_equalizer_pilot_scheduler_0_0(axis_aclk, axis_aresetn, i_stage_1_en, 
  i_valid_frame, BRAM_PORT_addr, BRAM_PORT_clk, BRAM_PORT_din, BRAM_PORT_dout, BRAM_PORT_en, 
  BRAM_PORT_rst, BRAM_PORT_we, M_AXIS_1_tdata, M_AXIS_1_tvalid, M_AXIS_1_tlast, 
  M_AXIS_1_tready)
/* synthesis syn_black_box black_box_pad_pin="axis_aclk,axis_aresetn,i_stage_1_en,i_valid_frame,BRAM_PORT_addr[31:0],BRAM_PORT_clk,BRAM_PORT_din[31:0],BRAM_PORT_dout[31:0],BRAM_PORT_en,BRAM_PORT_rst,BRAM_PORT_we[0:0],M_AXIS_1_tdata[31:0],M_AXIS_1_tvalid,M_AXIS_1_tlast,M_AXIS_1_tready" */;
  input axis_aclk;
  input axis_aresetn;
  input i_stage_1_en;
  input i_valid_frame;
  output [31:0]BRAM_PORT_addr;
  output BRAM_PORT_clk;
  output [31:0]BRAM_PORT_din;
  input [31:0]BRAM_PORT_dout;
  output BRAM_PORT_en;
  output BRAM_PORT_rst;
  output [0:0]BRAM_PORT_we;
  output [31:0]M_AXIS_1_tdata;
  output M_AXIS_1_tvalid;
  output M_AXIS_1_tlast;
  input M_AXIS_1_tready;
endmodule
