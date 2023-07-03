-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.1 (lin64) Build 3247384 Thu Jun 10 19:36:07 MDT 2021
-- Date        : Fri Jun  9 11:42:21 2023
-- Host        : focus running 64-bit openSUSE Tumbleweed
-- Command     : write_vhdl -force -mode funcsim
--               /home/george/Documents/piradio_driver_dev/test_cores/ip/zf_equalizer/zf_equalizer.gen/sources_1/bd/zf_equalizer/ip/zf_equalizer_pilot_scheduler_0_0/zf_equalizer_pilot_scheduler_0_0_sim_netlist.vhdl
-- Design      : zf_equalizer_pilot_scheduler_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xczu28dr-ffvg1517-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zf_equalizer_pilot_scheduler_0_0_pilot_scheduler is
  port (
    M_AXIS_1_tdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    M_AXIS_1_tvalid : out STD_LOGIC;
    BRAM_PORT_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_aresetn : in STD_LOGIC;
    i_valid_frame : in STD_LOGIC;
    BRAM_PORT_dout : in STD_LOGIC_VECTOR ( 31 downto 0 );
    axis_aclk : in STD_LOGIC;
    i_stage_1_en : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of zf_equalizer_pilot_scheduler_0_0_pilot_scheduler : entity is "pilot_scheduler";
end zf_equalizer_pilot_scheduler_0_0_pilot_scheduler;

architecture STRUCTURE of zf_equalizer_pilot_scheduler_0_0_pilot_scheduler is
  signal \^bram_port_addr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bram_addr0 : STD_LOGIC;
  signal \bram_addr[31]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr[7]_i_2_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_1\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_10\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_11\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_12\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_13\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_14\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_15\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_2\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_3\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_4\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_7\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_8\ : STD_LOGIC;
  signal \bram_addr_reg[15]_i_1_n_9\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_1\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_10\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_11\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_12\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_13\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_14\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_15\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_2\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_3\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_4\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_7\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_8\ : STD_LOGIC;
  signal \bram_addr_reg[23]_i_1_n_9\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_10\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_11\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_12\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_13\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_14\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_15\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_4\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_7\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_8\ : STD_LOGIC;
  signal \bram_addr_reg[31]_i_3_n_9\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_0\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_1\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_10\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_11\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_12\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_13\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_14\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_15\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_2\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_3\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_4\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_5\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_6\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_7\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_8\ : STD_LOGIC;
  signal \bram_addr_reg[7]_i_1_n_9\ : STD_LOGIC;
  signal out_tvalid : STD_LOGIC;
  signal out_tvalid2 : STD_LOGIC;
  signal out_tvalid_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal \NLW_bram_addr_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 7 to 7 );
  attribute x_interface_info : string;
  attribute x_interface_info of \bram_addr_reg[0]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of \bram_addr_reg[0]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[10]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[10]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[11]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[11]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[12]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[12]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[13]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[13]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[14]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[14]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[15]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[15]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \bram_addr_reg[15]_i_1\ : label is 16;
  attribute x_interface_info of \bram_addr_reg[16]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[16]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[17]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[17]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[18]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[18]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[19]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[19]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[1]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[1]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[20]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[20]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[21]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[21]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[22]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[22]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[23]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[23]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute ADDER_THRESHOLD of \bram_addr_reg[23]_i_1\ : label is 16;
  attribute x_interface_info of \bram_addr_reg[24]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[24]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[25]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[25]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[26]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[26]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[27]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[27]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[28]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[28]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[29]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[29]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[2]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[2]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[30]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[30]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[31]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[31]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute ADDER_THRESHOLD of \bram_addr_reg[31]_i_3\ : label is 16;
  attribute x_interface_info of \bram_addr_reg[3]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[3]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[4]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[4]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[5]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[5]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[6]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[6]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[7]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[7]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute ADDER_THRESHOLD of \bram_addr_reg[7]_i_1\ : label is 16;
  attribute x_interface_info of \bram_addr_reg[8]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[8]\ : label is "MASTER_TYPE BRAM_CTRL";
  attribute x_interface_info of \bram_addr_reg[9]\ : label is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute x_interface_parameter of \bram_addr_reg[9]\ : label is "MASTER_TYPE BRAM_CTRL";
