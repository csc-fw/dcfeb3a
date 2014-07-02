source "C:/Users/bylsma/AppData/Local/Synplicity/scm_perforce.tcl"
history clear
set wid1 [get_window_id]
set wid2 [open_file dcfeb3a.srr]
win_activate $wid2
run_tcl -fg C:/Users/bylsma/Projects/DCFEB/firmware/ISE_14.7/dcfeb3a/dcfeb3a_open_file.tcl
project -run constraint_check -bg 
project -close C:/Users/bylsma/Projects/DCFEB/firmware/ISE_14.7/dcfeb3a/dcfeb3a.prj
