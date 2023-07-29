
################################################################
# This is a generated script based on design: design_1
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
set scripts_vivado_version 2017.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source design_1_script.tcl

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xcku035-ffva1156-3-e
}


# CHANGE DESIGN NAME HERE
set design_name design_1

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
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

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

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports

  # Create ports
  set a_0 [ create_bd_port -dir I -from 31 -to 0 -type data a_0 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $a_0
  set a_1 [ create_bd_port -dir I -from 31 -to 0 -type data a_1 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $a_1
  set a_2 [ create_bd_port -dir I -from 31 -to 0 -type data a_2 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $a_2
  set a_3 [ create_bd_port -dir I -from 31 -to 0 -type data a_3 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $a_3
  set a_4 [ create_bd_port -dir I -from 31 -to 0 -type data a_4 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $a_4
  set a_5 [ create_bd_port -dir I -from 31 -to 0 -type data a_5 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $a_5
  set a_6 [ create_bd_port -dir I -from 31 -to 0 -type data a_6 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $a_6
  set a_7 [ create_bd_port -dir I -from 31 -to 0 -type data a_7 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $a_7
  set ap_clk [ create_bd_port -dir I -type clk ap_clk ]
  set_property -dict [ list \
CONFIG.FREQ_HZ {100000000} \
 ] $ap_clk
  set ap_done [ create_bd_port -dir O ap_done ]
  set ap_idle [ create_bd_port -dir O ap_idle ]
  set ap_ready [ create_bd_port -dir O ap_ready ]
  set ap_rst [ create_bd_port -dir I -type rst ap_rst ]
  set_property -dict [ list \
CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $ap_rst
  set ap_start [ create_bd_port -dir I ap_start ]
  set b_0 [ create_bd_port -dir I -from 31 -to 0 -type data b_0 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $b_0
  set b_1 [ create_bd_port -dir I -from 31 -to 0 -type data b_1 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $b_1
  set b_2 [ create_bd_port -dir I -from 31 -to 0 -type data b_2 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $b_2
  set b_3 [ create_bd_port -dir I -from 31 -to 0 -type data b_3 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $b_3
  set b_4 [ create_bd_port -dir I -from 31 -to 0 -type data b_4 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $b_4
  set b_5 [ create_bd_port -dir I -from 31 -to 0 -type data b_5 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $b_5
  set b_6 [ create_bd_port -dir I -from 31 -to 0 -type data b_6 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $b_6
  set b_7 [ create_bd_port -dir I -from 31 -to 0 -type data b_7 ]
  set_property -dict [ list \
CONFIG.LAYERED_METADATA {xilinx.com:interface:datatypes:1.0 {DATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} real {float {sigwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 24}}}}}}} \
 ] $b_7
  set c_0 [ create_bd_port -dir O -from 31 -to 0 -type data c_0 ]
  set c_0_ap_vld [ create_bd_port -dir O c_0_ap_vld ]
  set c_1 [ create_bd_port -dir O -from 31 -to 0 -type data c_1 ]
  set c_1_ap_vld [ create_bd_port -dir O c_1_ap_vld ]
  set c_2 [ create_bd_port -dir O -from 31 -to 0 -type data c_2 ]
  set c_2_ap_vld [ create_bd_port -dir O c_2_ap_vld ]
  set c_3 [ create_bd_port -dir O -from 31 -to 0 -type data c_3 ]
  set c_3_ap_vld [ create_bd_port -dir O c_3_ap_vld ]
  set c_4 [ create_bd_port -dir O -from 31 -to 0 -type data c_4 ]
  set c_4_ap_vld [ create_bd_port -dir O c_4_ap_vld ]
  set c_5 [ create_bd_port -dir O -from 31 -to 0 -type data c_5 ]
  set c_5_ap_vld [ create_bd_port -dir O c_5_ap_vld ]
  set c_6 [ create_bd_port -dir O -from 31 -to 0 -type data c_6 ]
  set c_6_ap_vld [ create_bd_port -dir O c_6_ap_vld ]
  set c_7 [ create_bd_port -dir O -from 31 -to 0 -type data c_7 ]
  set c_7_ap_vld [ create_bd_port -dir O c_7_ap_vld ]

  # Create instance: simple_0, and set properties
  set simple_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:simple:1.0 simple_0 ]

  # Create port connections
  connect_bd_net -net a_0_1 [get_bd_ports a_0] [get_bd_pins simple_0/a_0]
  connect_bd_net -net a_1_1 [get_bd_ports a_1] [get_bd_pins simple_0/a_1]
  connect_bd_net -net a_2_1 [get_bd_ports a_2] [get_bd_pins simple_0/a_2]
  connect_bd_net -net a_3_1 [get_bd_ports a_3] [get_bd_pins simple_0/a_3]
  connect_bd_net -net a_4_1 [get_bd_ports a_4] [get_bd_pins simple_0/a_4]
  connect_bd_net -net a_5_1 [get_bd_ports a_5] [get_bd_pins simple_0/a_5]
  connect_bd_net -net a_6_1 [get_bd_ports a_6] [get_bd_pins simple_0/a_6]
  connect_bd_net -net a_7_1 [get_bd_ports a_7] [get_bd_pins simple_0/a_7]
  connect_bd_net -net ap_clk_1 [get_bd_ports ap_clk] [get_bd_pins simple_0/ap_clk]
  connect_bd_net -net ap_rst_1 [get_bd_ports ap_rst] [get_bd_pins simple_0/ap_rst]
  connect_bd_net -net ap_start_1 [get_bd_ports ap_start] [get_bd_pins simple_0/ap_start]
  connect_bd_net -net b_0_1 [get_bd_ports b_0] [get_bd_pins simple_0/b_0]
  connect_bd_net -net b_1_1 [get_bd_ports b_1] [get_bd_pins simple_0/b_1]
  connect_bd_net -net b_2_1 [get_bd_ports b_2] [get_bd_pins simple_0/b_2]
  connect_bd_net -net b_3_1 [get_bd_ports b_3] [get_bd_pins simple_0/b_3]
  connect_bd_net -net b_4_1 [get_bd_ports b_4] [get_bd_pins simple_0/b_4]
  connect_bd_net -net b_5_1 [get_bd_ports b_5] [get_bd_pins simple_0/b_5]
  connect_bd_net -net b_6_1 [get_bd_ports b_6] [get_bd_pins simple_0/b_6]
  connect_bd_net -net b_7_1 [get_bd_ports b_7] [get_bd_pins simple_0/b_7]
  connect_bd_net -net simple_0_ap_done [get_bd_ports ap_done] [get_bd_pins simple_0/ap_done]
  connect_bd_net -net simple_0_ap_idle [get_bd_ports ap_idle] [get_bd_pins simple_0/ap_idle]
  connect_bd_net -net simple_0_ap_ready [get_bd_ports ap_ready] [get_bd_pins simple_0/ap_ready]
  connect_bd_net -net simple_0_c_0 [get_bd_ports c_0] [get_bd_pins simple_0/c_0]
  connect_bd_net -net simple_0_c_0_ap_vld [get_bd_ports c_0_ap_vld] [get_bd_pins simple_0/c_0_ap_vld]
  connect_bd_net -net simple_0_c_1 [get_bd_ports c_1] [get_bd_pins simple_0/c_1]
  connect_bd_net -net simple_0_c_1_ap_vld [get_bd_ports c_1_ap_vld] [get_bd_pins simple_0/c_1_ap_vld]
  connect_bd_net -net simple_0_c_2 [get_bd_ports c_2] [get_bd_pins simple_0/c_2]
  connect_bd_net -net simple_0_c_2_ap_vld [get_bd_ports c_2_ap_vld] [get_bd_pins simple_0/c_2_ap_vld]
  connect_bd_net -net simple_0_c_3 [get_bd_ports c_3] [get_bd_pins simple_0/c_3]
  connect_bd_net -net simple_0_c_3_ap_vld [get_bd_ports c_3_ap_vld] [get_bd_pins simple_0/c_3_ap_vld]
  connect_bd_net -net simple_0_c_4 [get_bd_ports c_4] [get_bd_pins simple_0/c_4]
  connect_bd_net -net simple_0_c_4_ap_vld [get_bd_ports c_4_ap_vld] [get_bd_pins simple_0/c_4_ap_vld]
  connect_bd_net -net simple_0_c_5 [get_bd_ports c_5] [get_bd_pins simple_0/c_5]
  connect_bd_net -net simple_0_c_5_ap_vld [get_bd_ports c_5_ap_vld] [get_bd_pins simple_0/c_5_ap_vld]
  connect_bd_net -net simple_0_c_6 [get_bd_ports c_6] [get_bd_pins simple_0/c_6]
  connect_bd_net -net simple_0_c_6_ap_vld [get_bd_ports c_6_ap_vld] [get_bd_pins simple_0/c_6_ap_vld]
  connect_bd_net -net simple_0_c_7 [get_bd_ports c_7] [get_bd_pins simple_0/c_7]
  connect_bd_net -net simple_0_c_7_ap_vld [get_bd_ports c_7_ap_vld] [get_bd_pins simple_0/c_7_ap_vld]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