begin
  BRAM_PORT_addr(31 downto 0) <= \^bram_port_addr\(31 downto 0);
\M_AXIS_1_tdata[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => axis_aresetn,
      O => p_0_in
    );
\M_AXIS_1_tdata_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(0),
      Q => M_AXIS_1_tdata(0)
    );
\M_AXIS_1_tdata_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(10),
      Q => M_AXIS_1_tdata(10)
    );
\M_AXIS_1_tdata_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(11),
      Q => M_AXIS_1_tdata(11)
    );
\M_AXIS_1_tdata_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(12),
      Q => M_AXIS_1_tdata(12)
    );
\M_AXIS_1_tdata_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(13),
      Q => M_AXIS_1_tdata(13)
    );
\M_AXIS_1_tdata_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(14),
      Q => M_AXIS_1_tdata(14)
    );
\M_AXIS_1_tdata_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(15),
      Q => M_AXIS_1_tdata(15)
    );
\M_AXIS_1_tdata_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(16),
      Q => M_AXIS_1_tdata(16)
    );
\M_AXIS_1_tdata_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(17),
      Q => M_AXIS_1_tdata(17)
    );
\M_AXIS_1_tdata_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(18),
      Q => M_AXIS_1_tdata(18)
    );
\M_AXIS_1_tdata_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(19),
      Q => M_AXIS_1_tdata(19)
    );
\M_AXIS_1_tdata_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(1),
      Q => M_AXIS_1_tdata(1)
    );
\M_AXIS_1_tdata_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(20),
      Q => M_AXIS_1_tdata(20)
    );
\M_AXIS_1_tdata_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(21),
      Q => M_AXIS_1_tdata(21)
    );
\M_AXIS_1_tdata_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(22),
      Q => M_AXIS_1_tdata(22)
    );
\M_AXIS_1_tdata_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(23),
      Q => M_AXIS_1_tdata(23)
    );
\M_AXIS_1_tdata_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(24),
      Q => M_AXIS_1_tdata(24)
    );
\M_AXIS_1_tdata_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(25),
      Q => M_AXIS_1_tdata(25)
    );
\M_AXIS_1_tdata_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(26),
      Q => M_AXIS_1_tdata(26)
    );
\M_AXIS_1_tdata_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(27),
      Q => M_AXIS_1_tdata(27)
    );
\M_AXIS_1_tdata_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(28),
      Q => M_AXIS_1_tdata(28)
    );
\M_AXIS_1_tdata_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(29),
      Q => M_AXIS_1_tdata(29)
    );
\M_AXIS_1_tdata_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(2),
      Q => M_AXIS_1_tdata(2)
    );
\M_AXIS_1_tdata_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(30),
      Q => M_AXIS_1_tdata(30)
    );
\M_AXIS_1_tdata_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(31),
      Q => M_AXIS_1_tdata(31)
    );
\M_AXIS_1_tdata_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(3),
      Q => M_AXIS_1_tdata(3)
    );
\M_AXIS_1_tdata_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(4),
      Q => M_AXIS_1_tdata(4)
    );
\M_AXIS_1_tdata_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(5),
      Q => M_AXIS_1_tdata(5)
    );
\M_AXIS_1_tdata_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(6),
      Q => M_AXIS_1_tdata(6)
    );
\M_AXIS_1_tdata_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(7),
      Q => M_AXIS_1_tdata(7)
    );
\M_AXIS_1_tdata_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(8),
      Q => M_AXIS_1_tdata(8)
    );
