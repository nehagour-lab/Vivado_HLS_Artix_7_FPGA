#!/bin/bash -f
xv_path="/opt/Xilinx/Vivado/2017.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto ffb4af62707642069e046cf5e3e92614 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L secureip --snapshot design_1_wrapper_func_synth xil_defaultlib.design_1_wrapper -log elaborate.log
