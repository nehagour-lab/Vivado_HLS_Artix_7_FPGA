#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /opt/Xilinx/Vivado_HLS/2017.2/bin/unroll_float_8_march/solution2/.autopilot/db/a.g.bc ${1+"$@"}