\M_AXIS_1_tdata_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => axis_aclk,
      CE => '1',
      CLR => p_0_in,
      D => BRAM_PORT_dout(9),
      Q => M_AXIS_1_tdata(9)
    );
M_AXIS_1_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => out_tvalid2,
      Q => M_AXIS_1_tvalid,
      R => '0'
    );
\bram_addr[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => axis_aresetn,
      I1 => i_valid_frame,
      O => \bram_addr[31]_i_1_n_0\
    );
\bram_addr[31]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => axis_aresetn,
      I1 => i_stage_1_en,
      O => bram_addr0
    );
\bram_addr[7]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^bram_port_addr\(0),
      O => \bram_addr[7]_i_2_n_0\
    );
\bram_addr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[7]_i_1_n_15\,
      Q => \^bram_port_addr\(0),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[15]_i_1_n_13\,
      Q => \^bram_port_addr\(10),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[15]_i_1_n_12\,
      Q => \^bram_port_addr\(11),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[15]_i_1_n_11\,
      Q => \^bram_port_addr\(12),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[15]_i_1_n_10\,
      Q => \^bram_port_addr\(13),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[15]_i_1_n_9\,
      Q => \^bram_port_addr\(14),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[15]_i_1_n_8\,
      Q => \^bram_port_addr\(15),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[15]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addr_reg[7]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \bram_addr_reg[15]_i_1_n_0\,
      CO(6) => \bram_addr_reg[15]_i_1_n_1\,
      CO(5) => \bram_addr_reg[15]_i_1_n_2\,
      CO(4) => \bram_addr_reg[15]_i_1_n_3\,
      CO(3) => \bram_addr_reg[15]_i_1_n_4\,
      CO(2) => \bram_addr_reg[15]_i_1_n_5\,
      CO(1) => \bram_addr_reg[15]_i_1_n_6\,
      CO(0) => \bram_addr_reg[15]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \bram_addr_reg[15]_i_1_n_8\,
      O(6) => \bram_addr_reg[15]_i_1_n_9\,
      O(5) => \bram_addr_reg[15]_i_1_n_10\,
      O(4) => \bram_addr_reg[15]_i_1_n_11\,
      O(3) => \bram_addr_reg[15]_i_1_n_12\,
      O(2) => \bram_addr_reg[15]_i_1_n_13\,
      O(1) => \bram_addr_reg[15]_i_1_n_14\,
      O(0) => \bram_addr_reg[15]_i_1_n_15\,
      S(7 downto 0) => \^bram_port_addr\(15 downto 8)
    );
\bram_addr_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[23]_i_1_n_15\,
      Q => \^bram_port_addr\(16),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[23]_i_1_n_14\,
      Q => \^bram_port_addr\(17),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[23]_i_1_n_13\,
      Q => \^bram_port_addr\(18),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[23]_i_1_n_12\,
      Q => \^bram_port_addr\(19),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[7]_i_1_n_14\,
      Q => \^bram_port_addr\(1),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[23]_i_1_n_11\,
      Q => \^bram_port_addr\(20),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[23]_i_1_n_10\,
      Q => \^bram_port_addr\(21),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[23]_i_1_n_9\,
      Q => \^bram_port_addr\(22),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[23]_i_1_n_8\,
      Q => \^bram_port_addr\(23),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[23]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addr_reg[15]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \bram_addr_reg[23]_i_1_n_0\,
      CO(6) => \bram_addr_reg[23]_i_1_n_1\,
      CO(5) => \bram_addr_reg[23]_i_1_n_2\,
      CO(4) => \bram_addr_reg[23]_i_1_n_3\,
      CO(3) => \bram_addr_reg[23]_i_1_n_4\,
      CO(2) => \bram_addr_reg[23]_i_1_n_5\,
      CO(1) => \bram_addr_reg[23]_i_1_n_6\,
      CO(0) => \bram_addr_reg[23]_i_1_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \bram_addr_reg[23]_i_1_n_8\,
      O(6) => \bram_addr_reg[23]_i_1_n_9\,
      O(5) => \bram_addr_reg[23]_i_1_n_10\,
      O(4) => \bram_addr_reg[23]_i_1_n_11\,
      O(3) => \bram_addr_reg[23]_i_1_n_12\,
      O(2) => \bram_addr_reg[23]_i_1_n_13\,
      O(1) => \bram_addr_reg[23]_i_1_n_14\,
      O(0) => \bram_addr_reg[23]_i_1_n_15\,
      S(7 downto 0) => \^bram_port_addr\(23 downto 16)
    );
