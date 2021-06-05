
################################################################
# This is a generated script based on design: seg_decoder
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
set scripts_vivado_version 2019.2
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
# source seg_decoder_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Debouncer, clk_divider, decoder, decoder, decoder, decoder, multiplexer, two_bit_counter

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a35tcpg236-1
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name seg_decoder

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
  variable design_name

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
  set anode [ create_bd_port -dir O -from 0 -to 3 anode ]
  set btn [ create_bd_port -dir I btn ]
  set clkin [ create_bd_port -dir I -type clk clkin ]
  set outseg [ create_bd_port -dir O -from 0 -to 6 outseg ]
  set reset [ create_bd_port -dir I -type rst reset ]
  set switch_0 [ create_bd_port -dir I -from 3 -to 0 switch_0 ]
  set switch_1 [ create_bd_port -dir I -from 3 -to 0 switch_1 ]
  set switch_2 [ create_bd_port -dir I -from 3 -to 0 switch_2 ]
  set switch_3 [ create_bd_port -dir I -from 3 -to 0 switch_3 ]

  # Create instance: Debouncer_0, and set properties
  set block_name Debouncer
  set block_cell_name Debouncer_0
  if { [catch {set Debouncer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Debouncer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: clk_divider_1khz, and set properties
  set block_name clk_divider
  set block_cell_name clk_divider_1khz
  if { [catch {set clk_divider_1khz [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $clk_divider_1khz eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decoder0, and set properties
  set block_name decoder
  set block_cell_name decoder0
  if { [catch {set decoder0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $decoder0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decoder1, and set properties
  set block_name decoder
  set block_cell_name decoder1
  if { [catch {set decoder1 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $decoder1 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decoder2, and set properties
  set block_name decoder
  set block_cell_name decoder2
  if { [catch {set decoder2 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $decoder2 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: decoder3, and set properties
  set block_name decoder
  set block_cell_name decoder3
  if { [catch {set decoder3 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $decoder3 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: multiplexer_0, and set properties
  set block_name multiplexer
  set block_cell_name multiplexer_0
  if { [catch {set multiplexer_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $multiplexer_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: two_bit_counter_0, and set properties
  set block_name two_bit_counter
  set block_cell_name two_bit_counter_0
  if { [catch {set two_bit_counter_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $two_bit_counter_0 eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create port connections
  connect_bd_net -net Debouncer_0_btn_out [get_bd_pins Debouncer_0/btn_out] [get_bd_pins decoder0/btn_in] [get_bd_pins decoder1/btn_in] [get_bd_pins decoder2/btn_in] [get_bd_pins decoder3/btn_in] [get_bd_pins multiplexer_0/btn]
  connect_bd_net -net btn_1 [get_bd_ports btn] [get_bd_pins Debouncer_0/btn_in]
  connect_bd_net -net clk_divider_1khz_clkout [get_bd_pins clk_divider_1khz/clkout] [get_bd_pins two_bit_counter_0/clk]
  connect_bd_net -net clkin_0_1 [get_bd_ports clkin] [get_bd_pins Debouncer_0/clkin] [get_bd_pins clk_divider_1khz/clkin]
  connect_bd_net -net decoder_0_segment_out [get_bd_pins decoder1/segment_out] [get_bd_pins multiplexer_0/seg1]
  connect_bd_net -net decoder_1_segment_out [get_bd_pins decoder2/segment_out] [get_bd_pins multiplexer_0/seg2]
  connect_bd_net -net decoder_2_segment_out [get_bd_pins decoder0/segment_out] [get_bd_pins multiplexer_0/seg0]
  connect_bd_net -net decoder_3_segment_out [get_bd_pins decoder3/segment_out] [get_bd_pins multiplexer_0/seg3]
  connect_bd_net -net multiplexer_0_anode [get_bd_ports anode] [get_bd_pins multiplexer_0/anode]
  connect_bd_net -net multiplexer_0_outseg [get_bd_ports outseg] [get_bd_pins multiplexer_0/outseg]
  connect_bd_net -net reset_0_1 [get_bd_ports reset] [get_bd_pins Debouncer_0/reset] [get_bd_pins clk_divider_1khz/reset] [get_bd_pins decoder0/reset] [get_bd_pins decoder1/reset] [get_bd_pins decoder2/reset] [get_bd_pins decoder3/reset] [get_bd_pins multiplexer_0/reset] [get_bd_pins two_bit_counter_0/reset]
  connect_bd_net -net switch_0 [get_bd_ports switch_0] [get_bd_pins decoder0/switch]
  connect_bd_net -net switch_1 [get_bd_ports switch_1] [get_bd_pins decoder1/switch]
  connect_bd_net -net switch_2 [get_bd_ports switch_2] [get_bd_pins decoder2/switch]
  connect_bd_net -net switch_3 [get_bd_ports switch_3] [get_bd_pins decoder3/switch]
  connect_bd_net -net two_bit_counter_0_count [get_bd_pins multiplexer_0/sel] [get_bd_pins two_bit_counter_0/count]

  # Create address segments


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


