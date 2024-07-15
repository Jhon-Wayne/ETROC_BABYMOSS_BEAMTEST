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
ExecStep $xv_path/bin/xsim i2c_wr_bytes_tb_behav -key {Behavioral:sim_1:Functional:i2c_wr_bytes_tb} -tclbatch i2c_wr_bytes_tb.tcl -log simulate.log
