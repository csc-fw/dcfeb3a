////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: M.81d
//  \   \         Application: netgen
//  /   /         Filename: sem_core.v
// /___/   /\     Timestamp: Wed Aug 21 12:31:03 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -w -sim -ofmt verilog ./tmp/_cg\sem_core.ngc ./tmp/_cg\sem_core.v 
// Device	: 6vlx130tff1156-1
// Input file	: ./tmp/_cg/sem_core.ngc
// Output file	: ./tmp/_cg/sem_core.v
// # of Modules	: 1
// Design Name	: sem_core
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

module sem_core (
  icap_rdwrb, status_correction, icap_request, fecc_syndromevalid, icap_busy, status_classification, status_injection, fecc_crcerr, fecc_eccerrsingle
, status_uncorrectable, monitor_txwrite, inject_strobe, status_critical, status_observation, icap_grant, icap_clk, fecc_eccerr, status_heartbeat, 
monitor_rxread, status_initialization, monitor_txfull, monitor_rxempty, icap_csb, icap_i, icap_o, fecc_syndrome, fecc_synbit, monitor_rxdata, 
inject_address, fecc_far, fecc_synword, monitor_txdata
)/* synthesis syn_black_box syn_noprune=1 */;
  output icap_rdwrb;
  output status_correction;
  output icap_request;
  input fecc_syndromevalid;
  input icap_busy;
  output status_classification;
  output status_injection;
  input fecc_crcerr;
  input fecc_eccerrsingle;
  output status_uncorrectable;
  output monitor_txwrite;
  input inject_strobe;
  output status_critical;
  output status_observation;
  input icap_grant;
  input icap_clk;
  input fecc_eccerr;
  output status_heartbeat;
  output monitor_rxread;
  output status_initialization;
  input monitor_txfull;
  input monitor_rxempty;
  output icap_csb;
  output [31 : 0] icap_i;
  input [31 : 0] icap_o;
  input [12 : 0] fecc_syndrome;
  input [4 : 0] fecc_synbit;
  input [7 : 0] monitor_rxdata;
  input [35 : 0] inject_address;
  input [23 : 0] fecc_far;
  input [6 : 0] fecc_synword;
  output [7 : 0] monitor_txdata;
  
  // synthesis translate_off
  
  wire N0;
  wire N1;
  wire NlwRenamedSig_OI_status_initialization;
  wire NlwRenamedSig_OI_status_observation;
  wire NlwRenamedSig_OI_status_correction;
  wire NlwRenamedSig_OI_status_classification;
  wire NlwRenamedSig_OI_status_injection;
  wire NlwRenamedSig_OI_status_critical;
  wire NlwRenamedSig_OI_status_uncorrectable;
  wire NlwRenamedSig_OI_icap_request;
  wire NlwRenamedSignal_fecc_syndromevalid;
  wire \BU2/U0/wrapper_controller/mux_812_1098 ;
  wire \BU2/U0/wrapper_controller/mux_811_1097 ;
  wire \BU2/U0/wrapper_controller/mux4_812_1096 ;
  wire \BU2/U0/wrapper_controller/mux4_811_1095 ;
  wire \BU2/U0/wrapper_controller/mux2_812_1094 ;
  wire \BU2/U0/wrapper_controller/mux2_811_1093 ;
  wire \BU2/U0/wrapper_controller/mux3_812_1092 ;
  wire \BU2/U0/wrapper_controller/mux3_811_1091 ;
  wire \BU2/U0/wrapper_controller/mux5_812_1090 ;
  wire \BU2/U0/wrapper_controller/mux5_811_1089 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/controller_dbuffer_mem/sync_init_INV_8_o ;
  wire \BU2/U0/wrapper_controller/mux3_81 ;
  wire \BU2/N47 ;
  wire \BU2/N46 ;
  wire \BU2/U0/wrapper_controller/mux2_81 ;
  wire \BU2/N45 ;
  wire \BU2/N44 ;
  wire \BU2/U0/wrapper_controller/mux5_81 ;
  wire \BU2/N43 ;
  wire \BU2/N42 ;
  wire \BU2/U0/wrapper_controller/mux4_81 ;
  wire \BU2/N41 ;
  wire \BU2/N40 ;
  wire \BU2/U0/wrapper_controller/mux_81 ;
  wire \BU2/N39 ;
  wire \BU2/N38 ;
  wire \BU2/N37 ;
  wire \BU2/N36 ;
  wire \BU2/N35 ;
  wire \BU2/N34 ;
  wire \BU2/N33 ;
  wire \BU2/N32 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/inc4 ;
  wire \BU2/N20 ;
  wire \BU2/U0/wrapper_controller/bank_sel_reg_rstpot_1064 ;
  wire \BU2/U0/wrapper_controller/frame_locate_16_rstpot_1063 ;
  wire \BU2/U0/wrapper_controller/ireq_reg_rstpot_1062 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_0_glue_set_1061 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_1_glue_set_1060 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_2_glue_set_1059 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_3_glue_set_1058 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_4_glue_set_1057 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_5_glue_set_1056 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_6_glue_set_1055 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_7_glue_set_1054 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_8_glue_set_1053 ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_9_glue_set_1052 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/burst_glue_set_1051 ;
  wire \BU2/U0/wrapper_controller/errinj_ego_glue_set_1050 ;
  wire \BU2/U0/wrapper_controller/rdbk_ecc_glue_set_1049 ;
  wire \BU2/U0/wrapper_controller/frame_eos_glue_set_1048 ;
  wire \BU2/U0/wrapper_controller/rdbk_crc_glue_set_1047 ;
  wire \BU2/N18 ;
  wire \BU2/N16 ;
  wire \BU2/N14 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/halt ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/halt92_1040 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/halt91_1039 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/halt9 ;
  wire \BU2/N12 ;
  wire \BU2/N10 ;
  wire \BU2/N8 ;
  wire \BU2/N6 ;
  wire \BU2/N4 ;
  wire \BU2/N2 ;
  wire \BU2/U0/wrapper_controller/port_id<2>2 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[9] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[7] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[6] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[5] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[4] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[3] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[34] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[33] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[32] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[31] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[30] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[2] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[29] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[28] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[27] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[25] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[24] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[23] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[22] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[21] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[20] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[1] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[19] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[18] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[16] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[15] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[14] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[13] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[12] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[11] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[10] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/dina[0] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/doutb[26] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/doutb[35] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/N3 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/N4 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/inc1 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/go ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/doutb[17] ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/N72 ;
  wire \BU2/U0/wrapper_controller/dbuf_select ;
  wire \BU2/U0/wrapper_controller/pid[4]_PWR_6_o_equal_41_o ;
  wire \BU2/U0/wrapper_controller/bank_sel_reg_935 ;
  wire \BU2/U0/wrapper_controller/N9 ;
  wire \BU2/U0/wrapper_controller/ws_pid[4]_AND_23_o ;
  wire \BU2/U0/wrapper_controller/ws_pid[4]_AND_24_o ;
  wire \BU2/U0/wrapper_controller/ws_pid[4]_AND_4_o ;
  wire \BU2/U0/wrapper_controller/write_strobe ;
  wire \BU2/U0/wrapper_controller/read_strobe ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/int_update_enable ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/flag_type ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/register_type ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/memory_type ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/input_fetch_type ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/write_active ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/read_active ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/io_initial_decode ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/int_enable_value ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/interrupt_ack_internal ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/memory_write ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/zero_flag ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/move_group ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/condition_met ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/carry_flag ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/high_shift_in ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/low_shift_in ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/shift_carry_value ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/not_t_state ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/int_pulse ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/int_enable ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/clean_int ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/flag_enable ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/flag_write ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/register_enable ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/register_write ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/push_or_pop_type ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/call_type ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/valid_to_move ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/t_state ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/not_active_interrupt ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shadow_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/shadow_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shadow_zero ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/shadow_zero ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/shift_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_group ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_parity ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith_carry_in ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_in ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_out ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/invert_arith_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/zero_fast_route ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/zero_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/low_parity ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/parity ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/high_parity ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/parity_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/carry_fast_route ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/low_zero ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/high_zero_carry ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/high_zero ;
  wire \BU2/U0/wrapper_controller/controller_kcpsm3/low_zero_carry ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_10_613 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_9_612 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_8_611 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/_n0258_inv ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_9_591 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_10_590 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/burst_588 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<0> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<0> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<0>_585 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<1> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<1> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<0>_582 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<2> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<2> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<2>_579 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<1>_578 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<3> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<3> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<2>_575 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<4> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<4> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<3>_572 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<5> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<5> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<4>_569 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<6> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<6> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<5>_566 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<7> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<7> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<6>_563 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<8> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<8> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<7>_560 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<9> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<9> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<8>_557 ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<10> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<10> ;
  wire \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<9>_554 ;
  wire \BU2/U0/wrapper_controller/word_count[6]_PWR_6_o_equal_12_o ;
  wire \BU2/U0/wrapper_controller/first_ecc_event ;
  wire \BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o ;
  wire \BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o ;
  wire \BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o ;
  wire \BU2/U0/wrapper_controller/sync_init ;
  wire \BU2/U0/wrapper_controller/controller_instrom/temp_init ;
  wire \BU2/U0/wrapper_controller/word_count<7>_inv ;
  wire \BU2/U0/wrapper_controller/long_gap_474 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<0>_470 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<1>_466 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<0>_465 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<2>_461 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<1>_460 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<3>_456 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<2>_455 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<4>_451 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<3>_450 ;
  wire \BU2/U0/wrapper_controller/frame_count[16]_frame_locate[16]_equal_28_o ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<5>_446 ;
  wire \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<4>_445 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<1>_rt_441 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<2>_rt_438 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<3>_rt_435 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<4>_rt_432 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<5>_rt_429 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<6>_rt_426 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<7>_rt_423 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<8>_rt_420 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<9>_rt_417 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<10>_rt_414 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<11>_rt_411 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<12>_rt_408 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<13>_rt_405 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<14>_rt_402 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_cy<15>_rt_399 ;
  wire \BU2/U0/wrapper_controller/Mcount_frame_count_xor<16>_rt_396 ;
  wire \BU2/U0/wrapper_controller/Result<0>1 ;
  wire \BU2/U0/wrapper_controller/Result<1>1 ;
  wire \BU2/U0/wrapper_controller/Mcount_word_count_cy<1>_rt_391 ;
  wire \BU2/U0/wrapper_controller/Result<2>1 ;
  wire \BU2/U0/wrapper_controller/Mcount_word_count_cy<2>_rt_388 ;
  wire \BU2/U0/wrapper_controller/Result<3>1 ;
  wire \BU2/U0/wrapper_controller/Mcount_word_count_cy<3>_rt_385 ;
  wire \BU2/U0/wrapper_controller/Result<4>1 ;
  wire \BU2/U0/wrapper_controller/Mcount_word_count_cy<4>_rt_382 ;
  wire \BU2/U0/wrapper_controller/Result<5>1 ;
  wire \BU2/U0/wrapper_controller/Mcount_word_count_cy<5>_rt_379 ;
  wire \BU2/U0/wrapper_controller/Result<6>1 ;
  wire \BU2/U0/wrapper_controller/Mcount_word_count_cy<6>_rt_376 ;
  wire \BU2/U0/wrapper_controller/Result<7>1 ;
  wire \BU2/U0/wrapper_controller/Mcount_word_count_xor<7>_rt_373 ;
  wire \BU2/U0/wrapper_controller/mux_10_371 ;
  wire \BU2/U0/wrapper_controller/mux_91_369 ;
  wire \BU2/U0/wrapper_controller/frame_flm_367 ;
  wire \BU2/U0/wrapper_controller/mux_82_364 ;
  wire \BU2/U0/wrapper_controller/mux_9_360 ;
  wire \BU2/U0/wrapper_controller/mux_8_357 ;
  wire \BU2/U0/wrapper_controller/mux_7_352 ;
  wire \BU2/U0/wrapper_controller/mux1_4_346 ;
  wire \BU2/U0/wrapper_controller/mux1_10_344 ;
  wire \BU2/U0/wrapper_controller/mux1_91_342 ;
  wire \BU2/U0/wrapper_controller/mux1_82_339 ;
  wire \BU2/U0/wrapper_controller/mux1_3_336 ;
  wire \BU2/U0/wrapper_controller/mux1_81_335 ;
  wire \BU2/U0/wrapper_controller/mux1_9_334 ;
  wire \BU2/U0/wrapper_controller/mux1_8_332 ;
  wire \BU2/U0/wrapper_controller/mux1_7_327 ;
  wire \BU2/U0/wrapper_controller/mux4_10_322 ;
  wire \BU2/U0/wrapper_controller/mux4_91_320 ;
  wire \BU2/U0/wrapper_controller/frame_eos_319 ;
  wire \BU2/U0/wrapper_controller/mux4_82_316 ;
  wire \BU2/U0/wrapper_controller/mux4_9_313 ;
  wire \BU2/U0/wrapper_controller/mux4_8_311 ;
  wire \BU2/U0/wrapper_controller/mux4_7_306 ;
  wire \BU2/U0/wrapper_controller/mux2_10_302 ;
  wire \BU2/U0/wrapper_controller/mux2_91_300 ;
  wire \BU2/U0/wrapper_controller/mux2_82_297 ;
  wire \BU2/U0/wrapper_controller/mux2_9_294 ;
  wire \BU2/U0/wrapper_controller/mux2_8_292 ;
  wire \BU2/U0/wrapper_controller/mux2_7_287 ;
  wire \BU2/U0/wrapper_controller/mux3_10_282 ;
  wire \BU2/U0/wrapper_controller/mux3_91_280 ;
  wire \BU2/U0/wrapper_controller/mux3_82_277 ;
  wire \BU2/U0/wrapper_controller/mux3_9_274 ;
  wire \BU2/U0/wrapper_controller/mux3_8_272 ;
  wire \BU2/U0/wrapper_controller/mux3_7_267 ;
  wire \BU2/U0/wrapper_controller/mux5_10_262 ;
  wire \BU2/U0/wrapper_controller/mux5_9_260 ;
  wire \BU2/U0/wrapper_controller/mux5_82_257 ;
  wire \BU2/U0/wrapper_controller/mux5_8_254 ;
  wire \BU2/U0/wrapper_controller/rdbk_sbe_250 ;
  wire \BU2/U0/wrapper_controller/mux5_7_249 ;
  wire \BU2/U0/wrapper_controller/mux6_4_243 ;
  wire \BU2/U0/wrapper_controller/mux6_10_241 ;
  wire \BU2/U0/wrapper_controller/mux6_91_239 ;
  wire \BU2/U0/wrapper_controller/mux6_82_236 ;
  wire \BU2/U0/wrapper_controller/mux6_3_233 ;
  wire \BU2/U0/wrapper_controller/mux6_81_232 ;
  wire \BU2/U0/wrapper_controller/mux6_9_229 ;
  wire \BU2/U0/wrapper_controller/mux6_8_228 ;
  wire \BU2/U0/wrapper_controller/rdbk_ecc_226 ;
  wire \BU2/U0/wrapper_controller/mux6_7_223 ;
  wire \BU2/U0/wrapper_controller/mux7_10_219 ;
  wire \BU2/U0/wrapper_controller/mux7_9_217 ;
  wire \BU2/U0/wrapper_controller/mux7_81_214 ;
  wire \BU2/U0/wrapper_controller/mux7_8_211 ;
  wire \BU2/U0/wrapper_controller/errinj_ego_210 ;
  wire \BU2/U0/wrapper_controller/mux7_7_206 ;
  wire \BU2/U0/wrapper_controller/rdbk_crc_202 ;
  wire \BU2/N1 ;
  wire \BU2/N0 ;
  wire \BU2/fetch_rxread ;
  wire \BU2/fetch_txwrite ;
  wire \NLW_BU2/U0/wrapper_controller/controller_dbuffer/controller_dbuffer_mem/storage_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOPADOP<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<15>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<14>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<13>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<12>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<11>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<10>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<9>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<8>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<7>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<6>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<5>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<4>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<3>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<2>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<0>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOPADOP<1>_UNCONNECTED ;
  wire \NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOPADOP<0>_UNCONNECTED ;
  wire [7 : 0] NlwRenamedSig_OI_monitor_txdata;
  wire [7 : 0] monitor_rxdata_2;
  wire [35 : 0] inject_address_3;
  wire [31 : 0] icap_o_4;
  wire [31 : 0] NlwRenamedSig_OI_icap_i;
  wire [12 : 0] fecc_syndrome_5;
  wire [23 : 0] fecc_far_6;
  wire [4 : 0] fecc_synbit_7;
  wire [6 : 0] fecc_synword_8;
  wire [7 : 0] \BU2/U0/wrapper_controller/dbuf_din ;
  wire [8 : 0] \BU2/U0/wrapper_controller/controller_dbuffer/addra ;
  wire [3 : 0] \BU2/U0/wrapper_controller/controller_dbuffer/wea ;
  wire [17 : 0] \BU2/U0/wrapper_controller/controller_instrom/instruction1 ;
  wire [17 : 0] \BU2/U0/wrapper_controller/controller_instrom/instruction0 ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/memory_data ;
  wire [9 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data ;
  wire [9 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data ;
  wire [17 : 0] \BU2/U0/wrapper_controller/instruction ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/sy ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/logical_value ;
  wire [7 : 5] \BU2/U0/wrapper_controller/controller_kcpsm3/second_operand ;
  wire [9 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/store_data ;
  wire [7 : 0] \BU2/U0/wrapper_controller/in_port ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/shift_value ;
  wire [4 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/stack_address ;
  wire [9 : 0] \BU2/U0/wrapper_controller/address ;
  wire [9 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/shift_result ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/arith_result ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/logical_result ;
  wire [3 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/sel_carry ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/input_group ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/alu_group ;
  wire [8 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/arith_value ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/half_arith ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry ;
  wire [9 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value ;
  wire [9 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value ;
  wire [4 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address ;
  wire [4 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address ;
  wire [3 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry ;
  wire [8 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_kcpsm3/alu_result ;
  wire [8 : 0] \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr ;
  wire [7 : 0] \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr ;
  wire [23 : 0] \BU2/U0/wrapper_controller/fecc_far_cap ;
  wire [23 : 0] \BU2/U0/wrapper_controller/fecc_far_dly ;
  wire [12 : 0] \BU2/U0/wrapper_controller/rdbk_syn ;
  wire [6 : 0] \BU2/U0/wrapper_controller/rdbk_synwd ;
  wire [7 : 0] \BU2/U0/wrapper_controller/word_count ;
  wire [16 : 0] \BU2/U0/wrapper_controller/frame_locate ;
  wire [16 : 0] \BU2/U0/wrapper_controller/Result ;
  wire [0 : 0] \BU2/U0/wrapper_controller/Mcount_frame_count_lut ;
  wire [15 : 0] \BU2/U0/wrapper_controller/Mcount_frame_count_cy ;
  wire [0 : 0] \BU2/U0/wrapper_controller/Mcount_word_count_lut ;
  wire [6 : 0] \BU2/U0/wrapper_controller/Mcount_word_count_cy ;
  wire [35 : 0] \BU2/U0/wrapper_controller/errinj_reg ;
  wire [16 : 0] \BU2/U0/wrapper_controller/frame_total ;
  wire [16 : 0] \BU2/U0/wrapper_controller/frame_count ;
  wire [16 : 0] \BU2/U0/wrapper_controller/rdbk_efcr ;
  wire [7 : 0] \BU2/U0/wrapper_controller/rdbk_fecc_far ;
  wire [4 : 0] \BU2/U0/wrapper_controller/rdbk_synbt ;
  wire [4 : 0] \BU2/U0/wrapper_controller/port_id ;
  assign
    status_correction = NlwRenamedSig_OI_status_correction,
    icap_request = NlwRenamedSig_OI_icap_request,
    NlwRenamedSignal_fecc_syndromevalid = fecc_syndromevalid,
    icap_i[31] = NlwRenamedSig_OI_icap_i[31],
    icap_i[30] = NlwRenamedSig_OI_icap_i[30],
    icap_i[29] = NlwRenamedSig_OI_icap_i[29],
    icap_i[28] = NlwRenamedSig_OI_icap_i[28],
    icap_i[27] = NlwRenamedSig_OI_icap_i[27],
    icap_i[26] = NlwRenamedSig_OI_icap_i[26],
    icap_i[25] = NlwRenamedSig_OI_icap_i[25],
    icap_i[24] = NlwRenamedSig_OI_icap_i[24],
    icap_i[23] = NlwRenamedSig_OI_icap_i[23],
    icap_i[22] = NlwRenamedSig_OI_icap_i[22],
    icap_i[21] = NlwRenamedSig_OI_icap_i[21],
    icap_i[20] = NlwRenamedSig_OI_icap_i[20],
    icap_i[19] = NlwRenamedSig_OI_icap_i[19],
    icap_i[18] = NlwRenamedSig_OI_icap_i[18],
    icap_i[17] = NlwRenamedSig_OI_icap_i[17],
    icap_i[16] = NlwRenamedSig_OI_icap_i[16],
    icap_i[15] = NlwRenamedSig_OI_icap_i[15],
    icap_i[14] = NlwRenamedSig_OI_icap_i[14],
    icap_i[13] = NlwRenamedSig_OI_icap_i[13],
    icap_i[12] = NlwRenamedSig_OI_icap_i[12],
    icap_i[11] = NlwRenamedSig_OI_icap_i[11],
    icap_i[10] = NlwRenamedSig_OI_icap_i[10],
    icap_i[9] = NlwRenamedSig_OI_icap_i[9],
    icap_i[8] = NlwRenamedSig_OI_icap_i[8],
    icap_i[7] = NlwRenamedSig_OI_icap_i[7],
    icap_i[6] = NlwRenamedSig_OI_icap_i[6],
    icap_i[5] = NlwRenamedSig_OI_icap_i[5],
    icap_i[4] = NlwRenamedSig_OI_icap_i[4],
    icap_i[3] = NlwRenamedSig_OI_icap_i[3],
    icap_i[2] = NlwRenamedSig_OI_icap_i[2],
    icap_i[1] = NlwRenamedSig_OI_icap_i[1],
    icap_i[0] = NlwRenamedSig_OI_icap_i[0],
    icap_o_4[31] = icap_o[31],
    icap_o_4[30] = icap_o[30],
    icap_o_4[29] = icap_o[29],
    icap_o_4[28] = icap_o[28],
    icap_o_4[27] = icap_o[27],
    icap_o_4[26] = icap_o[26],
    icap_o_4[25] = icap_o[25],
    icap_o_4[24] = icap_o[24],
    icap_o_4[23] = icap_o[23],
    icap_o_4[22] = icap_o[22],
    icap_o_4[21] = icap_o[21],
    icap_o_4[20] = icap_o[20],
    icap_o_4[19] = icap_o[19],
    icap_o_4[18] = icap_o[18],
    icap_o_4[17] = icap_o[17],
    icap_o_4[16] = icap_o[16],
    icap_o_4[15] = icap_o[15],
    icap_o_4[14] = icap_o[14],
    icap_o_4[13] = icap_o[13],
    icap_o_4[12] = icap_o[12],
    icap_o_4[11] = icap_o[11],
    icap_o_4[10] = icap_o[10],
    icap_o_4[9] = icap_o[9],
    icap_o_4[8] = icap_o[8],
    icap_o_4[7] = icap_o[7],
    icap_o_4[6] = icap_o[6],
    icap_o_4[5] = icap_o[5],
    icap_o_4[4] = icap_o[4],
    icap_o_4[3] = icap_o[3],
    icap_o_4[2] = icap_o[2],
    icap_o_4[1] = icap_o[1],
    icap_o_4[0] = icap_o[0],
    status_classification = NlwRenamedSig_OI_status_classification,
    status_injection = NlwRenamedSig_OI_status_injection,
    fecc_syndrome_5[12] = fecc_syndrome[12],
    fecc_syndrome_5[11] = fecc_syndrome[11],
    fecc_syndrome_5[10] = fecc_syndrome[10],
    fecc_syndrome_5[9] = fecc_syndrome[9],
    fecc_syndrome_5[8] = fecc_syndrome[8],
    fecc_syndrome_5[7] = fecc_syndrome[7],
    fecc_syndrome_5[6] = fecc_syndrome[6],
    fecc_syndrome_5[5] = fecc_syndrome[5],
    fecc_syndrome_5[4] = fecc_syndrome[4],
    fecc_syndrome_5[3] = fecc_syndrome[3],
    fecc_syndrome_5[2] = fecc_syndrome[2],
    fecc_syndrome_5[1] = fecc_syndrome[1],
    fecc_syndrome_5[0] = fecc_syndrome[0],
    status_uncorrectable = NlwRenamedSig_OI_status_uncorrectable,
    fecc_synbit_7[4] = fecc_synbit[4],
    fecc_synbit_7[3] = fecc_synbit[3],
    fecc_synbit_7[2] = fecc_synbit[2],
    fecc_synbit_7[1] = fecc_synbit[1],
    fecc_synbit_7[0] = fecc_synbit[0],
    monitor_rxdata_2[7] = monitor_rxdata[7],
    monitor_rxdata_2[6] = monitor_rxdata[6],
    monitor_rxdata_2[5] = monitor_rxdata[5],
    monitor_rxdata_2[4] = monitor_rxdata[4],
    monitor_rxdata_2[3] = monitor_rxdata[3],
    monitor_rxdata_2[2] = monitor_rxdata[2],
    monitor_rxdata_2[1] = monitor_rxdata[1],
    monitor_rxdata_2[0] = monitor_rxdata[0],
    inject_address_3[35] = inject_address[35],
    inject_address_3[34] = inject_address[34],
    inject_address_3[33] = inject_address[33],
    inject_address_3[32] = inject_address[32],
    inject_address_3[31] = inject_address[31],
    inject_address_3[30] = inject_address[30],
    inject_address_3[29] = inject_address[29],
    inject_address_3[28] = inject_address[28],
    inject_address_3[27] = inject_address[27],
    inject_address_3[26] = inject_address[26],
    inject_address_3[25] = inject_address[25],
    inject_address_3[24] = inject_address[24],
    inject_address_3[23] = inject_address[23],
    inject_address_3[22] = inject_address[22],
    inject_address_3[21] = inject_address[21],
    inject_address_3[20] = inject_address[20],
    inject_address_3[19] = inject_address[19],
    inject_address_3[18] = inject_address[18],
    inject_address_3[17] = inject_address[17],
    inject_address_3[16] = inject_address[16],
    inject_address_3[15] = inject_address[15],
    inject_address_3[14] = inject_address[14],
    inject_address_3[13] = inject_address[13],
    inject_address_3[12] = inject_address[12],
    inject_address_3[11] = inject_address[11],
    inject_address_3[10] = inject_address[10],
    inject_address_3[9] = inject_address[9],
    inject_address_3[8] = inject_address[8],
    inject_address_3[7] = inject_address[7],
    inject_address_3[6] = inject_address[6],
    inject_address_3[5] = inject_address[5],
    inject_address_3[4] = inject_address[4],
    inject_address_3[3] = inject_address[3],
    inject_address_3[2] = inject_address[2],
    inject_address_3[1] = inject_address[1],
    inject_address_3[0] = inject_address[0],
    fecc_far_6[23] = fecc_far[23],
    fecc_far_6[22] = fecc_far[22],
    fecc_far_6[21] = fecc_far[21],
    fecc_far_6[20] = fecc_far[20],
    fecc_far_6[19] = fecc_far[19],
    fecc_far_6[18] = fecc_far[18],
    fecc_far_6[17] = fecc_far[17],
    fecc_far_6[16] = fecc_far[16],
    fecc_far_6[15] = fecc_far[15],
    fecc_far_6[14] = fecc_far[14],
    fecc_far_6[13] = fecc_far[13],
    fecc_far_6[12] = fecc_far[12],
    fecc_far_6[11] = fecc_far[11],
    fecc_far_6[10] = fecc_far[10],
    fecc_far_6[9] = fecc_far[9],
    fecc_far_6[8] = fecc_far[8],
    fecc_far_6[7] = fecc_far[7],
    fecc_far_6[6] = fecc_far[6],
    fecc_far_6[5] = fecc_far[5],
    fecc_far_6[4] = fecc_far[4],
    fecc_far_6[3] = fecc_far[3],
    fecc_far_6[2] = fecc_far[2],
    fecc_far_6[1] = fecc_far[1],
    fecc_far_6[0] = fecc_far[0],
    status_critical = NlwRenamedSig_OI_status_critical,
    status_observation = NlwRenamedSig_OI_status_observation,
    status_heartbeat = NlwRenamedSignal_fecc_syndromevalid,
    fecc_synword_8[6] = fecc_synword[6],
    fecc_synword_8[5] = fecc_synword[5],
    fecc_synword_8[4] = fecc_synword[4],
    fecc_synword_8[3] = fecc_synword[3],
    fecc_synword_8[2] = fecc_synword[2],
    fecc_synword_8[1] = fecc_synword[1],
    fecc_synword_8[0] = fecc_synword[0],
    status_initialization = NlwRenamedSig_OI_status_initialization,
    monitor_txdata[7] = NlwRenamedSig_OI_monitor_txdata[7],
    monitor_txdata[6] = NlwRenamedSig_OI_monitor_txdata[6],
    monitor_txdata[5] = NlwRenamedSig_OI_monitor_txdata[5],
    monitor_txdata[4] = NlwRenamedSig_OI_monitor_txdata[4],
    monitor_txdata[3] = NlwRenamedSig_OI_monitor_txdata[3],
    monitor_txdata[2] = NlwRenamedSig_OI_monitor_txdata[2],
    monitor_txdata[1] = NlwRenamedSig_OI_monitor_txdata[1],
    monitor_txdata[0] = NlwRenamedSig_OI_monitor_txdata[0];
  VCC   VCC_0 (
    .P(N1)
  );
  GND   GND_1 (
    .G(N0)
  );
  MUXF7   \BU2/U0/wrapper_controller/mux_81_f7  (
    .I0(\BU2/U0/wrapper_controller/mux_812_1098 ),
    .I1(\BU2/U0/wrapper_controller/mux_811_1097 ),
    .S(NlwRenamedSig_OI_status_injection),
    .O(\BU2/U0/wrapper_controller/mux_81 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux_812  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_dly [16]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [0]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [0]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_dly [8]),
    .O(\BU2/U0/wrapper_controller/mux_812_1098 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux_811  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [16]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [0]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [0]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_cap [8]),
    .O(\BU2/U0/wrapper_controller/mux_811_1097 )
  );
  MUXF7   \BU2/U0/wrapper_controller/mux4_81_f7  (
    .I0(\BU2/U0/wrapper_controller/mux4_812_1096 ),
    .I1(\BU2/U0/wrapper_controller/mux4_811_1095 ),
    .S(NlwRenamedSig_OI_status_injection),
    .O(\BU2/U0/wrapper_controller/mux4_81 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux4_812  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_dly [20]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [4]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [4]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_dly [12]),
    .O(\BU2/U0/wrapper_controller/mux4_812_1096 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux4_811  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [20]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [4]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [4]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_cap [12]),
    .O(\BU2/U0/wrapper_controller/mux4_811_1095 )
  );
  MUXF7   \BU2/U0/wrapper_controller/mux2_81_f7  (
    .I0(\BU2/U0/wrapper_controller/mux2_812_1094 ),
    .I1(\BU2/U0/wrapper_controller/mux2_811_1093 ),
    .S(NlwRenamedSig_OI_status_injection),
    .O(\BU2/U0/wrapper_controller/mux2_81 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux2_812  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_dly [18]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [2]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [2]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_dly [10]),
    .O(\BU2/U0/wrapper_controller/mux2_812_1094 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux2_811  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [18]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [2]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [2]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_cap [10]),
    .O(\BU2/U0/wrapper_controller/mux2_811_1093 )
  );
  MUXF7   \BU2/U0/wrapper_controller/mux3_81_f7  (
    .I0(\BU2/U0/wrapper_controller/mux3_812_1092 ),
    .I1(\BU2/U0/wrapper_controller/mux3_811_1091 ),
    .S(NlwRenamedSig_OI_status_injection),
    .O(\BU2/U0/wrapper_controller/mux3_81 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux3_812  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_dly [19]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [3]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [3]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_dly [11]),
    .O(\BU2/U0/wrapper_controller/mux3_812_1092 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux3_811  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [19]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [3]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [3]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_cap [11]),
    .O(\BU2/U0/wrapper_controller/mux3_811_1091 )
  );
  MUXF7   \BU2/U0/wrapper_controller/mux5_81_f7  (
    .I0(\BU2/U0/wrapper_controller/mux5_812_1090 ),
    .I1(\BU2/U0/wrapper_controller/mux5_811_1089 ),
    .S(NlwRenamedSig_OI_status_injection),
    .O(\BU2/U0/wrapper_controller/mux5_81 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux5_812  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_dly [21]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [5]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [5]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_dly [13]),
    .O(\BU2/U0/wrapper_controller/mux5_812_1090 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/mux5_811  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [21]),
    .I3(\BU2/U0/wrapper_controller/rdbk_syn [5]),
    .I4(\BU2/U0/wrapper_controller/rdbk_synwd [5]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_cap [13]),
    .O(\BU2/U0/wrapper_controller/mux5_811_1089 )
  );
  RAMB18E1 #(
    .SRVAL_A ( 18'h3FFFF ),
    .INITP_00 ( 256'h3333333333333333333333333333333333333333333333333333333333333333 ),
    .INITP_01 ( 256'h3333333333333333333333333333333333333333333333333333333333333333 ),
    .INITP_02 ( 256'h3333333333333333B5777F3333F3333333333333333333333333333333333333 ),
    .INITP_03 ( 256'h3333333333333333333333333333333333333333333333333333333333333333 ),
    .INITP_04 ( 256'h33333333333333333F3333FFFFFFFFFFFFF5777F3333F33333F3333333333333 ),
    .INITP_05 ( 256'h77777777777777777777777777777777777777777F3333333333333333333333 ),
    .INITP_06 ( 256'h5555555555555555555577777777777777777777777777777777777777777777 ),
    .INITP_07 ( 256'hF3B5555555555555555555555555555555555555555555555555555555555555 ),
    .INIT_00 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_01 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_02 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_03 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_04 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_05 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_06 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_07 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_08 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_09 ( 256'h1111111111111111111111111111111111111111111111111111111111111111 ),
    .INIT_0A ( 256'h2222222222222222222222222222222222222222222222222222222211111111 ),
    .INIT_0B ( 256'h2222222222222222222222222222222222222222222222222222222222222222 ),
    .INIT_0C ( 256'h2222222222222222222222222222222222222222222222222222222222222222 ),
    .INIT_0D ( 256'h2222222222222222222222222222222222222222222222222222222222222222 ),
    .INIT_0E ( 256'h2222222222222222222222222222222222222222222222222222222222222222 ),
    .INIT_0F ( 256'h2222222222222222222222222222222222222222222222222222222222222222 ),
    .INIT_10 ( 256'h2222222222222222222222222222222222222222222222222222222222222222 ),
    .INIT_11 ( 256'h2222222222222222222222222222222222222222222222222222222222222222 ),
    .INIT_12 ( 256'h2222222222222222222222222222222222222222222222222222222222222222 ),
    .INIT_13 ( 256'h2222222222222222222222222222222222222222222222222222222222222222 ),
    .INIT_14 ( 256'h2801800120000000FFFFFFFFDEADDEADDEADDEADDEADDEAD2222222222222222 ),
    .INIT_15 ( 256'hFFFFFFFFADDD02C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2000000020000000 ),
    .INIT_16 ( 256'h20000000000000013000800120000000200000001D1D1D1D3001800120000000 ),
    .INIT_17 ( 256'hDADADADADADADADADADADADADADADADADADADADA500000A23000400020000000 ),
    .INIT_18 ( 256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA ),
    .INIT_19 ( 256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA ),
    .INIT_1A ( 256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA ),
    .INIT_1B ( 256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA ),
    .INIT_1C ( 256'hDADADADADADADADADADADADADADADADAECCCECCCDADADADADADADADADADADADA ),
    .INIT_1D ( 256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA ),
    .INIT_1E ( 256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA ),
    .INIT_1F ( 256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA ),
    .INIT_20 ( 256'hDADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA ),
    .INIT_21 ( 256'h30ADDD0120000000FFFFFFFF20000000DADADADADADADADADADADADADADADADA ),
    .INIT_22 ( 256'h200000002000000028ADDD0120000000FFFFFFFF2000000020000000DADADADA ),
    .INIT_23 ( 256'hDEADDEADDEADDEADFFFFFFFFADDD0440FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_24 ( 256'hDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD ),
    .INIT_25 ( 256'h20000000FFFFFFFF2000000020000000AA99556620000000FFFFFFFFDEADDEAD ),
    .INIT_26 ( 256'h2000000020000000480000A22800600020000000200000000000000430008001 ),
    .INIT_27 ( 256'h2000000020000000200000002000000020000000200000002000000020000000 ),
    .INIT_28 ( 256'h2000000020000000200000002000000020000000200000002000000020000000 ),
    .INIT_29 ( 256'h2000000020000000200000002000000020000000200000002000000020000000 ),
    .INIT_2A ( 256'hFFFFFFFFFFFFFFFF200000002000000020000000200000002000000020000000 ),
    .INIT_2B ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2C ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2D ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2E ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_2F ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_30 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_31 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_32 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_33 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_34 ( 256'hFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_35 ( 256'hADDD02F8ADDD02F4ADDD02F0ADDD02ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF ),
    .INIT_36 ( 256'hADDD0318ADDD0314ADDD0310ADDD030CADDD0308ADDD0304ADDD0300ADDD02FC ),
    .INIT_37 ( 256'hADDD0338ADDD0334ADDD0330ADDD032CADDD0328ADDD0324ADDD0320ADDD031C ),
    .INIT_38 ( 256'hADDD0358ADDD0354ADDD0350ADDD034CADDD0348ADDD0344ADDD0340ADDD033C ),
    .INIT_39 ( 256'hADDD0378ADDD0374ADDD0370ADDD036CADDD0368ADDD0364ADDD0360ADDD035C ),
    .INIT_3A ( 256'hADDD0398ADDD0394ADDD0390ADDD038CADDD0388ADDD0384ADDD0380ADDD037C ),
    .INIT_3B ( 256'hADDD03B8ADDD03B4ADDD03B0ADDD03ACADDD03A8ADDD03A4ADDD03A0ADDD039C ),
    .INIT_3C ( 256'hADDD03D8ADDD03D4ADDD03D0ADDD03CCADDD03C8ADDD03C4ADDD03C0ADDD03BC ),
    .INIT_3D ( 256'hADDD03F8ADDD03F4ADDD03F0ADDD03ECADDD03E8ADDD03E4ADDD03E0ADDD03DC ),
    .INIT_3E ( 256'hADDD0418ADDD0414ADDD0410ADDD040CADDD0408ADDD0404ADDD0400ADDD03FC ),
    .INIT_3F ( 256'hFFFFFFFF20000000FFFFFFFFADDD042CADDD0428ADDD0424ADDD0420ADDD041C ),
    .INIT_FILE ( "NONE" ),
    .RAM_MODE ( "SDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .RSTREG_PRIORITY_A ( "RSTREG" ),
    .RSTREG_PRIORITY_B ( "RSTREG" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .INIT_A ( 18'h3FFFF ),
    .INIT_B ( 18'h3FFFF ),
    .WRITE_MODE_A ( "READ_FIRST" ),
    .WRITE_MODE_B ( "READ_FIRST" ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .READ_WIDTH_A ( 36 ),
    .READ_WIDTH_B ( 0 ),
    .WRITE_WIDTH_A ( 0 ),
    .WRITE_WIDTH_B ( 36 ),
    .SRVAL_B ( 18'h3FFFF ))
  \BU2/U0/wrapper_controller/controller_dbuffer/controller_dbuffer_mem/storage  (
    .CLKARDCLK(icap_clk),
    .CLKBWRCLK(icap_clk),
    .ENARDEN(\BU2/U0/wrapper_controller/controller_dbuffer/controller_dbuffer_mem/sync_init_INV_8_o ),
    .ENBWREN(\BU2/U0/wrapper_controller/controller_dbuffer/controller_dbuffer_mem/sync_init_INV_8_o ),
    .REGCEAREGCE(\BU2/N0 ),
    .REGCEB(\BU2/N0 ),
    .RSTRAMARSTRAM(\BU2/U0/wrapper_controller/sync_init ),
    .RSTRAMB(\BU2/U0/wrapper_controller/sync_init ),
    .RSTREGARSTREG(\BU2/N0 ),
    .RSTREGB(\BU2/N0 ),
    .ADDRARDADDR({\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_10_590 , \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_9_591 , 
\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [8], \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [7], 
\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [6], \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [5], 
\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [4], \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [3], 
\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [2], \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .ADDRBWRADDR({\BU2/U0/wrapper_controller/controller_dbuffer/addra [8], \BU2/U0/wrapper_controller/controller_dbuffer/addra [7], 
\BU2/U0/wrapper_controller/controller_dbuffer/addra [6], \BU2/U0/wrapper_controller/controller_dbuffer/addra [5], 
\BU2/U0/wrapper_controller/controller_dbuffer/addra [4], \BU2/U0/wrapper_controller/controller_dbuffer/addra [3], 
\BU2/U0/wrapper_controller/controller_dbuffer/addra [2], \BU2/U0/wrapper_controller/controller_dbuffer/addra [1], 
\BU2/U0/wrapper_controller/controller_dbuffer/addra [0], \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .DIADI({\BU2/U0/wrapper_controller/controller_dbuffer/dina[16] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[15] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[14] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[13] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[12] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[11] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[10] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[9] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[7] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[6] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[5] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[4] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[3] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[2] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[1] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[0] }),
    .DIBDI({\BU2/U0/wrapper_controller/controller_dbuffer/dina[34] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[33] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[32] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[31] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[30] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[29] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[28] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[27] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[25] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[24] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[23] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[22] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[21] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[20] , 
\BU2/U0/wrapper_controller/controller_dbuffer/dina[19] , \BU2/U0/wrapper_controller/controller_dbuffer/dina[18] }),
    .DIPADIP({\BU2/N1 , \BU2/N1 }),
    .DIPBDIP({\BU2/N0 , \BU2/N0 }),
    .DOADO({NlwRenamedSig_OI_icap_i[8], NlwRenamedSig_OI_icap_i[9], NlwRenamedSig_OI_icap_i[10], NlwRenamedSig_OI_icap_i[11], 
NlwRenamedSig_OI_icap_i[12], NlwRenamedSig_OI_icap_i[13], NlwRenamedSig_OI_icap_i[14], NlwRenamedSig_OI_icap_i[15], NlwRenamedSig_OI_icap_i[0], 
NlwRenamedSig_OI_icap_i[1], NlwRenamedSig_OI_icap_i[2], NlwRenamedSig_OI_icap_i[3], NlwRenamedSig_OI_icap_i[4], NlwRenamedSig_OI_icap_i[5], 
NlwRenamedSig_OI_icap_i[6], NlwRenamedSig_OI_icap_i[7]}),
    .DOBDO({NlwRenamedSig_OI_icap_i[24], NlwRenamedSig_OI_icap_i[25], NlwRenamedSig_OI_icap_i[26], NlwRenamedSig_OI_icap_i[27], 
NlwRenamedSig_OI_icap_i[28], NlwRenamedSig_OI_icap_i[29], NlwRenamedSig_OI_icap_i[30], NlwRenamedSig_OI_icap_i[31], NlwRenamedSig_OI_icap_i[16], 
NlwRenamedSig_OI_icap_i[17], NlwRenamedSig_OI_icap_i[18], NlwRenamedSig_OI_icap_i[19], NlwRenamedSig_OI_icap_i[20], NlwRenamedSig_OI_icap_i[21], 
NlwRenamedSig_OI_icap_i[22], NlwRenamedSig_OI_icap_i[23]}),
    .DOPADOP({\BU2/U0/wrapper_controller/controller_dbuffer/doutb[17] , 
\NLW_BU2/U0/wrapper_controller/controller_dbuffer/controller_dbuffer_mem/storage_DOPADOP<0>_UNCONNECTED }),
    .DOPBDOP({\BU2/U0/wrapper_controller/controller_dbuffer/doutb[35] , \BU2/U0/wrapper_controller/controller_dbuffer/doutb[26] }),
    .WEA({\BU2/N0 , \BU2/N0 }),
    .WEBWE({\BU2/U0/wrapper_controller/controller_dbuffer/wea [3], \BU2/U0/wrapper_controller/controller_dbuffer/wea [2], 
\BU2/U0/wrapper_controller/controller_dbuffer/wea [1], \BU2/U0/wrapper_controller/controller_dbuffer/wea [0]})
  );
  RAMB18E1 #(
    .SRVAL_A ( 18'h00000 ),
    .INITP_00 ( 256'h3CE3E3E3F8D3488FCFFFF7D34F48D374FCFFFF888FFFFF7F0FFF33FF8DDDDF8F ),
    .INITP_01 ( 256'hF3CCCCF0FFCFFFAAB7C373CC3D3F7FCBCFD3F7FF7D34F7762222234A22222282 ),
    .INITP_02 ( 256'hFFFFFFBFFFFFFFA080CD334E2D2DCB724B3FFCFFFEA03FFF54036AED0FE00034 ),
    .INITP_03 ( 256'h00002D2D28A2667666AAABC3C30030B30C030B0C300C330C0030BFF333FC3FBF ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'hB4AA0A5ED0A69003000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h888C88C88C88C88BC302CB2CB3888BFFE30FFE30820FBFDEFFE5DAAAA8BFFCB4 ),
    .INITP_07 ( 256'hEBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB00C2FBEFBFA2200EAAEA88A88B4B ),
    .INIT_00 ( 256'hCF1E0F01510040105092400050404002501B4001032DC000CF1E0F000138C000 ),
    .INIT_01 ( 256'h01010080034601740184401A031B033A001F033000604015401540154015C000 ),
    .INIT_02 ( 256'hE000400401EF01EC01EF01EC03560353017E01980170541D4C93039903620386 ),
    .INIT_03 ( 256'h40020321033A000201E9035603530170017901C401700346E0024006E0014005 ),
    .INIT_04 ( 256'h2002400C405C544E400E4013C0130080504E2080401354792080546220404014 ),
    .INIT_05 ( 256'h033A000003BA03D840020321018A03BA03EC545B4053405C54554049400D545B ),
    .INIT_06 ( 256'h007F0085E00300085C714051401A507520204014E012401CE011401B40020321 ),
    .INIT_07 ( 256'h401A4002033A000403BAE0030001407B0085E0030002407B0085E0030004407B ),
    .INIT_08 ( 256'h4015E0084016E009401DE0044017E0054018E0064019A000E00BA01F4014E00A ),
    .INIT_09 ( 256'h4013E00F4012E00E4011E00D4010E00C400FC013008050A820804013A000E007 ),
    .INIT_0A ( 256'h405340E854AF404F400D54E72002400C40E854A8400A50EE400C50EE2008E010 ),
    .INIT_0B ( 256'h01DD400D02FC03BC54E54020400D02FC03EA54C7405240E6018A03BA03EC54B5 ),
    .INIT_0C ( 256'h020903BC54E54020400D02FC03E254E7404E400003BA03FC03161100C01F58E5 ),
    .INIT_0D ( 256'hEA0C54D1C20103FC03161100DA0054D6C10101D6010458E501DD400D02FC0A00 ),
    .INIT_0E ( 256'h03BC03E240020321033A000203BA03E44002032103BA40FCEE10ED0FEC0EEB0D ),
    .INIT_0F ( 256'h4002033A001003BA03056C0C03056C0D03056C0E03056C0F03FC0316A10F6110 ),
    .INIT_10 ( 256'hA07F10B001D601D601D6E00BA01F10A06E106D0F6C0E6B0D6A0C51342008401E ),
    .INIT_11 ( 256'hFFE0FBD0DAC0AE016F026B016A00512A2E80CE03CD02CC0101D6E00A5D344051 ),
    .INIT_12 ( 256'h02E103AB0346EE06ED05EC044E194D184C1701F301EF01EC035601B603465934 ),
    .INIT_13 ( 256'h2080401EA000033A00010164014F013E40020321033A000001E9035601A703AE ),
    .INIT_14 ( 256'h0000A000554CC20102FFA0005547C101014B01FFA0005542C00101460024B000 ),
    .INIT_15 ( 256'hC0130080400E400E4157400E555C2020400C4152400D55572002400C0382C000 ),
    .INIT_16 ( 256'h417203C203BE03C403F203BE03E003D003EC03BE03C603F2A000C01FA00F401F ),
    .INIT_17 ( 256'h03CE03EA418203EE03D803E203D8418203E603C803CC03D8A00003BA03DC03E4 ),
    .INIT_18 ( 256'h6C0103056C0203BC03D203E04343A00F401F03BC03EC03D2A00003BC03DC03CA ),
    .INIT_19 ( 256'hCD03AC3FAD7CAEFEAF0103A4010100C0A00001840335033F03BA03056C000305 ),
    .INIT_1A ( 256'h00A003A80C800D050E000F000386010000C003A8AEFD03A4010200E003A8CC80 ),
    .INIT_1B ( 256'h010000A003A80C800D000E000F000386010000C0A00003A80C000D0403860100 ),
    .INIT_1C ( 256'h03860102008003A8CC80CF40AC7FADFDAFBF03A4010100C0A00003A80C800386 ),
    .INIT_1D ( 256'hC0E9B80080B9A0000F000E000D000C000B000A06A00003680386010200600362 ),
    .INIT_1E ( 256'h4007A000C0070010A000C01400E0A000800AA000C0F6B80080075DE7C011B800 ),
    .INIT_1F ( 256'h000000000000000000000000000000000000A00051F320014007A00051EF2010 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0500040000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h5AF2C0010101A007030002002008030002002010600B620A0300050204EC42E3 ),
    .INIT_2F ( 256'hA00056FC2002400CA000C008C209C30AF0104008C209C30AB350924042EE0106 ),
    .INIT_30 ( 256'h0C0601000C060100A00003FC0316030C03FC0316030C1C00A00057002001400C ),
    .INIT_31 ( 256'h03BA03EE03DE03C803D6A000813081075B19410AA00001000C0601000C060100 ),
    .INIT_32 ( 256'hA000A01F4000A000A0604000432503D8A00003BC03C003E453284000032DA000 ),
    .INIT_33 ( 256'h03ECC100D100032AA11F11004343032A03BC03CC03D2C100D100032DA1601100 ),
    .INIT_34 ( 256'hA00003590C000382C00A00C4C00B00BBC00900A4A00003BA0304032D03BC03CC ),
    .INIT_35 ( 256'h03860100008003930F000E000D00A00003590C0DA00003590C10A00003590C07 ),
    .INIT_36 ( 256'hC00900B8437F00C4C00B004FC0090034437F00C4C00B0077C009004CA0000368 ),
    .INIT_37 ( 256'hC00A00C2C00B0037C00900EC037F00C2C00B002FC0090094437F00F4C00B00FF ),
    .INIT_38 ( 256'hC209023DC20A0204C108C008C2090255C20A0204A00057822080400AA0000382 ),
    .INIT_39 ( 256'h0004A0004F084E084D084C08039FA000CF08CE08CD08CC08039FA000C108C008 ),
    .INIT_3A ( 256'h037403B1A000036E03B1A00003680393A000039903620386A000C0090040C00A ),
    .INIT_3B ( 256'h43FC015F43FC012043FC010DA00003A86C046D056E060F00038601000020A000 ),
    .INIT_3C ( 256'h43FC014443FC014343FC014243FC014143FC013643FC013143FC013243FC013E ),
    .INIT_3D ( 256'h43FC014C43FC014B43FC014A43FC014943FC014843FC014743FC014643FC0145 ),
    .INIT_3E ( 256'h43FC015443FC015343FC015243FC015143FC015043FC014F43FC014E43FC014D ),
    .INIT_3F ( 256'h43FFA000C10D030043FC015A43FC015943FC015843FC015743FC015643FC0155 ),
    .INIT_FILE ( "NONE" ),
    .RAM_MODE ( "TDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .RSTREG_PRIORITY_A ( "REGCE" ),
    .RSTREG_PRIORITY_B ( "REGCE" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .READ_WIDTH_A ( 18 ),
    .READ_WIDTH_B ( 18 ),
    .WRITE_WIDTH_A ( 18 ),
    .WRITE_WIDTH_B ( 18 ),
    .SRVAL_B ( 18'h00000 ))
  \BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18  (
    .CLKARDCLK(\BU2/N0 ),
    .CLKBWRCLK(icap_clk),
    .ENARDEN(\BU2/N0 ),
    .ENBWREN(\BU2/N1 ),
    .REGCEAREGCE(\BU2/N0 ),
    .REGCEB(\BU2/N0 ),
    .RSTRAMARSTRAM(\BU2/N0 ),
    .RSTRAMB(\BU2/N0 ),
    .RSTREGARSTREG(\BU2/N0 ),
    .RSTREGB(\BU2/N0 ),
    .ADDRARDADDR({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 }),
    .ADDRBWRADDR({\BU2/U0/wrapper_controller/address [9], \BU2/U0/wrapper_controller/address [8], \BU2/U0/wrapper_controller/address [7], 
\BU2/U0/wrapper_controller/address [6], \BU2/U0/wrapper_controller/address [5], \BU2/U0/wrapper_controller/address [4], 
\BU2/U0/wrapper_controller/address [3], \BU2/U0/wrapper_controller/address [2], \BU2/U0/wrapper_controller/address [1], 
\BU2/U0/wrapper_controller/address [0], \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .DIADI({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 }),
    .DIBDI({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 }),
    .DIPADIP({\BU2/N0 , \BU2/N0 }),
    .DIPBDIP({\BU2/N0 , \BU2/N0 }),
    .DOADO({\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<15>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<14>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<13>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<12>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<11>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<10>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<9>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<8>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<7>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<6>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<5>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<4>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<3>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<2>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<1>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOADO<0>_UNCONNECTED }),
    .DOBDO({\BU2/U0/wrapper_controller/controller_instrom/instruction0 [15], \BU2/U0/wrapper_controller/controller_instrom/instruction0 [14], 
\BU2/U0/wrapper_controller/controller_instrom/instruction0 [13], \BU2/U0/wrapper_controller/controller_instrom/instruction0 [12], 
\BU2/U0/wrapper_controller/controller_instrom/instruction0 [11], \BU2/U0/wrapper_controller/controller_instrom/instruction0 [10], 
\BU2/U0/wrapper_controller/controller_instrom/instruction0 [9], \BU2/U0/wrapper_controller/controller_instrom/instruction0 [8], 
\BU2/U0/wrapper_controller/controller_instrom/instruction0 [7], \BU2/U0/wrapper_controller/controller_instrom/instruction0 [6], 
\BU2/U0/wrapper_controller/controller_instrom/instruction0 [5], \BU2/U0/wrapper_controller/controller_instrom/instruction0 [4], 
\BU2/U0/wrapper_controller/controller_instrom/instruction0 [3], \BU2/U0/wrapper_controller/controller_instrom/instruction0 [2], 
\BU2/U0/wrapper_controller/controller_instrom/instruction0 [1], \BU2/U0/wrapper_controller/controller_instrom/instruction0 [0]}),
    .DOPADOP({\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOPADOP<1>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw0/fw0_1024x18_DOPADOP<0>_UNCONNECTED }),
    .DOPBDOP({\BU2/U0/wrapper_controller/controller_instrom/instruction0 [17], \BU2/U0/wrapper_controller/controller_instrom/instruction0 [16]}),
    .WEA({\BU2/N0 , \BU2/N0 }),
    .WEBWE({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 })
  );
  RAMB18E1 #(
    .SRVAL_A ( 18'h00000 ),
    .INITP_00 ( 256'h76A0CA0FD37D3CCFFFCFFFFF7FFF4D57F76AA832803FD34F4D3F33778FFFFF8F ),
    .INITP_01 ( 256'hCCCF000CBFEFFBFEF3FF3FBCCCFFCCCFEFFBFFFFDBFFFF6FFF4CFCDF3F3DFF5F ),
    .INITP_02 ( 256'h0000000000000B4B4A28B4B48F3FF3FB5D7AA000282D60282BBBBBBB0B555000 ),
    .INITP_03 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_04 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INITP_05 ( 256'hB4AA0A5ED0A69003000000000000000000000000000000000000000000000000 ),
    .INITP_06 ( 256'h888C88C88C88C88BC302CB2CB3888BFFE30FFE30820FBFDEFFE5DAAAA8BFFCB4 ),
    .INITP_07 ( 256'hEBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB00C2FBEFBFA2200EAAEA88A88B4B ),
    .INIT_00 ( 256'hCF1E0F01401540154015401540154015401540154015C000CF1E0F0040154015 ),
    .INIT_01 ( 256'h40016003505E2002401E401A031B033A001F0330006050674008501B4004C000 ),
    .INIT_02 ( 256'hCB0A0AEC0B020E000F00010E00F203AB5C464060600650462001401E0346505E ),
    .INIT_03 ( 256'h03AE54414F0154414E43CC08CE09CF0ACD08CA09CB0AFCD04D0E01504C08CA09 ),
    .INIT_04 ( 256'h4002405302DE011F03AE02E103AB544F40086003402FAF008E01AB008A014053 ),
    .INIT_05 ( 256'h00E1009A015803564063A0DF032A00EB012B00E1009A01580356405C405C5452 ),
    .INIT_06 ( 256'h5C8540606006548A2020032A508A2004401E4002033A00080330C020032A00EB ),
    .INIT_07 ( 256'h4F0154824E43CD08CE09CF0ABDC04C0E01504D08CE09CF0A0E000F00010E00F0 ),
    .INIT_08 ( 256'hA0BF032A40910330C040032A508E250100EB012B00E64074AF008E0140855482 ),
    .INIT_09 ( 256'h03CE03D003CE54A3470267034095000040020321033A000254982020032A0330 ),
    .INIT_0A ( 256'h54BA4708A00000BF03BA03D403E203BC03CE03D003EC54AE4704A00000BF03BA ),
    .INIT_0B ( 256'h03E6A00003BA03CC03EA03CCA00000D400BF03BA03DC03E403BC03CE03D003EC ),
    .INIT_0C ( 256'h030460080304600903BC03C803DE03BA03046004030460050304600603BC03C8 ),
    .INIT_0D ( 256'h03BA0304600B03BC03EE03CA03BC0304600A03BC03CE03F4A00003BA03046007 ),
    .INIT_0E ( 256'hA00003BA03CE03E203D0A00003BA03C803DE03CCA00003BA03EA03E403CCA000 ),
    .INIT_0F ( 256'h01504E0E01504D0E01504C0E015001120B000A040F000E000D000C0040F30C04 ),
    .INIT_10 ( 256'h0B010A44A0005D06EB00CA01AF00BE60BD509C406609650864070B010A434F0E ),
    .INIT_11 ( 256'h0000A000CA0E0154CB0E0154CC0E0154CD0E0154CE0E0154CF0E0154A0000112 ),
    .INIT_12 ( 256'h0700C10AC00901000000A0005D26E100C001C208020001010043C10AC0090100 ),
    .INIT_13 ( 256'h475187015536462086011942080809080A080B0E06004B084A08490848080500 ),
    .INIT_14 ( 256'hA000C50103BA03051C6003BC03EE03CA03BC03051C7003BC03CE03F4A0005531 ),
    .INIT_15 ( 256'h20104007A000C0070010A000C01400E0A00055542010400CA00055502020400C ),
    .INIT_16 ( 256'h0000000000000000000000000000000000000000A000516220014007A000515E ),
    .INIT_17 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_18 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_19 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1D ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1E ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_1F ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_20 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_21 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_22 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_23 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_24 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_25 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_26 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_27 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_28 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_29 ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2A ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2B ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2C ( 256'h0000000000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2D ( 256'h0500040000000000000000000000000000000000000000000000000000000000 ),
    .INIT_2E ( 256'h5AF2C0010101A007030002002008030002002010600B620A0300050204EC42E3 ),
    .INIT_2F ( 256'hA00056FC2002400CA000C008C209C30AF0104008C209C30AB350924042EE0106 ),
    .INIT_30 ( 256'h0C0601000C060100A00003FC0316030C03FC0316030C1C00A00057002001400C ),
    .INIT_31 ( 256'h03BA03EE03DE03C803D6A000813081075B19410AA00001000C0601000C060100 ),
    .INIT_32 ( 256'hA000A01F4000A000A0604000432503D8A00003BC03C003E453284000032DA000 ),
    .INIT_33 ( 256'h03ECC100D100032AA11F11004343032A03BC03CC03D2C100D100032DA1601100 ),
    .INIT_34 ( 256'hA00003590C000382C00A00C4C00B00BBC00900A4A00003BA0304032D03BC03CC ),
    .INIT_35 ( 256'h03860100008003930F000E000D00A00003590C0DA00003590C10A00003590C07 ),
    .INIT_36 ( 256'hC00900B8437F00C4C00B004FC0090034437F00C4C00B0077C009004CA0000368 ),
    .INIT_37 ( 256'hC00A00C2C00B0037C00900EC037F00C2C00B002FC0090094437F00F4C00B00FF ),
    .INIT_38 ( 256'hC209023DC20A0204C108C008C2090255C20A0204A00057822080400AA0000382 ),
    .INIT_39 ( 256'h0004A0004F084E084D084C08039FA000CF08CE08CD08CC08039FA000C108C008 ),
    .INIT_3A ( 256'h037403B1A000036E03B1A00003680393A000039903620386A000C0090040C00A ),
    .INIT_3B ( 256'h43FC015F43FC012043FC010DA00003A86C046D056E060F00038601000020A000 ),
    .INIT_3C ( 256'h43FC014443FC014343FC014243FC014143FC013643FC013143FC013243FC013E ),
    .INIT_3D ( 256'h43FC014C43FC014B43FC014A43FC014943FC014843FC014743FC014643FC0145 ),
    .INIT_3E ( 256'h43FC015443FC015343FC015243FC015143FC015043FC014F43FC014E43FC014D ),
    .INIT_3F ( 256'h43FFA000C10D030043FC015A43FC015943FC015843FC015743FC015643FC0155 ),
    .INIT_FILE ( "NONE" ),
    .RAM_MODE ( "TDP" ),
    .RDADDR_COLLISION_HWCONFIG ( "DELAYED_WRITE" ),
    .RSTREG_PRIORITY_A ( "REGCE" ),
    .RSTREG_PRIORITY_B ( "REGCE" ),
    .SIM_COLLISION_CHECK ( "ALL" ),
    .INIT_A ( 18'h00000 ),
    .INIT_B ( 18'h00000 ),
    .WRITE_MODE_A ( "WRITE_FIRST" ),
    .WRITE_MODE_B ( "WRITE_FIRST" ),
    .DOA_REG ( 0 ),
    .DOB_REG ( 0 ),
    .READ_WIDTH_A ( 18 ),
    .READ_WIDTH_B ( 18 ),
    .WRITE_WIDTH_A ( 18 ),
    .WRITE_WIDTH_B ( 18 ),
    .SRVAL_B ( 18'h00000 ))
  \BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18  (
    .CLKARDCLK(\BU2/N0 ),
    .CLKBWRCLK(icap_clk),
    .ENARDEN(\BU2/N0 ),
    .ENBWREN(\BU2/N1 ),
    .REGCEAREGCE(\BU2/N0 ),
    .REGCEB(\BU2/N0 ),
    .RSTRAMARSTRAM(\BU2/N0 ),
    .RSTRAMB(\BU2/N0 ),
    .RSTREGARSTREG(\BU2/N0 ),
    .RSTREGB(\BU2/N0 ),
    .ADDRARDADDR({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , 
\BU2/N0 }),
    .ADDRBWRADDR({\BU2/U0/wrapper_controller/address [9], \BU2/U0/wrapper_controller/address [8], \BU2/U0/wrapper_controller/address [7], 
\BU2/U0/wrapper_controller/address [6], \BU2/U0/wrapper_controller/address [5], \BU2/U0/wrapper_controller/address [4], 
\BU2/U0/wrapper_controller/address [3], \BU2/U0/wrapper_controller/address [2], \BU2/U0/wrapper_controller/address [1], 
\BU2/U0/wrapper_controller/address [0], \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 }),
    .DIADI({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 }),
    .DIBDI({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 
, \BU2/N0 , \BU2/N0 }),
    .DIPADIP({\BU2/N0 , \BU2/N0 }),
    .DIPBDIP({\BU2/N0 , \BU2/N0 }),
    .DOADO({\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<15>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<14>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<13>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<12>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<11>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<10>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<9>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<8>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<7>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<6>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<5>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<4>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<3>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<2>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<1>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOADO<0>_UNCONNECTED }),
    .DOBDO({\BU2/U0/wrapper_controller/controller_instrom/instruction1 [15], \BU2/U0/wrapper_controller/controller_instrom/instruction1 [14], 
\BU2/U0/wrapper_controller/controller_instrom/instruction1 [13], \BU2/U0/wrapper_controller/controller_instrom/instruction1 [12], 
\BU2/U0/wrapper_controller/controller_instrom/instruction1 [11], \BU2/U0/wrapper_controller/controller_instrom/instruction1 [10], 
\BU2/U0/wrapper_controller/controller_instrom/instruction1 [9], \BU2/U0/wrapper_controller/controller_instrom/instruction1 [8], 
\BU2/U0/wrapper_controller/controller_instrom/instruction1 [7], \BU2/U0/wrapper_controller/controller_instrom/instruction1 [6], 
\BU2/U0/wrapper_controller/controller_instrom/instruction1 [5], \BU2/U0/wrapper_controller/controller_instrom/instruction1 [4], 
\BU2/U0/wrapper_controller/controller_instrom/instruction1 [3], \BU2/U0/wrapper_controller/controller_instrom/instruction1 [2], 
\BU2/U0/wrapper_controller/controller_instrom/instruction1 [1], \BU2/U0/wrapper_controller/controller_instrom/instruction1 [0]}),
    .DOPADOP({\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOPADOP<1>_UNCONNECTED , 
\NLW_BU2/U0/wrapper_controller/controller_instrom/fw1/fw1_1024x18_DOPADOP<0>_UNCONNECTED }),
    .DOPBDOP({\BU2/U0/wrapper_controller/controller_instrom/instruction1 [17], \BU2/U0/wrapper_controller/controller_instrom/instruction1 [16]}),
    .WEA({\BU2/N0 , \BU2/N0 }),
    .WEBWE({\BU2/N0 , \BU2/N0 , \BU2/N0 , \BU2/N0 })
  );
  INV   \BU2/U0/wrapper_controller/controller_dbuffer/controller_dbuffer_mem/sync_init_INV_8_o1_INV_0  (
    .I(\BU2/U0/wrapper_controller/sync_init ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/controller_dbuffer_mem/sync_init_INV_8_o )
  );
  INV   \BU2/U0/wrapper_controller/word_count<7>_inv1_INV_0  (
    .I(\BU2/U0/wrapper_controller/word_count [7]),
    .O(\BU2/U0/wrapper_controller/word_count<7>_inv )
  );
  INV   \BU2/U0/wrapper_controller/Mcount_frame_count_lut<0>_INV_0  (
    .I(\BU2/U0/wrapper_controller/frame_count [0]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_lut [0])
  );
  INV   \BU2/U0/wrapper_controller/Mcount_word_count_lut<0>_INV_0  (
    .I(\BU2/U0/wrapper_controller/word_count [0]),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_lut [0])
  );
  LUT6 #(
    .INIT ( 64'h139B57DF028A46CE ))
  \BU2/U0/wrapper_controller/in_port<3>_inv1_G  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux3_81 ),
    .I3(\BU2/U0/wrapper_controller/mux3_9_274 ),
    .I4(\BU2/U0/wrapper_controller/mux3_10_282 ),
    .I5(\BU2/U0/wrapper_controller/dbuf_din [3]),
    .O(\BU2/N47 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/in_port<3>_inv1_F  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux3_7_267 ),
    .I3(\BU2/U0/wrapper_controller/mux3_8_272 ),
    .I4(\BU2/U0/wrapper_controller/mux3_91_280 ),
    .I5(\BU2/U0/wrapper_controller/mux3_82_277 ),
    .O(\BU2/N46 )
  );
  MUXF7   \BU2/U0/wrapper_controller/in_port<3>_inv1  (
    .I0(\BU2/N46 ),
    .I1(\BU2/N47 ),
    .S(\BU2/U0/wrapper_controller/port_id [3]),
    .O(\BU2/U0/wrapper_controller/in_port [3])
  );
  LUT6 #(
    .INIT ( 64'h139B57DF028A46CE ))
  \BU2/U0/wrapper_controller/in_port<2>_inv1_G  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux2_81 ),
    .I3(\BU2/U0/wrapper_controller/mux2_9_294 ),
    .I4(\BU2/U0/wrapper_controller/mux2_10_302 ),
    .I5(\BU2/U0/wrapper_controller/dbuf_din [2]),
    .O(\BU2/N45 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/in_port<2>_inv1_F  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux2_7_287 ),
    .I3(\BU2/U0/wrapper_controller/mux2_8_292 ),
    .I4(\BU2/U0/wrapper_controller/mux2_91_300 ),
    .I5(\BU2/U0/wrapper_controller/mux2_82_297 ),
    .O(\BU2/N44 )
  );
  MUXF7   \BU2/U0/wrapper_controller/in_port<2>_inv1  (
    .I0(\BU2/N44 ),
    .I1(\BU2/N45 ),
    .S(\BU2/U0/wrapper_controller/port_id [3]),
    .O(\BU2/U0/wrapper_controller/in_port [2])
  );
  LUT5 #(
    .INIT ( 32'h15043726 ))
  \BU2/U0/wrapper_controller/in_port<5>_inv1_G  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux5_10_262 ),
    .I3(\BU2/U0/wrapper_controller/dbuf_din [5]),
    .I4(\BU2/U0/wrapper_controller/mux5_81 ),
    .O(\BU2/N43 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/in_port<5>_inv1_F  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux5_7_249 ),
    .I3(\BU2/U0/wrapper_controller/mux5_8_254 ),
    .I4(\BU2/U0/wrapper_controller/mux5_9_260 ),
    .I5(\BU2/U0/wrapper_controller/mux5_82_257 ),
    .O(\BU2/N42 )
  );
  MUXF7   \BU2/U0/wrapper_controller/in_port<5>_inv1  (
    .I0(\BU2/N42 ),
    .I1(\BU2/N43 ),
    .S(\BU2/U0/wrapper_controller/port_id [3]),
    .O(\BU2/U0/wrapper_controller/in_port [5])
  );
  LUT6 #(
    .INIT ( 64'h139B57DF028A46CE ))
  \BU2/U0/wrapper_controller/in_port<4>_inv1_G  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux4_81 ),
    .I3(\BU2/U0/wrapper_controller/mux4_9_313 ),
    .I4(\BU2/U0/wrapper_controller/mux4_10_322 ),
    .I5(\BU2/U0/wrapper_controller/dbuf_din [4]),
    .O(\BU2/N41 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/in_port<4>_inv1_F  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux4_7_306 ),
    .I3(\BU2/U0/wrapper_controller/mux4_8_311 ),
    .I4(\BU2/U0/wrapper_controller/mux4_91_320 ),
    .I5(\BU2/U0/wrapper_controller/mux4_82_316 ),
    .O(\BU2/N40 )
  );
  MUXF7   \BU2/U0/wrapper_controller/in_port<4>_inv1  (
    .I0(\BU2/N40 ),
    .I1(\BU2/N41 ),
    .S(\BU2/U0/wrapper_controller/port_id [3]),
    .O(\BU2/U0/wrapper_controller/in_port [4])
  );
  LUT6 #(
    .INIT ( 64'h139B57DF028A46CE ))
  \BU2/U0/wrapper_controller/in_port<0>_inv1_G  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux_81 ),
    .I3(\BU2/U0/wrapper_controller/mux_9_360 ),
    .I4(\BU2/U0/wrapper_controller/mux_10_371 ),
    .I5(\BU2/U0/wrapper_controller/dbuf_din [0]),
    .O(\BU2/N39 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/in_port<0>_inv1_F  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux_7_352 ),
    .I3(\BU2/U0/wrapper_controller/mux_8_357 ),
    .I4(\BU2/U0/wrapper_controller/mux_91_369 ),
    .I5(\BU2/U0/wrapper_controller/mux_82_364 ),
    .O(\BU2/N38 )
  );
  MUXF7   \BU2/U0/wrapper_controller/in_port<0>_inv1  (
    .I0(\BU2/N38 ),
    .I1(\BU2/N39 ),
    .S(\BU2/U0/wrapper_controller/port_id [3]),
    .O(\BU2/U0/wrapper_controller/in_port [0])
  );
  LUT6 #(
    .INIT ( 64'h2275777522207720 ))
  \BU2/U0/wrapper_controller/in_port<7>_inv1_G  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id<2>2 ),
    .I2(\BU2/N20 ),
    .I3(\BU2/U0/wrapper_controller/port_id [2]),
    .I4(\BU2/U0/wrapper_controller/mux7_10_219 ),
    .I5(\BU2/U0/wrapper_controller/dbuf_din [7]),
    .O(\BU2/N37 )
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/in_port<7>_inv1_F  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux7_8_211 ),
    .I3(\BU2/U0/wrapper_controller/mux7_7_206 ),
    .I4(\BU2/U0/wrapper_controller/mux7_9_217 ),
    .I5(\BU2/U0/wrapper_controller/mux7_81_214 ),
    .O(\BU2/N36 )
  );
  MUXF7   \BU2/U0/wrapper_controller/in_port<7>_inv1  (
    .I0(\BU2/N36 ),
    .I1(\BU2/N37 ),
    .S(\BU2/U0/wrapper_controller/port_id [3]),
    .O(\BU2/U0/wrapper_controller/in_port [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux1_81_G  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/rdbk_synwd [1]),
    .I2(\BU2/U0/wrapper_controller/rdbk_syn [1]),
    .O(\BU2/N35 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \BU2/U0/wrapper_controller/mux1_81_F  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(NlwRenamedSig_OI_status_injection),
    .I2(\BU2/U0/wrapper_controller/fecc_far_dly [17]),
    .I3(\BU2/U0/wrapper_controller/fecc_far_cap [17]),
    .I4(\BU2/U0/wrapper_controller/fecc_far_cap [9]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_dly [9]),
    .O(\BU2/N34 )
  );
  MUXF7   \BU2/U0/wrapper_controller/mux1_81  (
    .I0(\BU2/N34 ),
    .I1(\BU2/N35 ),
    .S(\BU2/U0/wrapper_controller/port_id [1]),
    .O(\BU2/U0/wrapper_controller/mux1_81_335 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux6_81_G  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/rdbk_synwd [6]),
    .I2(\BU2/U0/wrapper_controller/rdbk_syn [6]),
    .O(\BU2/N33 )
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \BU2/U0/wrapper_controller/mux6_81_F  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(NlwRenamedSig_OI_status_injection),
    .I2(\BU2/U0/wrapper_controller/fecc_far_dly [22]),
    .I3(\BU2/U0/wrapper_controller/fecc_far_cap [22]),
    .I4(\BU2/U0/wrapper_controller/fecc_far_cap [14]),
    .I5(\BU2/U0/wrapper_controller/fecc_far_dly [14]),
    .O(\BU2/N32 )
  );
  MUXF7   \BU2/U0/wrapper_controller/mux6_81  (
    .I0(\BU2/N32 ),
    .I1(\BU2/N33 ),
    .S(\BU2/U0/wrapper_controller/port_id [1]),
    .O(\BU2/U0/wrapper_controller/mux6_81_232 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF2AAA ))
  \BU2/U0/wrapper_controller/controller_dbuffer/burst_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/burst_588 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/halt9 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/halt91_1039 ),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/halt92_1040 ),
    .I4(\BU2/U0/wrapper_controller/controller_dbuffer/go ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/burst_glue_set_1051 )
  );
  LUT4 #(
    .INIT ( 16'h2AAA ))
  \BU2/U0/wrapper_controller/controller_dbuffer/inc41  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/burst_588 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/halt9 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/halt91_1039 ),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/halt92_1040 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/inc4 )
  );
  LUT5 #(
    .INIT ( 32'h00400000 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/_n0258_inv1  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/write_strobe ),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/inc4 ),
    .I4(\BU2/U0/wrapper_controller/dbuf_select ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/_n0258_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8AAAAAAA ))
  \BU2/U0/wrapper_controller/errinj_ego_glue_set  (
    .I0(\BU2/U0/wrapper_controller/errinj_ego_210 ),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/port_id [4]),
    .I3(NlwRenamedSig_OI_monitor_txdata[7]),
    .I4(\BU2/U0/wrapper_controller/N9 ),
    .I5(inject_strobe),
    .O(\BU2/U0/wrapper_controller/errinj_ego_glue_set_1050 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF8AAAAAAA ))
  \BU2/U0/wrapper_controller/frame_eos_glue_set  (
    .I0(\BU2/U0/wrapper_controller/frame_eos_319 ),
    .I1(\BU2/U0/wrapper_controller/port_id [4]),
    .I2(NlwRenamedSig_OI_monitor_txdata[4]),
    .I3(\BU2/U0/wrapper_controller/port_id [2]),
    .I4(\BU2/U0/wrapper_controller/N9 ),
    .I5(\BU2/U0/wrapper_controller/long_gap_474 ),
    .O(\BU2/U0/wrapper_controller/frame_eos_glue_set_1048 )
  );
  LUT5 #(
    .INIT ( 32'hFFFF2AAA ))
  \BU2/U0/wrapper_controller/rdbk_crc_glue_set  (
    .I0(\BU2/U0/wrapper_controller/rdbk_crc_202 ),
    .I1(\BU2/U0/wrapper_controller/pid[4]_PWR_6_o_equal_41_o ),
    .I2(\BU2/U0/wrapper_controller/write_strobe ),
    .I3(NlwRenamedSig_OI_monitor_txdata[7]),
    .I4(fecc_crcerr),
    .O(\BU2/U0/wrapper_controller/rdbk_crc_glue_set_1047 )
  );
  LUT6 #(
    .INIT ( 64'h7FFF2AAA2AAA2AAA ))
  \BU2/U0/wrapper_controller/rdbk_ecc_glue_set  (
    .I0(\BU2/U0/wrapper_controller/rdbk_ecc_226 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[6]),
    .I2(\BU2/U0/wrapper_controller/pid[4]_PWR_6_o_equal_41_o ),
    .I3(\BU2/U0/wrapper_controller/write_strobe ),
    .I4(NlwRenamedSignal_fecc_syndromevalid),
    .I5(fecc_eccerr),
    .O(\BU2/U0/wrapper_controller/rdbk_ecc_glue_set_1049 )
  );
  LUT6 #(
    .INIT ( 64'h1BE41BE41BE4E4E4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<0>  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/N72 ),
    .I4(\BU2/U0/wrapper_controller/read_strobe ),
    .I5(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<0>_585 )
  );
  LUT6 #(
    .INIT ( 64'hF5F5C6F5A0A093A0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<2>  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/inc1 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [2]),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/burst_588 ),
    .I4(\BU2/U0/wrapper_controller/controller_dbuffer/halt ),
    .I5(NlwRenamedSig_OI_monitor_txdata[2]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<2>_579 )
  );
  LUT6 #(
    .INIT ( 64'h8000000080008000 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv1  (
    .I0(\BU2/U0/wrapper_controller/dbuf_select ),
    .I1(\BU2/U0/wrapper_controller/write_strobe ),
    .I2(\BU2/U0/wrapper_controller/port_id [0]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/controller_dbuffer/halt ),
    .I5(\BU2/U0/wrapper_controller/controller_dbuffer/burst_588 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv )
  );
  LUT5 #(
    .INIT ( 32'hFFBFFFFF ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A121  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/inc4 ),
    .I1(\BU2/U0/wrapper_controller/port_id [0]),
    .I2(\BU2/U0/wrapper_controller/write_strobe ),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/dbuf_select ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/N3 )
  );
  LUT5 #(
    .INIT ( 32'hFFBFFFFF ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A1011  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/write_strobe ),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/inc4 ),
    .I4(\BU2/U0/wrapper_controller/dbuf_select ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/N4 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_0_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [0]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_0_glue_set_1061 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_1_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [1]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_1_glue_set_1060 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_2_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [2]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_2_glue_set_1059 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_3_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [3]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_3_glue_set_1058 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_4_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [4]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_4_glue_set_1057 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_5_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [5]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_5_glue_set_1056 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAFFFF0000CCF0 ))
  \BU2/U0/wrapper_controller/mux7_3_SW0  (
    .I0(\BU2/U0/wrapper_controller/rdbk_syn [7]),
    .I1(\BU2/U0/wrapper_controller/fecc_far_cap [15]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_dly [15]),
    .I3(NlwRenamedSig_OI_status_injection),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/N20 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_6_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [6]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_6_glue_set_1055 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_7_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [7]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_7_glue_set_1054 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_8_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [8]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [8]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_8_glue_set_1053 )
  );
  LUT4 #(
    .INIT ( 16'hFDF8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_9_glue_set  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [9]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I3(\BU2/U0/wrapper_controller/address [9]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_9_glue_set_1052 )
  );
  LUT5 #(
    .INIT ( 32'h00000010 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Sh11  (
    .I0(\BU2/U0/wrapper_controller/port_id [1]),
    .I1(\BU2/U0/wrapper_controller/port_id [4]),
    .I2(\BU2/U0/wrapper_controller/port_id [3]),
    .I3(\BU2/U0/wrapper_controller/port_id [2]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/N72 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/bank_sel_reg  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/bank_sel_reg_rstpot_1064 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/bank_sel_reg_935 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/bank_sel_reg_rstpot  (
    .I0(\BU2/U0/wrapper_controller/ws_pid[4]_AND_23_o ),
    .I1(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I2(NlwRenamedSig_OI_monitor_txdata[0]),
    .O(\BU2/U0/wrapper_controller/bank_sel_reg_rstpot_1064 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_16  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/frame_locate_16_rstpot_1063 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [16])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/frame_locate_16_rstpot  (
    .I0(\BU2/U0/wrapper_controller/ws_pid[4]_AND_4_o ),
    .I1(\BU2/U0/wrapper_controller/frame_locate [16]),
    .I2(NlwRenamedSig_OI_monitor_txdata[0]),
    .O(\BU2/U0/wrapper_controller/frame_locate_16_rstpot_1063 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/ireq_reg  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/ireq_reg_rstpot_1062 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(NlwRenamedSig_OI_icap_request)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/ireq_reg_rstpot  (
    .I0(\BU2/U0/wrapper_controller/ws_pid[4]_AND_24_o ),
    .I1(NlwRenamedSig_OI_icap_request),
    .I2(NlwRenamedSig_OI_monitor_txdata[7]),
    .O(\BU2/U0/wrapper_controller/ireq_reg_rstpot_1062 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_xor<16>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [16]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_xor<16>_rt_396 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_word_count_xor<7>_rt  (
    .I0(\BU2/U0/wrapper_controller/word_count [7]),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_xor<7>_rt_373 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<1>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [1]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<1>_rt_441 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<2>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [2]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<2>_rt_438 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<3>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [3]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<3>_rt_435 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<4>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [4]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<4>_rt_432 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<5>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [5]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<5>_rt_429 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<6>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [6]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<6>_rt_426 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<7>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [7]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<7>_rt_423 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<8>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [8]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<8>_rt_420 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<9>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [9]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<9>_rt_417 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<10>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [10]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<10>_rt_414 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<11>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [11]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<11>_rt_411 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<12>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [12]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<12>_rt_408 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<13>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [13]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<13>_rt_405 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<14>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [14]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<14>_rt_402 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_frame_count_cy<15>_rt  (
    .I0(\BU2/U0/wrapper_controller/frame_count [15]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<15>_rt_399 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_word_count_cy<1>_rt  (
    .I0(\BU2/U0/wrapper_controller/word_count [1]),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy<1>_rt_391 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_word_count_cy<2>_rt  (
    .I0(\BU2/U0/wrapper_controller/word_count [2]),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy<2>_rt_388 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_word_count_cy<3>_rt  (
    .I0(\BU2/U0/wrapper_controller/word_count [3]),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy<3>_rt_385 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_word_count_cy<4>_rt  (
    .I0(\BU2/U0/wrapper_controller/word_count [4]),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy<4>_rt_382 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_word_count_cy<5>_rt  (
    .I0(\BU2/U0/wrapper_controller/word_count [5]),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy<5>_rt_379 )
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/Mcount_word_count_cy<6>_rt  (
    .I0(\BU2/U0/wrapper_controller/word_count [6]),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy<6>_rt_376 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_0  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_0_glue_set_1061 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_1  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_1_glue_set_1060 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_2  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_2_glue_set_1059 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_3  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_3_glue_set_1058 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_4  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_4_glue_set_1057 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_5  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_5_glue_set_1056 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_6  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_6_glue_set_1055 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_7  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_7_glue_set_1054 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_8  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_8_glue_set_1053 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_9  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_loop_register_bit_9_glue_set_1052 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/address [9])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/burst  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/burst_glue_set_1051 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/burst_588 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_ego  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/errinj_ego_glue_set_1050 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_ego_210 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_ecc  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/rdbk_ecc_glue_set_1049 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_ecc_226 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_eos  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/frame_eos_glue_set_1048 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_eos_319 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_crc  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/rdbk_crc_glue_set_1047 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_crc_202 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAF0F0CCCCFF00 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux12  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [1]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_9_591 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I3(\BU2/N18 ),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/dbuf_din [1])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux12_SW0  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I2(NlwRenamedSig_OI_icap_i[22]),
    .I3(NlwRenamedSig_OI_icap_i[30]),
    .I4(NlwRenamedSig_OI_icap_i[14]),
    .I5(NlwRenamedSig_OI_icap_i[6]),
    .O(\BU2/N18 )
  );
  LUT5 #(
    .INIT ( 32'hAACC000F ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux124  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [3]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [3]),
    .I2(\BU2/N16 ),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/dbuf_din [3])
  );
  LUT6 #(
    .INIT ( 64'h028A46CE139B57DF ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux124_SW0  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I2(NlwRenamedSig_OI_icap_i[20]),
    .I3(NlwRenamedSig_OI_icap_i[28]),
    .I4(NlwRenamedSig_OI_icap_i[12]),
    .I5(NlwRenamedSig_OI_icap_i[4]),
    .O(\BU2/N16 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAF0F0CCCCFF00 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux9  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [0]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [8]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I3(\BU2/N14 ),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/dbuf_din [0])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux9_SW0  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I2(NlwRenamedSig_OI_icap_i[23]),
    .I3(NlwRenamedSig_OI_icap_i[31]),
    .I4(NlwRenamedSig_OI_icap_i[15]),
    .I5(NlwRenamedSig_OI_icap_i[7]),
    .O(\BU2/N14 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/halt94  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/halt9 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/halt91_1039 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/halt92_1040 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/halt )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/halt93  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [2]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [2]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [6]),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [6]),
    .I4(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [5]),
    .I5(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [5]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/halt92_1040 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/halt92  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [4]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [4]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [3]),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [3]),
    .I4(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_9_612 ),
    .I5(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_9_591 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/halt91_1039 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/halt91  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_10_613 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_10_590 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_8_611 ),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [8]),
    .I4(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [7]),
    .I5(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [7]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/halt9 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux1210  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_10_613 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [6]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [6]),
    .I3(\BU2/N12 ),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/dbuf_din [6])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux1210_SW0  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I2(NlwRenamedSig_OI_icap_i[9]),
    .I3(NlwRenamedSig_OI_icap_i[25]),
    .I4(NlwRenamedSig_OI_icap_i[17]),
    .I5(NlwRenamedSig_OI_icap_i[1]),
    .O(\BU2/N12 )
  );
  LUT6 #(
    .INIT ( 64'hAAAACCCCF0F0FF00 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux1212  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [7]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [7]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/burst_588 ),
    .I3(\BU2/N10 ),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/dbuf_din [7])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux1212_SW0  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I2(NlwRenamedSig_OI_icap_i[8]),
    .I3(NlwRenamedSig_OI_icap_i[24]),
    .I4(NlwRenamedSig_OI_icap_i[16]),
    .I5(NlwRenamedSig_OI_icap_i[0]),
    .O(\BU2/N10 )
  );
  LUT6 #(
    .INIT ( 64'hAAAAF0F0CCCCFF00 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux122  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [2]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_10_590 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [2]),
    .I3(\BU2/N8 ),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/dbuf_din [2])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux122_SW0  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I2(NlwRenamedSig_OI_icap_i[21]),
    .I3(NlwRenamedSig_OI_icap_i[29]),
    .I4(NlwRenamedSig_OI_icap_i[13]),
    .I5(NlwRenamedSig_OI_icap_i[5]),
    .O(\BU2/N8 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux126  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_8_611 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [4]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [4]),
    .I3(\BU2/N6 ),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/dbuf_din [4])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux126_SW0  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I2(NlwRenamedSig_OI_icap_i[19]),
    .I3(NlwRenamedSig_OI_icap_i[27]),
    .I4(NlwRenamedSig_OI_icap_i[11]),
    .I5(NlwRenamedSig_OI_icap_i[3]),
    .O(\BU2/N6 )
  );
  LUT6 #(
    .INIT ( 64'hCCCCF0F0AAAAFF00 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux128  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_9_612 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [5]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [5]),
    .I3(\BU2/N4 ),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/dbuf_din [5])
  );
  LUT6 #(
    .INIT ( 64'hFD75B931EC64A820 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/mux128_SW0  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I2(NlwRenamedSig_OI_icap_i[18]),
    .I3(NlwRenamedSig_OI_icap_i[26]),
    .I4(NlwRenamedSig_OI_icap_i[10]),
    .I5(NlwRenamedSig_OI_icap_i[2]),
    .O(\BU2/N4 )
  );
  LUT6 #(
    .INIT ( 64'h0000000800000000 ))
  \BU2/U0/wrapper_controller/word_count[6]_PWR_6_o_equal_12_o<6>  (
    .I0(\BU2/U0/wrapper_controller/word_count [0]),
    .I1(\BU2/U0/wrapper_controller/word_count [4]),
    .I2(\BU2/U0/wrapper_controller/word_count [1]),
    .I3(\BU2/U0/wrapper_controller/word_count [2]),
    .I4(\BU2/N2 ),
    .I5(\BU2/U0/wrapper_controller/word_count [6]),
    .O(\BU2/U0/wrapper_controller/word_count[6]_PWR_6_o_equal_12_o )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \BU2/U0/wrapper_controller/word_count[6]_PWR_6_o_equal_12_o<6>_SW0  (
    .I0(\BU2/U0/wrapper_controller/word_count [3]),
    .I1(\BU2/U0/wrapper_controller/word_count [5]),
    .O(\BU2/N2 )
  );
  LUT6 #(
    .INIT ( 64'hFF00FF530000FF00 ))
  \BU2/U0/wrapper_controller/port_id<2>1  (
    .I0(\BU2/U0/wrapper_controller/fecc_far_cap [23]),
    .I1(\BU2/U0/wrapper_controller/fecc_far_dly [23]),
    .I2(NlwRenamedSig_OI_status_injection),
    .I3(\BU2/U0/wrapper_controller/port_id [2]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/port_id<2>2 )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina321  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(icap_o_4[15]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[9] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina311  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[7]),
    .I2(icap_o_4[0]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[7] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina301  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[6]),
    .I2(icap_o_4[1]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[6] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina291  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[5]),
    .I2(icap_o_4[2]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[5] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina281  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[4]),
    .I2(icap_o_4[3]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[4] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina271  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[3]),
    .I2(icap_o_4[4]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[3] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina261  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[7]),
    .I2(icap_o_4[24]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[34] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina251  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[6]),
    .I2(icap_o_4[25]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[33] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina241  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[5]),
    .I2(icap_o_4[26]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[32] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina231  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[4]),
    .I2(icap_o_4[27]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[31] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina221  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[3]),
    .I2(icap_o_4[28]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[30] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina211  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[2]),
    .I2(icap_o_4[5]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[2] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina201  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[2]),
    .I2(icap_o_4[29]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[29] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina191  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[1]),
    .I2(icap_o_4[30]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[28] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina181  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(icap_o_4[31]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[27] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina171  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[7]),
    .I2(icap_o_4[16]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[25] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina161  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[6]),
    .I2(icap_o_4[17]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[24] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina151  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[5]),
    .I2(icap_o_4[18]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[23] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina141  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[4]),
    .I2(icap_o_4[19]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[22] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina131  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[3]),
    .I2(icap_o_4[20]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[21] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina121  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[2]),
    .I2(icap_o_4[21]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[20] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina111  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[1]),
    .I2(icap_o_4[6]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[1] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina101  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[1]),
    .I2(icap_o_4[22]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[19] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina91  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(icap_o_4[23]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[18] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina81  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[7]),
    .I2(icap_o_4[8]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[16] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina71  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[6]),
    .I2(icap_o_4[9]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[15] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina61  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[5]),
    .I2(icap_o_4[10]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[14] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina51  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[4]),
    .I2(icap_o_4[11]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[13] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina41  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[3]),
    .I2(icap_o_4[12]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[12] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina33  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[2]),
    .I2(icap_o_4[13]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[11] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina210  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[1]),
    .I2(icap_o_4[14]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[10] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_dina110  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(icap_o_4[7]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/dina[0] )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_addra91  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_10_590 ),
    .I2(NlwRenamedSig_OI_icap_i[13]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/addra [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_addra81  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_9_591 ),
    .I2(NlwRenamedSig_OI_icap_i[14]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/addra [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_addra71  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [8]),
    .I2(NlwRenamedSig_OI_icap_i[15]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/addra [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_addra61  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [7]),
    .I2(NlwRenamedSig_OI_icap_i[0]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/addra [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_addra51  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [6]),
    .I2(NlwRenamedSig_OI_icap_i[1]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/addra [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_addra41  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [5]),
    .I2(NlwRenamedSig_OI_icap_i[2]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/addra [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_addra31  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [4]),
    .I2(NlwRenamedSig_OI_icap_i[3]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/addra [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_addra21  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [3]),
    .I2(NlwRenamedSig_OI_icap_i[4]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/addra [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_addra11  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [2]),
    .I2(NlwRenamedSig_OI_icap_i[5]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/addra [0])
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_icap_rdwrb11  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/doutb[26] ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .O(icap_rdwrb)
  );
  LUT2 #(
    .INIT ( 4'hB ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_icap_csb11  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/doutb[35] ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .O(icap_csb)
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A91  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[7]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [7]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<7> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A81  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[6]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [6]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<6> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A71  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[5]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [5]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<5> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A61  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[4]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [4]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<4> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A51  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[3]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [3]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<3> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A41  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[2]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [2]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<2> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A31  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[1]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<1> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A11  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N3 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<0> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A111  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N4 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[1]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_9_591 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<9> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A101  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N4 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [8]),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<8> )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_A21  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N4 ),
    .I1(NlwRenamedSig_OI_monitor_txdata[2]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_10_590 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<10> )
  );
  LUT3 #(
    .INIT ( 8'hA8 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/inc11  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/N72 ),
    .I1(\BU2/U0/wrapper_controller/read_strobe ),
    .I2(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/inc1 )
  );
  LUT5 #(
    .INIT ( 32'h40000000 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/go1  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(NlwRenamedSig_OI_monitor_txdata[7]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/dbuf_select ),
    .I4(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/go )
  );
  LUT6 #(
    .INIT ( 64'h01000000ABAAAAAA ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_wea11  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/N72 ),
    .I4(\BU2/U0/wrapper_controller/write_strobe ),
    .I5(\BU2/U0/wrapper_controller/controller_dbuffer/doutb[17] ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/wea [0])
  );
  LUT6 #(
    .INIT ( 64'h04000000AEAAAAAA ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_wea21  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/N72 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I4(\BU2/U0/wrapper_controller/write_strobe ),
    .I5(\BU2/U0/wrapper_controller/controller_dbuffer/doutb[17] ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/wea [1])
  );
  LUT6 #(
    .INIT ( 64'h40000000EAAAAAAA ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_wea41  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/N72 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I4(\BU2/U0/wrapper_controller/write_strobe ),
    .I5(\BU2/U0/wrapper_controller/controller_dbuffer/doutb[17] ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/wea [3])
  );
  LUT6 #(
    .INIT ( 64'h04000000AEAAAAAA ))
  \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_wea31  (
    .I0(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 ),
    .I1(\BU2/U0/wrapper_controller/controller_dbuffer/N72 ),
    .I2(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0]),
    .I3(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1]),
    .I4(\BU2/U0/wrapper_controller/write_strobe ),
    .I5(\BU2/U0/wrapper_controller/controller_dbuffer/doutb[17] ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/wea [2])
  );
  LUT3 #(
    .INIT ( 8'h08 ))
  \BU2/U0/wrapper_controller/first_ecc_event1  (
    .I0(fecc_eccerr),
    .I1(NlwRenamedSignal_fecc_syndromevalid),
    .I2(\BU2/U0/wrapper_controller/rdbk_ecc_226 ),
    .O(\BU2/U0/wrapper_controller/first_ecc_event )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \BU2/U0/wrapper_controller/dbuf_select<4>1  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [3]),
    .I2(\BU2/U0/wrapper_controller/port_id [2]),
    .O(\BU2/U0/wrapper_controller/dbuf_select )
  );
  LUT5 #(
    .INIT ( 32'h00000020 ))
  \BU2/U0/wrapper_controller/pid[4]_PWR_6_o_equal_41_o<4>1  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(\BU2/U0/wrapper_controller/port_id [3]),
    .I2(\BU2/U0/wrapper_controller/port_id [2]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/pid[4]_PWR_6_o_equal_41_o )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux811  (
    .I0(NlwRenamedSig_OI_status_injection),
    .I1(\BU2/U0/wrapper_controller/fecc_far_dly [0]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [0]),
    .O(\BU2/U0/wrapper_controller/rdbk_fecc_far [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux1911  (
    .I0(NlwRenamedSig_OI_status_injection),
    .I1(\BU2/U0/wrapper_controller/fecc_far_dly [1]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [1]),
    .O(\BU2/U0/wrapper_controller/rdbk_fecc_far [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux2411  (
    .I0(NlwRenamedSig_OI_status_injection),
    .I1(\BU2/U0/wrapper_controller/fecc_far_dly [2]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [2]),
    .O(\BU2/U0/wrapper_controller/rdbk_fecc_far [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux2511  (
    .I0(NlwRenamedSig_OI_status_injection),
    .I1(\BU2/U0/wrapper_controller/fecc_far_dly [3]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [3]),
    .O(\BU2/U0/wrapper_controller/rdbk_fecc_far [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux2611  (
    .I0(NlwRenamedSig_OI_status_injection),
    .I1(\BU2/U0/wrapper_controller/fecc_far_dly [4]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [4]),
    .O(\BU2/U0/wrapper_controller/rdbk_fecc_far [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux2911  (
    .I0(NlwRenamedSig_OI_status_injection),
    .I1(\BU2/U0/wrapper_controller/fecc_far_dly [7]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [7]),
    .O(\BU2/U0/wrapper_controller/rdbk_fecc_far [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux2711  (
    .I0(NlwRenamedSig_OI_status_injection),
    .I1(\BU2/U0/wrapper_controller/fecc_far_dly [5]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [5]),
    .O(\BU2/U0/wrapper_controller/rdbk_fecc_far [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/mux2811  (
    .I0(NlwRenamedSig_OI_status_injection),
    .I1(\BU2/U0/wrapper_controller/fecc_far_dly [6]),
    .I2(\BU2/U0/wrapper_controller/fecc_far_cap [6]),
    .O(\BU2/U0/wrapper_controller/rdbk_fecc_far [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction181  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [9]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [9]),
    .O(\BU2/U0/wrapper_controller/instruction [9])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction171  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [8]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [8]),
    .O(\BU2/U0/wrapper_controller/instruction [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction161  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [7]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [7]),
    .O(\BU2/U0/wrapper_controller/instruction [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction151  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [6]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [6]),
    .O(\BU2/U0/wrapper_controller/instruction [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction141  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [5]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [5]),
    .O(\BU2/U0/wrapper_controller/instruction [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction131  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [4]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [4]),
    .O(\BU2/U0/wrapper_controller/instruction [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction121  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [3]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [3]),
    .O(\BU2/U0/wrapper_controller/instruction [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction111  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [2]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [2]),
    .O(\BU2/U0/wrapper_controller/instruction [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction101  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [1]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [1]),
    .O(\BU2/U0/wrapper_controller/instruction [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction91  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [17]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [17]),
    .O(\BU2/U0/wrapper_controller/instruction [17])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction81  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [16]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [16]),
    .O(\BU2/U0/wrapper_controller/instruction [16])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction71  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [15]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [15]),
    .O(\BU2/U0/wrapper_controller/instruction [15])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction61  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [14]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [14]),
    .O(\BU2/U0/wrapper_controller/instruction [14])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction51  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [13]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [13]),
    .O(\BU2/U0/wrapper_controller/instruction [13])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction41  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [12]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [12]),
    .O(\BU2/U0/wrapper_controller/instruction [12])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction31  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [11]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [11]),
    .O(\BU2/U0/wrapper_controller/instruction [11])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction21  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [10]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [10]),
    .O(\BU2/U0/wrapper_controller/instruction [10])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_instrom/Mmux_instruction19  (
    .I0(\BU2/U0/wrapper_controller/bank_sel_reg_935 ),
    .I1(\BU2/U0/wrapper_controller/controller_instrom/instruction0 [0]),
    .I2(\BU2/U0/wrapper_controller/controller_instrom/instruction1 [0]),
    .O(\BU2/U0/wrapper_controller/instruction [0])
  );
  LUT4 #(
    .INIT ( 16'h0800 ))
  \BU2/U0/wrapper_controller/ws_pid[4]_AND_16_o11  (
    .I0(\BU2/U0/wrapper_controller/port_id [1]),
    .I1(\BU2/U0/wrapper_controller/port_id [0]),
    .I2(\BU2/U0/wrapper_controller/port_id [3]),
    .I3(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/N9 )
  );
  LUT6 #(
    .INIT ( 64'h0000000008000000 ))
  \BU2/U0/wrapper_controller/monitor_txwrite1  (
    .I0(\BU2/U0/wrapper_controller/write_strobe ),
    .I1(\BU2/U0/wrapper_controller/port_id [0]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [2]),
    .I4(\BU2/U0/wrapper_controller/port_id [3]),
    .I5(\BU2/U0/wrapper_controller/port_id [4]),
    .O(monitor_txwrite)
  );
  LUT6 #(
    .INIT ( 64'h0000000008000000 ))
  \BU2/U0/wrapper_controller/monitor_rxread1  (
    .I0(\BU2/U0/wrapper_controller/read_strobe ),
    .I1(\BU2/U0/wrapper_controller/port_id [0]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [2]),
    .I4(\BU2/U0/wrapper_controller/port_id [3]),
    .I5(\BU2/U0/wrapper_controller/port_id [4]),
    .O(monitor_rxread)
  );
  LUT6 #(
    .INIT ( 64'h0000000008000000 ))
  \BU2/U0/wrapper_controller/fetch_txwrite1  (
    .I0(\BU2/U0/wrapper_controller/port_id [1]),
    .I1(\BU2/U0/wrapper_controller/write_strobe ),
    .I2(\BU2/U0/wrapper_controller/port_id [0]),
    .I3(\BU2/U0/wrapper_controller/port_id [2]),
    .I4(\BU2/U0/wrapper_controller/port_id [3]),
    .I5(\BU2/U0/wrapper_controller/port_id [4]),
    .O(\BU2/fetch_txwrite )
  );
  LUT6 #(
    .INIT ( 64'h0000000008000000 ))
  \BU2/U0/wrapper_controller/fetch_rxread1  (
    .I0(\BU2/U0/wrapper_controller/port_id [1]),
    .I1(\BU2/U0/wrapper_controller/read_strobe ),
    .I2(\BU2/U0/wrapper_controller/port_id [0]),
    .I3(\BU2/U0/wrapper_controller/port_id [2]),
    .I4(\BU2/U0/wrapper_controller/port_id [3]),
    .I5(\BU2/U0/wrapper_controller/port_id [4]),
    .O(\BU2/fetch_rxread )
  );
  LUT6 #(
    .INIT ( 64'h4000000000000000 ))
  \BU2/U0/wrapper_controller/ws_pid[4]_AND_23_o1  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/port_id [2]),
    .I3(\BU2/U0/wrapper_controller/port_id [3]),
    .I4(\BU2/U0/wrapper_controller/port_id [4]),
    .I5(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/ws_pid[4]_AND_23_o )
  );
  LUT6 #(
    .INIT ( 64'h8000000000000000 ))
  \BU2/U0/wrapper_controller/ws_pid[4]_AND_24_o1  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/port_id [2]),
    .I3(\BU2/U0/wrapper_controller/port_id [3]),
    .I4(\BU2/U0/wrapper_controller/port_id [4]),
    .I5(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/ws_pid[4]_AND_24_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000100000000 ))
  \BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o1  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/port_id [2]),
    .I3(\BU2/U0/wrapper_controller/port_id [3]),
    .I4(\BU2/U0/wrapper_controller/port_id [4]),
    .I5(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000200000000 ))
  \BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o1  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/port_id [2]),
    .I3(\BU2/U0/wrapper_controller/port_id [3]),
    .I4(\BU2/U0/wrapper_controller/port_id [4]),
    .I5(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000200000000 ))
  \BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o1  (
    .I0(\BU2/U0/wrapper_controller/port_id [1]),
    .I1(\BU2/U0/wrapper_controller/port_id [0]),
    .I2(\BU2/U0/wrapper_controller/port_id [2]),
    .I3(\BU2/U0/wrapper_controller/port_id [3]),
    .I4(\BU2/U0/wrapper_controller/port_id [4]),
    .I5(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o )
  );
  LUT6 #(
    .INIT ( 64'h0000000800000000 ))
  \BU2/U0/wrapper_controller/ws_pid[4]_AND_4_o1  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/port_id [2]),
    .I3(\BU2/U0/wrapper_controller/port_id [3]),
    .I4(\BU2/U0/wrapper_controller/port_id [4]),
    .I5(\BU2/U0/wrapper_controller/write_strobe ),
    .O(\BU2/U0/wrapper_controller/ws_pid[4]_AND_4_o )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/toggle_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/not_t_state ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/int_capture_flop  (
    .C(icap_clk),
    .D(\BU2/N0 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/clean_int )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/int_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/int_pulse ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/ack_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/interrupt_ack_internal )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shadow_carry_flop  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/carry_flag ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shadow_carry )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shadow_zero_flop  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/zero_flag ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shadow_zero )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/int_enable_flop  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/int_update_enable ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/int_enable_value ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/int_enable )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/flag_write_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/flag_type ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/flag_write )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/zero_flag_flop  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/flag_enable ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/zero_fast_route ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/zero_flag )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/carry_flag_flop  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/flag_enable ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/carry_fast_route ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/carry_flag )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/register_write_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/register_type ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/register_write )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_write_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_type ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_write )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/store_flop_0  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [0]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/store_flop_1  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [1]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/store_flop_2  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [2]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/store_flop_3  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [3]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/store_flop_4  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [4]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/store_flop_5  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [5]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/store_flop_6  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [6]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/store_flop_7  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [7]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_flop_0  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [0]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_flop_1  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [1]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_flop_2  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [2]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_flop_3  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [3]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_flop_4  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [4]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_flop_5  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [5]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_flop_6  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [6]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_flop_7  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [7]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/pipeline_bit  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_carry_value ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_carry )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_flop_0  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [0]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_flop_1  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [1]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_flop_2  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [2]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_flop_3  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [3]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_flop_4  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [4]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_flop_5  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [5]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_flop_6  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [6]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_flop_7  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [7]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_flop_0  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [0]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_flop_1  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [1]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [1])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_flop_2  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [2]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_flop_3  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [3]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_flop_4  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [4]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_flop_5  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [5]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_flop_6  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [6]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_flop_7  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [7]),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_out ),
    .R(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/sel_group_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/input_fetch_type ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_group )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/write_strobe_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/write_active ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/write_strobe )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/read_strobe_flop  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/read_active ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/read_strobe )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_0  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [0]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_1  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [1]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_2  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [2]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_3  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [3]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_4  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [4]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_5  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [5]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_6  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [6]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_7  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [7]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_8  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [8]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_flop_9  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [9]),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_count_loop_register_bit_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/not_active_interrupt ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_count_loop_register_bit_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/not_active_interrupt ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_count_loop_register_bit_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/not_active_interrupt ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_count_loop_register_bit_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/not_active_interrupt ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_count_loop_register_bit_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_kcpsm3/not_active_interrupt ),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/reg_loop_register_bit_0  (
    .A0(\BU2/U0/wrapper_controller/instruction [8]),
    .A1(\BU2/U0/wrapper_controller/instruction [9]),
    .A2(\BU2/U0/wrapper_controller/instruction [10]),
    .A3(\BU2/U0/wrapper_controller/instruction [11]),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [0]),
    .DPRA0(\BU2/U0/wrapper_controller/instruction [4]),
    .DPRA1(\BU2/U0/wrapper_controller/instruction [5]),
    .DPRA2(\BU2/U0/wrapper_controller/instruction [6]),
    .DPRA3(\BU2/U0/wrapper_controller/instruction [7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/register_enable ),
    .SPO(NlwRenamedSig_OI_monitor_txdata[0]),
    .DPO(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [0])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/reg_loop_register_bit_1  (
    .A0(\BU2/U0/wrapper_controller/instruction [8]),
    .A1(\BU2/U0/wrapper_controller/instruction [9]),
    .A2(\BU2/U0/wrapper_controller/instruction [10]),
    .A3(\BU2/U0/wrapper_controller/instruction [11]),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [1]),
    .DPRA0(\BU2/U0/wrapper_controller/instruction [4]),
    .DPRA1(\BU2/U0/wrapper_controller/instruction [5]),
    .DPRA2(\BU2/U0/wrapper_controller/instruction [6]),
    .DPRA3(\BU2/U0/wrapper_controller/instruction [7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/register_enable ),
    .SPO(NlwRenamedSig_OI_monitor_txdata[1]),
    .DPO(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [1])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/reg_loop_register_bit_2  (
    .A0(\BU2/U0/wrapper_controller/instruction [8]),
    .A1(\BU2/U0/wrapper_controller/instruction [9]),
    .A2(\BU2/U0/wrapper_controller/instruction [10]),
    .A3(\BU2/U0/wrapper_controller/instruction [11]),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [2]),
    .DPRA0(\BU2/U0/wrapper_controller/instruction [4]),
    .DPRA1(\BU2/U0/wrapper_controller/instruction [5]),
    .DPRA2(\BU2/U0/wrapper_controller/instruction [6]),
    .DPRA3(\BU2/U0/wrapper_controller/instruction [7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/register_enable ),
    .SPO(NlwRenamedSig_OI_monitor_txdata[2]),
    .DPO(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [2])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/reg_loop_register_bit_3  (
    .A0(\BU2/U0/wrapper_controller/instruction [8]),
    .A1(\BU2/U0/wrapper_controller/instruction [9]),
    .A2(\BU2/U0/wrapper_controller/instruction [10]),
    .A3(\BU2/U0/wrapper_controller/instruction [11]),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [3]),
    .DPRA0(\BU2/U0/wrapper_controller/instruction [4]),
    .DPRA1(\BU2/U0/wrapper_controller/instruction [5]),
    .DPRA2(\BU2/U0/wrapper_controller/instruction [6]),
    .DPRA3(\BU2/U0/wrapper_controller/instruction [7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/register_enable ),
    .SPO(NlwRenamedSig_OI_monitor_txdata[3]),
    .DPO(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [3])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/reg_loop_register_bit_4  (
    .A0(\BU2/U0/wrapper_controller/instruction [8]),
    .A1(\BU2/U0/wrapper_controller/instruction [9]),
    .A2(\BU2/U0/wrapper_controller/instruction [10]),
    .A3(\BU2/U0/wrapper_controller/instruction [11]),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [4]),
    .DPRA0(\BU2/U0/wrapper_controller/instruction [4]),
    .DPRA1(\BU2/U0/wrapper_controller/instruction [5]),
    .DPRA2(\BU2/U0/wrapper_controller/instruction [6]),
    .DPRA3(\BU2/U0/wrapper_controller/instruction [7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/register_enable ),
    .SPO(NlwRenamedSig_OI_monitor_txdata[4]),
    .DPO(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [4])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/reg_loop_register_bit_5  (
    .A0(\BU2/U0/wrapper_controller/instruction [8]),
    .A1(\BU2/U0/wrapper_controller/instruction [9]),
    .A2(\BU2/U0/wrapper_controller/instruction [10]),
    .A3(\BU2/U0/wrapper_controller/instruction [11]),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [5]),
    .DPRA0(\BU2/U0/wrapper_controller/instruction [4]),
    .DPRA1(\BU2/U0/wrapper_controller/instruction [5]),
    .DPRA2(\BU2/U0/wrapper_controller/instruction [6]),
    .DPRA3(\BU2/U0/wrapper_controller/instruction [7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/register_enable ),
    .SPO(NlwRenamedSig_OI_monitor_txdata[5]),
    .DPO(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [5])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/reg_loop_register_bit_6  (
    .A0(\BU2/U0/wrapper_controller/instruction [8]),
    .A1(\BU2/U0/wrapper_controller/instruction [9]),
    .A2(\BU2/U0/wrapper_controller/instruction [10]),
    .A3(\BU2/U0/wrapper_controller/instruction [11]),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [6]),
    .DPRA0(\BU2/U0/wrapper_controller/instruction [4]),
    .DPRA1(\BU2/U0/wrapper_controller/instruction [5]),
    .DPRA2(\BU2/U0/wrapper_controller/instruction [6]),
    .DPRA3(\BU2/U0/wrapper_controller/instruction [7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/register_enable ),
    .SPO(NlwRenamedSig_OI_monitor_txdata[6]),
    .DPO(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [6])
  );
  RAM16X1D #(
    .INIT ( 16'h0000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/reg_loop_register_bit_7  (
    .A0(\BU2/U0/wrapper_controller/instruction [8]),
    .A1(\BU2/U0/wrapper_controller/instruction [9]),
    .A2(\BU2/U0/wrapper_controller/instruction [10]),
    .A3(\BU2/U0/wrapper_controller/instruction [11]),
    .D(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [7]),
    .DPRA0(\BU2/U0/wrapper_controller/instruction [4]),
    .DPRA1(\BU2/U0/wrapper_controller/instruction [5]),
    .DPRA2(\BU2/U0/wrapper_controller/instruction [6]),
    .DPRA3(\BU2/U0/wrapper_controller/instruction [7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/register_enable ),
    .SPO(NlwRenamedSig_OI_monitor_txdata[7]),
    .DPO(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [7])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_bit_0  (
    .A0(\BU2/U0/wrapper_controller/port_id [0]),
    .A1(\BU2/U0/wrapper_controller/port_id [1]),
    .A2(\BU2/U0/wrapper_controller/port_id [2]),
    .A3(\BU2/U0/wrapper_controller/port_id [3]),
    .A4(\BU2/U0/wrapper_controller/port_id [4]),
    .A5(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .D(NlwRenamedSig_OI_monitor_txdata[0]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [0])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_bit_1  (
    .A0(\BU2/U0/wrapper_controller/port_id [0]),
    .A1(\BU2/U0/wrapper_controller/port_id [1]),
    .A2(\BU2/U0/wrapper_controller/port_id [2]),
    .A3(\BU2/U0/wrapper_controller/port_id [3]),
    .A4(\BU2/U0/wrapper_controller/port_id [4]),
    .A5(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .D(NlwRenamedSig_OI_monitor_txdata[1]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [1])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_bit_2  (
    .A0(\BU2/U0/wrapper_controller/port_id [0]),
    .A1(\BU2/U0/wrapper_controller/port_id [1]),
    .A2(\BU2/U0/wrapper_controller/port_id [2]),
    .A3(\BU2/U0/wrapper_controller/port_id [3]),
    .A4(\BU2/U0/wrapper_controller/port_id [4]),
    .A5(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .D(NlwRenamedSig_OI_monitor_txdata[2]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [2])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_bit_3  (
    .A0(\BU2/U0/wrapper_controller/port_id [0]),
    .A1(\BU2/U0/wrapper_controller/port_id [1]),
    .A2(\BU2/U0/wrapper_controller/port_id [2]),
    .A3(\BU2/U0/wrapper_controller/port_id [3]),
    .A4(\BU2/U0/wrapper_controller/port_id [4]),
    .A5(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .D(NlwRenamedSig_OI_monitor_txdata[3]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [3])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_bit_4  (
    .A0(\BU2/U0/wrapper_controller/port_id [0]),
    .A1(\BU2/U0/wrapper_controller/port_id [1]),
    .A2(\BU2/U0/wrapper_controller/port_id [2]),
    .A3(\BU2/U0/wrapper_controller/port_id [3]),
    .A4(\BU2/U0/wrapper_controller/port_id [4]),
    .A5(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .D(NlwRenamedSig_OI_monitor_txdata[4]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [4])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_bit_5  (
    .A0(\BU2/U0/wrapper_controller/port_id [0]),
    .A1(\BU2/U0/wrapper_controller/port_id [1]),
    .A2(\BU2/U0/wrapper_controller/port_id [2]),
    .A3(\BU2/U0/wrapper_controller/port_id [3]),
    .A4(\BU2/U0/wrapper_controller/port_id [4]),
    .A5(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .D(NlwRenamedSig_OI_monitor_txdata[5]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [5])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_bit_6  (
    .A0(\BU2/U0/wrapper_controller/port_id [0]),
    .A1(\BU2/U0/wrapper_controller/port_id [1]),
    .A2(\BU2/U0/wrapper_controller/port_id [2]),
    .A3(\BU2/U0/wrapper_controller/port_id [3]),
    .A4(\BU2/U0/wrapper_controller/port_id [4]),
    .A5(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .D(NlwRenamedSig_OI_monitor_txdata[6]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [6])
  );
  RAM64X1S #(
    .INIT ( 64'h0000000000000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_bit_7  (
    .A0(\BU2/U0/wrapper_controller/port_id [0]),
    .A1(\BU2/U0/wrapper_controller/port_id [1]),
    .A2(\BU2/U0/wrapper_controller/port_id [2]),
    .A3(\BU2/U0/wrapper_controller/port_id [3]),
    .A4(\BU2/U0/wrapper_controller/port_id [4]),
    .A5(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .D(NlwRenamedSig_OI_monitor_txdata[7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_data [7])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_0  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [0]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [0])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_1  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [1]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [1])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_2  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [2]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [2])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_3  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [3]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [3])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_4  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [4]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [4])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_5  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [5]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [5])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_6  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [6]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [6])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_7  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [7]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [7])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_8  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [8]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [8])
  );
  RAM32X1S #(
    .INIT ( 32'h00000000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/stack_bit_9  (
    .A0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .A1(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .A2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .A3(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .A4(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .D(\BU2/U0/wrapper_controller/address [9]),
    .WCLK(icap_clk),
    .WE(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_data [9])
  );
  LUT4 #(
    .INIT ( 16'hEAAA ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/int_update_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .I3(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/int_update_enable )
  );
  LUT4 #(
    .INIT ( 16'h7400 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/move_group_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [14]),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .I3(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/move_group )
  );
  LUT4 #(
    .INIT ( 16'h1000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/call_type_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [14]),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .I3(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/call_type )
  );
  LUT4 #(
    .INIT ( 16'h5400 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/push_pop_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [14]),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .I3(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/push_or_pop_type )
  );
  LUT4 #(
    .INIT ( 16'h41FC ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/flag_type_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [14]),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .I3(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/flag_type )
  );
  LUT4 #(
    .INIT ( 16'hF3FF ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/sel_parity_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/parity ),
    .I1(\BU2/U0/wrapper_controller/instruction [13]),
    .I2(\BU2/U0/wrapper_controller/instruction [15]),
    .I3(\BU2/U0/wrapper_controller/instruction [16]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_parity )
  );
  LUT2 #(
    .INIT ( 4'hC ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift_carry_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_carry ),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift_carry )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_0  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [0]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_1  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [1]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_2  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [2]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_3  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [3]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_4  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [4]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_5  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [5]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_6  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [6]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_7  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [7]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_8  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [8]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [8]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/vector_select_mux_9  (
    .I0(\BU2/U0/wrapper_controller/instruction [15]),
    .I1(\BU2/U0/wrapper_controller/instruction [9]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_pop_data [9]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [9])
  );
  LUT4 #(
    .INIT ( 16'h0145 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/register_type_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .I3(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/register_type )
  );
  LUT4 #(
    .INIT ( 16'h0400 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_type_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .I3(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_type )
  );
  LUT4 #(
    .INIT ( 16'hFFE2 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [14]),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .I3(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_logical )
  );
  LUT3 #(
    .INIT ( 8'h1F ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [14]),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith )
  );
  LUT4 #(
    .INIT ( 16'h0002 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/input_fetch_type_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [14]),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [16]),
    .I3(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/input_fetch_type )
  );
  LUT4 #(
    .INIT ( 16'h4000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/write_active_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [17]),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/io_initial_decode ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/write_active )
  );
  LUT4 #(
    .INIT ( 16'h0100 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/read_active_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I1(\BU2/U0/wrapper_controller/instruction [15]),
    .I2(\BU2/U0/wrapper_controller/instruction [17]),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/io_initial_decode ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/read_active )
  );
  LUT3 #(
    .INIT ( 8'h3F ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shadow_zero_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/shadow_zero ),
    .I1(\BU2/U0/wrapper_controller/instruction [16]),
    .I2(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shadow_zero )
  );
  LUT3 #(
    .INIT ( 8'hF3 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith_carry_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry ),
    .I1(\BU2/U0/wrapper_controller/instruction [16]),
    .I2(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith_carry )
  );
  LUT4 #(
    .INIT ( 16'h0010 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/io_decode_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I1(\BU2/U0/wrapper_controller/instruction [13]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .I3(\BU2/U0/wrapper_controller/instruction [16]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/io_initial_decode )
  );
  LUT2 #(
    .INIT ( 4'h3 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shadow_carry_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/shadow_carry ),
    .I1(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shadow_carry )
  );
  INV   \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift_inv  (
    .I(\BU2/U0/wrapper_controller/instruction [17]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift )
  );
  LUT3 #(
    .INIT ( 8'h04 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/int_value_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .I1(\BU2/U0/wrapper_controller/instruction [0]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/interrupt_ack_internal ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/int_enable_value )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/operand_select_mux_0  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/instruction [0]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [0]),
    .O(\BU2/U0/wrapper_controller/port_id [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/high_shift_in_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [1]),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(\BU2/U0/wrapper_controller/instruction [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/high_shift_in )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I1(\BU2/U0/wrapper_controller/instruction [13]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_write ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/memory_enable )
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_lut_0  (
    .I0(\BU2/U0/wrapper_controller/port_id [0]),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(\BU2/U0/wrapper_controller/instruction [13]),
    .I3(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [0])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_lut_1  (
    .I0(\BU2/U0/wrapper_controller/port_id [1]),
    .I1(NlwRenamedSig_OI_monitor_txdata[1]),
    .I2(\BU2/U0/wrapper_controller/instruction [13]),
    .I3(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [1])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_lut_2  (
    .I0(\BU2/U0/wrapper_controller/port_id [2]),
    .I1(NlwRenamedSig_OI_monitor_txdata[2]),
    .I2(\BU2/U0/wrapper_controller/instruction [13]),
    .I3(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [2])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_lut_3  (
    .I0(\BU2/U0/wrapper_controller/port_id [3]),
    .I1(NlwRenamedSig_OI_monitor_txdata[3]),
    .I2(\BU2/U0/wrapper_controller/instruction [13]),
    .I3(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [3])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_lut_4  (
    .I0(\BU2/U0/wrapper_controller/port_id [4]),
    .I1(NlwRenamedSig_OI_monitor_txdata[4]),
    .I2(\BU2/U0/wrapper_controller/instruction [13]),
    .I3(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [4])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_lut_5  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .I1(NlwRenamedSig_OI_monitor_txdata[5]),
    .I2(\BU2/U0/wrapper_controller/instruction [13]),
    .I3(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [5])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_lut_6  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [6]),
    .I1(NlwRenamedSig_OI_monitor_txdata[6]),
    .I2(\BU2/U0/wrapper_controller/instruction [13]),
    .I3(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [6])
  );
  LUT4 #(
    .INIT ( 16'h6E8A ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/logical_lut_7  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [7]),
    .I1(NlwRenamedSig_OI_monitor_txdata[7]),
    .I2(\BU2/U0/wrapper_controller/instruction [13]),
    .I3(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_value [7])
  );
  LUT3 #(
    .INIT ( 8'h6C ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_in_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [13]),
    .I1(\BU2/U0/wrapper_controller/instruction [14]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/carry_flag ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith_carry_in )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_lut_0  (
    .I0(NlwRenamedSig_OI_monitor_txdata[0]),
    .I1(\BU2/U0/wrapper_controller/port_id [0]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [0])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_lut_1  (
    .I0(NlwRenamedSig_OI_monitor_txdata[1]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [1])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_lut_2  (
    .I0(NlwRenamedSig_OI_monitor_txdata[2]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [2])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_lut_3  (
    .I0(NlwRenamedSig_OI_monitor_txdata[3]),
    .I1(\BU2/U0/wrapper_controller/port_id [3]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [3])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_lut_4  (
    .I0(NlwRenamedSig_OI_monitor_txdata[4]),
    .I1(\BU2/U0/wrapper_controller/port_id [4]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [4])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_lut_5  (
    .I0(NlwRenamedSig_OI_monitor_txdata[5]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [5])
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_lut_6  (
    .I0(NlwRenamedSig_OI_monitor_txdata[6]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [6]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [6])
  );
  LUT1 #(
    .INIT ( 2'h2 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_out_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/invert_arith_carry )
  );
  LUT3 #(
    .INIT ( 8'h96 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/arith_lut_7  (
    .I0(NlwRenamedSig_OI_monitor_txdata[7]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [7]),
    .I2(\BU2/U0/wrapper_controller/instruction [14]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [7])
  );
  LUT4 #(
    .INIT ( 16'h5A3C ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/condition_met_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/carry_flag ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/zero_flag ),
    .I2(\BU2/U0/wrapper_controller/instruction [10]),
    .I3(\BU2/U0/wrapper_controller/instruction [11]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/condition_met )
  );
  LUT3 #(
    .INIT ( 8'h2F ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/normal_count_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/condition_met ),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/move_group ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/valid_move_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/condition_met ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/valid_to_move )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/operand_select_mux_1  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/instruction [1]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [1]),
    .O(\BU2/U0/wrapper_controller/port_id [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/operand_select_mux_2  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/instruction [2]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [2]),
    .O(\BU2/U0/wrapper_controller/port_id [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/operand_select_mux_3  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/instruction [3]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [3]),
    .O(\BU2/U0/wrapper_controller/port_id [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/operand_select_mux_4  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/instruction [4]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [4]),
    .O(\BU2/U0/wrapper_controller/port_id [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/operand_select_mux_5  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/instruction [5]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/operand_select_mux_6  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/instruction [6]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/operand_select_mux_7  (
    .I0(\BU2/U0/wrapper_controller/instruction [12]),
    .I1(\BU2/U0/wrapper_controller/instruction [7]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/sy [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/second_operand [7])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_muxcy_0  (
    .CI(\BU2/U0/wrapper_controller/instruction [13]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [0])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_0  (
    .CI(\BU2/U0/wrapper_controller/instruction [13]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/mux_lut_0  (
    .I0(\BU2/U0/wrapper_controller/instruction [13]),
    .I1(\BU2/U0/wrapper_controller/in_port [0]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/mux_lut_1  (
    .I0(\BU2/U0/wrapper_controller/instruction [13]),
    .I1(\BU2/U0/wrapper_controller/in_port [1]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/mux_lut_2  (
    .I0(\BU2/U0/wrapper_controller/instruction [13]),
    .I1(\BU2/U0/wrapper_controller/in_port [2]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/mux_lut_3  (
    .I0(\BU2/U0/wrapper_controller/instruction [13]),
    .I1(\BU2/U0/wrapper_controller/in_port [3]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/mux_lut_4  (
    .I0(\BU2/U0/wrapper_controller/instruction [13]),
    .I1(\BU2/U0/wrapper_controller/in_port [4]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/mux_lut_5  (
    .I0(\BU2/U0/wrapper_controller/instruction [13]),
    .I1(\BU2/U0/wrapper_controller/in_port [5]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/mux_lut_6  (
    .I0(\BU2/U0/wrapper_controller/instruction [13]),
    .I1(\BU2/U0/wrapper_controller/in_port [6]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/mux_lut_7  (
    .I0(\BU2/U0/wrapper_controller/instruction [13]),
    .I1(\BU2/U0/wrapper_controller/in_port [7]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/store_data [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/low_shift_in_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [1]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/carry_flag ),
    .I2(NlwRenamedSig_OI_monitor_txdata[7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/low_shift_in )
  );
  MUXF5   \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in_muxf5  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/low_shift_in ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/high_shift_in ),
    .S(\BU2/U0/wrapper_controller/instruction [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_in )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_carry_lut  (
    .I0(\BU2/U0/wrapper_controller/instruction [3]),
    .I1(NlwRenamedSig_OI_monitor_txdata[7]),
    .I2(NlwRenamedSig_OI_monitor_txdata[0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_carry_value )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_mux_lut_0  (
    .I0(\BU2/U0/wrapper_controller/instruction [3]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_in ),
    .I2(NlwRenamedSig_OI_monitor_txdata[1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_mux_lut_1  (
    .I0(\BU2/U0/wrapper_controller/instruction [3]),
    .I1(NlwRenamedSig_OI_monitor_txdata[0]),
    .I2(NlwRenamedSig_OI_monitor_txdata[2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_mux_lut_2  (
    .I0(\BU2/U0/wrapper_controller/instruction [3]),
    .I1(NlwRenamedSig_OI_monitor_txdata[1]),
    .I2(NlwRenamedSig_OI_monitor_txdata[3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_mux_lut_3  (
    .I0(\BU2/U0/wrapper_controller/instruction [3]),
    .I1(NlwRenamedSig_OI_monitor_txdata[2]),
    .I2(NlwRenamedSig_OI_monitor_txdata[4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_mux_lut_4  (
    .I0(\BU2/U0/wrapper_controller/instruction [3]),
    .I1(NlwRenamedSig_OI_monitor_txdata[3]),
    .I2(NlwRenamedSig_OI_monitor_txdata[5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_mux_lut_5  (
    .I0(\BU2/U0/wrapper_controller/instruction [3]),
    .I1(NlwRenamedSig_OI_monitor_txdata[4]),
    .I2(NlwRenamedSig_OI_monitor_txdata[6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_mux_lut_6  (
    .I0(\BU2/U0/wrapper_controller/instruction [3]),
    .I1(NlwRenamedSig_OI_monitor_txdata[5]),
    .I2(NlwRenamedSig_OI_monitor_txdata[7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/shift_mux_lut_7  (
    .I0(\BU2/U0/wrapper_controller/instruction [3]),
    .I1(NlwRenamedSig_OI_monitor_txdata[6]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_in ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_value [7])
  );
  INV   \BU2/U0/wrapper_controller/controller_kcpsm3/t_state_lut  (
    .I(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/not_t_state )
  );
  LUT4 #(
    .INIT ( 16'h0080 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/int_pulse_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/clean_int ),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/int_enable ),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/int_pulse )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/flag_enable_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/flag_write ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/flag_enable )
  );
  INV   \BU2/U0/wrapper_controller/controller_kcpsm3/invert_enable  (
    .I(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_enable )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/register_enable_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/register_write ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/register_enable )
  );
  INV   \BU2/U0/wrapper_controller/controller_kcpsm3/stack_ram_inv  (
    .I(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_write_enable )
  );
  LUT4 #(
    .INIT ( 16'h6555 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/count_lut_0  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/valid_to_move ),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/push_or_pop_type ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [0])
  );
  LUT4 #(
    .INIT ( 16'hA999 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/count_lut_1  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/valid_to_move ),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/call_type ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [1])
  );
  LUT4 #(
    .INIT ( 16'hA999 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/count_lut_2  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/valid_to_move ),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/call_type ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [2])
  );
  LUT4 #(
    .INIT ( 16'hA999 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/count_lut_3  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/valid_to_move ),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/call_type ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [3])
  );
  LUT4 #(
    .INIT ( 16'hA999 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/count_lut_4  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [4]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/t_state ),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/valid_to_move ),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/call_type ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [4])
  );
  INV   \BU2/U0/wrapper_controller/controller_kcpsm3/stack_count_inv  (
    .I(\BU2/U0/wrapper_controller/controller_kcpsm3/active_interrupt ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/not_active_interrupt )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shadow_muxcy  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/wrapper_controller/controller_kcpsm3/shadow_carry ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shadow_carry ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_carry [0])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/zero_cymux  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/high_zero_carry ),
    .DI(\BU2/U0/wrapper_controller/controller_kcpsm3/shadow_zero ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shadow_zero ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/zero_carry )
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_0  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [0]),
    .I2(\BU2/U0/wrapper_controller/address [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_1  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [1]),
    .I2(\BU2/U0/wrapper_controller/address [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [1])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_2  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [2]),
    .I2(\BU2/U0/wrapper_controller/address [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [2])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_3  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [3]),
    .I2(\BU2/U0/wrapper_controller/address [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [3])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_4  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [4]),
    .I2(\BU2/U0/wrapper_controller/address [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [4])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_5  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [5]),
    .I2(\BU2/U0/wrapper_controller/address [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [5])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_6  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [6]),
    .I2(\BU2/U0/wrapper_controller/address [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [6])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_7  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [7]),
    .I2(\BU2/U0/wrapper_controller/address [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [7])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_8  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [8]),
    .I2(\BU2/U0/wrapper_controller/address [8]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [8])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/value_select_mux_9  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [9]),
    .I2(\BU2/U0/wrapper_controller/address [9]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [9])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_muxcy_0  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_in ),
    .DI(NlwRenamedSig_OI_monitor_txdata[0]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [0])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_muxcy_1  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [0]),
    .DI(NlwRenamedSig_OI_monitor_txdata[1]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [1])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_muxcy_2  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [1]),
    .DI(NlwRenamedSig_OI_monitor_txdata[2]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [2])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_muxcy_3  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [2]),
    .DI(NlwRenamedSig_OI_monitor_txdata[3]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [3])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_muxcy_4  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [3]),
    .DI(NlwRenamedSig_OI_monitor_txdata[4]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [4])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_muxcy_5  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [4]),
    .DI(NlwRenamedSig_OI_monitor_txdata[5]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [5])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_muxcy_6  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [5]),
    .DI(NlwRenamedSig_OI_monitor_txdata[6]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [6])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_muxcy_7  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [6]),
    .DI(NlwRenamedSig_OI_monitor_txdata[7]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [7])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/low_parity_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [0]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [1]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [2]),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/low_parity )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/or_lut_0  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [0]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [0]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [0])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/or_lut_1  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [1]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [1]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [1])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/or_lut_2  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [2]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [2]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [2])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/or_lut_3  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [3]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [3]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [3])
  );
  LUT4 #(
    .INIT ( 16'h6996 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/high_parity_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [4]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [5]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [6]),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/high_parity )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/or_lut_4  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [4]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [4]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [4])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/or_lut_5  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [5]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [5]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [5])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/or_lut_6  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [6]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [6]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [6])
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/or_lut_7  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/logical_result [7]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_result [7]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_result [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [7])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift_muxcy  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_carry [0]),
    .DI(\BU2/U0/wrapper_controller/controller_kcpsm3/shift_carry ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_shift_carry ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_carry [1])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith_muxcy  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_carry [1]),
    .DI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith_carry ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_carry [2])
  );
  MUXF5   \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in_muxf5_0  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [0]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [0]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_group ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [0])
  );
  MUXF5   \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in_muxf5_1  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [1]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [1]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_group ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [1])
  );
  MUXF5   \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in_muxf5_2  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [2]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [2]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_group ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [2])
  );
  MUXF5   \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in_muxf5_3  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [3]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [3]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_group ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [3])
  );
  MUXF5   \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in_muxf5_4  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [4]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [4]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_group ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [4])
  );
  MUXF5   \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in_muxf5_5  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [5]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [5]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_group ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [5])
  );
  MUXF5   \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in_muxf5_6  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [6]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [6]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_group ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [6])
  );
  MUXF5   \BU2/U0/wrapper_controller/controller_kcpsm3/shift_in_muxf5_7  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_group [7]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/input_group [7]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_group ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [7])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/count_muxcy_0  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [0]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [0])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/count_muxcy_1  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [0]),
    .DI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [1]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [1])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/count_muxcy_2  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [1]),
    .DI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [2]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [2])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/count_muxcy_3  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [2]),
    .DI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address [3]),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [3])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/sel_parity_muxcy  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_carry [2]),
    .DI(\BU2/U0/wrapper_controller/controller_kcpsm3/parity ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_parity ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_carry [3])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_muxcy_1  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [0]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [1])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_1  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [0]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [1])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_muxcy_2  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [1]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [2])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_2  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [1]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [2])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_muxcy_3  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [2]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [3])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_3  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [2]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [3])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_muxcy_4  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [3]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [4])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_4  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [3]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [4])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_muxcy_5  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [4]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [5])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_5  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [4]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [5])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_muxcy_6  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [5]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [6])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_6  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [5]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [6])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_muxcy_7  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [6]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [7])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_7  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [6]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [7])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_muxcy_8  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [7]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [8]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [8])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_8  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [7]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [8]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [8])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_xor_high  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector_carry [8]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_vector [9]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_vector [9])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_in_muxcy  (
    .CI(\BU2/N1 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_arith_carry_in ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_in )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_xor_0  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_in ),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [0])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_xor_1  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [0]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [1])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_xor_2  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [1]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [2])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_xor_3  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [2]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [3])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_xor_4  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [3]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [4])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_xor_5  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [4]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [5])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_xor_6  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [5]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [6])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_out_xor  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [7]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/invert_arith_carry ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_carry_out )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/arith_xor_7  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_internal_carry [6]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_arith [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/arith_value [7])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_muxcy_0  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [0])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_0  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/normal_count ),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [0])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/count_xor_0  (
    .CI(\BU2/N0 ),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [0]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [0])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/count_xor_1  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [0]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [1])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/count_xor_2  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [1]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [2])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/count_xor_3  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [2]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [3])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/count_xor_4  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/stack_address_carry [3]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/half_stack_address [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/next_stack_address [4])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/zero_xor  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/zero_carry ),
    .LI(\BU2/N0 ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/zero_fast_route )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_muxcy_1  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [0]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [1])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_1  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [0]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [1]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [1])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_muxcy_2  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [1]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [2])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_2  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [1]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [2]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [2])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_muxcy_3  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [2]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [3])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_3  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [2]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [3])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_muxcy_4  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [3]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [4])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_4  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [3]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [4]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [4])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_muxcy_5  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [4]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [5])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_5  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [4]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [5]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [5])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_muxcy_6  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [5]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [6])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_6  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [5]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [6]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [6])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_muxcy_7  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [6]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [7])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_7  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [6]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [7])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_muxcy_8  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [7]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [8]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [8])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_8  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [7]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [8]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [8])
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_xor_high  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value_carry [8]),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/pc_value [9]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/inc_pc_value [9])
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/parity_muxcy  (
    .CI(\BU2/N1 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/low_parity ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/parity_carry )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/parity_xor  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/parity_carry ),
    .LI(\BU2/U0/wrapper_controller/controller_kcpsm3/high_parity ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/parity )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/low_zero_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [0]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [1]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [2]),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [3]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/low_zero )
  );
  LUT4 #(
    .INIT ( 16'h0001 ))
  \BU2/U0/wrapper_controller/controller_kcpsm3/high_zero_lut  (
    .I0(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [4]),
    .I1(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [5]),
    .I2(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [6]),
    .I3(\BU2/U0/wrapper_controller/controller_kcpsm3/alu_result [7]),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/high_zero )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_kcpsm3/carry_xor  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/sel_carry [3]),
    .LI(\BU2/N0 ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/carry_fast_route )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/low_zero_muxcy  (
    .CI(\BU2/N1 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/low_zero ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/low_zero_carry )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_kcpsm3/high_zero_cymux  (
    .CI(\BU2/U0/wrapper_controller/controller_kcpsm3/low_zero_carry ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_kcpsm3/high_zero ),
    .O(\BU2/U0/wrapper_controller/controller_kcpsm3/high_zero_carry )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_10  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0258_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[6]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_10_613 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_9  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0258_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[5]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_9_612 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_8  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0258_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_8_611 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_0  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<0> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [0])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_1  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<1> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_5  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[5]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_6  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[6]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/end_ptr_7  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/controller_dbuffer/_n0291_inv ),
    .D(NlwRenamedSig_OI_monitor_txdata[7]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/end_ptr [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_2  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<2> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [2])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_3  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<3> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [3])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_4  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<4> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [4])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_5  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<5> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [5])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_6  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<6> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [6])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_7  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<7> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [7])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_8  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<8> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr [8])
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_9  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<9> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_9_591 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_10  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<10> ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr_10_590 )
  );
  FDR #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_dbuffer/burst_588 ),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/controller_dbuffer/ctl_ena_589 )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<0> ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<0>_585 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<0>_582 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<0>  (
    .CI(\BU2/N0 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<0>_585 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<0> )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<1>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<0>_582 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<1> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<1>_578 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<1>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<0>_582 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<1> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<1> )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<2>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<1>_578 ),
    .DI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<2> ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<2>_579 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<2>_575 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<2>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<1>_578 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_lut<2>_579 ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<2> )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<3>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<2>_575 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<3> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<3>_572 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<3>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<2>_575 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<3> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<3> )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<4>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<3>_572 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<4> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<4>_569 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<4>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<3>_572 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<4> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<4> )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<5>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<4>_569 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<5> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<5>_566 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<5>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<4>_569 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<5> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<5> )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<6>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<5>_566 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<6> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<6>_563 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<6>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<5>_566 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<6> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<6> )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<7>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<6>_563 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<7> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<7>_560 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<7>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<6>_563 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<7> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<7> )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<8>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<7>_560 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<8> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<8>_557 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<8>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<7>_560 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<8> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<8> )
  );
  MUXCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<9>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<8>_557 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<9> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<9>_554 )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<9>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<8>_557 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<9> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<9> )
  );
  XORCY   \BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_xor<10>  (
    .CI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_cy<9>_554 ),
    .LI(\BU2/U0/wrapper_controller/controller_dbuffer/Mmux_sta_ptr[10]_sta_ptr[10]_mux_11_OUT_rs_A<10> ),
    .O(\BU2/U0/wrapper_controller/controller_dbuffer/sta_ptr[10]_sta_ptr[10]_mux_11_OUT<10> )
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_0  (
    .C(icap_clk),
    .D(fecc_far_6[0]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [0])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_1  (
    .C(icap_clk),
    .D(fecc_far_6[1]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [1])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_2  (
    .C(icap_clk),
    .D(fecc_far_6[2]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [2])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_3  (
    .C(icap_clk),
    .D(fecc_far_6[3]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [3])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_4  (
    .C(icap_clk),
    .D(fecc_far_6[4]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [4])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_5  (
    .C(icap_clk),
    .D(fecc_far_6[5]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [5])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_6  (
    .C(icap_clk),
    .D(fecc_far_6[6]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [6])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_7  (
    .C(icap_clk),
    .D(fecc_far_6[7]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [7])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_8  (
    .C(icap_clk),
    .D(fecc_far_6[8]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [8])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_9  (
    .C(icap_clk),
    .D(fecc_far_6[9]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [9])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_10  (
    .C(icap_clk),
    .D(fecc_far_6[10]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [10])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_11  (
    .C(icap_clk),
    .D(fecc_far_6[11]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [11])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_12  (
    .C(icap_clk),
    .D(fecc_far_6[12]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [12])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_13  (
    .C(icap_clk),
    .D(fecc_far_6[13]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [13])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_14  (
    .C(icap_clk),
    .D(fecc_far_6[14]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [14])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_15  (
    .C(icap_clk),
    .D(fecc_far_6[15]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [15])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_16  (
    .C(icap_clk),
    .D(fecc_far_6[16]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [16])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_17  (
    .C(icap_clk),
    .D(fecc_far_6[17]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [17])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_18  (
    .C(icap_clk),
    .D(fecc_far_6[18]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [18])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_19  (
    .C(icap_clk),
    .D(fecc_far_6[19]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [19])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_20  (
    .C(icap_clk),
    .D(fecc_far_6[20]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [20])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_21  (
    .C(icap_clk),
    .D(fecc_far_6[21]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [21])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_22  (
    .C(icap_clk),
    .D(fecc_far_6[22]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [22])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_dly_23  (
    .C(icap_clk),
    .D(fecc_far_6[23]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_dly [23])
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/long_gap  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/word_count[6]_PWR_6_o_equal_12_o ),
    .Q(\BU2/U0/wrapper_controller/long_gap_474 )
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_0  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [0]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_1  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [1]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_2  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [2]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_3  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [3]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_4  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [4]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_5  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [5]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_6  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [6]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_7  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [7]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_8  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [8]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_9  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [9]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_10  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [10]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_11  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [11]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_12  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [12]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_13  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [13]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_14  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [14]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_15  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [15]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_16  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [16]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [16])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_17  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [17]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [17])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_18  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [18]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [18])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_19  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [19]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [19])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_20  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [20]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [20])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_21  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [21]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [21])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_22  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [22]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [22])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/fecc_far_cap_23  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/fecc_far_dly [23]),
    .Q(\BU2/U0/wrapper_controller/fecc_far_cap [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_0  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_1  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_2  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_3  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_4  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_5  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[5]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_6  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[6]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_7  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[7]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_8  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[8]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_9  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[9]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_10  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[10]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_11  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[11]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_12  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[12]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_13  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[13]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_14  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[14]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_15  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[15]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_16  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[16]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_17  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[17]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [17])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_18  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[18]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [18])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_19  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[19]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [19])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_20  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[20]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [20])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_21  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[21]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [21])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_22  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[22]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [22])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_23  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[23]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [23])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_24  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[24]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [24])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_25  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[25]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [25])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_26  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[26]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [26])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_27  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[27]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [27])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_28  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[28]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [28])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_29  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[29]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [29])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_30  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[30]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [30])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_31  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[31]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [31])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_32  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[32]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [32])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_33  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[33]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [33])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_34  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[34]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [34])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/errinj_reg_35  (
    .C(icap_clk),
    .CE(inject_strobe),
    .D(inject_address_3[35]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/errinj_reg [35])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_5  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[5]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_6  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[6]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_7  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[7]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_8  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[8]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_9  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[9]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_10  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[10]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_11  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[11]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_syn_12  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_syndrome_5[12]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_syn [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synbt_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synbit_7[0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synbt [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synbt_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synbit_7[1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synbt [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synbt_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synbit_7[2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synbt [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synbt_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synbit_7[3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synbt [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synbt_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synbit_7[4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synbt [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synwd_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synword_8[0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synwd [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synwd_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synword_8[1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synwd [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synwd_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synword_8[2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synwd [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synwd_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synword_8[3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synwd [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synwd_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synword_8[4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synwd [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synwd_5  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synword_8[5]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synwd [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_synwd_6  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_synword_8[6]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_synwd [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [0]),
    .Q(\BU2/U0/wrapper_controller/frame_total [0])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [1]),
    .Q(\BU2/U0/wrapper_controller/frame_total [1])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [2]),
    .Q(\BU2/U0/wrapper_controller/frame_total [2])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [3]),
    .Q(\BU2/U0/wrapper_controller/frame_total [3])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [4]),
    .Q(\BU2/U0/wrapper_controller/frame_total [4])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_5  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [5]),
    .Q(\BU2/U0/wrapper_controller/frame_total [5])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_6  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [6]),
    .Q(\BU2/U0/wrapper_controller/frame_total [6])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_7  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [7]),
    .Q(\BU2/U0/wrapper_controller/frame_total [7])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_8  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [8]),
    .Q(\BU2/U0/wrapper_controller/frame_total [8])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_9  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [9]),
    .Q(\BU2/U0/wrapper_controller/frame_total [9])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_10  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [10]),
    .Q(\BU2/U0/wrapper_controller/frame_total [10])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_11  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [11]),
    .Q(\BU2/U0/wrapper_controller/frame_total [11])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_12  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [12]),
    .Q(\BU2/U0/wrapper_controller/frame_total [12])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_13  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [13]),
    .Q(\BU2/U0/wrapper_controller/frame_total [13])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_14  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [14]),
    .Q(\BU2/U0/wrapper_controller/frame_total [14])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_15  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [15]),
    .Q(\BU2/U0/wrapper_controller/frame_total [15])
  );
  FDE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_total_16  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/long_gap_474 ),
    .D(\BU2/U0/wrapper_controller/frame_count [16]),
    .Q(\BU2/U0/wrapper_controller/frame_total [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_5  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [5]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_6  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [6]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_7  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [7]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_8  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [8]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_9  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [9]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_10  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [10]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_11  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [11]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_12  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [12]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_13  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [13]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_14  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [14]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_15  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [15]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_efcr_16  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(\BU2/U0/wrapper_controller/frame_count [16]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_efcr [16])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/rdbk_sbe  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/first_ecc_event ),
    .D(fecc_eccerrsingle),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/rdbk_sbe_250 )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_14  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[6]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [14])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_15  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[7]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [15])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_11  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [11])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_13  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[5]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [13])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_12  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [12])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_10  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [10])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_9  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [9])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_6  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[6]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_8  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_3_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [8])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_7  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[7]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [7])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_5  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[5]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_locate_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_2_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(\BU2/U0/wrapper_controller/frame_locate [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/status_reg_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[0]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(NlwRenamedSig_OI_status_initialization)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/status_reg_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[1]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(NlwRenamedSig_OI_status_observation)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/status_reg_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[2]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(NlwRenamedSig_OI_status_correction)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/status_reg_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[3]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(NlwRenamedSig_OI_status_classification)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/status_reg_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[4]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(NlwRenamedSig_OI_status_injection)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/status_reg_5  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[5]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(NlwRenamedSig_OI_status_uncorrectable)
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/status_reg_6  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/ws_pid[4]_AND_1_o ),
    .D(NlwRenamedSig_OI_monitor_txdata[6]),
    .R(\BU2/U0/wrapper_controller/sync_init ),
    .Q(NlwRenamedSig_OI_status_critical)
  );
  FD #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/frame_flm  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/frame_count[16]_frame_locate[16]_equal_28_o ),
    .Q(\BU2/U0/wrapper_controller/frame_flm_367 )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/controller_instrom/init_sync1  (
    .C(icap_clk),
    .D(\BU2/U0/wrapper_controller/controller_instrom/temp_init ),
    .PRE(\BU2/N0 ),
    .Q(\BU2/U0/wrapper_controller/sync_init )
  );
  FDP #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/controller_instrom/init_sync0  (
    .C(icap_clk),
    .D(\BU2/N0 ),
    .PRE(\BU2/N0 ),
    .Q(\BU2/U0/wrapper_controller/controller_instrom/temp_init )
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/word_count_0  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/word_count<7>_inv ),
    .D(\BU2/U0/wrapper_controller/Result<0>1 ),
    .R(NlwRenamedSignal_fecc_syndromevalid),
    .Q(\BU2/U0/wrapper_controller/word_count [0])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/word_count_1  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/word_count<7>_inv ),
    .D(\BU2/U0/wrapper_controller/Result<1>1 ),
    .R(NlwRenamedSignal_fecc_syndromevalid),
    .Q(\BU2/U0/wrapper_controller/word_count [1])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/word_count_2  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/word_count<7>_inv ),
    .D(\BU2/U0/wrapper_controller/Result<2>1 ),
    .R(NlwRenamedSignal_fecc_syndromevalid),
    .Q(\BU2/U0/wrapper_controller/word_count [2])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/word_count_3  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/word_count<7>_inv ),
    .D(\BU2/U0/wrapper_controller/Result<3>1 ),
    .R(NlwRenamedSignal_fecc_syndromevalid),
    .Q(\BU2/U0/wrapper_controller/word_count [3])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/word_count_4  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/word_count<7>_inv ),
    .D(\BU2/U0/wrapper_controller/Result<4>1 ),
    .R(NlwRenamedSignal_fecc_syndromevalid),
    .Q(\BU2/U0/wrapper_controller/word_count [4])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/word_count_5  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/word_count<7>_inv ),
    .D(\BU2/U0/wrapper_controller/Result<5>1 ),
    .R(NlwRenamedSignal_fecc_syndromevalid),
    .Q(\BU2/U0/wrapper_controller/word_count [5])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/word_count_6  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/word_count<7>_inv ),
    .D(\BU2/U0/wrapper_controller/Result<6>1 ),
    .R(NlwRenamedSignal_fecc_syndromevalid),
    .Q(\BU2/U0/wrapper_controller/word_count [6])
  );
  FDRE #(
    .INIT ( 1'b0 ))
  \BU2/U0/wrapper_controller/word_count_7  (
    .C(icap_clk),
    .CE(\BU2/U0/wrapper_controller/word_count<7>_inv ),
    .D(\BU2/U0/wrapper_controller/Result<7>1 ),
    .R(NlwRenamedSignal_fecc_syndromevalid),
    .Q(\BU2/U0/wrapper_controller/word_count [7])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_0  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [0]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [0])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_1  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [1]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [1])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_2  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [2]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [2])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_3  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [3]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [3])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_4  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [4]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [4])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_5  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [5]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [5])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_6  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [6]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [6])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_7  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [7]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [7])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_8  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [8]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [8])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_9  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [9]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [9])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_10  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [10]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [10])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_11  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [11]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [11])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_12  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [12]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [12])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_13  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [13]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [13])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_14  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [14]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [14])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_15  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [15]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [15])
  );
  FDSE #(
    .INIT ( 1'b1 ))
  \BU2/U0/wrapper_controller/frame_count_16  (
    .C(icap_clk),
    .CE(NlwRenamedSignal_fecc_syndromevalid),
    .D(\BU2/U0/wrapper_controller/Result [16]),
    .S(\BU2/U0/wrapper_controller/long_gap_474 ),
    .Q(\BU2/U0/wrapper_controller/frame_count [16])
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<0>  (
    .I0(\BU2/U0/wrapper_controller/frame_count [0]),
    .I1(\BU2/U0/wrapper_controller/frame_locate [0]),
    .I2(\BU2/U0/wrapper_controller/frame_count [1]),
    .I3(\BU2/U0/wrapper_controller/frame_locate [1]),
    .I4(\BU2/U0/wrapper_controller/frame_count [2]),
    .I5(\BU2/U0/wrapper_controller/frame_locate [2]),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<0>_470 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<0>  (
    .CI(\BU2/N1 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<0>_470 ),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<0>_465 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<1>  (
    .I0(\BU2/U0/wrapper_controller/frame_count [3]),
    .I1(\BU2/U0/wrapper_controller/frame_locate [3]),
    .I2(\BU2/U0/wrapper_controller/frame_count [4]),
    .I3(\BU2/U0/wrapper_controller/frame_locate [4]),
    .I4(\BU2/U0/wrapper_controller/frame_count [5]),
    .I5(\BU2/U0/wrapper_controller/frame_locate [5]),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<1>_466 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<1>  (
    .CI(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<0>_465 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<1>_466 ),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<1>_460 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<2>  (
    .I0(\BU2/U0/wrapper_controller/frame_count [6]),
    .I1(\BU2/U0/wrapper_controller/frame_locate [6]),
    .I2(\BU2/U0/wrapper_controller/frame_count [7]),
    .I3(\BU2/U0/wrapper_controller/frame_locate [7]),
    .I4(\BU2/U0/wrapper_controller/frame_count [8]),
    .I5(\BU2/U0/wrapper_controller/frame_locate [8]),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<2>_461 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<2>  (
    .CI(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<1>_460 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<2>_461 ),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<2>_455 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<3>  (
    .I0(\BU2/U0/wrapper_controller/frame_count [9]),
    .I1(\BU2/U0/wrapper_controller/frame_locate [9]),
    .I2(\BU2/U0/wrapper_controller/frame_count [10]),
    .I3(\BU2/U0/wrapper_controller/frame_locate [10]),
    .I4(\BU2/U0/wrapper_controller/frame_count [11]),
    .I5(\BU2/U0/wrapper_controller/frame_locate [11]),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<3>_456 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<3>  (
    .CI(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<2>_455 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<3>_456 ),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<3>_450 )
  );
  LUT6 #(
    .INIT ( 64'h9009000000009009 ))
  \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<4>  (
    .I0(\BU2/U0/wrapper_controller/frame_count [12]),
    .I1(\BU2/U0/wrapper_controller/frame_locate [12]),
    .I2(\BU2/U0/wrapper_controller/frame_count [13]),
    .I3(\BU2/U0/wrapper_controller/frame_locate [13]),
    .I4(\BU2/U0/wrapper_controller/frame_count [14]),
    .I5(\BU2/U0/wrapper_controller/frame_locate [14]),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<4>_451 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<4>  (
    .CI(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<3>_450 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<4>_451 ),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<4>_445 )
  );
  LUT4 #(
    .INIT ( 16'h9009 ))
  \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<5>  (
    .I0(\BU2/U0/wrapper_controller/frame_count [15]),
    .I1(\BU2/U0/wrapper_controller/frame_locate [15]),
    .I2(\BU2/U0/wrapper_controller/frame_count [16]),
    .I3(\BU2/U0/wrapper_controller/frame_locate [16]),
    .O(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<5>_446 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<5>  (
    .CI(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_cy<4>_445 ),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcompar_frame_count[16]_frame_locate[16]_equal_28_o_lut<5>_446 ),
    .O(\BU2/U0/wrapper_controller/frame_count[16]_frame_locate[16]_equal_28_o )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_lut [0]),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [0])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<0>  (
    .CI(\BU2/N0 ),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_lut [0]),
    .O(\BU2/U0/wrapper_controller/Result [0])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<1>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [0]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<1>_rt_441 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [1])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<1>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [0]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<1>_rt_441 ),
    .O(\BU2/U0/wrapper_controller/Result [1])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<2>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [1]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<2>_rt_438 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [2])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<2>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [1]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<2>_rt_438 ),
    .O(\BU2/U0/wrapper_controller/Result [2])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<3>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [2]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<3>_rt_435 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [3])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<3>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [2]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<3>_rt_435 ),
    .O(\BU2/U0/wrapper_controller/Result [3])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<4>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [3]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<4>_rt_432 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [4])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<4>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [3]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<4>_rt_432 ),
    .O(\BU2/U0/wrapper_controller/Result [4])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<5>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [4]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<5>_rt_429 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [5])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<5>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [4]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<5>_rt_429 ),
    .O(\BU2/U0/wrapper_controller/Result [5])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<6>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [5]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<6>_rt_426 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [6])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<6>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [5]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<6>_rt_426 ),
    .O(\BU2/U0/wrapper_controller/Result [6])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<7>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [6]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<7>_rt_423 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [7])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<7>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [6]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<7>_rt_423 ),
    .O(\BU2/U0/wrapper_controller/Result [7])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<8>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [7]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<8>_rt_420 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [8])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<8>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [7]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<8>_rt_420 ),
    .O(\BU2/U0/wrapper_controller/Result [8])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<9>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [8]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<9>_rt_417 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [9])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<9>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [8]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<9>_rt_417 ),
    .O(\BU2/U0/wrapper_controller/Result [9])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<10>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [9]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<10>_rt_414 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [10])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<10>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [9]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<10>_rt_414 ),
    .O(\BU2/U0/wrapper_controller/Result [10])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<11>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [10]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<11>_rt_411 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [11])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<11>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [10]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<11>_rt_411 ),
    .O(\BU2/U0/wrapper_controller/Result [11])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<12>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [11]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<12>_rt_408 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [12])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<12>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [11]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<12>_rt_408 ),
    .O(\BU2/U0/wrapper_controller/Result [12])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<13>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [12]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<13>_rt_405 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [13])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<13>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [12]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<13>_rt_405 ),
    .O(\BU2/U0/wrapper_controller/Result [13])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<14>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [13]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<14>_rt_402 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [14])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<14>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [13]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<14>_rt_402 ),
    .O(\BU2/U0/wrapper_controller/Result [14])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_frame_count_cy<15>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [14]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<15>_rt_399 ),
    .O(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [15])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<15>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [14]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy<15>_rt_399 ),
    .O(\BU2/U0/wrapper_controller/Result [15])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_frame_count_xor<16>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_frame_count_cy [15]),
    .LI(\BU2/U0/wrapper_controller/Mcount_frame_count_xor<16>_rt_396 ),
    .O(\BU2/U0/wrapper_controller/Result [16])
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_word_count_cy<0>  (
    .CI(\BU2/N0 ),
    .DI(\BU2/N1 ),
    .S(\BU2/U0/wrapper_controller/Mcount_word_count_lut [0]),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy [0])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_word_count_xor<0>  (
    .CI(\BU2/N0 ),
    .LI(\BU2/U0/wrapper_controller/Mcount_word_count_lut [0]),
    .O(\BU2/U0/wrapper_controller/Result<0>1 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_word_count_cy<1>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [0]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_word_count_cy<1>_rt_391 ),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy [1])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_word_count_xor<1>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [0]),
    .LI(\BU2/U0/wrapper_controller/Mcount_word_count_cy<1>_rt_391 ),
    .O(\BU2/U0/wrapper_controller/Result<1>1 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_word_count_cy<2>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [1]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_word_count_cy<2>_rt_388 ),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy [2])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_word_count_xor<2>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [1]),
    .LI(\BU2/U0/wrapper_controller/Mcount_word_count_cy<2>_rt_388 ),
    .O(\BU2/U0/wrapper_controller/Result<2>1 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_word_count_cy<3>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [2]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_word_count_cy<3>_rt_385 ),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy [3])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_word_count_xor<3>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [2]),
    .LI(\BU2/U0/wrapper_controller/Mcount_word_count_cy<3>_rt_385 ),
    .O(\BU2/U0/wrapper_controller/Result<3>1 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_word_count_cy<4>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [3]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_word_count_cy<4>_rt_382 ),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy [4])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_word_count_xor<4>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [3]),
    .LI(\BU2/U0/wrapper_controller/Mcount_word_count_cy<4>_rt_382 ),
    .O(\BU2/U0/wrapper_controller/Result<4>1 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_word_count_cy<5>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [4]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_word_count_cy<5>_rt_379 ),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy [5])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_word_count_xor<5>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [4]),
    .LI(\BU2/U0/wrapper_controller/Mcount_word_count_cy<5>_rt_379 ),
    .O(\BU2/U0/wrapper_controller/Result<5>1 )
  );
  MUXCY   \BU2/U0/wrapper_controller/Mcount_word_count_cy<6>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [5]),
    .DI(\BU2/N0 ),
    .S(\BU2/U0/wrapper_controller/Mcount_word_count_cy<6>_rt_376 ),
    .O(\BU2/U0/wrapper_controller/Mcount_word_count_cy [6])
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_word_count_xor<6>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [5]),
    .LI(\BU2/U0/wrapper_controller/Mcount_word_count_cy<6>_rt_376 ),
    .O(\BU2/U0/wrapper_controller/Result<6>1 )
  );
  XORCY   \BU2/U0/wrapper_controller/Mcount_word_count_xor<7>  (
    .CI(\BU2/U0/wrapper_controller/Mcount_word_count_cy [6]),
    .LI(\BU2/U0/wrapper_controller/Mcount_word_count_xor<7>_rt_373 ),
    .O(\BU2/U0/wrapper_controller/Result<7>1 )
  );
  LUT6 #(
    .INIT ( 64'h00FF0F0F33335555 ))
  \BU2/U0/wrapper_controller/mux_10  (
    .I0(monitor_txfull),
    .I1(N0),
    .I2(monitor_rxdata_2[0]),
    .I3(\BU2/U0/wrapper_controller/errinj_reg [0]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux_10_371 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F00FF33335555 ))
  \BU2/U0/wrapper_controller/mux_91  (
    .I0(\BU2/U0/wrapper_controller/frame_total [0]),
    .I1(\BU2/U0/wrapper_controller/frame_total [16]),
    .I2(\BU2/U0/wrapper_controller/frame_flm_367 ),
    .I3(\BU2/U0/wrapper_controller/frame_total [8]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux_91_369 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F00FF33335555 ))
  \BU2/U0/wrapper_controller/mux_82  (
    .I0(NlwRenamedSig_OI_status_initialization),
    .I1(\BU2/U0/wrapper_controller/frame_count [8]),
    .I2(\BU2/U0/wrapper_controller/frame_count [16]),
    .I3(\BU2/U0/wrapper_controller/frame_count [0]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux_82_364 )
  );
  LUT4 #(
    .INIT ( 16'hF3F5 ))
  \BU2/U0/wrapper_controller/mux_9  (
    .I0(\BU2/U0/wrapper_controller/rdbk_syn [8]),
    .I1(\BU2/U0/wrapper_controller/rdbk_efcr [16]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux_9_360 )
  );
  LUT6 #(
    .INIT ( 64'h00FF0F0F33335555 ))
  \BU2/U0/wrapper_controller/mux_8  (
    .I0(\BU2/U0/wrapper_controller/rdbk_synbt [0]),
    .I1(\BU2/U0/wrapper_controller/rdbk_efcr [8]),
    .I2(\BU2/U0/wrapper_controller/rdbk_efcr [0]),
    .I3(\BU2/U0/wrapper_controller/rdbk_fecc_far [0]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux_8_357 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F00FF33335555 ))
  \BU2/U0/wrapper_controller/mux_7  (
    .I0(\BU2/U0/wrapper_controller/errinj_reg [8]),
    .I1(\BU2/U0/wrapper_controller/errinj_reg [24]),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [32]),
    .I3(\BU2/U0/wrapper_controller/errinj_reg [16]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux_7_352 )
  );
  MUXF7   \BU2/U0/wrapper_controller/mux1_2_f7  (
    .I0(\BU2/U0/wrapper_controller/mux1_4_346 ),
    .I1(\BU2/U0/wrapper_controller/mux1_3_336 ),
    .S(\BU2/U0/wrapper_controller/port_id [4]),
    .O(\BU2/U0/wrapper_controller/in_port [1])
  );
  LUT6 #(
    .INIT ( 64'hFE76DC54BA329810 ))
  \BU2/U0/wrapper_controller/mux1_4  (
    .I0(\BU2/U0/wrapper_controller/port_id [3]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux1_82_339 ),
    .I3(\BU2/U0/wrapper_controller/mux1_10_344 ),
    .I4(\BU2/U0/wrapper_controller/dbuf_din [1]),
    .I5(\BU2/U0/wrapper_controller/mux1_91_342 ),
    .O(\BU2/U0/wrapper_controller/mux1_4_346 )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \BU2/U0/wrapper_controller/mux1_10  (
    .I0(monitor_rxempty),
    .I1(monitor_rxdata_2[1]),
    .I2(N0),
    .I3(\BU2/U0/wrapper_controller/errinj_reg [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux1_10_344 )
  );
  LUT4 #(
    .INIT ( 16'h0A0C ))
  \BU2/U0/wrapper_controller/mux1_91  (
    .I0(\BU2/U0/wrapper_controller/frame_total [9]),
    .I1(\BU2/U0/wrapper_controller/frame_total [1]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux1_91_342 )
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \BU2/U0/wrapper_controller/mux1_82  (
    .I0(NlwRenamedSig_OI_status_observation),
    .I1(\BU2/U0/wrapper_controller/frame_count [1]),
    .I2(\BU2/U0/wrapper_controller/frame_count [9]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux1_82_339 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \BU2/U0/wrapper_controller/mux1_3  (
    .I0(\BU2/U0/wrapper_controller/port_id [3]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux1_9_334 ),
    .I3(\BU2/U0/wrapper_controller/mux1_7_327 ),
    .I4(\BU2/U0/wrapper_controller/mux1_8_332 ),
    .I5(\BU2/U0/wrapper_controller/mux1_81_335 ),
    .O(\BU2/U0/wrapper_controller/mux1_3_336 )
  );
  LUT3 #(
    .INIT ( 8'hF2 ))
  \BU2/U0/wrapper_controller/mux1_9  (
    .I0(\BU2/U0/wrapper_controller/rdbk_syn [9]),
    .I1(\BU2/U0/wrapper_controller/port_id [0]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .O(\BU2/U0/wrapper_controller/mux1_9_334 )
  );
  LUT6 #(
    .INIT ( 64'hFF00CCCCF0F0AAAA ))
  \BU2/U0/wrapper_controller/mux1_8  (
    .I0(\BU2/U0/wrapper_controller/rdbk_synbt [1]),
    .I1(\BU2/U0/wrapper_controller/rdbk_efcr [1]),
    .I2(\BU2/U0/wrapper_controller/rdbk_efcr [9]),
    .I3(\BU2/U0/wrapper_controller/rdbk_fecc_far [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux1_8_332 )
  );
  LUT6 #(
    .INIT ( 64'hF0F0CCCCFF00AAAA ))
  \BU2/U0/wrapper_controller/mux1_7  (
    .I0(\BU2/U0/wrapper_controller/errinj_reg [9]),
    .I1(\BU2/U0/wrapper_controller/errinj_reg [17]),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [33]),
    .I3(\BU2/U0/wrapper_controller/errinj_reg [25]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux1_7_327 )
  );
  LUT6 #(
    .INIT ( 64'h00FF0F0F33335555 ))
  \BU2/U0/wrapper_controller/mux4_10  (
    .I0(N0),
    .I1(N0),
    .I2(monitor_rxdata_2[4]),
    .I3(\BU2/U0/wrapper_controller/errinj_reg [4]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux4_10_322 )
  );
  LUT5 #(
    .INIT ( 32'h0F55FF33 ))
  \BU2/U0/wrapper_controller/mux4_91  (
    .I0(\BU2/U0/wrapper_controller/frame_total [12]),
    .I1(\BU2/U0/wrapper_controller/frame_total [4]),
    .I2(\BU2/U0/wrapper_controller/frame_eos_319 ),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux4_91_320 )
  );
  LUT5 #(
    .INIT ( 32'hFF33550F ))
  \BU2/U0/wrapper_controller/mux4_82  (
    .I0(\BU2/U0/wrapper_controller/frame_count [12]),
    .I1(\BU2/U0/wrapper_controller/frame_count [4]),
    .I2(NlwRenamedSig_OI_status_injection),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux4_82_316 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \BU2/U0/wrapper_controller/mux4_9  (
    .I0(\BU2/U0/wrapper_controller/rdbk_syn [12]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux4_9_313 )
  );
  LUT6 #(
    .INIT ( 64'h00FF0F0F33335555 ))
  \BU2/U0/wrapper_controller/mux4_8  (
    .I0(\BU2/U0/wrapper_controller/rdbk_synbt [4]),
    .I1(\BU2/U0/wrapper_controller/rdbk_efcr [12]),
    .I2(\BU2/U0/wrapper_controller/rdbk_efcr [4]),
    .I3(\BU2/U0/wrapper_controller/rdbk_fecc_far [4]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux4_8_311 )
  );
  LUT5 #(
    .INIT ( 32'hFF0F3355 ))
  \BU2/U0/wrapper_controller/mux4_7  (
    .I0(\BU2/U0/wrapper_controller/errinj_reg [12]),
    .I1(\BU2/U0/wrapper_controller/errinj_reg [28]),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [20]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux4_7_306 )
  );
  LUT5 #(
    .INIT ( 32'h0F5533FF ))
  \BU2/U0/wrapper_controller/mux2_10  (
    .I0(monitor_rxdata_2[2]),
    .I1(N0),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [2]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux2_10_302 )
  );
  LUT4 #(
    .INIT ( 16'hF3F5 ))
  \BU2/U0/wrapper_controller/mux2_91  (
    .I0(\BU2/U0/wrapper_controller/frame_total [2]),
    .I1(\BU2/U0/wrapper_controller/frame_total [10]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux2_91_300 )
  );
  LUT5 #(
    .INIT ( 32'hFF0F3355 ))
  \BU2/U0/wrapper_controller/mux2_82  (
    .I0(NlwRenamedSig_OI_status_correction),
    .I1(\BU2/U0/wrapper_controller/frame_count [10]),
    .I2(\BU2/U0/wrapper_controller/frame_count [2]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux2_82_297 )
  );
  LUT3 #(
    .INIT ( 8'hFD ))
  \BU2/U0/wrapper_controller/mux2_9  (
    .I0(\BU2/U0/wrapper_controller/rdbk_syn [10]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux2_9_294 )
  );
  LUT6 #(
    .INIT ( 64'h00FF0F0F33335555 ))
  \BU2/U0/wrapper_controller/mux2_8  (
    .I0(\BU2/U0/wrapper_controller/rdbk_synbt [2]),
    .I1(\BU2/U0/wrapper_controller/rdbk_efcr [10]),
    .I2(\BU2/U0/wrapper_controller/rdbk_efcr [2]),
    .I3(\BU2/U0/wrapper_controller/rdbk_fecc_far [2]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux2_8_292 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F00FF33335555 ))
  \BU2/U0/wrapper_controller/mux2_7  (
    .I0(\BU2/U0/wrapper_controller/errinj_reg [10]),
    .I1(\BU2/U0/wrapper_controller/errinj_reg [26]),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [34]),
    .I3(\BU2/U0/wrapper_controller/errinj_reg [18]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux2_7_287 )
  );
  LUT5 #(
    .INIT ( 32'h0F5533FF ))
  \BU2/U0/wrapper_controller/mux3_10  (
    .I0(monitor_rxdata_2[3]),
    .I1(N0),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [3]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux3_10_282 )
  );
  LUT4 #(
    .INIT ( 16'hF3F5 ))
  \BU2/U0/wrapper_controller/mux3_91  (
    .I0(\BU2/U0/wrapper_controller/frame_total [3]),
    .I1(\BU2/U0/wrapper_controller/frame_total [11]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux3_91_280 )
  );
  LUT5 #(
    .INIT ( 32'hFF0F3355 ))
  \BU2/U0/wrapper_controller/mux3_82  (
    .I0(NlwRenamedSig_OI_status_classification),
    .I1(\BU2/U0/wrapper_controller/frame_count [11]),
    .I2(\BU2/U0/wrapper_controller/frame_count [3]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux3_82_277 )
  );
  LUT3 #(
    .INIT ( 8'hF1 ))
  \BU2/U0/wrapper_controller/mux3_9  (
    .I0(\BU2/U0/wrapper_controller/rdbk_syn [11]),
    .I1(\BU2/U0/wrapper_controller/port_id [1]),
    .I2(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux3_9_274 )
  );
  LUT6 #(
    .INIT ( 64'h00FF0F0F33335555 ))
  \BU2/U0/wrapper_controller/mux3_8  (
    .I0(\BU2/U0/wrapper_controller/rdbk_synbt [3]),
    .I1(\BU2/U0/wrapper_controller/rdbk_efcr [11]),
    .I2(\BU2/U0/wrapper_controller/rdbk_efcr [3]),
    .I3(\BU2/U0/wrapper_controller/rdbk_fecc_far [3]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux3_8_272 )
  );
  LUT6 #(
    .INIT ( 64'h0F0F00FF33335555 ))
  \BU2/U0/wrapper_controller/mux3_7  (
    .I0(\BU2/U0/wrapper_controller/errinj_reg [11]),
    .I1(\BU2/U0/wrapper_controller/errinj_reg [27]),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [35]),
    .I3(\BU2/U0/wrapper_controller/errinj_reg [19]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux3_7_267 )
  );
  LUT6 #(
    .INIT ( 64'h00FF0F0F33335555 ))
  \BU2/U0/wrapper_controller/mux5_10  (
    .I0(N1),
    .I1(N0),
    .I2(monitor_rxdata_2[5]),
    .I3(\BU2/U0/wrapper_controller/errinj_reg [5]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux5_10_262 )
  );
  LUT4 #(
    .INIT ( 16'hF3F5 ))
  \BU2/U0/wrapper_controller/mux5_9  (
    .I0(\BU2/U0/wrapper_controller/frame_total [5]),
    .I1(\BU2/U0/wrapper_controller/frame_total [13]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux5_9_260 )
  );
  LUT5 #(
    .INIT ( 32'hFF0F3355 ))
  \BU2/U0/wrapper_controller/mux5_82  (
    .I0(NlwRenamedSig_OI_status_uncorrectable),
    .I1(\BU2/U0/wrapper_controller/frame_count [13]),
    .I2(\BU2/U0/wrapper_controller/frame_count [5]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux5_82_257 )
  );
  LUT6 #(
    .INIT ( 64'h00FF0F0F33335555 ))
  \BU2/U0/wrapper_controller/mux5_8  (
    .I0(\BU2/U0/wrapper_controller/rdbk_sbe_250 ),
    .I1(\BU2/U0/wrapper_controller/rdbk_efcr [13]),
    .I2(\BU2/U0/wrapper_controller/rdbk_efcr [5]),
    .I3(\BU2/U0/wrapper_controller/rdbk_fecc_far [5]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux5_8_254 )
  );
  LUT5 #(
    .INIT ( 32'hFF0F3355 ))
  \BU2/U0/wrapper_controller/mux5_7  (
    .I0(\BU2/U0/wrapper_controller/errinj_reg [13]),
    .I1(\BU2/U0/wrapper_controller/errinj_reg [29]),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [21]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux5_7_249 )
  );
  MUXF7   \BU2/U0/wrapper_controller/mux6_2_f7  (
    .I0(\BU2/U0/wrapper_controller/mux6_4_243 ),
    .I1(\BU2/U0/wrapper_controller/mux6_3_233 ),
    .S(\BU2/U0/wrapper_controller/port_id [4]),
    .O(\BU2/U0/wrapper_controller/in_port [6])
  );
  LUT6 #(
    .INIT ( 64'hF7D5B391E6C4A280 ))
  \BU2/U0/wrapper_controller/mux6_4  (
    .I0(\BU2/U0/wrapper_controller/port_id [3]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux6_10_241 ),
    .I3(\BU2/U0/wrapper_controller/dbuf_din [6]),
    .I4(\BU2/U0/wrapper_controller/mux6_91_239 ),
    .I5(\BU2/U0/wrapper_controller/mux6_82_236 ),
    .O(\BU2/U0/wrapper_controller/mux6_4_243 )
  );
  LUT5 #(
    .INIT ( 32'hF0AACC00 ))
  \BU2/U0/wrapper_controller/mux6_10  (
    .I0(monitor_rxdata_2[6]),
    .I1(N0),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [6]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux6_10_241 )
  );
  LUT4 #(
    .INIT ( 16'h0A0C ))
  \BU2/U0/wrapper_controller/mux6_91  (
    .I0(\BU2/U0/wrapper_controller/frame_total [14]),
    .I1(\BU2/U0/wrapper_controller/frame_total [6]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux6_91_239 )
  );
  LUT5 #(
    .INIT ( 32'h00CCF0AA ))
  \BU2/U0/wrapper_controller/mux6_82  (
    .I0(NlwRenamedSig_OI_status_critical),
    .I1(\BU2/U0/wrapper_controller/frame_count [6]),
    .I2(\BU2/U0/wrapper_controller/frame_count [14]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux6_82_236 )
  );
  LUT6 #(
    .INIT ( 64'hF7E6B3A2D5C49180 ))
  \BU2/U0/wrapper_controller/mux6_3  (
    .I0(\BU2/U0/wrapper_controller/port_id [3]),
    .I1(\BU2/U0/wrapper_controller/port_id [2]),
    .I2(\BU2/U0/wrapper_controller/mux6_9_229 ),
    .I3(\BU2/U0/wrapper_controller/mux6_7_223 ),
    .I4(\BU2/U0/wrapper_controller/mux6_8_228 ),
    .I5(\BU2/U0/wrapper_controller/mux6_81_232 ),
    .O(\BU2/U0/wrapper_controller/mux6_3_233 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \BU2/U0/wrapper_controller/mux6_9  (
    .I0(icap_grant),
    .I1(\BU2/U0/wrapper_controller/port_id [0]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .O(\BU2/U0/wrapper_controller/mux6_9_229 )
  );
  LUT6 #(
    .INIT ( 64'hFF00AAAACCCCF0F0 ))
  \BU2/U0/wrapper_controller/mux6_8  (
    .I0(\BU2/U0/wrapper_controller/rdbk_efcr [6]),
    .I1(\BU2/U0/wrapper_controller/rdbk_efcr [14]),
    .I2(\BU2/U0/wrapper_controller/rdbk_ecc_226 ),
    .I3(\BU2/U0/wrapper_controller/rdbk_fecc_far [6]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux6_8_228 )
  );
  LUT5 #(
    .INIT ( 32'h00AACCF0 ))
  \BU2/U0/wrapper_controller/mux6_7  (
    .I0(\BU2/U0/wrapper_controller/errinj_reg [22]),
    .I1(\BU2/U0/wrapper_controller/errinj_reg [30]),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [14]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux6_7_223 )
  );
  LUT5 #(
    .INIT ( 32'h0F5533FF ))
  \BU2/U0/wrapper_controller/mux7_10  (
    .I0(monitor_rxdata_2[7]),
    .I1(N0),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [7]),
    .I3(\BU2/U0/wrapper_controller/port_id [1]),
    .I4(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux7_10_219 )
  );
  LUT4 #(
    .INIT ( 16'hF3F5 ))
  \BU2/U0/wrapper_controller/mux7_9  (
    .I0(\BU2/U0/wrapper_controller/frame_total [7]),
    .I1(\BU2/U0/wrapper_controller/frame_total [15]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux7_9_217 )
  );
  LUT4 #(
    .INIT ( 16'hF35F ))
  \BU2/U0/wrapper_controller/mux7_81  (
    .I0(\BU2/U0/wrapper_controller/frame_count [15]),
    .I1(\BU2/U0/wrapper_controller/frame_count [7]),
    .I2(\BU2/U0/wrapper_controller/port_id [1]),
    .I3(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux7_81_214 )
  );
  LUT6 #(
    .INIT ( 64'h00FF0F0F33335555 ))
  \BU2/U0/wrapper_controller/mux7_8  (
    .I0(\BU2/U0/wrapper_controller/errinj_reg [15]),
    .I1(\BU2/U0/wrapper_controller/errinj_reg [31]),
    .I2(\BU2/U0/wrapper_controller/errinj_reg [23]),
    .I3(\BU2/U0/wrapper_controller/errinj_ego_210 ),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux7_8_211 )
  );
  LUT6 #(
    .INIT ( 64'h00FF333355550F0F ))
  \BU2/U0/wrapper_controller/mux7_7  (
    .I0(\BU2/U0/wrapper_controller/rdbk_efcr [15]),
    .I1(\BU2/U0/wrapper_controller/rdbk_efcr [7]),
    .I2(\BU2/U0/wrapper_controller/rdbk_crc_202 ),
    .I3(\BU2/U0/wrapper_controller/rdbk_fecc_far [7]),
    .I4(\BU2/U0/wrapper_controller/port_id [1]),
    .I5(\BU2/U0/wrapper_controller/port_id [0]),
    .O(\BU2/U0/wrapper_controller/mux7_7_206 )
  );
  VCC   \BU2/XST_VCC  (
    .P(\BU2/N1 )
  );
  GND   \BU2/XST_GND  (
    .G(\BU2/N0 )
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
