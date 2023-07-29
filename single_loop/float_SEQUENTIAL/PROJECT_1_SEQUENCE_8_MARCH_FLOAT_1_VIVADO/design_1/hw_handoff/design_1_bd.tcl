
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
   create_project project_1 myproj -part xc7a35tcpg236-2
}


# CHANGE DESIGN NAME HERE
set design_name design_1

# This script was generated for a remote BD. To create a non-remote design,
# change the variable <run_remote_bd_flow> to <0>.

set run_remote_bd_flow 1
if { $run_remote_bd_flow == 1 } {
  # Set the reference directory for source file relative paths (by default 
  # the value is script directory path)
  set origin_dir ./project_1_sequence_8_march_float_1

  # Use origin directory path location variable, if specified in the tcl shell
  if { [info exists ::origin_dir_loc] } {
     set origin_dir $::origin_dir_loc
  }

  set str_bd_folder [file normalize ${origin_dir}]
  set str_bd_filepath ${str_bd_folder}/${design_name}/${design_name}.bd

  # Check if remote design exists on disk
  if { [file exists $str_bd_filepath ] == 1 } {
     catch {common::send_msg_id "BD_TCL-110" "ERROR" "The remote BD file path <$str_bd_filepath> already exists!"}
     common::send_msg_id "BD_TCL-008" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0>."
     common::send_msg_id "BD_TCL-009" "INFO" "Also make sure there is no design <$design_name> existing in your current project."

     return 1
  }

  # Check if design exists in memory
  set list_existing_designs [get_bd_designs -quiet $design_name]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-111" "ERROR" "The design <$design_name> already exists in this project! Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-010" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Check if design exists on disk within project
  set list_existing_designs [get_files -quiet */${design_name}.bd]
  if { $list_existing_designs ne "" } {
     catch {common::send_msg_id "BD_TCL-112" "ERROR" "The design <$design_name> already exists in this project at location:
    $list_existing_designs"}
     catch {common::send_msg_id "BD_TCL-113" "ERROR" "Will not create the remote BD <$design_name> at the folder <$str_bd_folder>."}

     common::send_msg_id "BD_TCL-011" "INFO" "To create a non-remote BD, change the variable <run_remote_bd_flow> to <0> or please set a different value to variable <design_name>."

     return 1
  }

  # Now can create the remote BD
  # NOTE - usage of <-dir> will create <$str_bd_folder/$design_name/$design_name.bd>
  create_bd_design -dir $str_bd_folder $design_name
} else {

  # Create regular design
  if { [catch {create_bd_design $design_name} errmsg] } {
     common::send_msg_id "BD_TCL-012" "INFO" "Please set a different value to variable <design_name>."

     return 1
  }
}

current_bd_design $design_name

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
  set c_d0 [ create_bd_port -dir O -from 31 -to 0 -type data c_d0 ]
  set din [ create_bd_port -dir I -from 31 -to 0 -type data din ]
  set din_1 [ create_bd_port -dir I -from 31 -to 0 -type data din_1 ]
  set wr_en [ create_bd_port -dir I wr_en ]
  set wr_en_1 [ create_bd_port -dir I wr_en_1 ]

  # Create instance: fifo_generator_0, and set properties
  set fifo_generator_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_0 ]
  set_property -dict [ list \
CONFIG.Input_Data_Width {32} \
CONFIG.Output_Data_Width {32} \
 ] $fifo_generator_0

  # Create instance: fifo_generator_1, and set properties
  set fifo_generator_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:fifo_generator:13.1 fifo_generator_1 ]
  set_property -dict [ list \
CONFIG.Input_Data_Width {32} \
CONFIG.Output_Data_Width {32} \
 ] $fifo_generator_1

  # Create instance: simple_0, and set properties
  set simple_0 [ create_bd_cell -type ip -vlnv xilinx.com:hls:simple:1.0 simple_0 ]

  # Create port connections
  connect_bd_net -net Net [get_bd_ports ap_clk] [get_bd_pins fifo_generator_0/clk] [get_bd_pins fifo_generator_1/clk] [get_bd_pins simple_0/ap_clk]
  connect_bd_net -net Net1 [get_bd_ports ap_rst] [get_bd_pins fifo_generator_0/srst] [get_bd_pins fifo_generator_1/srst] [get_bd_pins simple_0/ap_rst]
  connect_bd_net -net ap_start_1 [get_bd_ports ap_start] [get_bd_pins simple_0/ap_start]
  connect_bd_net -net din_1 [get_bd_ports din] [get_bd_pins fifo_generator_0/din]
  connect_bd_net -net din_1_1 [get_bd_ports din_1] [get_bd_pins fifo_generator_1/din]
  connect_bd_net -net fifo_generator_0_dout [get_bd_pins fifo_generator_0/dout] [get_bd_pins simple_0/a_q0]
  connect_bd_net -net fifo_generator_1_dout [get_bd_pins fifo_generator_1/dout] [get_bd_pins simple_0/b_q0]
  connect_bd_net -net simple_0_a_ce0 [get_bd_pins fifo_generator_0/rd_en] [get_bd_pins simple_0/a_ce0]
  connect_bd_net -net simple_0_ap_done [get_bd_ports ap_done] [get_bd_pins simple_0/ap_done]
  connect_bd_net -net simple_0_ap_idle [get_bd_ports ap_idle] [get_bd_pins simple_0/ap_idle]
  connect_bd_net -net simple_0_ap_ready [get_bd_ports ap_ready] [get_bd_pins simple_0/ap_ready]
  connect_bd_net -net simple_0_b_ce0 [get_bd_pins fifo_generator_1/rd_en] [get_bd_pins simple_0/b_ce0]
  connect_bd_net -net simple_0_c_d0 [get_bd_ports c_d0] [get_bd_pins simple_0/c_d0]
  connect_bd_net -net wr_en_1 [get_bd_ports wr_en] [get_bd_pins fifo_generator_0/wr_en]
  connect_bd_net -net wr_en_1_1 [get_bd_ports wr_en_1] [get_bd_pins fifo_generator_1/wr_en]

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


