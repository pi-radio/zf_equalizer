-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Jun  9 11:42:21 2023
-- Host        : focus running 64-bit openSUSE Tumbleweed
-- Command     : write_vhdl -force -mode synth_stub
--               /home/george/Documents/piradio_driver_dev/test_cores/ip/zf_equalizer/zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_scheduler_0_0/zf_equalizer_pilot_scheduler_0_0_stub.vhdl
-- Design      : zf_equalizer_pilot_scheduler_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zf_equalizer_pilot_scheduler_0_0 is
  Port ( 
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    i_stage_1_en : in STD_LOGIC;
    i_valid_frame : in STD_LOGIC;
    BRAM_PORT_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORT_clk : out STD_LOGIC;
    BRAM_PORT_din : out STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORT_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    BRAM_PORT_en : out STD_LOGIC;
    BRAM_PORT_rst : out STD_LOGIC;
    BRAM_PORT_we : out STD_LOGIC_VECTOR ( 0 to 0 );
    M_AXIS_1_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_1_tvalid : out STD_LOGIC;
    M_AXIS_1_tlast : out STD_LOGIC;
    M_AXIS_1_tready : in STD_LOGIC
  );

end zf_equalizer_pilot_scheduler_0_0;

architecture stub of zf_equalizer_pilot_scheduler_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axis_aclk,axis_aresetn,i_stage_1_en,i_valid_frame,BRAM_PORT_addr[31:0],BRAM_PORT_clk,BRAM_PORT_din[31:0],BRAM_PORT_dout[31:0],BRAM_PORT_en,BRAM_PORT_rst,BRAM_PORT_we[0:0],M_AXIS_1_tdata[31:0],M_AXIS_1_tvalid,M_AXIS_1_tlast,M_AXIS_1_tready";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "pilot_scheduler,Vivado 2021.1";
begin
end;
