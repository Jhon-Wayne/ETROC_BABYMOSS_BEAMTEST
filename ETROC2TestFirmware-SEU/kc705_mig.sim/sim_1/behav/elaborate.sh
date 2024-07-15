#!/bin/bash -f
xv_path="/home/wz/EDA_Soft/Vivado/2016.2"
ExecStep()
{
"$@"
RETVAL=$?
if [ $RETVAL -ne 0 ]
then
exit $RETVAL
fi
}
ExecStep $xv_path/bin/xelab -wto e43dd06b2f0f4dc3934c17bde28822a5 -m64 --debug typical --relax --mt 8 -L xil_defaultlib -L xpm -L unisims_ver -L unimacro_ver -L secureip --snapshot i2c_wr_bytes_tb_behav xil_defaultlib.i2c_wr_bytes_tb xil_defaultlib.glbl -log elaborate.log
