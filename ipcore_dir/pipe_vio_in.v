////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: pipe_vio_in.v
// /___/   /\     Timestamp: Thu Aug 08 17:00:18 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/pipe_vio_in.ngc C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/pipe_vio_in.v 
// Device	: xc6vlx130t-ff1156-1
// Input file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/pipe_vio_in.ngc
// Output file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/pipe_vio_in.v
// # of Modules	: 1
// Design Name	: pipe_vio_in
// Xilinx        : C:\Xilinx\12.4\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module pipe_vio_in (
  CLK, SYNC_IN, CONTROL
)/* synthesis syn_black_box syn_noprune=1 */;
  input CLK;
  input [128 : 0] SYNC_IN;
  inout [35 : 0] CONTROL;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire \U0/I_VIO/DATA_DOUT ;
  wire \U0/I_VIO/RESET ;
  wire \U0/I_VIO/STAT_DOUT ;
  wire \U0/I_VIO/U_STATUS/TDO_next ;
  wire \U0/I_VIO/U_STATUS/CFG_CE_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/falling ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/rising ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/clocked ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd5_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd4_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O2 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21_3182 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22_3183 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23_3184 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24_3185 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25_3186 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26_3187 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27_3188 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28_3189 ;
  wire [1 : 0] \U0/I_VIO/reset_f_edge/iDOUT ;
  wire [129 : 1] \U0/I_VIO/INPUT_SHIFT ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/iSTAT ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/iSTAT_CNT ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/U_STAT_CNT/D ;
  wire [7 : 1] \U0/I_VIO/U_STATUS/U_STAT_CNT/CI ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/U_STAT_CNT/S ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/U_DOUT  (
    .I0(\U0/I_VIO/STAT_DOUT ),
    .I1(\U0/I_VIO/DATA_DOUT ),
    .I2(CONTROL[7]),
    .O(CONTROL[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/reset_f_edge/U_DOUT0  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(CONTROL[7]),
    .Q(\U0/I_VIO/reset_f_edge/iDOUT [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/reset_f_edge/U_DOUT1  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/reset_f_edge/iDOUT [0]),
    .Q(\U0/I_VIO/reset_f_edge/iDOUT [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/reset_f_edge/I_H2L.U_DOUT  (
    .C(CONTROL[0]),
    .D(\U0/I_VIO/reset_f_edge/iDOUT [1]),
    .R(\U0/I_VIO/reset_f_edge/iDOUT [0]),
    .Q(\U0/I_VIO/RESET )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_DATA_OUT  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/INPUT_SHIFT [129]),
    .Q(\U0/I_VIO/DATA_DOUT )
  );
  LUT4 #(
    .INIT ( 16'h0101 ))
  \U0/I_VIO/U_STATUS/F_STAT[0].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [0])
  );
  LUT4 #(
    .INIT ( 16'hC409 ))
  \U0/I_VIO/U_STATUS/F_STAT[1].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [1])
  );
  LUT4 #(
    .INIT ( 16'h2100 ))
  \U0/I_VIO/U_STATUS/F_STAT[2].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [2])
  );
  LUT4 #(
    .INIT ( 16'h0610 ))
  \U0/I_VIO/U_STATUS/F_STAT[3].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [3])
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \U0/I_VIO/U_STATUS/F_STAT[4].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [4])
  );
  LUT4 #(
    .INIT ( 16'h0008 ))
  \U0/I_VIO/U_STATUS/F_STAT[5].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [5])
  );
  LUT4 #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/U_STATUS/F_STAT[6].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [6])
  );
  LUT4 #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/U_STATUS/F_STAT[7].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [7])
  );
  INV   \U0/I_VIO/U_STATUS/U_CE_n  (
    .I(CONTROL[4]),
    .O(\U0/I_VIO/U_STATUS/CFG_CE_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_TDO  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/U_STATUS/TDO_next ),
    .Q(\U0/I_VIO/STAT_DOUT )
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[0].U_XORCY  (
    .CI(N0),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [0]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [0])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[0].GnH.U_MUXCY  (
    .CI(N0),
    .DI(N1),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [0]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [1])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[1].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [1]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [1]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [1])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[1].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [1]),
    .DI(N1),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [1]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [2])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[2].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [2]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [2]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [2])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[2].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [2]),
    .DI(N1),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [2]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [3])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[3].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [3]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [3]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [3])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[3].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [3]),
    .DI(N1),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [3]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [4])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[4].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [4]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [4]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [4])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[4].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [4]),
    .DI(N1),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [4]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [5])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[5].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [5]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [5]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [5])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[5].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [5]),
    .DI(N1),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [5]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [6])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[6].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [6]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [6]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [6])
  );
  MUXCY_L   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[6].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [6]),
    .DI(N1),
    .S(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [6]),
    .LO(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [7])
  );
  XORCY   \U0/I_VIO/U_STATUS/U_STAT_CNT/G[7].U_XORCY  (
    .CI(\U0/I_VIO/U_STATUS/U_STAT_CNT/CI [7]),
    .LI(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [7]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [7])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[0].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[1].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [1])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[2].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [2])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[3].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [3])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[4].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [4]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [4])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[5].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [5]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [5])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[6].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [6]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [6])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[7].U_LUT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [7]),
    .O(\U0/I_VIO/U_STATUS/U_STAT_CNT/S [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[0].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [0]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[1].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [1]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[2].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [2]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[3].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [3]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[4].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [4]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[5].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [5]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[6].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [6]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_STATUS/U_STAT_CNT/G[7].U_FDRE  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/U_STATUS/U_STAT_CNT/D [7]),
    .R(\U0/I_VIO/U_STATUS/CFG_CE_n ),
    .Q(\U0/I_VIO/U_STATUS/iSTAT_CNT [7])
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [128]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[128]),
    .O(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[128]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[128]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[128]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[128]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [129])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[128].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [127]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[127]),
    .O(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[127]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[127]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[127]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[127]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [128])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[127].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [126]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[126]),
    .O(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[126]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[126]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[126]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[126]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [127])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[126].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [125]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[125]),
    .O(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[125]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[125]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[125]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[125]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [126])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[125].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [124]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[124]),
    .O(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[124]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[124]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[124]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[124]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [125])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[124].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [123]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[123]),
    .O(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[123]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[123]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[123]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[123]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [124])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[123].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [122]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[122]),
    .O(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[122]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[122]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[122]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[122]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [123])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[122].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [121]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[121]),
    .O(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[121]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[121]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[121]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[121]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [122])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[121].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [120]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[120]),
    .O(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[120]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[120]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[120]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[120]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [121])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[120].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [119]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[119]),
    .O(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[119]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[119]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[119]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[119]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [120])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[119].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [118]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[118]),
    .O(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[118]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[118]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[118]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[118]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [119])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[118].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [117]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[117]),
    .O(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[117]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[117]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[117]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[117]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [118])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[117].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [116]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[116]),
    .O(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[116]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[116]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[116]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[116]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [117])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[116].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [115]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[115]),
    .O(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[115]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[115]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[115]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[115]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [116])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[115].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [114]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[114]),
    .O(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[114]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[114]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[114]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[114]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [115])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[114].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [113]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[113]),
    .O(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[113]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[113]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[113]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[113]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [114])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[113].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [112]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[112]),
    .O(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[112]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[112]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[112]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[112]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [113])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[112].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [111]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[111]),
    .O(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[111]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[111]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[111]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[111]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [112])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[111].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [110]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[110]),
    .O(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[110]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[110]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[110]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[110]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [111])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[110].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [109]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[109]),
    .O(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[109]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[109]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[109]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[109]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [110])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[109].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [108]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[108]),
    .O(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[108]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[108]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[108]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[108]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [109])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[108].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [107]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[107]),
    .O(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[107]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[107]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[107]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[107]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [108])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[107].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [106]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[106]),
    .O(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[106]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[106]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[106]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[106]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [107])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[106].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [105]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[105]),
    .O(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[105]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[105]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[105]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[105]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [106])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[105].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [104]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[104]),
    .O(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[104]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[104]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[104]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[104]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [105])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[104].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [103]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[103]),
    .O(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[103]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[103]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[103]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[103]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [104])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[103].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [102]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[102]),
    .O(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[102]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[102]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[102]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[102]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [103])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[102].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [101]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[101]),
    .O(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[101]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[101]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[101]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[101]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [102])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[101].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [100]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[100]),
    .O(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[100]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[100]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[100]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[100]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [101])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[100].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [99]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[99]),
    .O(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[99]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[99]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[99]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[99]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [100])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[99].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [98]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[98]),
    .O(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[98]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[98]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[98]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[98]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [99])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[98].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [97]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[97]),
    .O(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[97]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[97]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[97]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[97]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [98])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[97].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [96]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[96]),
    .O(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[96]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[96]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[96]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[96]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [97])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[96].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [95]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[95]),
    .O(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[95]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[95]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[95]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[95]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [96])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[95].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [94]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[94]),
    .O(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[94]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[94]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[94]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[94]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [95])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[94].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [93]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[93]),
    .O(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[93]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[93]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[93]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[93]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [94])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[93].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [92]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[92]),
    .O(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[92]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[92]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[92]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[92]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [93])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[92].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [91]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[91]),
    .O(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[91]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[91]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[91]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[91]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [92])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[91].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [90]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[90]),
    .O(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[90]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[90]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[90]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[90]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [91])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[90].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [89]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[89]),
    .O(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[89]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[89]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[89]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[89]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [90])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[89].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [88]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[88]),
    .O(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[88]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[88]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[88]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[88]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [89])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[88].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [87]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[87]),
    .O(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[87]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[87]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[87]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[87]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [88])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[87].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [86]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[86]),
    .O(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[86]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[86]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[86]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[86]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [87])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[86].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [85]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[85]),
    .O(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[85]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[85]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[85]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[85]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [86])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[85].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [84]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[84]),
    .O(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[84]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[84]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[84]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[84]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [85])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[84].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [83]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[83]),
    .O(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[83]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[83]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[83]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[83]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [84])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[83].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [82]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[82]),
    .O(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[82]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[82]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[82]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[82]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [83])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[82].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [81]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[81]),
    .O(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[81]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[81]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[81]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[81]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [82])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[81].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [80]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[80]),
    .O(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[80]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[80]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[80]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[80]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [81])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[80].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [79]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[79]),
    .O(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[79]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[79]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[79]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[79]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [80])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[79].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [78]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[78]),
    .O(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[78]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[78]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[78]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[78]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [79])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[78].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [77]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[77]),
    .O(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[77]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[77]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[77]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[77]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [78])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[77].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [76]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[76]),
    .O(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[76]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[76]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[76]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[76]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [77])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[76].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [75]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[75]),
    .O(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[75]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[75]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[75]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[75]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [76])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[75].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [74]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[74]),
    .O(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[74]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[74]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[74]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[74]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [75])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[74].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [73]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[73]),
    .O(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[73]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[73]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[73]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[73]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [74])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[73].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [72]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[72]),
    .O(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[72]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[72]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[72]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[72]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [73])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[72].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [71]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[71]),
    .O(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[71]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[71]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[71]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[71]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [72])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[71].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [70]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[70]),
    .O(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[70]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[70]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[70]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[70]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [71])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[70].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [69]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[69]),
    .O(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[69]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[69]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[69]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[69]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [70])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[69].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [68]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[68]),
    .O(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[68]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[68]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[68]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[68]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [69])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[68].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [67]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[67]),
    .O(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[67]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[67]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[67]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[67]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [68])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[67].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [66]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[66]),
    .O(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[66]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[66]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[66]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[66]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [67])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[66].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [65]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[65]),
    .O(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[65]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[65]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[65]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[65]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [66])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[65].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [64]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[64]),
    .O(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[64]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[64]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[64]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[64]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [65])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[64].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [63]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[63]),
    .O(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[63]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[63]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[63]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[63]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [64])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[63].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [62]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[62]),
    .O(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[62]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[62]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[62]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[62]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [63])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[62].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [61]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[61]),
    .O(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[61]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[61]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[61]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[61]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [62])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[61].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [60]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[60]),
    .O(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[60]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[60]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[60]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[60]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [61])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[60].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [59]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[59]),
    .O(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[59]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[59]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[59]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[59]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [60])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[59].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [58]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[58]),
    .O(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[58]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[58]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[58]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[58]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [59])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[58].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [57]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[57]),
    .O(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[57]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[57]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[57]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[57]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [58])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[57].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [56]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[56]),
    .O(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[56]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[56]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[56]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[56]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [57])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[56].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [55]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[55]),
    .O(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[55]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[55]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[55]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[55]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [56])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[55].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [54]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[54]),
    .O(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[54]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[54]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[54]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[54]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [55])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[54].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [53]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[53]),
    .O(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[53]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[53]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[53]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[53]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [54])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[53].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [52]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[52]),
    .O(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[52]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[52]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[52]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[52]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [53])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[52].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [51]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[51]),
    .O(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[51]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[51]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[51]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[51]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [52])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[51].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [50]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[50]),
    .O(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[50]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[50]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[50]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[50]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [51])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[50].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [49]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[49]),
    .O(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[49]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[49]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[49]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[49]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [50])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[49].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [48]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[48]),
    .O(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[48]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[48]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[48]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[48]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [49])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[48].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [47]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[47]),
    .O(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[47]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[47]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[47]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[47]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [48])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[47].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [46]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[46]),
    .O(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[46]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[46]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[46]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[46]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [47])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[46].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [45]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[45]),
    .O(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[45]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[45]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[45]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[45]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [46])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[45].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [44]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[44]),
    .O(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[44]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[44]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[44]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[44]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [45])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[44].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [43]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[43]),
    .O(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[43]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[43]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[43]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[43]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [44])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[43].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [42]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[42]),
    .O(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[42]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[42]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[42]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[42]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [43])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[42].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [41]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[41]),
    .O(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[41]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[41]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[41]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[41]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [42])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[41].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [40]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[40]),
    .O(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[40]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[40]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[40]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[40]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [41])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[40].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [39]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[39]),
    .O(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[39]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[39]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[39]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[39]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [40])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[39].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [38]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[38]),
    .O(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[38]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[38]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[38]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[38]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [39])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[38].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [37]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[37]),
    .O(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[37]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[37]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[37]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[37]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [38])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[37].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [36]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[36]),
    .O(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[36]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[36]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[36]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[36]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [37])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[36].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [35]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[35]),
    .O(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[35]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[35]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[35]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[35]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [36])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[35].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [34]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[34]),
    .O(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[34]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[34]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[34]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[34]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [35])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[34].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [33]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[33]),
    .O(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[33]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[33]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[33]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[33]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [34])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[33].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [32]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[32]),
    .O(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[32]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[32]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[32]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[32]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [33])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[32].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [31]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[31]),
    .O(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[31]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[31]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[31]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[31]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[31].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [30]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[30]),
    .O(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[30]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[30]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[30]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[30]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[30].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [29]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[29]),
    .O(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[29]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[29]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[29]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[29]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[29].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [28]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[28]),
    .O(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[28]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[28]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[28]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[28]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[28].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [27]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[27]),
    .O(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[27]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[27]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[27]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[27]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[27].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [26]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[26]),
    .O(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[26]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[26]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[26]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[26]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[26].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [25]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[25]),
    .O(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[25]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[25]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[25]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[25]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[25].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [24]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[24]),
    .O(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[24]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[24]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[24]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[24]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[24].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [23]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[23]),
    .O(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[23]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[23]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[23]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[23]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[23].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [22]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[22]),
    .O(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[22]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[22]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[22]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[22]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[22].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [21]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[21]),
    .O(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[21]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[21]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[21]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[21]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[21].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [20]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[20]),
    .O(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[20]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[20]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[20]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[20]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[20].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [19]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[19]),
    .O(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[19]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[19]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[19]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[19]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[19].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [18]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[18]),
    .O(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[18]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[18]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[18]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[18]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[18].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [17]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[17]),
    .O(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[17]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[17]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[17]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[17]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[17].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [16]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[16]),
    .O(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[16]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[16]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[16]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[16]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[16].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [15]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[15]),
    .O(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[15]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[15]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[15]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[15]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[15].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [14]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[14]),
    .O(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[14]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[14]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[14]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[14]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[14].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [13]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[13]),
    .O(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[13]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[13]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[13]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[13]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[13].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [12]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[12]),
    .O(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[12]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[12]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[12]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[12]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[12].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [11]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[11]),
    .O(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[11]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[11]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[11]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[11]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[11].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [10]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[10]),
    .O(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[10]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[10]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[10]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[10]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[10].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [9]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[9]),
    .O(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[9]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[9]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[9]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[9]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[9].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [8]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[8]),
    .O(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[8]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[8]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[8]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[8]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[8].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [7]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[7]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[7]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[7]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[7]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[7].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [6]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[6]),
    .O(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[6]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[6]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[6]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[6]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[6].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [5]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[5]),
    .O(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[5]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[5]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[5]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[5]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[5].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [4]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[4]),
    .O(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[4]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[4]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[4]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[4]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[4].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [3]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[3]),
    .O(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[3]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[3]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[3]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[3]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[3].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [2]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[2]),
    .O(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[2]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[2]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[2]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[2]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[2].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/clocked ),
    .I1(\U0/I_VIO/INPUT_SHIFT [1]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[1]),
    .O(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[1]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[1]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[1]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[1]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[1].SYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/SYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd4_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/SYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd3_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/async_mux_r_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/USER_MUX  (
    .I0(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/clocked ),
    .I1(N1),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/mux1_out )
  );
  INV   \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/U_STATCMD_n  (
    .I(SYNC_IN[0]),
    .O(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/user_in_n )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[0]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/I_H2L.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/iDOUT<1> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/falling )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[0]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/iDOUT<0> )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/iDOUT<1> )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/I_L2H.U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/iDOUT<0> ),
    .R(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_edge/iDOUT<1> ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/rising )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/U_RISING  (
    .C(SYNC_IN[0]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/rising_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/U_SYNC_F  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/falling ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_f_out )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/U_SYNC_R  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/rising ),
    .D(N0),
    .R(\U0/I_VIO/RESET ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_r_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/USER_CLK_REG  (
    .C(CLK),
    .CE(N0),
    .D(SYNC_IN[0]),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/clocked )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd5_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/S_SYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd5_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/S_SYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/sync_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd4_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_SYNC_IN[0].SYNC_IN_CELL/fd1_out )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [5]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [6]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT [3]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT [7]),
    .I4(\U0/I_VIO/U_STATUS/iSTAT [5]),
    .I5(\U0/I_VIO/U_STATUS/iSTAT [1]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O2 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [5]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [6]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT [6]),
    .I4(\U0/I_VIO/U_STATUS/iSTAT [4]),
    .I5(\U0/I_VIO/U_STATUS/iSTAT [0]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21_3182 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23  (
    .I0(CONTROL[15]),
    .I1(CONTROL[14]),
    .I2(CONTROL[16]),
    .I3(CONTROL[17]),
    .I4(CONTROL[18]),
    .I5(CONTROL[19]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22_3183 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24  (
    .I0(CONTROL[21]),
    .I1(CONTROL[20]),
    .I2(CONTROL[22]),
    .I3(CONTROL[23]),
    .I4(CONTROL[24]),
    .I5(CONTROL[25]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23_3184 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25  (
    .I0(CONTROL[2]),
    .I1(CONTROL[1]),
    .I2(CONTROL[4]),
    .I3(CONTROL[5]),
    .I4(CONTROL[6]),
    .I5(CONTROL[7]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24_3185 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26  (
    .I0(CONTROL[9]),
    .I1(CONTROL[8]),
    .I2(CONTROL[10]),
    .I3(CONTROL[11]),
    .I4(CONTROL[12]),
    .I5(CONTROL[13]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25_3186 )
  );
  LUT6 #(
    .INIT ( 64'h7FFFFFFFFFFFFFFF ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27  (
    .I0(CONTROL[27]),
    .I1(CONTROL[26]),
    .I2(CONTROL[28]),
    .I3(CONTROL[29]),
    .I4(CONTROL[30]),
    .I5(CONTROL[31]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26_3187 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28  (
    .I0(CONTROL[33]),
    .I1(CONTROL[32]),
    .I2(CONTROL[34]),
    .I3(CONTROL[35]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27_3188 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O29  (
    .I0(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22_3183 ),
    .I1(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23_3184 ),
    .I2(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24_3185 ),
    .I3(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25_3186 ),
    .I4(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26_3187 ),
    .I5(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27_3188 ),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28_3189 )
  );
  LUT5 #(
    .INIT ( 32'hAFACA3A0 ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O210  (
    .I0(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28_3189 ),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [4]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [7]),
    .I3(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21_3182 ),
    .I4(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O2 ),
    .O(\U0/I_VIO/U_STATUS/TDO_next )
  );

// synthesis translate_on

endmodule

// synthesis translate_off

`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

// synthesis translate_on
