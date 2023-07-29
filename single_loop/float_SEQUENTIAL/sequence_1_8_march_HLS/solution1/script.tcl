############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
############################################################
open_project sequence_1_8_march
set_top simple
add_files ../../../../../home/drsatya/neha/add.c
add_files ../../../../../home/drsatya/neha/header.h
add_files -tb ../../../../../home/drsatya/neha/add_tb.c
open_solution "solution1"
set_part {xc7a35tcpg236-2} -tool vivado
create_clock -period 10 -name default
#source "./sequence_1_8_march/solution1/directives.tcl"
csim_design -compiler gcc
csynth_design
cosim_design -rtl vhdl
export_design -rtl vhdl -format ip_catalog
