############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project opencv_prj
set_top array_mul
add_files opencv_prj/src/a.jpg
add_files opencv_prj/src/array_abs.cpp
add_files opencv_prj/src/array_abs.h
add_files opencv_prj/src/array_div.cpp
add_files opencv_prj/src/array_div.h
add_files opencv_prj/src/array_mul.cpp
add_files opencv_prj/src/array_mul.h
add_files opencv_prj/src/b.jpg
add_files -tb opencv_prj/src/cpu.cpp
add_files -tb opencv_prj/src/cpu.h
add_files -tb opencv_prj/src/cpu_test.cpp
open_solution "solution1"
set_part {xc7z020clg400-1} -tool vivado
create_clock -period 10 -name default
#source "./opencv_prj/solution1/directives.tcl"
csim_design
csynth_design
cosim_design -O -reduce_diskspace
export_design -rtl verilog -format ip_catalog
