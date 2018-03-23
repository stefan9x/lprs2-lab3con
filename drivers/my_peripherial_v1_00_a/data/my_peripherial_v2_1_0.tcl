##############################################################################
## Filename:          D:\ra234-2013\lab3_2/drivers/my_peripherial_v1_00_a/data/my_peripherial_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Fri Mar 23 11:19:36 2018 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "my_peripherial" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
