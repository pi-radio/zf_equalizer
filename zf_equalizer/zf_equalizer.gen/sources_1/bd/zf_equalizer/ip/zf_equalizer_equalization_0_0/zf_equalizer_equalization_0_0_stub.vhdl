-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Jun  9 11:42:45 2023
-- Host        : focus running 64-bit openSUSE Tumbleweed
-- Command     : write_vhdl -force -mode synth_stub
--               /home/george/Documents/piradio_driver_dev/test_cores/ip/zf_equalizer/zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_equalization_0_0/zf_equalizer_equalization_0_0_stub.vhdl
-- Design      : zf_equalizer_equalization_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity zf_equalizer_equalization_0_0 is
  Port ( 
    axis_aclk : in STD_LOGIC;
    axis_aresetn : in STD_LOGIC;
    s_din_axis_tdata : in STD_LOGIC_VECTOR ( 127 downto 0 );
    s_din_axis_tvalid : in STD_LOGIC;
    s_din_axis_tlast : in STD_LOGIC;
    s_ch_est_axis_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_ch_est_axis_tvalid : in STD_LOGIC;
    s_ch_est_axis_tlast : in STD_LOGIC;
    m_axis_tdata : out STD_LOGIC_VECTOR ( 127 downto 0 );
    m_axis_tvalid : out STD_LOGIC;
    m_axis_tlast : out STD_LOGIC
  );

end zf_equalizer_equalization_0_0;

architecture stub of zf_equalizer_equalization_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "axis_aclk,axis_aresetn,s_din_axis_tdata[127:0],s_din_axis_tvalid,s_din_axis_tlast,s_ch_est_axis_tdata[31:0],s_ch_est_axis_tvalid,s_ch_est_axis_tlast,m_axis_tdata[127:0],m_axis_tvalid,m_axis_tlast";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "equalization,Vivado 2021.1";
begin
end;