\bram_addr_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[31]_i_3_n_15\,
      Q => \^bram_port_addr\(24),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[31]_i_3_n_14\,
      Q => \^bram_port_addr\(25),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[31]_i_3_n_13\,
      Q => \^bram_port_addr\(26),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[31]_i_3_n_12\,
      Q => \^bram_port_addr\(27),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[31]_i_3_n_11\,
      Q => \^bram_port_addr\(28),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[31]_i_3_n_10\,
      Q => \^bram_port_addr\(29),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[7]_i_1_n_13\,
      Q => \^bram_port_addr\(2),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[31]_i_3_n_9\,
      Q => \^bram_port_addr\(30),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[31]_i_3_n_8\,
      Q => \^bram_port_addr\(31),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[31]_i_3\: unisim.vcomponents.CARRY8
     port map (
      CI => \bram_addr_reg[23]_i_1_n_0\,
      CI_TOP => '0',
      CO(7) => \NLW_bram_addr_reg[31]_i_3_CO_UNCONNECTED\(7),
      CO(6) => \bram_addr_reg[31]_i_3_n_1\,
      CO(5) => \bram_addr_reg[31]_i_3_n_2\,
      CO(4) => \bram_addr_reg[31]_i_3_n_3\,
      CO(3) => \bram_addr_reg[31]_i_3_n_4\,
      CO(2) => \bram_addr_reg[31]_i_3_n_5\,
      CO(1) => \bram_addr_reg[31]_i_3_n_6\,
      CO(0) => \bram_addr_reg[31]_i_3_n_7\,
      DI(7 downto 0) => B"00000000",
      O(7) => \bram_addr_reg[31]_i_3_n_8\,
      O(6) => \bram_addr_reg[31]_i_3_n_9\,
      O(5) => \bram_addr_reg[31]_i_3_n_10\,
      O(4) => \bram_addr_reg[31]_i_3_n_11\,
      O(3) => \bram_addr_reg[31]_i_3_n_12\,
      O(2) => \bram_addr_reg[31]_i_3_n_13\,
      O(1) => \bram_addr_reg[31]_i_3_n_14\,
      O(0) => \bram_addr_reg[31]_i_3_n_15\,
      S(7 downto 0) => \^bram_port_addr\(31 downto 24)
    );
\bram_addr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[7]_i_1_n_12\,
      Q => \^bram_port_addr\(3),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[7]_i_1_n_11\,
      Q => \^bram_port_addr\(4),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[7]_i_1_n_10\,
      Q => \^bram_port_addr\(5),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[7]_i_1_n_9\,
      Q => \^bram_port_addr\(6),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[7]_i_1_n_8\,
      Q => \^bram_port_addr\(7),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[7]_i_1\: unisim.vcomponents.CARRY8
     port map (
      CI => '0',
      CI_TOP => '0',
      CO(7) => \bram_addr_reg[7]_i_1_n_0\,
      CO(6) => \bram_addr_reg[7]_i_1_n_1\,
      CO(5) => \bram_addr_reg[7]_i_1_n_2\,
      CO(4) => \bram_addr_reg[7]_i_1_n_3\,
      CO(3) => \bram_addr_reg[7]_i_1_n_4\,
      CO(2) => \bram_addr_reg[7]_i_1_n_5\,
      CO(1) => \bram_addr_reg[7]_i_1_n_6\,
      CO(0) => \bram_addr_reg[7]_i_1_n_7\,
      DI(7 downto 0) => B"00000001",
      O(7) => \bram_addr_reg[7]_i_1_n_8\,
      O(6) => \bram_addr_reg[7]_i_1_n_9\,
      O(5) => \bram_addr_reg[7]_i_1_n_10\,
      O(4) => \bram_addr_reg[7]_i_1_n_11\,
      O(3) => \bram_addr_reg[7]_i_1_n_12\,
      O(2) => \bram_addr_reg[7]_i_1_n_13\,
      O(1) => \bram_addr_reg[7]_i_1_n_14\,
      O(0) => \bram_addr_reg[7]_i_1_n_15\,
      S(7 downto 1) => \^bram_port_addr\(7 downto 1),
      S(0) => \bram_addr[7]_i_2_n_0\
    );
