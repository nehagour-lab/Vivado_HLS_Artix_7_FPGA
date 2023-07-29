#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /opt/Xilinx/Vivado_HLS/2017.2/bin/INTEGER_MATRIX_MULTIPLICATION/MATRIX_MULTIPLICATION_16_PIPELINE_3/solution1/.autopilot/db/a.g.bc ${1+"$@"}
