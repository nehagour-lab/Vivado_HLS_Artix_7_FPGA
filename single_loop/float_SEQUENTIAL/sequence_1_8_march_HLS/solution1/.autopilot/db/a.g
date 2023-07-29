#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /opt/Xilinx/Vivado_HLS/2017.2/bin/sequence_1_8_march/solution1/.autopilot/db/a.g.bc ${1+"$@"}