\bram_addr_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[15]_i_1_n_15\,
      Q => \^bram_port_addr\(8),
      R => \bram_addr[31]_i_1_n_0\
    );
\bram_addr_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => bram_addr0,
      D => \bram_addr_reg[15]_i_1_n_14\,
      Q => \^bram_port_addr\(9),
      R => \bram_addr[31]_i_1_n_0\
    );
out_tvalid2_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => axis_aresetn,
      D => out_tvalid,
      Q => out_tvalid2,
      R => '0'
    );
out_tvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0AA"
    )
        port map (
      I0 => out_tvalid,
      I1 => i_stage_1_en,
      I2 => i_valid_frame,
      I3 => axis_aresetn,
      O => out_tvalid_i_1_n_0
    );
out_tvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => axis_aclk,
      CE => '1',
      D => out_tvalid_i_1_n_0,
      Q => out_tvalid,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity zf_equalizer_pilot_scheduler_0_0 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of zf_equalizer_pilot_scheduler_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of zf_equalizer_pilot_scheduler_0_0 : entity is "zf_equalizer_pilot_scheduler_0_0,pilot_scheduler,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of zf_equalizer_pilot_scheduler_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of zf_equalizer_pilot_scheduler_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of zf_equalizer_pilot_scheduler_0_0 : entity is "pilot_scheduler,Vivado 2021.1";
end zf_equalizer_pilot_scheduler_0_0;

architecture STRUCTURE of zf_equalizer_pilot_scheduler_0_0 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \^axis_aclk\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of BRAM_PORT_clk : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT CLK";
  attribute X_INTERFACE_INFO of BRAM_PORT_en : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT EN";
  attribute X_INTERFACE_INFO of BRAM_PORT_rst : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT RST";
  attribute X_INTERFACE_INFO of M_AXIS_1_tlast : signal is "xilinx.com:interface:axis:1.0 M_AXIS_1 TLAST";
  attribute X_INTERFACE_INFO of M_AXIS_1_tready : signal is "xilinx.com:interface:axis:1.0 M_AXIS_1 TREADY";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of M_AXIS_1_tready : signal is "XIL_INTERFACENAME M_AXIS_1, TDATA_NUM_BYTES 4, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 99999001, PHASE 0.0, CLK_DOMAIN zf_equalizer_s_axi_aclk, LAYERED_METADATA undef, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of M_AXIS_1_tvalid : signal is "xilinx.com:interface:axis:1.0 M_AXIS_1 TVALID";
  attribute X_INTERFACE_INFO of axis_aclk : signal is "xilinx.com:signal:clock:1.0 axis_aclk CLK";
  attribute X_INTERFACE_PARAMETER of axis_aclk : signal is "ASSOCIATED_BUSIF axis_aclk:M_AXIS_1:M_AXIS_2:M_AXIS_3";
  attribute X_INTERFACE_INFO of axis_aresetn : signal is "xilinx.com:signal:reset:1.0 axis_aresetn RST";
  attribute X_INTERFACE_PARAMETER of axis_aresetn : signal is "XIL_INTERFACENAME axis_aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of BRAM_PORT_addr : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT ADDR";
  attribute X_INTERFACE_INFO of BRAM_PORT_din : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DIN";
  attribute X_INTERFACE_INFO of BRAM_PORT_dout : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT DOUT";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_dout : signal is "MASTER_TYPE BRAM_CTRL";
  attribute X_INTERFACE_INFO of BRAM_PORT_we : signal is "xilinx.com:interface:bram:1.0 BRAM_PORT WE";
  attribute X_INTERFACE_PARAMETER of BRAM_PORT_we : signal is "XIL_INTERFACENAME BRAM_PORT, MASTER_TYPE BRAM_CTRL, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, READ_LATENCY 1";
  attribute X_INTERFACE_INFO of M_AXIS_1_tdata : signal is "xilinx.com:interface:axis:1.0 M_AXIS_1 TDATA";
