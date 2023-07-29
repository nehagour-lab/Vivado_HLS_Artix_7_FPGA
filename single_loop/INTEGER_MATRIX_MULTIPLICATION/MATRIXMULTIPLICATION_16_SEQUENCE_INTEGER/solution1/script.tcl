############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project MATRIXMULTIPLICATION_16_SEQUENCE_INTEGER
set_top matrixmul
add_files ../../../../../../home/drsatya/Desktop/lab1/matrixmul.cpp
add_files ../../../../../../home/drsatya/Desktop/lab1/matrixmul.h
add_files -tb ../../../../../../home/drsatya/Desktop/lab1/matrixmul_test.cpp
open_solution "solution1"
set_part {xc7a35tcpg236-3} -tool vivado
create_clock -period 10 -name default
#source "./MATRIXMULTIPLICATION_16_SEQUENCE_INTEGER/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -flow syn -rtl vhdl -format ip_catalog
