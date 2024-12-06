############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project 2D_Convolution
set_top doImgproc
add_files core.cpp
add_files -tb a.bmp
add_files -tb ab.bmp
add_files -tb c.bmp
add_files -tb filter_result.bmp
add_files -tb filter_result.jpg
add_files -tb test_bench.cpp
open_solution "solution3"
set_part {xc7z020clg484-1}
create_clock -period 10 -name default
source "./2D_Convolution/solution3/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl vhdl -format ip_catalog
