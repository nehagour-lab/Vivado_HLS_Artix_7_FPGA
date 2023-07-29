############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project MATRIX_MULTIPLICATION_16_PIPELINE_1
set_top matrixmul
add_files ../../../../../../home/drsatya/Desktop/lab1/mat_pipeline.cpp
add_files ../../../../../../home/drsatya/Desktop/lab1/mat_pipeline.h
add_files -tb ../../../../../../home/drsatya/Desktop/lab1/mat_pipeline_tb.cpp
open_solution "solution1"
set_part {xc7a35tcpg236-3} -tool vivado
create_clock -period 10 -name default
#source "./MATRIX_MULTIPLICATION_16_PIPELINE_1/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design
export_design -flow syn -rtl vhdl -format ip_catalog
