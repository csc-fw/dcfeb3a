////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: sem_vio.v
// /___/   /\     Timestamp: Thu Aug 22 17:45:29 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/sem_vio.ngc C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/sem_vio.v 
// Device	: xc6vlx130t-ff1156-1
// Input file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/sem_vio.ngc
// Output file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/sem_vio.v
// # of Modules	: 1
// Design Name	: sem_vio
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

module sem_vio (
  CLK, SYNC_IN, CONTROL, SYNC_OUT
)/* synthesis syn_black_box syn_noprune=1 */;
  input CLK;
  input [7 : 0] SYNC_IN;
  inout [35 : 0] CONTROL;
  output [46 : 0] SYNC_OUT;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire \U0/I_VIO/GEN_UPDATE_OUT[93].UPDATE_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[0].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[0].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[1].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[1].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[2].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[2].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[3].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[3].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[4].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[4].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[5].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[5].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[6].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[6].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[7].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[7].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[12].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[12].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[13].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[13].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[14].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[14].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[15].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[15].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[16].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[16].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[17].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[17].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[18].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[18].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[19].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[19].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[20].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[20].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[21].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[21].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[22].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[22].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[23].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[23].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[24].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[24].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[25].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[25].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[26].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[26].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[27].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[27].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[28].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[28].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[29].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[29].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[30].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[30].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[31].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[31].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[32].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[32].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[33].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[33].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[34].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[34].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[35].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[35].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[36].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[36].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[37].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[37].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[38].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[38].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[39].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[39].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[40].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[40].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[41].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[41].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[42].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[42].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[43].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[43].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[44].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[44].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[45].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[45].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[46].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[46].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/arm_dly1 ;
  wire \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/arm_dly2 ;
  wire \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_reset ;
  wire \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_ce ;
  wire \U0/I_VIO/GEN_TRANS.U_ARM/din_latched ;
  wire \U0/I_VIO/GEN_TRANS.U_ARM/iCLR ;
  wire \U0/I_VIO/DATA_DOUT ;
  wire \U0/I_VIO/RESET ;
  wire \U0/I_VIO/ARM_pulse ;
  wire \U0/I_VIO/STAT_DOUT ;
  wire \U0/I_VIO/U_STATUS/TDO_next ;
  wire \U0/I_VIO/U_STATUS/CFG_CE_n ;
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
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21_586 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22_587 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23_588 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24_589 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25_590 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26_591 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27_592 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28_593 ;
  wire [1 : 0] \U0/I_VIO/reset_f_edge/iDOUT ;
  wire [1 : 0] \U0/I_VIO/GEN_TRANS.U_ARM/iDIN ;
  wire [1 : 0] \U0/I_VIO/GEN_TRANS.U_ARM/iDOUT_dly ;
  wire [8 : 1] \U0/I_VIO/INPUT_SHIFT ;
  wire [46 : 0] \U0/I_VIO/UPDATE ;
  wire [93 : 1] \U0/I_VIO/OUTPUT_SHIFT ;
  wire [3 : 0] \U0/I_VIO/addr ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/iSTAT ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/iSTAT_CNT ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/U_STAT_CNT/D ;
  wire [7 : 1] \U0/I_VIO/U_STATUS/U_STAT_CNT/CI ;
  wire [7 : 0] \U0/I_VIO/U_STATUS/U_STAT_CNT/S ;
  wire [3 : 0] \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/D ;
  wire [3 : 1] \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/CI ;
  wire [3 : 0] \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S ;
  VCC   XST_VCC (
    .P(N0)
  );
  GND   XST_GND (
    .G(N1)
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[0].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(CONTROL[1]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[0].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[0].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[0].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[0].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [1])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[1].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [1]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[1].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[1].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[1].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[1].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [2])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[2].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [2]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[2].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[2].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[2].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[2].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [3])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[3].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [3]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[3].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[3].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[3].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[3].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [4])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[4].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [4]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[4].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[4].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[4].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[4].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [5])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[5].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [5]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[5].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[5].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[5].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[5].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [6])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[6].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [6]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[6].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[6].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[6].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[6].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [7])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[7].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [7]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[7].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[7].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[7].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[7].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [8])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [8]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [9])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [9]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [10])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [10]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [11])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [11]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [12])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[12].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [12]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[12].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[12].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[12].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[12].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [13])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[13].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [13]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[13].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[13].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[13].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[13].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [14])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[14].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [14]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[14].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[14].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[14].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[14].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [15])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[15].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [15]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[15].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[15].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[15].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[15].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [16])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[16].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [16]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[16].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[16].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[16].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[16].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [17])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[17].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [17]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[17].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[17].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[17].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[17].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [18])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[18].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [18]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[18].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[18].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[18].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[18].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [19])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[19].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [19]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[19].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[19].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[19].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[19].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [20])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[20].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [20]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[20].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[20].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[20].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[20].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [21])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[21].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [21]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[21].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[21].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[21].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[21].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [22])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[22].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [22]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[22].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[22].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[22].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[22].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [23])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[23].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [23]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[23].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[23].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[23].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[23].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [24])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[24].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [24]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[24].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[24].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[24].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[24].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [25])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[25].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [25]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[25].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[25].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[25].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[25].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [26])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[26].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [26]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[26].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[26].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[26].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[26].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [27])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[27].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [27]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[27].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[27].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[27].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[27].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [28])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[28].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [28]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[28].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[28].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[28].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[28].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [29])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[29].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [29]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[29].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[29].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[29].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[29].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [30])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[30].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [30]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[30].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[30].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[30].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[30].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [31])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[31].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [31]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[31].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[31].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[31].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[31].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [32])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[32].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [32]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[32].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[32].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[32].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[32].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [33])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[33].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [33]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[33].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[33].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[33].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[33].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [34])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[34].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [34]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[34].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[34].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[34].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[34].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [35])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[35].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [35]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[35].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[35].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[35].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[35].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [36])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[36].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [36]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[36].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[36].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[36].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[36].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [37])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[37].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [37]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[37].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[37].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[37].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[37].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [38])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[38].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [38]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[38].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[38].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[38].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[38].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [39])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[39].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [39]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[39].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[39].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[39].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[39].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [40])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[40].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [40]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[40].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[40].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[40].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[40].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [41])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[41].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [41]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[41].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[41].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[41].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[41].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [42])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[42].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [42]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[42].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[42].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[42].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[42].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [43])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[43].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [43]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[43].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[43].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[43].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[43].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [44])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[44].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [44]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[44].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[44].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[44].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[44].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [45])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[45].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [45]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[45].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[45].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[45].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[45].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [46])
  );
  SRLC16E #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/GEN_SYNC_OUT[46].SYNC_OUT_CELL/I_SRL_T2.U_SRL  (
    .A0(\U0/I_VIO/addr [0]),
    .A1(\U0/I_VIO/addr [1]),
    .A2(\U0/I_VIO/addr [2]),
    .A3(\U0/I_VIO/addr [3]),
    .CE(CONTROL[5]),
    .CLK(CONTROL[0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [46]),
    .Q(\U0/I_VIO/GEN_SYNC_OUT[46].SYNC_OUT_CELL/out_temp ),
    .Q15(\U0/I_VIO/GEN_SYNC_OUT[46].SYNC_OUT_CELL/SHIFT_OUT_temp )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U0/I_VIO/GEN_SYNC_OUT[46].SYNC_OUT_CELL/LUT_OUT  (
    .I0(CONTROL[5]),
    .I1(\U0/I_VIO/GEN_SYNC_OUT[46].SYNC_OUT_CELL/SHIFT_OUT_temp ),
    .O(\U0/I_VIO/OUTPUT_SHIFT [47])
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/LUT_OUT  (
    .I0(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/arm_dly2 ),
    .I1(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/arm_dly1 ),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_reset )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/LUT_CE  (
    .I0(\U0/I_VIO/addr [0]),
    .I1(\U0/I_VIO/addr [1]),
    .I2(\U0/I_VIO/addr [2]),
    .I3(\U0/I_VIO/addr [3]),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_ce )
  );
  LUT2 #(
    .INIT ( 4'h2 ))
  \U0/I_VIO/GEN_TRANS.U_ARM/U_CLEAR  (
    .I0(\U0/I_VIO/GEN_TRANS.U_ARM/iDOUT_dly [1]),
    .I1(CONTROL[6]),
    .O(\U0/I_VIO/GEN_TRANS.U_ARM/iCLR )
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
  \U0/I_VIO/GEN_UPDATE_OUT[47].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [47]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [48])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[47].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [48]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[48].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [48]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [49])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[48].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [49]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[49].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [49]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [50])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[49].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [50]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[50].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [50]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [51])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[50].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [51]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[51].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [51]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [52])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[51].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [52]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[52].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [52]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [53])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[52].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [53]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[53].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [53]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [54])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[53].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [54]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[54].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [54]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [55])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[54].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [55]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[55].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [55]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [56])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[55].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [56]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[56].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [56]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [57])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[56].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [57]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[57].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [57]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [58])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[57].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [58]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[58].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [58]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [59])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[58].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [59]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[59].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [59]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [60])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[59].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [60]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[60].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [60]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [61])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[60].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [61]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[61].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [61]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [62])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[61].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [62]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[62].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [62]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [63])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[62].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [63]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[63].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [63]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [64])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[63].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [64]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[64].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [64]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [65])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[64].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [65]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[65].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [65]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [66])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[65].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [66]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[66].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [66]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [67])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[66].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [67]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[67].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [67]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [68])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[67].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [68]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[68].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [68]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [69])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[68].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [69]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[69].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [69]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [70])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[69].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [70]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[70].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [70]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [71])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[70].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [71]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[71].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [71]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [72])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[71].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [72]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[72].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [72]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [73])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[72].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [73]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[73].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [73]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [74])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[73].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [74]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[74].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [74]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [75])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[74].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [75]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[75].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [75]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [76])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[75].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [76]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[76].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [76]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [77])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[76].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [77]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[77].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [77]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [78])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[77].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [78]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[78].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [78]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [79])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[78].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [79]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[79].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [79]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [80])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[79].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [80]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[80].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [80]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [81])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[80].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [81]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [33])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[81].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [81]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [82])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[81].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [82]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [34])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[82].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [82]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [83])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[82].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [83]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [35])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[83].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [83]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [84])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[83].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [84]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [36])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[84].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [84]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [85])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[84].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [85]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [37])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[85].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [85]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [86])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[85].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [86]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [38])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[86].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [86]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [87])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[86].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [87]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [39])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[87].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [87]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [88])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[87].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [88]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [40])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[88].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [88]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [89])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[88].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [89]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [41])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[89].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [89]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [90])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[89].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [90]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [42])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[90].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [90]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [91])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[90].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [91]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [43])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[91].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [91]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [92])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[91].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [92]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [44])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[92].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [92]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [93])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[92].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [93]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [45])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[93].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [93]),
    .Q(\U0/I_VIO/GEN_UPDATE_OUT[93].UPDATE_CELL/out_temp )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[93].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/GEN_UPDATE_OUT[93].UPDATE_CELL/out_temp ),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [46])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[0].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [0]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[0].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[1].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [1]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[1].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[2].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [2]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[2].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[3].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [3]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[3].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[4].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [4]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[4].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[5].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [5]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[5].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[6].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [6]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[6].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[7].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [7]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[7].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [8]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [9]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [10]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [11]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[12].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [12]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[12].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[13].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [13]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[13].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[14].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [14]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[14].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[15].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [15]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[15].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[16].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [16]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[16].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[17].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [17]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[17].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[18].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [18]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[18].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[19].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [19]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[19].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[20].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [20]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[20].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[21].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [21]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[21].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[22].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [22]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[22].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[23].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [23]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[23].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[24].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [24]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[24].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[25].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [25]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[25].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[26].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [26]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[26].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[27].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [27]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[27].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[28].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [28]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[28].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[29].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [29]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[29].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[30].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [30]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[30].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[31].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [31]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[31].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[32].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [32]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[32].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[33].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [33]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[33].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[33])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[34].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [34]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[34].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[34])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[35].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [35]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[35].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[35])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[36].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [36]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[36].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[36])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[37].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [37]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[37].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[37])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[38].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [38]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[38].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[38])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[39].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [39]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[39].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[39])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[40].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [40]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[40].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[40])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[41].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [41]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[41].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[41])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[42].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [42]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[42].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[42])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[43].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [43]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[43].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[43])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[44].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [44]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[44].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[44])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[45].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [45]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[45].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[45])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[46].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [46]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[46].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[46])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/DLY1_REG  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/ARM_pulse ),
    .Q(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/arm_dly1 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/DLY2_REG  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/arm_dly1 ),
    .Q(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/arm_dly2 )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_TRANS.U_ARM/U_TFDRE  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .CLR(\U0/I_VIO/GEN_TRANS.U_ARM/iCLR ),
    .D(CONTROL[6]),
    .Q(\U0/I_VIO/GEN_TRANS.U_ARM/din_latched )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_TRANS.U_ARM/U_DOUT0  (
    .C(CLK),
    .CE(N0),
    .CLR(\U0/I_VIO/GEN_TRANS.U_ARM/iCLR ),
    .D(\U0/I_VIO/GEN_TRANS.U_ARM/din_latched ),
    .Q(\U0/I_VIO/GEN_TRANS.U_ARM/iDIN [0])
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_TRANS.U_ARM/U_DOUT1  (
    .C(CLK),
    .CE(N0),
    .CLR(\U0/I_VIO/GEN_TRANS.U_ARM/iCLR ),
    .D(\U0/I_VIO/GEN_TRANS.U_ARM/iDIN [0]),
    .Q(\U0/I_VIO/GEN_TRANS.U_ARM/iDIN [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_TRANS.U_ARM/U_DOUT  (
    .C(CLK),
    .D(\U0/I_VIO/GEN_TRANS.U_ARM/iDIN [0]),
    .R(\U0/I_VIO/GEN_TRANS.U_ARM/iDIN [1]),
    .Q(\U0/I_VIO/ARM_pulse )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_TRANS.U_ARM/U_RFDRE  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .CLR(\U0/I_VIO/GEN_TRANS.U_ARM/iCLR ),
    .D(\U0/I_VIO/ARM_pulse ),
    .Q(\U0/I_VIO/GEN_TRANS.U_ARM/iDOUT_dly [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_TRANS.U_ARM/U_GEN_DELAY[1].U_FD  (
    .C(CLK),
    .CE(N0),
    .D(\U0/I_VIO/GEN_TRANS.U_ARM/iDOUT_dly [0]),
    .Q(\U0/I_VIO/GEN_TRANS.U_ARM/iDOUT_dly [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/U_DATA_OUT  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/INPUT_SHIFT [8]),
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
    .INIT ( 16'h8000 ))
  \U0/I_VIO/U_STATUS/F_STAT[4].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [4])
  );
  LUT4 #(
    .INIT ( 16'h0000 ))
  \U0/I_VIO/U_STATUS/F_STAT[5].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [5])
  );
  LUT4 #(
    .INIT ( 16'hF000 ))
  \U0/I_VIO/U_STATUS/F_STAT[6].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [6])
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
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
  XORCY   \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[0].U_XORCY  (
    .CI(N0),
    .LI(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [0]),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/D [0])
  );
  MUXCY_L   \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[0].GnH.U_MUXCY  (
    .CI(N0),
    .DI(N1),
    .S(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [0]),
    .LO(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/CI [1])
  );
  XORCY   \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[1].U_XORCY  (
    .CI(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/CI [1]),
    .LI(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [1]),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/D [1])
  );
  MUXCY_L   \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[1].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/CI [1]),
    .DI(N1),
    .S(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [1]),
    .LO(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/CI [2])
  );
  XORCY   \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[2].U_XORCY  (
    .CI(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/CI [2]),
    .LI(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [2]),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/D [2])
  );
  MUXCY_L   \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[2].GnH.U_MUXCY  (
    .CI(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/CI [2]),
    .DI(N1),
    .S(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [2]),
    .LO(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/CI [3])
  );
  XORCY   \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[3].U_XORCY  (
    .CI(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/CI [3]),
    .LI(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [3]),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/D [3])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[0].U_LUT  (
    .I0(\U0/I_VIO/addr [0]),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [0])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[1].U_LUT  (
    .I0(\U0/I_VIO/addr [1]),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [1])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[2].U_LUT  (
    .I0(\U0/I_VIO/addr [2]),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [2])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[3].U_LUT  (
    .I0(\U0/I_VIO/addr [3]),
    .O(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/S [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[0].U_FDRE  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_ce ),
    .D(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/D [0]),
    .R(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_reset ),
    .Q(\U0/I_VIO/addr [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[1].U_FDRE  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_ce ),
    .D(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/D [1]),
    .R(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_reset ),
    .Q(\U0/I_VIO/addr [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[2].U_FDRE  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_ce ),
    .D(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/D [2]),
    .R(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_reset ),
    .Q(\U0/I_VIO/addr [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/G[3].U_FDRE  (
    .C(CLK),
    .CE(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_ce ),
    .D(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/COUNT/D [3]),
    .R(\U0/I_VIO/GEN_SYNC_OUT_ADDR.SYNC_OUT_ADDR/cnt_reset ),
    .Q(\U0/I_VIO/addr [3])
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21_586 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22_587 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23_588 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24_589 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25_590 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26_591 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28  (
    .I0(CONTROL[33]),
    .I1(CONTROL[32]),
    .I2(CONTROL[34]),
    .I3(CONTROL[35]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27_592 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O29  (
    .I0(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22_587 ),
    .I1(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23_588 ),
    .I2(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24_589 ),
    .I3(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25_590 ),
    .I4(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26_591 ),
    .I5(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27_592 ),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28_593 )
  );
  LUT5 #(
    .INIT ( 32'hAFACA3A0 ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O210  (
    .I0(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28_593 ),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [4]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [7]),
    .I3(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21_586 ),
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
