
################################################################
# This is a generated script based on design: zf_equalizer
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2022.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   common::send_gid_msg -ssname BD::TCL -id 2040 -severity "WARNING" "This script was generated using Vivado <$scripts_vivado_version> without IP versions in the create_bd_cell commands, but is now being run in <$current_vivado_version> of Vivado. There may have been major IP version changes between Vivado <$scripts_vivado_version> and <$current_vivado_version>, which could impact the parameter settings of the IPs."

}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source zf_equalizer_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# axis_splitter, mux, pilot_delete, pilot_scheduler, polar_to_cartesian_cordic, axis_splitter, channel_estimate, equalization, pilot_extract_zp_remove

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xczu28dr-ffvg1517-2-e
   set_property BOARD_PART xilinx.com:zcu111:part0:1.4 [current_project]
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name zf_equalizer

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:axi_bram_ctrl:*\
xilinx.com:ip:blk_mem_gen:*\
xilinx.com:ip:axis_register_slice:*\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
axis_splitter\
mux\
pilot_delete\
pilot_scheduler\
polar_to_cartesian_cordic\
axis_splitter\
channel_estimate\
equalization\
pilot_extract_zp_remove\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################


# Hierarchical cell: Normalized_ZF_stage_1
proc create_hier_cell_Normalized_ZF_stage_1 { parentCell nameHier } {

  variable script_folder

  if { $parentCell eq "" || $nameHier eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2092 -severity "ERROR" "create_hier_cell_Normalized_ZF_stage_1() - Empty argument(s)!"}
     return
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj

  # Create cell and set as current instance
  set hier_obj [create_bd_cell -type hier $nameHier]
  current_bd_instance $hier_obj

  # Create interface pins
  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis

  create_bd_intf_pin -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis1

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis

  create_bd_intf_pin -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_pilot_tx_axis


  # Create pins
  create_bd_pin -dir I -type clk aclk
  create_bd_pin -dir I -type rst aresetn
  create_bd_pin -dir O o_read_tx_pilots
  create_bd_pin -dir O o_valid_frame

  # Create instance: axis_register_slice_0, and set properties
  set axis_register_slice_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axis_register_slice axis_register_slice_0 ]

  # Create instance: axis_splitter_0, and set properties
  set block_name axis_splitter
  set block_cell_name axis_splitter_0
  if { [catch {set axis_splitter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axis_splitter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: channel_estimate_0, and set properties
  set block_name channel_estimate
  set block_cell_name channel_estimate_0
  if { [catch {set channel_estimate_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $channel_estimate_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.FREQ_HZ {249997498} \
 ] [get_bd_intf_pins /Normalized_ZF_stage_1/channel_estimate_0/m_axis]

  # Create instance: equalization_0, and set properties
  set block_name equalization
  set block_cell_name equalization_0
  if { [catch {set equalization_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $equalization_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pilot_extract_zp_rem_0, and set properties
  set block_name pilot_extract_zp_remove
  set block_cell_name pilot_extract_zp_rem_0
  if { [catch {set pilot_extract_zp_rem_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pilot_extract_zp_rem_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net Conn1 [get_bd_intf_pins m_axis1] [get_bd_intf_pins axis_splitter_0/m_axis1]
  connect_bd_intf_net -intf_net Conn2 [get_bd_intf_pins s_pilot_tx_axis] [get_bd_intf_pins channel_estimate_0/s_pilot_tx_axis]
  connect_bd_intf_net -intf_net Conn3 [get_bd_intf_pins m_axis] [get_bd_intf_pins equalization_0/m_axis]
  connect_bd_intf_net -intf_net axis_register_slice_0_M_AXIS [get_bd_intf_pins axis_register_slice_0/M_AXIS] [get_bd_intf_pins channel_estimate_0/s_pilot_rx_axis]
  connect_bd_intf_net -intf_net axis_splitter_0_m_axis0 [get_bd_intf_pins axis_splitter_0/m_axis0] [get_bd_intf_pins channel_estimate_0/s_data_axis]
  connect_bd_intf_net -intf_net channel_estimate_0_m_axis [get_bd_intf_pins channel_estimate_0/m_axis] [get_bd_intf_pins equalization_0/s_din_axis]
  connect_bd_intf_net -intf_net channel_estimate_0_m_ch_est_axis [get_bd_intf_pins channel_estimate_0/m_ch_est_axis] [get_bd_intf_pins equalization_0/s_ch_est_axis]
  connect_bd_intf_net -intf_net pilot_extract_zp_rem_0_m_axis [get_bd_intf_pins axis_splitter_0/s_axis] [get_bd_intf_pins pilot_extract_zp_rem_0/m_axis]
  connect_bd_intf_net -intf_net pilot_extract_zp_rem_0_m_pilot_axis [get_bd_intf_pins axis_register_slice_0/S_AXIS] [get_bd_intf_pins pilot_extract_zp_rem_0/m_pilot_axis]
  connect_bd_intf_net -intf_net s_axis_1 [get_bd_intf_pins s_axis] [get_bd_intf_pins pilot_extract_zp_rem_0/s_axis]

  # Create port connections
  connect_bd_net -net aclk_1 [get_bd_pins aclk] [get_bd_pins axis_register_slice_0/aclk] [get_bd_pins axis_splitter_0/axis_aclk] [get_bd_pins channel_estimate_0/axis_aclk] [get_bd_pins equalization_0/axis_aclk] [get_bd_pins pilot_extract_zp_rem_0/axis_aclk]
  connect_bd_net -net aresetn_1 [get_bd_pins aresetn] [get_bd_pins axis_register_slice_0/aresetn] [get_bd_pins axis_splitter_0/axis_aresetn] [get_bd_pins channel_estimate_0/axis_aresetn] [get_bd_pins equalization_0/axis_aresetn] [get_bd_pins pilot_extract_zp_rem_0/axis_aresetn]
  connect_bd_net -net channel_estimate_0_o_read_tx_pilots [get_bd_pins o_read_tx_pilots] [get_bd_pins channel_estimate_0/o_read_tx_pilots]
  connect_bd_net -net pilot_extract_zp_rem_0_o_valid_frame [get_bd_pins o_valid_frame] [get_bd_pins pilot_extract_zp_rem_0/o_valid_frame]

  # Restore current instance
  current_bd_instance $oldCurInst
}


# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set m_axis [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 m_axis ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {249997498} \
   ] $m_axis

  set s_axi [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:aximm_rtl:1.0 s_axi ]
  set_property -dict [ list \
   CONFIG.ADDR_WIDTH {15} \
   CONFIG.ARUSER_WIDTH {0} \
   CONFIG.AWUSER_WIDTH {0} \
   CONFIG.BUSER_WIDTH {0} \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.FREQ_HZ {249997498} \
   CONFIG.HAS_BRESP {1} \
   CONFIG.HAS_BURST {1} \
   CONFIG.HAS_CACHE {1} \
   CONFIG.HAS_LOCK {1} \
   CONFIG.HAS_PROT {1} \
   CONFIG.HAS_QOS {0} \
   CONFIG.HAS_REGION {0} \
   CONFIG.HAS_RRESP {1} \
   CONFIG.HAS_WSTRB {1} \
   CONFIG.ID_WIDTH {0} \
   CONFIG.MAX_BURST_LENGTH {256} \
   CONFIG.NUM_READ_OUTSTANDING {2} \
   CONFIG.NUM_READ_THREADS {1} \
   CONFIG.NUM_WRITE_OUTSTANDING {2} \
   CONFIG.NUM_WRITE_THREADS {1} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_WRITE_MODE {READ_WRITE} \
   CONFIG.RUSER_BITS_PER_BYTE {0} \
   CONFIG.RUSER_WIDTH {0} \
   CONFIG.SUPPORTS_NARROW_BURST {1} \
   CONFIG.WUSER_BITS_PER_BYTE {0} \
   CONFIG.WUSER_WIDTH {0} \
   ] $s_axi

  set s_axis [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 s_axis ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {249997498} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {0} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {16} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {8} \
   CONFIG.TUSER_WIDTH {8} \
   ] $s_axis


  # Create ports
  set aclk [ create_bd_port -dir I -type clk -freq_hz 249997498 aclk ]
  set_property -dict [ list \
   CONFIG.ASSOCIATED_BUSIF {m_axis:s_axis:s_axi} \
   CONFIG.ASSOCIATED_RESET {aresetn} \
 ] $aclk
  set aresetn [ create_bd_port -dir I -type rst aresetn ]
  set bypass [ create_bd_port -dir I bypass ]

  # Create instance: Normalized_ZF_stage_1
  create_hier_cell_Normalized_ZF_stage_1 [current_bd_instance .] Normalized_ZF_stage_1

  # Create instance: axi_bram_ctrl_0, and set properties
  set axi_bram_ctrl_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl axi_bram_ctrl_0 ]
  set_property -dict [ list \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $axi_bram_ctrl_0

  # Create instance: axis_splitter_0, and set properties
  set block_name axis_splitter
  set block_cell_name axis_splitter_0
  if { [catch {set axis_splitter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $axis_splitter_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: blk_mem_gen_0, and set properties
  set blk_mem_gen_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen blk_mem_gen_0 ]
  set_property -dict [ list \
   CONFIG.Byte_Size {9} \
   CONFIG.Coe_File {c:/Projects/pi-radio/HW/modules/sim/zf_equalizer/bram_pilot_init.coe} \
   CONFIG.EN_SAFETY_CKT {false} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Fill_Remaining_Memory_Locations {true} \
   CONFIG.Load_Init_File {true} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_A_Write_Rate {50} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {true} \
   CONFIG.Use_Byte_Write_Enable {false} \
   CONFIG.Use_RSTA_Pin {false} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {10240} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $blk_mem_gen_0

  # Create instance: mux_0, and set properties
  set block_name mux
  set block_cell_name mux_0
  if { [catch {set mux_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mux_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
    set_property -dict [ list \
   CONFIG.g_TDATA_WIDTH {96} \
 ] $mux_0

  # Create instance: pilot_delete_0, and set properties
  set block_name pilot_delete
  set block_cell_name pilot_delete_0
  if { [catch {set pilot_delete_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pilot_delete_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: pilot_scheduler_0, and set properties
  set block_name pilot_scheduler
  set block_cell_name pilot_scheduler_0
  if { [catch {set pilot_scheduler_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $pilot_scheduler_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  set_property -dict [ list \
   CONFIG.FREQ_HZ {249997498} \
 ] [get_bd_intf_pins /pilot_scheduler_0/M_AXIS_1]

  # Create instance: polar_to_cartesian, and set properties
  set block_name polar_to_cartesian_cordic
  set block_cell_name polar_to_cartesian
  if { [catch {set polar_to_cartesian [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $polar_to_cartesian eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create interface connections
  connect_bd_intf_net -intf_net Normalized_ZF_stage_1_m_axis [get_bd_intf_pins Normalized_ZF_stage_1/m_axis] [get_bd_intf_pins polar_to_cartesian/s_axis]
  connect_bd_intf_net -intf_net Normalized_ZF_stage_1_m_axis1 [get_bd_intf_pins Normalized_ZF_stage_1/m_axis1] [get_bd_intf_pins pilot_delete_0/s_axis]
  connect_bd_intf_net -intf_net S_AXI_0_1 [get_bd_intf_ports s_axi] [get_bd_intf_pins axi_bram_ctrl_0/S_AXI]
  connect_bd_intf_net -intf_net axi_bram_ctrl_0_BRAM_PORTA [get_bd_intf_pins axi_bram_ctrl_0/BRAM_PORTA] [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTA]
  connect_bd_intf_net -intf_net axis_splitter_0_m_axis0 [get_bd_intf_pins Normalized_ZF_stage_1/s_axis] [get_bd_intf_pins axis_splitter_0/m_axis0]
  connect_bd_intf_net -intf_net mux_0_m_axis [get_bd_intf_ports m_axis] [get_bd_intf_pins mux_0/m_axis]
  connect_bd_intf_net -intf_net pilot_delete_0_m_axis [get_bd_intf_pins mux_0/s_axis1] [get_bd_intf_pins pilot_delete_0/m_axis]
  connect_bd_intf_net -intf_net pilot_scheduler_0_BRAM_PORT [get_bd_intf_pins blk_mem_gen_0/BRAM_PORTB] [get_bd_intf_pins pilot_scheduler_0/BRAM_PORT]
  connect_bd_intf_net -intf_net pilot_scheduler_0_M_AXIS_1 [get_bd_intf_pins Normalized_ZF_stage_1/s_pilot_tx_axis] [get_bd_intf_pins pilot_scheduler_0/M_AXIS_1]
  connect_bd_intf_net -intf_net polar_to_cartesian_c_0_m_axis [get_bd_intf_pins mux_0/s_axis0] [get_bd_intf_pins polar_to_cartesian/m_axis]
  connect_bd_intf_net -intf_net s_axis_0_1 [get_bd_intf_ports s_axis] [get_bd_intf_pins axis_splitter_0/s_axis]

  # Create port connections
  connect_bd_net -net Normalized_ZF_stage_1_o_read_tx_pilots [get_bd_pins Normalized_ZF_stage_1/o_read_tx_pilots] [get_bd_pins pilot_scheduler_0/i_stage_1_en]
  connect_bd_net -net Normalized_ZF_stage_1_o_valid_frame [get_bd_pins Normalized_ZF_stage_1/o_valid_frame] [get_bd_pins pilot_scheduler_0/i_valid_frame]
  connect_bd_net -net aclk_0_1 [get_bd_ports aclk] [get_bd_pins Normalized_ZF_stage_1/aclk] [get_bd_pins axi_bram_ctrl_0/s_axi_aclk] [get_bd_pins axis_splitter_0/axis_aclk] [get_bd_pins mux_0/axis_aclk] [get_bd_pins pilot_delete_0/axis_aclk] [get_bd_pins pilot_scheduler_0/axis_aclk] [get_bd_pins polar_to_cartesian/axis_aclk]
  connect_bd_net -net aresetn_0_1 [get_bd_ports aresetn] [get_bd_pins Normalized_ZF_stage_1/aresetn] [get_bd_pins axi_bram_ctrl_0/s_axi_aresetn] [get_bd_pins axis_splitter_0/axis_aresetn] [get_bd_pins mux_0/axis_aresetn] [get_bd_pins pilot_delete_0/axis_aresetn] [get_bd_pins pilot_scheduler_0/axis_aresetn] [get_bd_pins polar_to_cartesian/axis_aresetn]
  connect_bd_net -net i_select_0_1 [get_bd_ports bypass] [get_bd_pins mux_0/i_select]

  # Create address segments
  assign_bd_address -offset 0x00000000 -range 0x00001000 -target_address_space [get_bd_addr_spaces s_axi] [get_bd_addr_segs axi_bram_ctrl_0/S_AXI/Mem0] -force


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


