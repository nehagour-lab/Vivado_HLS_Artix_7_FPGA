# Vivado_HLS_Artix_7_FPGA
Objective: Aim of this project is to explore computational complexity of mathematical functions using concept of concurrency.

## Hardware Used
1. Artix-7 FPGA https://digilent.com/reference/programmable-logic/arty-a7/reference-manual
2. USB https://digilent.com/reference/programmable-logic/usb104a7/reference-manual

## Software Used
1. Vivado https://www.xilinx.com/products/design-tools/vivado.html
2. Vivado HLS [Document](https://www.xilinx.com/content/dam/xilinx/publications/xcellonline/run-fast-with-Vivado-HLS.pdf) 
3. GCC

## Working
To reduce time complexity of loops in Vivado HLS, I have used multiple High-Level Synthesis directives to convert the high level language like C/C++/Embedded C into Hardware description language to implement design on hardware (Field Programmable gate Array). First i have write down design in C language which works in sequence and then make same C code parallel using various concurrent directives. And implemented on Vivado generates synthesis , bitstream reports and then offload the bitstream on to FPGA to compare the difference between time taken by sequential and parallel design. 
   
## Deployment
Write down header files then Main C code and run it on vivado and generates the report. then run with multiple directives to see the performance in terms of time complexity as well as space taken by design. Observation is sequential code have more time complexity and less space complexity, however pipeline or concurrent designs are faster but taken more space of hardware. 