begin
  BRAM_PORT_clk <= \^axis_aclk\;
  BRAM_PORT_din(31) <= \<const0>\;
  BRAM_PORT_din(30) <= \<const0>\;
  BRAM_PORT_din(29) <= \<const0>\;
  BRAM_PORT_din(28) <= \<const0>\;
  BRAM_PORT_din(27) <= \<const0>\;
  BRAM_PORT_din(26) <= \<const0>\;
  BRAM_PORT_din(25) <= \<const0>\;
  BRAM_PORT_din(24) <= \<const0>\;
  BRAM_PORT_din(23) <= \<const0>\;
  BRAM_PORT_din(22) <= \<const0>\;
  BRAM_PORT_din(21) <= \<const0>\;
  BRAM_PORT_din(20) <= \<const0>\;
  BRAM_PORT_din(19) <= \<const0>\;
  BRAM_PORT_din(18) <= \<const0>\;
  BRAM_PORT_din(17) <= \<const0>\;
  BRAM_PORT_din(16) <= \<const0>\;
  BRAM_PORT_din(15) <= \<const0>\;
  BRAM_PORT_din(14) <= \<const0>\;
  BRAM_PORT_din(13) <= \<const0>\;
  BRAM_PORT_din(12) <= \<const0>\;
  BRAM_PORT_din(11) <= \<const0>\;
  BRAM_PORT_din(10) <= \<const0>\;
  BRAM_PORT_din(9) <= \<const0>\;
  BRAM_PORT_din(8) <= \<const0>\;
  BRAM_PORT_din(7) <= \<const0>\;
  BRAM_PORT_din(6) <= \<const0>\;
  BRAM_PORT_din(5) <= \<const0>\;
  BRAM_PORT_din(4) <= \<const0>\;
  BRAM_PORT_din(3) <= \<const0>\;
  BRAM_PORT_din(2) <= \<const0>\;
  BRAM_PORT_din(1) <= \<const0>\;
  BRAM_PORT_din(0) <= \<const0>\;
  BRAM_PORT_en <= \<const1>\;
  BRAM_PORT_rst <= \<const0>\;
  BRAM_PORT_we(0) <= \<const0>\;
  M_AXIS_1_tlast <= \<const0>\;
  \^axis_aclk\ <= axis_aclk;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
inst: entity work.zf_equalizer_pilot_scheduler_0_0_pilot_scheduler
     port map (
      BRAM_PORT_addr(31 downto 0) => BRAM_PORT_addr(31 downto 0),
      BRAM_PORT_dout(31 downto 0) => BRAM_PORT_dout(31 downto 0),
      M_AXIS_1_tdata(31 downto 0) => M_AXIS_1_tdata(31 downto 0),
      M_AXIS_1_tvalid => M_AXIS_1_tvalid,
      axis_aclk => \^axis_aclk\,
      axis_aresetn => axis_aresetn,
      i_stage_1_en => i_stage_1_en,
      i_valid_frame => i_valid_frame
    );
end STRUCTURE;
