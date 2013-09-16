////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: cmp_tx_vio.v
// /___/   /\     Timestamp: Tue Aug 23 10:54:19 2011
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -w -sim -ofmt verilog C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f1.0/ipcore_dir/tmp/_cg/cmp_tx_vio.ngc C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f1.0/ipcore_dir/tmp/_cg/cmp_tx_vio.v 
// Device	: xc6vlx130t-ff1156-1
// Input file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f1.0/ipcore_dir/tmp/_cg/cmp_tx_vio.ngc
// Output file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f1.0/ipcore_dir/tmp/_cg/cmp_tx_vio.v
// # of Modules	: 1
// Design Name	: cmp_tx_vio
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

module cmp_tx_vio (
  CLK, ASYNC_IN, CONTROL, ASYNC_OUT, SYNC_OUT
)/* synthesis syn_black_box syn_noprune=1 */;
  input CLK;
  input [31 : 0] ASYNC_IN;
  inout [35 : 0] CONTROL;
  output [7 : 0] ASYNC_OUT;
  output [3 : 0] SYNC_OUT;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire \U0/I_VIO/GEN_UPDATE_OUT[23].UPDATE_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/SHIFT_OUT_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/out_temp ;
  wire \U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/SHIFT_OUT_temp ;
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
  wire \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/falling_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_f_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_r_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/rising_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/user_in_n ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/mux1_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd3_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd2_out ;
  wire \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd1_out ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O2 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21_520 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22_521 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23_522 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24_523 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25_524 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26_525 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27_526 ;
  wire \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28_527 ;
  wire [1 : 0] \U0/I_VIO/reset_f_edge/iDOUT ;
  wire [1 : 0] \U0/I_VIO/GEN_TRANS.U_ARM/iDIN ;
  wire [1 : 0] \U0/I_VIO/GEN_TRANS.U_ARM/iDOUT_dly ;
  wire [32 : 1] \U0/I_VIO/INPUT_SHIFT ;
  wire [23 : 1] \U0/I_VIO/OUTPUT_SHIFT ;
  wire [11 : 0] \U0/I_VIO/UPDATE ;
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
  \U0/I_VIO/GEN_ASYNC_OUT[0].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(CONTROL[1]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[0].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [0]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [1]),
    .Q(ASYNC_OUT[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[1].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [1]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[1].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [1]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [2]),
    .Q(ASYNC_OUT[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[2].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [2]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[2].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [2]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [3]),
    .Q(ASYNC_OUT[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[3].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [3]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[3].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [3]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [4]),
    .Q(ASYNC_OUT[3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[4].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [4]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[4].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [4]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [5]),
    .Q(ASYNC_OUT[4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[5].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [5]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[5].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [6]),
    .Q(ASYNC_OUT[5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[6].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [6]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[6].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [7]),
    .Q(ASYNC_OUT[6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[7].ASYNC_OUT_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [7]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_OUT[7].ASYNC_OUT_CELL/USER_REG  (
    .C(CONTROL[0]),
    .CE(\U0/I_VIO/UPDATE [7]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [8]),
    .Q(ASYNC_OUT[7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[20].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [20]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[20].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [21]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[21].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [21]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[21].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [22]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[22].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [22]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[22].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/OUTPUT_SHIFT [23]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[23].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [23]),
    .Q(\U0/I_VIO/GEN_UPDATE_OUT[23].UPDATE_CELL/out_temp )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[23].UPDATE_CELL/GEN_CLK.USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/ARM_pulse ),
    .D(\U0/I_VIO/GEN_UPDATE_OUT[23].UPDATE_CELL/out_temp ),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[12].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [12]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[12].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [13]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[13].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [13]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[13].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [14]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[14].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [14]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[14].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [15]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[15].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [15]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[15].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [16]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[16].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [16]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[16].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [17]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[17].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [17]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[17].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [18]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[18].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [18]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[18].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [19]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[19].UPDATE_CELL/SHIFT_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[5]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [19]),
    .Q(\U0/I_VIO/OUTPUT_SHIFT [20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_UPDATE_OUT[19].UPDATE_CELL/GEN_NO_CLK.USER_REG  (
    .C(CONTROL[0]),
    .CE(CONTROL[6]),
    .D(\U0/I_VIO/OUTPUT_SHIFT [20]),
    .R(CONTROL[5]),
    .Q(\U0/I_VIO/UPDATE [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [8]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[8].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [9]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[9].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [10]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[10].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/USER_REG  (
    .C(CLK),
    .CE(\U0/I_VIO/UPDATE [11]),
    .D(\U0/I_VIO/GEN_SYNC_OUT[11].SYNC_OUT_CELL/out_temp ),
    .Q(SYNC_OUT[3])
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
    .D(\U0/I_VIO/INPUT_SHIFT [32]),
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
    .INIT ( 16'h0002 ))
  \U0/I_VIO/U_STATUS/F_STAT[4].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [4])
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U0/I_VIO/U_STATUS/F_STAT[5].I_STAT.U_STAT  (
    .I0(\U0/I_VIO/U_STATUS/iSTAT_CNT [0]),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [1]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [2]),
    .I3(\U0/I_VIO/U_STATUS/iSTAT_CNT [3]),
    .O(\U0/I_VIO/U_STATUS/iSTAT [5])
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
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
  \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[31]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[31]),
    .I1(\U0/I_VIO/INPUT_SHIFT [31]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[31]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [32])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[31].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[30]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[30]),
    .I1(\U0/I_VIO/INPUT_SHIFT [30]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[30]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [31])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[30].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[29]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[29]),
    .I1(\U0/I_VIO/INPUT_SHIFT [29]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[29]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [30])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[29].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[28]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[28]),
    .I1(\U0/I_VIO/INPUT_SHIFT [28]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[28]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [29])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[28].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[27]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[27]),
    .I1(\U0/I_VIO/INPUT_SHIFT [27]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[27]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [28])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[27].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[26]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[26]),
    .I1(\U0/I_VIO/INPUT_SHIFT [26]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[26]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [27])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[26].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[25]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[25]),
    .I1(\U0/I_VIO/INPUT_SHIFT [25]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[25]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [26])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[25].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[24]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[24]),
    .I1(\U0/I_VIO/INPUT_SHIFT [24]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[24]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [25])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[24].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[23]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[23]),
    .I1(\U0/I_VIO/INPUT_SHIFT [23]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[23]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [24])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[23].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[22]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[22]),
    .I1(\U0/I_VIO/INPUT_SHIFT [22]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[22]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [23])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[22].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[21]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[21]),
    .I1(\U0/I_VIO/INPUT_SHIFT [21]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[21]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[21].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[20]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[20]),
    .I1(\U0/I_VIO/INPUT_SHIFT [20]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[20]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[20].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[19]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[19]),
    .I1(\U0/I_VIO/INPUT_SHIFT [19]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[19]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[19].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[18]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[18]),
    .I1(\U0/I_VIO/INPUT_SHIFT [18]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[18]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[18].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[17]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[17]),
    .I1(\U0/I_VIO/INPUT_SHIFT [17]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[17]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[17].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[16]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[16]),
    .I1(\U0/I_VIO/INPUT_SHIFT [16]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[16]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[16].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[15]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[15]),
    .I1(\U0/I_VIO/INPUT_SHIFT [15]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[15]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[15].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[14]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[14]),
    .I1(\U0/I_VIO/INPUT_SHIFT [14]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[14]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[14].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[13]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[13]),
    .I1(\U0/I_VIO/INPUT_SHIFT [13]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[13]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[13].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[12]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[12]),
    .I1(\U0/I_VIO/INPUT_SHIFT [12]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[12]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[12].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[11]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[11]),
    .I1(\U0/I_VIO/INPUT_SHIFT [11]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[11]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[11].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[10]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[10]),
    .I1(\U0/I_VIO/INPUT_SHIFT [10]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[10]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[10].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[9]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[9]),
    .I1(\U0/I_VIO/INPUT_SHIFT [9]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[9]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[9].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[8]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[8]),
    .I1(\U0/I_VIO/INPUT_SHIFT [8]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[8]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[8].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[7]),
    .I1(\U0/I_VIO/INPUT_SHIFT [7]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[7]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[7].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[6]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[6]),
    .I1(\U0/I_VIO/INPUT_SHIFT [6]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[6]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[6].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[5]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[5]),
    .I1(\U0/I_VIO/INPUT_SHIFT [5]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[5]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[5].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[4]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[4]),
    .I1(\U0/I_VIO/INPUT_SHIFT [4]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[4]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[4].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[3]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[3]),
    .I1(\U0/I_VIO/INPUT_SHIFT [3]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[3]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[3].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[2]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[2]),
    .I1(\U0/I_VIO/INPUT_SHIFT [2]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[2]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[2].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[1]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[1]),
    .I1(\U0/I_VIO/INPUT_SHIFT [1]),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[1]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[1].ASYNC_IN_CELL/fd1_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/ASYNC_F_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/falling_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd2_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_f_out )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/ASYNC_R_MUX  (
    .I0(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/rising_out ),
    .I1(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd1_out ),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_r_out )
  );
  INV   \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/U_STATCMD_n  (
    .I(ASYNC_IN[0]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/user_in_n )
  );
  LUT3 #(
    .INIT ( 8'hCA ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/USER_MUX  (
    .I0(ASYNC_IN[0]),
    .I1(N1),
    .I2(CONTROL[7]),
    .O(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/mux1_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/U_FALLING  (
    .C(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/user_in_n ),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/falling_out )
  );
  FDCE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/U_RISING  (
    .C(ASYNC_IN[0]),
    .CE(N0),
    .CLR(\U0/I_VIO/RESET ),
    .D(N0),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/rising_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/S_ASYNC_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd3_out ),
    .Q(\U0/I_VIO/INPUT_SHIFT [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/S_ASYNC_F_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_f_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd3_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/S_ASYNC_R_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/async_mux_r_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd2_out )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/S_USER_REG  (
    .C(CONTROL[0]),
    .CE(N0),
    .D(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/mux1_out ),
    .Q(\U0/I_VIO/GEN_ASYNC_IN[0].ASYNC_IN_CELL/fd1_out )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21_520 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22_521 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23_522 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24_523 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25_524 )
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
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26_525 )
  );
  LUT4 #(
    .INIT ( 16'h7FFF ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28  (
    .I0(CONTROL[33]),
    .I1(CONTROL[32]),
    .I2(CONTROL[34]),
    .I3(CONTROL[35]),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27_526 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O29  (
    .I0(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O22_521 ),
    .I1(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O23_522 ),
    .I2(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O24_523 ),
    .I3(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O25_524 ),
    .I4(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O26_525 ),
    .I5(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O27_526 ),
    .O(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28_527 )
  );
  LUT5 #(
    .INIT ( 32'hAFACA3A0 ))
  \U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O210  (
    .I0(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O28_527 ),
    .I1(\U0/I_VIO/U_STATUS/iSTAT_CNT [4]),
    .I2(\U0/I_VIO/U_STATUS/iSTAT_CNT [7]),
    .I3(\U0/I_VIO/U_STATUS/U_SMUX/U_CS_MUX/I4.U_MUX16/Mmux_O21_520 ),
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
