
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
set scripts_vivado_version 2020.1
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

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
   create_project project_1 myproj -part xc7k70tfbv676-1
}


# CHANGE DESIGN NAME HERE
variable design_name
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

  # Create ports
  set AT0 [ create_bd_port -dir O AT0 ]
  set AT1 [ create_bd_port -dir O AT1 ]
  set AT2 [ create_bd_port -dir O AT2 ]
  set CMD [ create_bd_port -dir O CMD ]
  set CMU [ create_bd_port -dir O CMU ]
  set DRC [ create_bd_port -dir O DRC ]
  set DRO [ create_bd_port -dir O DRO ]
  set FC0 [ create_bd_port -dir I FC0 ]
  set FC2 [ create_bd_port -dir I FC2 ]
  set FCD1 [ create_bd_port -dir I FCD1 ]
  set FCU1 [ create_bd_port -dir I FCU1 ]
  set GT0 [ create_bd_port -dir I GT0 ]
  set GT1 [ create_bd_port -dir I GT1 ]
  set GT2 [ create_bd_port -dir I GT2 ]
  set clk [ create_bd_port -dir I clk ]
  set en [ create_bd_port -dir I en ]
  set enabling [ create_bd_port -dir I enabling ]
  set reset [ create_bd_port -dir I reset ]

  # Create instance: C0, and set properties
  set C0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 C0 ]

  # Create instance: C1, and set properties
  set C1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 C1 ]

  # Create instance: C2, and set properties
  set C2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 C2 ]

  # Create instance: Flr0, and set properties
  set Flr0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 Flr0 ]

  # Create instance: Flr1, and set properties
  set Flr1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 Flr1 ]

  # Create instance: Flr2, and set properties
  set Flr2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 Flr2 ]

  # Create instance: GD1, and set properties
  set GD1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 GD1 ]

  # Create instance: GD2, and set properties
  set GD2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 GD2 ]

  # Create instance: GU1, and set properties
  set GU1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 GU1 ]

  # Create instance: GU2, and set properties
  set GU2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 GU2 ]

  # Create instance: O0, and set properties
  set O0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 O0 ]

  # Create instance: O1, and set properties
  set O1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 O1 ]

  # Create instance: O2, and set properties
  set O2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 O2 ]

  # Create instance: S0, and set properties
  set S0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 S0 ]

  # Create instance: S1, and set properties
  set S1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 S1 ]

  # Create instance: S2, and set properties
  set S2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_dff_en_reset:1.0 S2 ]

  # Create instance: fc0not, and set properties
  set fc0not [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 fc0not ]

  # Create instance: fc2not, and set properties
  set fc2not [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 fc2not ]

  # Create instance: fcd1not, and set properties
  set fcd1not [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 fcd1not ]

  # Create instance: fcu1not, and set properties
  set fcu1not [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 fcu1not ]

  # Create instance: gt0not, and set properties
  set gt0not [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 gt0not ]

  # Create instance: gt1not, and set properties
  set gt1not [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 gt1not ]

  # Create instance: gt2not, and set properties
  set gt2not [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_inv:1.0 gt2not ]

  # Create instance: xup_and2_0, and set properties
  set xup_and2_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_0 ]

  # Create instance: xup_and2_1, and set properties
  set xup_and2_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_1 ]

  # Create instance: xup_and2_3, and set properties
  set xup_and2_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_3 ]

  # Create instance: xup_and2_4, and set properties
  set xup_and2_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_4 ]

  # Create instance: xup_and2_5, and set properties
  set xup_and2_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and2:1.0 xup_and2_5 ]

  # Create instance: xup_and3_0, and set properties
  set xup_and3_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and3:1.0 xup_and3_0 ]

  # Create instance: xup_and4_0, and set properties
  set xup_and4_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and4:1.0 xup_and4_0 ]

  # Create instance: xup_and4_1, and set properties
  set xup_and4_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and4:1.0 xup_and4_1 ]

  # Create instance: xup_and5_0, and set properties
  set xup_and5_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and5:1.0 xup_and5_0 ]

  # Create instance: xup_and5_1, and set properties
  set xup_and5_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_and5:1.0 xup_and5_1 ]

  # Create instance: xup_nor2_0, and set properties
  set xup_nor2_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_nor2:1.0 xup_nor2_0 ]

  # Create instance: xup_nor2_1, and set properties
  set xup_nor2_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_nor2:1.0 xup_nor2_1 ]

  # Create instance: xup_or2_0, and set properties
  set xup_or2_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_0 ]

  # Create instance: xup_or2_1, and set properties
  set xup_or2_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_1 ]

  # Create instance: xup_or2_2, and set properties
  set xup_or2_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_2 ]

  # Create instance: xup_or2_3, and set properties
  set xup_or2_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_3 ]

  # Create instance: xup_or2_4, and set properties
  set xup_or2_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_4 ]

  # Create instance: xup_or2_5, and set properties
  set xup_or2_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_5 ]

  # Create instance: xup_or2_6, and set properties
  set xup_or2_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or2:1.0 xup_or2_6 ]

  # Create instance: xup_or3_0, and set properties
  set xup_or3_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_0 ]

  # Create instance: xup_or3_1, and set properties
  set xup_or3_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_1 ]

  # Create instance: xup_or3_2, and set properties
  set xup_or3_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_2 ]

  # Create instance: xup_or3_3, and set properties
  set xup_or3_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_3 ]

  # Create instance: xup_or3_4, and set properties
  set xup_or3_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_4 ]

  # Create instance: xup_or3_5, and set properties
  set xup_or3_5 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_5 ]

  # Create instance: xup_or3_6, and set properties
  set xup_or3_6 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_6 ]

  # Create instance: xup_or3_7, and set properties
  set xup_or3_7 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_7 ]

  # Create instance: xup_or3_8, and set properties
  set xup_or3_8 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or3:1.0 xup_or3_8 ]

  # Create instance: xup_or4_0, and set properties
  set xup_or4_0 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_0 ]

  # Create instance: xup_or4_1, and set properties
  set xup_or4_1 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_1 ]

  # Create instance: xup_or4_2, and set properties
  set xup_or4_2 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_2 ]

  # Create instance: xup_or4_3, and set properties
  set xup_or4_3 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_3 ]

  # Create instance: xup_or4_4, and set properties
  set xup_or4_4 [ create_bd_cell -type ip -vlnv xilinx.com:XUP:xup_or4:1.0 xup_or4_4 ]

  # Create port connections
  connect_bd_net -net DoorClose0_q [get_bd_pins C0/q] [get_bd_pins xup_or3_6/b] [get_bd_pins xup_or3_8/c] [get_bd_pins xup_or4_4/d]
  connect_bd_net -net DoorClose1_q [get_bd_pins C1/q] [get_bd_pins xup_or3_3/c] [get_bd_pins xup_or3_8/b] [get_bd_pins xup_or4_3/a]
  connect_bd_net -net DoorClose2_q [get_bd_pins C2/q] [get_bd_pins xup_or2_4/a] [get_bd_pins xup_or3_8/a] [get_bd_pins xup_or4_2/a]
  connect_bd_net -net DoorOpen0_q [get_bd_pins O0/q] [get_bd_pins S0/d] [get_bd_pins xup_or3_7/c] [get_bd_pins xup_or4_4/b]
  connect_bd_net -net DoorOpen1_q [get_bd_pins O1/q] [get_bd_pins S1/d] [get_bd_pins xup_or3_7/b] [get_bd_pins xup_or4_3/b]
  connect_bd_net -net DoorOpen2_q [get_bd_pins O2/q] [get_bd_pins S2/d] [get_bd_pins xup_or3_7/a] [get_bd_pins xup_or4_2/c]
  connect_bd_net -net ED1_q [get_bd_pins GD1/q] [get_bd_pins xup_or2_2/b] [get_bd_pins xup_or3_6/a]
  connect_bd_net -net ED2_q [get_bd_pins GD2/q] [get_bd_pins xup_or2_2/a] [get_bd_pins xup_or3_3/b]
  connect_bd_net -net EU1_q [get_bd_pins GU1/q] [get_bd_pins xup_or2_6/a] [get_bd_pins xup_or3_3/a]
  connect_bd_net -net EU2_q [get_bd_pins GU2/q] [get_bd_pins xup_or2_4/b] [get_bd_pins xup_or2_6/b]
  connect_bd_net -net FC0_1 [get_bd_ports FC0] [get_bd_pins fc0not/a] [get_bd_pins xup_nor2_1/a] [get_bd_pins xup_or2_0/a] [get_bd_pins xup_or2_1/a] [get_bd_pins xup_or3_2/b] [get_bd_pins xup_or3_5/b] [get_bd_pins xup_or4_1/c]
  connect_bd_net -net FC2_1 [get_bd_ports FC2] [get_bd_pins fc2not/a] [get_bd_pins xup_nor2_0/a] [get_bd_pins xup_or2_3/a] [get_bd_pins xup_or2_5/a] [get_bd_pins xup_or3_1/b] [get_bd_pins xup_or3_4/b] [get_bd_pins xup_or4_0/c]
  connect_bd_net -net FCD1_1 [get_bd_ports FCD1] [get_bd_pins fcd1not/a] [get_bd_pins xup_and2_3/b] [get_bd_pins xup_or4_1/a]
  connect_bd_net -net FCU1_1 [get_bd_ports FCU1] [get_bd_pins fcu1not/a] [get_bd_pins xup_and2_4/b] [get_bd_pins xup_or4_0/a]
  connect_bd_net -net FLOOR0_q [get_bd_pins Flr0/q] [get_bd_pins xup_and2_0/b] [get_bd_pins xup_and4_0/a] [get_bd_pins xup_or4_4/a]
  connect_bd_net -net FLOOR1_q [get_bd_pins Flr1/q] [get_bd_pins xup_and2_5/a] [get_bd_pins xup_and5_0/e] [get_bd_pins xup_and5_1/b] [get_bd_pins xup_or4_3/d]
  connect_bd_net -net FLOOR2_q [get_bd_pins Flr2/q] [get_bd_pins xup_and2_1/a] [get_bd_pins xup_and4_1/b] [get_bd_pins xup_or4_2/d]
  connect_bd_net -net GT0_1 [get_bd_ports GT0] [get_bd_pins gt0not/a] [get_bd_pins xup_nor2_1/b] [get_bd_pins xup_or2_0/b] [get_bd_pins xup_or2_1/b] [get_bd_pins xup_or3_2/c] [get_bd_pins xup_or3_5/c] [get_bd_pins xup_or4_1/d]
  connect_bd_net -net GT1_1 [get_bd_ports GT1] [get_bd_pins gt1not/a] [get_bd_pins xup_or3_0/c] [get_bd_pins xup_or4_0/b] [get_bd_pins xup_or4_1/b]
  connect_bd_net -net GT2_1 [get_bd_ports GT2] [get_bd_pins gt2not/a] [get_bd_pins xup_nor2_0/b] [get_bd_pins xup_or2_3/b] [get_bd_pins xup_or2_5/b] [get_bd_pins xup_or3_1/c] [get_bd_pins xup_or3_4/c] [get_bd_pins xup_or4_0/d]
  connect_bd_net -net Wait0_q [get_bd_pins C0/d] [get_bd_pins S0/q] [get_bd_pins xup_or4_4/c]
  connect_bd_net -net Wait1_q [get_bd_pins C1/d] [get_bd_pins S1/q] [get_bd_pins xup_or4_3/c]
  connect_bd_net -net Wait2_q [get_bd_pins C2/d] [get_bd_pins S2/q] [get_bd_pins xup_or4_2/b]
  connect_bd_net -net clk_1 [get_bd_ports clk] [get_bd_pins C0/clk] [get_bd_pins C1/clk] [get_bd_pins C2/clk] [get_bd_pins Flr0/clk] [get_bd_pins Flr1/clk] [get_bd_pins Flr2/clk] [get_bd_pins GD1/clk] [get_bd_pins GD2/clk] [get_bd_pins GU1/clk] [get_bd_pins GU2/clk] [get_bd_pins O0/clk] [get_bd_pins O1/clk] [get_bd_pins O2/clk] [get_bd_pins S0/clk] [get_bd_pins S1/clk] [get_bd_pins S2/clk]
  connect_bd_net -net en_1 [get_bd_ports en] [get_bd_pins C0/en] [get_bd_pins C1/en] [get_bd_pins C2/en] [get_bd_pins Flr0/en] [get_bd_pins Flr1/en] [get_bd_pins Flr2/en] [get_bd_pins GD1/en] [get_bd_pins GD2/en] [get_bd_pins GU1/en] [get_bd_pins GU2/en] [get_bd_pins O0/en] [get_bd_pins O1/en] [get_bd_pins O2/en] [get_bd_pins S0/en] [get_bd_pins S1/en] [get_bd_pins S2/en]
  connect_bd_net -net notFC0_y [get_bd_pins fc0not/y] [get_bd_pins xup_and3_0/b] [get_bd_pins xup_and4_0/d]
  connect_bd_net -net notFC2_y [get_bd_pins fc2not/y] [get_bd_pins xup_and4_1/d]
  connect_bd_net -net notFCD1_y [get_bd_pins fcd1not/y] [get_bd_pins xup_or3_1/a] [get_bd_pins xup_or3_4/a]
  connect_bd_net -net notFCU1_y [get_bd_pins fcu1not/y] [get_bd_pins xup_or3_2/a] [get_bd_pins xup_or3_5/a]
  connect_bd_net -net notGT0_y [get_bd_pins gt0not/y] [get_bd_pins xup_and3_0/a] [get_bd_pins xup_and4_0/c]
  connect_bd_net -net notGT1_y [get_bd_pins gt1not/y] [get_bd_pins xup_and3_0/c] [get_bd_pins xup_and5_0/d]
  connect_bd_net -net notGT2_y [get_bd_pins gt2not/y] [get_bd_pins xup_and4_1/c]
  connect_bd_net -net reset_1 [get_bd_ports reset] [get_bd_pins C0/reset] [get_bd_pins C1/reset] [get_bd_pins C2/reset] [get_bd_pins Flr0/reset] [get_bd_pins Flr1/reset] [get_bd_pins Flr2/reset] [get_bd_pins GD1/reset] [get_bd_pins GD2/reset] [get_bd_pins GU1/reset] [get_bd_pins GU2/reset] [get_bd_pins O0/reset] [get_bd_pins O1/reset] [get_bd_pins O2/reset] [get_bd_pins S0/reset] [get_bd_pins S1/reset] [get_bd_pins S2/reset]
  connect_bd_net -net tempInput_1 [get_bd_ports enabling] [get_bd_pins xup_or3_6/c]
  connect_bd_net -net xup_and2_0_y [get_bd_pins O0/d] [get_bd_pins xup_and2_0/y]
  connect_bd_net -net xup_and2_1_y [get_bd_pins O2/d] [get_bd_pins xup_and2_1/y]
  connect_bd_net -net xup_and2_3_y [get_bd_pins xup_and2_3/y] [get_bd_pins xup_or3_0/a]
  connect_bd_net -net xup_and2_4_y [get_bd_pins xup_and2_4/y] [get_bd_pins xup_or3_0/b]
  connect_bd_net -net xup_and2_5_y [get_bd_pins O1/d] [get_bd_pins xup_and2_5/y]
  connect_bd_net -net xup_and3_0_y [get_bd_pins xup_and3_0/y] [get_bd_pins xup_and5_1/a]
  connect_bd_net -net xup_and4_0_y [get_bd_pins GU1/d] [get_bd_pins xup_and4_0/y]
  connect_bd_net -net xup_and4_1_y [get_bd_pins GD2/d] [get_bd_pins xup_and4_1/y]
  connect_bd_net -net xup_and5_0_y [get_bd_pins GD1/d] [get_bd_pins xup_and5_0/y]
  connect_bd_net -net xup_and5_1_y [get_bd_pins GU2/d] [get_bd_pins xup_and5_1/y]
  connect_bd_net -net xup_nor2_0_y [get_bd_pins xup_and2_3/a] [get_bd_pins xup_nor2_0/y]
  connect_bd_net -net xup_nor2_1_y [get_bd_pins xup_and2_4/a] [get_bd_pins xup_nor2_1/y]
  connect_bd_net -net xup_or2_0_y [get_bd_pins xup_and2_0/a] [get_bd_pins xup_or2_0/y]
  connect_bd_net -net xup_or2_1_y [get_bd_pins xup_and5_0/a] [get_bd_pins xup_or2_1/y]
  connect_bd_net -net xup_or2_2_y [get_bd_ports CMD] [get_bd_pins xup_or2_2/y]
  connect_bd_net -net xup_or2_3_y [get_bd_pins xup_and5_1/c] [get_bd_pins xup_or2_3/y]
  connect_bd_net -net xup_or2_4_y [get_bd_pins Flr2/d] [get_bd_pins xup_or2_4/y]
  connect_bd_net -net xup_or2_5_y [get_bd_pins xup_and2_1/b] [get_bd_pins xup_or2_5/y]
  connect_bd_net -net xup_or2_6_y [get_bd_ports CMU] [get_bd_pins xup_or2_6/y]
  connect_bd_net -net xup_or3_0_y [get_bd_pins xup_and2_5/b] [get_bd_pins xup_or3_0/y]
  connect_bd_net -net xup_or3_1_y [get_bd_pins xup_and5_0/b] [get_bd_pins xup_or3_1/y]
  connect_bd_net -net xup_or3_2_y [get_bd_pins xup_and5_0/c] [get_bd_pins xup_or3_2/y]
  connect_bd_net -net xup_or3_3_y [get_bd_pins Flr1/d] [get_bd_pins xup_or3_3/y]
  connect_bd_net -net xup_or3_4_y [get_bd_pins xup_and5_1/d] [get_bd_pins xup_or3_4/y]
  connect_bd_net -net xup_or3_5_y [get_bd_pins xup_and5_1/e] [get_bd_pins xup_or3_5/y]
  connect_bd_net -net xup_or3_6_y [get_bd_pins Flr0/d] [get_bd_pins xup_or3_6/y]
  connect_bd_net -net xup_or3_7_y [get_bd_ports DRO] [get_bd_pins xup_or3_7/y]
  connect_bd_net -net xup_or3_8_y [get_bd_ports DRC] [get_bd_pins xup_or3_8/y]
  connect_bd_net -net xup_or4_0_y [get_bd_pins xup_and4_0/b] [get_bd_pins xup_or4_0/y]
  connect_bd_net -net xup_or4_1_y [get_bd_pins xup_and4_1/a] [get_bd_pins xup_or4_1/y]
  connect_bd_net -net xup_or4_2_y [get_bd_ports AT2] [get_bd_pins xup_or4_2/y]
  connect_bd_net -net xup_or4_3_y [get_bd_ports AT1] [get_bd_pins xup_or4_3/y]
  connect_bd_net -net xup_or4_4_y [get_bd_ports AT0] [get_bd_pins xup_or4_4/y]

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


