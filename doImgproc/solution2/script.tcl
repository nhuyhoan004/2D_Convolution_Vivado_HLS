############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project doImgproc
set_top doImgproc
add_files core.cpp
add_files core.cpp
add_files -tb test_core.cpp
add_files -tb test_core.cpp
open_solution "solution2"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
#source "./doImgproc/solution2/directives.tcl"
csim_design
csynth_design
cosim_design -rtl vhdl
export_design -rtl vhdl -format ip_catalog -version "0.0.0"
