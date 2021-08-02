############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project image_filter_prj
set_top image_filter
add_files src/image_filter.cpp
add_files src/image_filter.h
add_files -tb src/opencv_top.cpp
add_files -tb src/opencv_top.h
add_files -tb src/test.cpp
add_files -tb src/test_1080p.bmp
open_solution "solution1"
set_part {xc7a75tfgg484-1} -tool vivado
create_clock -period 10 -name default
set_clock_uncertainty 0.125
#source "./image_filter_prj/solution1/directives.tcl"
csim_design -clean
csynth_design
cosim_design -O -reduce_diskspace
export_design -format ip_catalog
