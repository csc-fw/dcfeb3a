--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: sem_core.vhd
-- /___/   /\     Timestamp: Wed Aug 21 12:31:02 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -w -sim -ofmt vhdl ./tmp/_cg\sem_core.ngc ./tmp/_cg\sem_core.vhd 
-- Device	: 6vlx130tff1156-1
-- Input file	: ./tmp/_cg/sem_core.ngc
-- Output file	: ./tmp/_cg/sem_core.vhd
-- # of Entities	: 1
-- Design Name	: sem_core
-- Xilinx	: C:\Xilinx\12.4\ISE_DS\ISE\
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------


-- synthesis translate_off
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
use UNISIM.VPKG.ALL;

entity sem_core is
  port (
    icap_rdwrb : out STD_LOGIC; 
    status_correction : out STD_LOGIC; 
    icap_request : out STD_LOGIC; 
    fecc_syndromevalid : in STD_LOGIC := 'X'; 
    icap_busy : in STD_LOGIC := 'X'; 
    status_classification : out STD_LOGIC; 
    status_injection : out STD_LOGIC; 
    fecc_crcerr : in STD_LOGIC := 'X'; 
    fecc_eccerrsingle : in STD_LOGIC := 'X'; 
    status_uncorrectable : out STD_LOGIC; 
    monitor_txwrite : out STD_LOGIC; 
    inject_strobe : in STD_LOGIC := 'X'; 
    status_critical : out STD_LOGIC; 
    status_observation : out STD_LOGIC; 
    icap_grant : in STD_LOGIC := 'X'; 
    icap_clk : in STD_LOGIC := 'X'; 
    fecc_eccerr : in STD_LOGIC := 'X'; 
    status_heartbeat : out STD_LOGIC; 
    monitor_rxread : out STD_LOGIC; 
    status_initialization : out STD_LOGIC; 
    monitor_txfull : in STD_LOGIC := 'X'; 
    monitor_rxempty : in STD_LOGIC := 'X'; 
    icap_csb : out STD_LOGIC; 
    icap_i : out STD_LOGIC_VECTOR ( 31 downto 0 ); 
    icap_o : in STD_LOGIC_VECTOR ( 31 downto 0 ); 
    fecc_syndrome : in STD_LOGIC_VECTOR ( 12 downto 0 ); 
    fecc_synbit : in STD_LOGIC_VECTOR ( 4 downto 0 ); 
    monitor_rxdata : in STD_LOGIC_VECTOR ( 7 downto 0 ); 
    inject_address : in STD_LOGIC_VECTOR ( 35 downto 0 ); 
    fecc_far : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
    fecc_synword : in STD_LOGIC_VECTOR ( 6 downto 0 ); 
    monitor_txdata : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end sem_core;

architecture STRUCTURE of sem_core is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal NlwRenamedSig_OI_status_initialization : STD_LOGIC; 
  signal NlwRenamedSig_OI_status_observation : STD_LOGIC; 
  signal NlwRenamedSig_OI_status_correction : STD_LOGIC; 
  signal NlwRenamedSig_OI_status_classification : STD_LOGIC; 
  signal NlwRenamedSig_OI_status_injection : STD_LOGIC; 
  signal NlwRenamedSig_OI_status_critical : STD_LOGIC; 
  signal NlwRenamedSig_OI_status_uncorrectable : STD_LOGIC; 
  signal NlwRenamedSig_OI_icap_request : STD_LOGIC; 
  signal NlwRenamedSignal_fecc_syndromevalid : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux_812_1098 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux_811_1097 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux4_812_1096 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux4_811_1095 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux2_812_1094 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux2_811_1093 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux3_812_1092 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux3_811_1091 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux5_812_1090 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux5_811_1089 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_8_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux3_81 : STD_LOGIC; 
  signal BU2_N47 : STD_LOGIC; 
  signal BU2_N46 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux2_81 : STD_LOGIC; 
  signal BU2_N45 : STD_LOGIC; 
  signal BU2_N44 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux5_81 : STD_LOGIC; 
  signal BU2_N43 : STD_LOGIC; 
  signal BU2_N42 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux4_81 : STD_LOGIC; 
  signal BU2_N41 : STD_LOGIC; 
  signal BU2_N40 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux_81 : STD_LOGIC; 
  signal BU2_N39 : STD_LOGIC; 
  signal BU2_N38 : STD_LOGIC; 
  signal BU2_N37 : STD_LOGIC; 
  signal BU2_N36 : STD_LOGIC; 
  signal BU2_N35 : STD_LOGIC; 
  signal BU2_N34 : STD_LOGIC; 
  signal BU2_N33 : STD_LOGIC; 
  signal BU2_N32 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_inc4 : STD_LOGIC; 
  signal BU2_N20 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_bank_sel_reg_rstpot_1064 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_frame_locate_16_rstpot_1063 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_ireq_reg_rstpot_1062 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0_glue_set_1061 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1_glue_set_1060 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2_glue_set_1059 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3_glue_set_1058 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4_glue_set_1057 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5_glue_set_1056 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6_glue_set_1055 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7_glue_set_1054 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8_glue_set_1053 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9_glue_set_1052 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_burst_glue_set_1051 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_errinj_ego_glue_set_1050 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_rdbk_ecc_glue_set_1049 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_frame_eos_glue_set_1048 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_rdbk_crc_glue_set_1047 : STD_LOGIC; 
  signal BU2_N18 : STD_LOGIC; 
  signal BU2_N16 : STD_LOGIC; 
  signal BU2_N14 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_halt : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_halt92_1040 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_halt91_1039 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_halt9 : STD_LOGIC; 
  signal BU2_N12 : STD_LOGIC; 
  signal BU2_N10 : STD_LOGIC; 
  signal BU2_N8 : STD_LOGIC; 
  signal BU2_N6 : STD_LOGIC; 
  signal BU2_N4 : STD_LOGIC; 
  signal BU2_N2 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_port_id_2_2 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_9_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_7_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_6_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_5_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_4_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_3_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_34_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_33_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_32_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_31_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_30_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_2_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_29_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_28_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_27_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_25_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_24_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_23_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_22_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_21_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_20_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_1_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_19_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_18_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_16_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_15_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_14_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_13_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_12_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_11_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_10_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_dina_0_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_doutb_26_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_doutb_35_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_N3 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_N4 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_inc1 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_go : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_doutb_17_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_N72 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_dbuf_select : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_pid_4_PWR_6_o_equal_41_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_bank_sel_reg_935 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_N9 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_ws_pid_4_AND_23_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_ws_pid_4_AND_24_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_ws_pid_4_AND_4_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_write_strobe : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_read_strobe : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_int_update_enable : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_flag_type : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_register_type : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_memory_type : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_input_fetch_type : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_write_active : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_read_active : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_io_initial_decode : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_int_enable_value : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_interrupt_ack_internal : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_memory_write : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_zero_flag : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_move_group : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_condition_met : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_carry_flag : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_high_shift_in : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_low_shift_in : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_shift_carry_value : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_shift_in : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_not_t_state : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_int_pulse : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_int_enable : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_clean_int : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_flag_enable : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_flag_write : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_register_enable : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_register_write : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_push_or_pop_type : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_call_type : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_valid_to_move : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_t_state : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_not_active_interrupt : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_shadow_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_shadow_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_shadow_zero : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_shadow_zero : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_shift_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_group : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_parity : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith_carry_in : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_in : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_out : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_invert_arith_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_normal_count : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_zero_fast_route : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_zero_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_low_parity : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_parity : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_high_parity : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_parity_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_carry_fast_route : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_low_zero : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_high_zero_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_high_zero : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_low_zero_carry : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_10_613 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_9_612 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_8_611 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_n0258_inv : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_9_591 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_590 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_burst_588 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_0_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_0_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q_585 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_1_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_1_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q_582 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_2_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_2_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_2_Q_579 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q_578 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_3_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_3_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q_575 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_4_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_4_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q_572 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_5_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_5_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q_569 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_6_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_6_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q_566 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_7_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_7_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q_563 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_8_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_8_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q_560 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_9_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_9_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q_557 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_10_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_10_Q : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_9_Q_554 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_word_count_6_PWR_6_o_equal_12_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_first_ecc_event : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_ws_pid_4_AND_3_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_ws_pid_4_AND_2_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_ws_pid_4_AND_1_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_sync_init : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_controller_instrom_temp_init : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_word_count_7_inv : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_long_gap_474 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_0_Q_470 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_1_Q_466 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_0_Q_465 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_2_Q_461 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_1_Q_460 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_3_Q_456 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_2_Q_455 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_4_Q_451 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_3_Q_450 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_frame_count_16_frame_locate_16_equal_28_o : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_5_Q_446 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_4_Q_445 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_1_rt_441 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_2_rt_438 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_3_rt_435 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_4_rt_432 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_5_rt_429 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_6_rt_426 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_7_rt_423 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_8_rt_420 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_9_rt_417 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_10_rt_414 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_11_rt_411 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_12_rt_408 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_13_rt_405 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_14_rt_402 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy_15_rt_399 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_xor_16_rt_396 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Result_0_1 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Result_1_1 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_word_count_cy_1_rt_391 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Result_2_1 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_word_count_cy_2_rt_388 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Result_3_1 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_word_count_cy_3_rt_385 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Result_4_1 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_word_count_cy_4_rt_382 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Result_5_1 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_word_count_cy_5_rt_379 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Result_6_1 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_word_count_cy_6_rt_376 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Result_7_1 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_Mcount_word_count_xor_7_rt_373 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux_10_371 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux_91_369 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_frame_flm_367 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux_82_364 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux_9_360 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux_8_357 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux_7_352 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux1_4_346 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux1_10_344 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux1_91_342 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux1_82_339 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux1_3_336 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux1_81_335 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux1_9_334 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux1_8_332 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux1_7_327 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux4_10_322 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux4_91_320 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_frame_eos_319 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux4_82_316 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux4_9_313 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux4_8_311 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux4_7_306 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux2_10_302 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux2_91_300 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux2_82_297 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux2_9_294 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux2_8_292 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux2_7_287 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux3_10_282 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux3_91_280 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux3_82_277 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux3_9_274 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux3_8_272 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux3_7_267 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux5_10_262 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux5_9_260 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux5_82_257 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux5_8_254 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_rdbk_sbe_250 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux5_7_249 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux6_4_243 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux6_10_241 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux6_91_239 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux6_82_236 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux6_3_233 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux6_81_232 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux6_9_229 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux6_8_228 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_rdbk_ecc_226 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux6_7_223 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux7_10_219 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux7_9_217 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux7_81_214 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux7_8_211 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_errinj_ego_210 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_mux7_7_206 : STD_LOGIC; 
  signal BU2_U0_wrapper_controller_rdbk_crc_202 : STD_LOGIC; 
  signal BU2_N1 : STD_LOGIC; 
  signal BU2_N0 : STD_LOGIC; 
  signal BU2_fetch_rxread : STD_LOGIC; 
  signal BU2_fetch_txwrite : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPADOP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPADOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPADOP_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_15_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_14_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_13_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_12_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_11_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_10_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_9_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_8_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_7_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_6_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_5_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_4_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_3_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_2_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_0_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPADOP_1_UNCONNECTED : STD_LOGIC; 
  signal NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPADOP_0_UNCONNECTED : STD_LOGIC; 
  signal NlwRenamedSig_OI_monitor_txdata : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal monitor_rxdata_2 : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal inject_address_3 : STD_LOGIC_VECTOR ( 35 downto 0 ); 
  signal icap_o_4 : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal NlwRenamedSig_OI_icap_i : STD_LOGIC_VECTOR ( 31 downto 0 ); 
  signal fecc_syndrome_5 : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal fecc_far_6 : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal fecc_synbit_7 : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal fecc_synword_8 : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal BU2_U0_wrapper_controller_dbuf_din : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_dbuffer_addra : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_dbuffer_wea : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_instrom_instruction1 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_instrom_instruction0 : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_memory_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_wrapper_controller_instruction : STD_LOGIC_VECTOR ( 17 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sy : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_logical_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_second_operand : STD_LOGIC_VECTOR ( 7 downto 5 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_store_data : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_in_port : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_shift_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_stack_address : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_wrapper_controller_address : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_shift_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_arith_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_logical_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_sel_carry : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_input_group : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_alu_group : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_arith_value : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_half_arith : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_value : STD_LOGIC_VECTOR ( 9 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_kcpsm3_alu_result : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr : STD_LOGIC_VECTOR ( 8 downto 0 ); 
  signal BU2_U0_wrapper_controller_controller_dbuffer_end_ptr : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_fecc_far_cap : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal BU2_U0_wrapper_controller_fecc_far_dly : STD_LOGIC_VECTOR ( 23 downto 0 ); 
  signal BU2_U0_wrapper_controller_rdbk_syn : STD_LOGIC_VECTOR ( 12 downto 0 ); 
  signal BU2_U0_wrapper_controller_rdbk_synwd : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal BU2_U0_wrapper_controller_word_count : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_frame_locate : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal BU2_U0_wrapper_controller_Result : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BU2_U0_wrapper_controller_Mcount_frame_count_cy : STD_LOGIC_VECTOR ( 15 downto 0 ); 
  signal BU2_U0_wrapper_controller_Mcount_word_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal BU2_U0_wrapper_controller_Mcount_word_count_cy : STD_LOGIC_VECTOR ( 6 downto 0 ); 
  signal BU2_U0_wrapper_controller_errinj_reg : STD_LOGIC_VECTOR ( 35 downto 0 ); 
  signal BU2_U0_wrapper_controller_frame_total : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal BU2_U0_wrapper_controller_frame_count : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal BU2_U0_wrapper_controller_rdbk_efcr : STD_LOGIC_VECTOR ( 16 downto 0 ); 
  signal BU2_U0_wrapper_controller_rdbk_fecc_far : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal BU2_U0_wrapper_controller_rdbk_synbt : STD_LOGIC_VECTOR ( 4 downto 0 ); 
  signal BU2_U0_wrapper_controller_port_id : STD_LOGIC_VECTOR ( 4 downto 0 ); 
begin
  status_correction <= NlwRenamedSig_OI_status_correction;
  icap_request <= NlwRenamedSig_OI_icap_request;
  NlwRenamedSignal_fecc_syndromevalid <= fecc_syndromevalid;
  icap_i(31) <= NlwRenamedSig_OI_icap_i(31);
  icap_i(30) <= NlwRenamedSig_OI_icap_i(30);
  icap_i(29) <= NlwRenamedSig_OI_icap_i(29);
  icap_i(28) <= NlwRenamedSig_OI_icap_i(28);
  icap_i(27) <= NlwRenamedSig_OI_icap_i(27);
  icap_i(26) <= NlwRenamedSig_OI_icap_i(26);
  icap_i(25) <= NlwRenamedSig_OI_icap_i(25);
  icap_i(24) <= NlwRenamedSig_OI_icap_i(24);
  icap_i(23) <= NlwRenamedSig_OI_icap_i(23);
  icap_i(22) <= NlwRenamedSig_OI_icap_i(22);
  icap_i(21) <= NlwRenamedSig_OI_icap_i(21);
  icap_i(20) <= NlwRenamedSig_OI_icap_i(20);
  icap_i(19) <= NlwRenamedSig_OI_icap_i(19);
  icap_i(18) <= NlwRenamedSig_OI_icap_i(18);
  icap_i(17) <= NlwRenamedSig_OI_icap_i(17);
  icap_i(16) <= NlwRenamedSig_OI_icap_i(16);
  icap_i(15) <= NlwRenamedSig_OI_icap_i(15);
  icap_i(14) <= NlwRenamedSig_OI_icap_i(14);
  icap_i(13) <= NlwRenamedSig_OI_icap_i(13);
  icap_i(12) <= NlwRenamedSig_OI_icap_i(12);
  icap_i(11) <= NlwRenamedSig_OI_icap_i(11);
  icap_i(10) <= NlwRenamedSig_OI_icap_i(10);
  icap_i(9) <= NlwRenamedSig_OI_icap_i(9);
  icap_i(8) <= NlwRenamedSig_OI_icap_i(8);
  icap_i(7) <= NlwRenamedSig_OI_icap_i(7);
  icap_i(6) <= NlwRenamedSig_OI_icap_i(6);
  icap_i(5) <= NlwRenamedSig_OI_icap_i(5);
  icap_i(4) <= NlwRenamedSig_OI_icap_i(4);
  icap_i(3) <= NlwRenamedSig_OI_icap_i(3);
  icap_i(2) <= NlwRenamedSig_OI_icap_i(2);
  icap_i(1) <= NlwRenamedSig_OI_icap_i(1);
  icap_i(0) <= NlwRenamedSig_OI_icap_i(0);
  icap_o_4(31) <= icap_o(31);
  icap_o_4(30) <= icap_o(30);
  icap_o_4(29) <= icap_o(29);
  icap_o_4(28) <= icap_o(28);
  icap_o_4(27) <= icap_o(27);
  icap_o_4(26) <= icap_o(26);
  icap_o_4(25) <= icap_o(25);
  icap_o_4(24) <= icap_o(24);
  icap_o_4(23) <= icap_o(23);
  icap_o_4(22) <= icap_o(22);
  icap_o_4(21) <= icap_o(21);
  icap_o_4(20) <= icap_o(20);
  icap_o_4(19) <= icap_o(19);
  icap_o_4(18) <= icap_o(18);
  icap_o_4(17) <= icap_o(17);
  icap_o_4(16) <= icap_o(16);
  icap_o_4(15) <= icap_o(15);
  icap_o_4(14) <= icap_o(14);
  icap_o_4(13) <= icap_o(13);
  icap_o_4(12) <= icap_o(12);
  icap_o_4(11) <= icap_o(11);
  icap_o_4(10) <= icap_o(10);
  icap_o_4(9) <= icap_o(9);
  icap_o_4(8) <= icap_o(8);
  icap_o_4(7) <= icap_o(7);
  icap_o_4(6) <= icap_o(6);
  icap_o_4(5) <= icap_o(5);
  icap_o_4(4) <= icap_o(4);
  icap_o_4(3) <= icap_o(3);
  icap_o_4(2) <= icap_o(2);
  icap_o_4(1) <= icap_o(1);
  icap_o_4(0) <= icap_o(0);
  status_classification <= NlwRenamedSig_OI_status_classification;
  status_injection <= NlwRenamedSig_OI_status_injection;
  fecc_syndrome_5(12) <= fecc_syndrome(12);
  fecc_syndrome_5(11) <= fecc_syndrome(11);
  fecc_syndrome_5(10) <= fecc_syndrome(10);
  fecc_syndrome_5(9) <= fecc_syndrome(9);
  fecc_syndrome_5(8) <= fecc_syndrome(8);
  fecc_syndrome_5(7) <= fecc_syndrome(7);
  fecc_syndrome_5(6) <= fecc_syndrome(6);
  fecc_syndrome_5(5) <= fecc_syndrome(5);
  fecc_syndrome_5(4) <= fecc_syndrome(4);
  fecc_syndrome_5(3) <= fecc_syndrome(3);
  fecc_syndrome_5(2) <= fecc_syndrome(2);
  fecc_syndrome_5(1) <= fecc_syndrome(1);
  fecc_syndrome_5(0) <= fecc_syndrome(0);
  status_uncorrectable <= NlwRenamedSig_OI_status_uncorrectable;
  fecc_synbit_7(4) <= fecc_synbit(4);
  fecc_synbit_7(3) <= fecc_synbit(3);
  fecc_synbit_7(2) <= fecc_synbit(2);
  fecc_synbit_7(1) <= fecc_synbit(1);
  fecc_synbit_7(0) <= fecc_synbit(0);
  monitor_rxdata_2(7) <= monitor_rxdata(7);
  monitor_rxdata_2(6) <= monitor_rxdata(6);
  monitor_rxdata_2(5) <= monitor_rxdata(5);
  monitor_rxdata_2(4) <= monitor_rxdata(4);
  monitor_rxdata_2(3) <= monitor_rxdata(3);
  monitor_rxdata_2(2) <= monitor_rxdata(2);
  monitor_rxdata_2(1) <= monitor_rxdata(1);
  monitor_rxdata_2(0) <= monitor_rxdata(0);
  inject_address_3(35) <= inject_address(35);
  inject_address_3(34) <= inject_address(34);
  inject_address_3(33) <= inject_address(33);
  inject_address_3(32) <= inject_address(32);
  inject_address_3(31) <= inject_address(31);
  inject_address_3(30) <= inject_address(30);
  inject_address_3(29) <= inject_address(29);
  inject_address_3(28) <= inject_address(28);
  inject_address_3(27) <= inject_address(27);
  inject_address_3(26) <= inject_address(26);
  inject_address_3(25) <= inject_address(25);
  inject_address_3(24) <= inject_address(24);
  inject_address_3(23) <= inject_address(23);
  inject_address_3(22) <= inject_address(22);
  inject_address_3(21) <= inject_address(21);
  inject_address_3(20) <= inject_address(20);
  inject_address_3(19) <= inject_address(19);
  inject_address_3(18) <= inject_address(18);
  inject_address_3(17) <= inject_address(17);
  inject_address_3(16) <= inject_address(16);
  inject_address_3(15) <= inject_address(15);
  inject_address_3(14) <= inject_address(14);
  inject_address_3(13) <= inject_address(13);
  inject_address_3(12) <= inject_address(12);
  inject_address_3(11) <= inject_address(11);
  inject_address_3(10) <= inject_address(10);
  inject_address_3(9) <= inject_address(9);
  inject_address_3(8) <= inject_address(8);
  inject_address_3(7) <= inject_address(7);
  inject_address_3(6) <= inject_address(6);
  inject_address_3(5) <= inject_address(5);
  inject_address_3(4) <= inject_address(4);
  inject_address_3(3) <= inject_address(3);
  inject_address_3(2) <= inject_address(2);
  inject_address_3(1) <= inject_address(1);
  inject_address_3(0) <= inject_address(0);
  fecc_far_6(23) <= fecc_far(23);
  fecc_far_6(22) <= fecc_far(22);
  fecc_far_6(21) <= fecc_far(21);
  fecc_far_6(20) <= fecc_far(20);
  fecc_far_6(19) <= fecc_far(19);
  fecc_far_6(18) <= fecc_far(18);
  fecc_far_6(17) <= fecc_far(17);
  fecc_far_6(16) <= fecc_far(16);
  fecc_far_6(15) <= fecc_far(15);
  fecc_far_6(14) <= fecc_far(14);
  fecc_far_6(13) <= fecc_far(13);
  fecc_far_6(12) <= fecc_far(12);
  fecc_far_6(11) <= fecc_far(11);
  fecc_far_6(10) <= fecc_far(10);
  fecc_far_6(9) <= fecc_far(9);
  fecc_far_6(8) <= fecc_far(8);
  fecc_far_6(7) <= fecc_far(7);
  fecc_far_6(6) <= fecc_far(6);
  fecc_far_6(5) <= fecc_far(5);
  fecc_far_6(4) <= fecc_far(4);
  fecc_far_6(3) <= fecc_far(3);
  fecc_far_6(2) <= fecc_far(2);
  fecc_far_6(1) <= fecc_far(1);
  fecc_far_6(0) <= fecc_far(0);
  status_critical <= NlwRenamedSig_OI_status_critical;
  status_observation <= NlwRenamedSig_OI_status_observation;
  status_heartbeat <= NlwRenamedSignal_fecc_syndromevalid;
  fecc_synword_8(6) <= fecc_synword(6);
  fecc_synword_8(5) <= fecc_synword(5);
  fecc_synword_8(4) <= fecc_synword(4);
  fecc_synword_8(3) <= fecc_synword(3);
  fecc_synword_8(2) <= fecc_synword(2);
  fecc_synword_8(1) <= fecc_synword(1);
  fecc_synword_8(0) <= fecc_synword(0);
  status_initialization <= NlwRenamedSig_OI_status_initialization;
  monitor_txdata(7) <= NlwRenamedSig_OI_monitor_txdata(7);
  monitor_txdata(6) <= NlwRenamedSig_OI_monitor_txdata(6);
  monitor_txdata(5) <= NlwRenamedSig_OI_monitor_txdata(5);
  monitor_txdata(4) <= NlwRenamedSig_OI_monitor_txdata(4);
  monitor_txdata(3) <= NlwRenamedSig_OI_monitor_txdata(3);
  monitor_txdata(2) <= NlwRenamedSig_OI_monitor_txdata(2);
  monitor_txdata(1) <= NlwRenamedSig_OI_monitor_txdata(1);
  monitor_txdata(0) <= NlwRenamedSig_OI_monitor_txdata(0);
  VCC_0 : VCC
    port map (
      P => N1
    );
  GND_1 : GND
    port map (
      G => N0
    );
  BU2_U0_wrapper_controller_mux_81_f7 : MUXF7
    port map (
      I0 => BU2_U0_wrapper_controller_mux_812_1098,
      I1 => BU2_U0_wrapper_controller_mux_811_1097,
      S => NlwRenamedSig_OI_status_injection,
      O => BU2_U0_wrapper_controller_mux_81
    );
  BU2_U0_wrapper_controller_mux_812 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_dly(16),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(0),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(0),
      I5 => BU2_U0_wrapper_controller_fecc_far_dly(8),
      O => BU2_U0_wrapper_controller_mux_812_1098
    );
  BU2_U0_wrapper_controller_mux_811 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(16),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(0),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(0),
      I5 => BU2_U0_wrapper_controller_fecc_far_cap(8),
      O => BU2_U0_wrapper_controller_mux_811_1097
    );
  BU2_U0_wrapper_controller_mux4_81_f7 : MUXF7
    port map (
      I0 => BU2_U0_wrapper_controller_mux4_812_1096,
      I1 => BU2_U0_wrapper_controller_mux4_811_1095,
      S => NlwRenamedSig_OI_status_injection,
      O => BU2_U0_wrapper_controller_mux4_81
    );
  BU2_U0_wrapper_controller_mux4_812 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_dly(20),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(4),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(4),
      I5 => BU2_U0_wrapper_controller_fecc_far_dly(12),
      O => BU2_U0_wrapper_controller_mux4_812_1096
    );
  BU2_U0_wrapper_controller_mux4_811 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(20),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(4),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(4),
      I5 => BU2_U0_wrapper_controller_fecc_far_cap(12),
      O => BU2_U0_wrapper_controller_mux4_811_1095
    );
  BU2_U0_wrapper_controller_mux2_81_f7 : MUXF7
    port map (
      I0 => BU2_U0_wrapper_controller_mux2_812_1094,
      I1 => BU2_U0_wrapper_controller_mux2_811_1093,
      S => NlwRenamedSig_OI_status_injection,
      O => BU2_U0_wrapper_controller_mux2_81
    );
  BU2_U0_wrapper_controller_mux2_812 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_dly(18),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(2),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(2),
      I5 => BU2_U0_wrapper_controller_fecc_far_dly(10),
      O => BU2_U0_wrapper_controller_mux2_812_1094
    );
  BU2_U0_wrapper_controller_mux2_811 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(18),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(2),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(2),
      I5 => BU2_U0_wrapper_controller_fecc_far_cap(10),
      O => BU2_U0_wrapper_controller_mux2_811_1093
    );
  BU2_U0_wrapper_controller_mux3_81_f7 : MUXF7
    port map (
      I0 => BU2_U0_wrapper_controller_mux3_812_1092,
      I1 => BU2_U0_wrapper_controller_mux3_811_1091,
      S => NlwRenamedSig_OI_status_injection,
      O => BU2_U0_wrapper_controller_mux3_81
    );
  BU2_U0_wrapper_controller_mux3_812 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_dly(19),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(3),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(3),
      I5 => BU2_U0_wrapper_controller_fecc_far_dly(11),
      O => BU2_U0_wrapper_controller_mux3_812_1092
    );
  BU2_U0_wrapper_controller_mux3_811 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(19),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(3),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(3),
      I5 => BU2_U0_wrapper_controller_fecc_far_cap(11),
      O => BU2_U0_wrapper_controller_mux3_811_1091
    );
  BU2_U0_wrapper_controller_mux5_81_f7 : MUXF7
    port map (
      I0 => BU2_U0_wrapper_controller_mux5_812_1090,
      I1 => BU2_U0_wrapper_controller_mux5_811_1089,
      S => NlwRenamedSig_OI_status_injection,
      O => BU2_U0_wrapper_controller_mux5_81
    );
  BU2_U0_wrapper_controller_mux5_812 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_dly(21),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(5),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(5),
      I5 => BU2_U0_wrapper_controller_fecc_far_dly(13),
      O => BU2_U0_wrapper_controller_mux5_812_1090
    );
  BU2_U0_wrapper_controller_mux5_811 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(21),
      I3 => BU2_U0_wrapper_controller_rdbk_syn(5),
      I4 => BU2_U0_wrapper_controller_rdbk_synwd(5),
      I5 => BU2_U0_wrapper_controller_fecc_far_cap(13),
      O => BU2_U0_wrapper_controller_mux5_811_1089
    );
  BU2_U0_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage : RAMB18E1
    generic map(
      SRVAL_A => X"3FFFF",
      INITP_00 => X"3333333333333333333333333333333333333333333333333333333333333333",
      INITP_01 => X"3333333333333333333333333333333333333333333333333333333333333333",
      INITP_02 => X"3333333333333333B5777F3333F3333333333333333333333333333333333333",
      INITP_03 => X"3333333333333333333333333333333333333333333333333333333333333333",
      INITP_04 => X"33333333333333333F3333FFFFFFFFFFFFF5777F3333F33333F3333333333333",
      INITP_05 => X"77777777777777777777777777777777777777777F3333333333333333333333",
      INITP_06 => X"5555555555555555555577777777777777777777777777777777777777777777",
      INITP_07 => X"F3B5555555555555555555555555555555555555555555555555555555555555",
      INIT_00 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_01 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_02 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_03 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_04 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_05 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_06 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_07 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_08 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_09 => X"1111111111111111111111111111111111111111111111111111111111111111",
      INIT_0A => X"2222222222222222222222222222222222222222222222222222222211111111",
      INIT_0B => X"2222222222222222222222222222222222222222222222222222222222222222",
      INIT_0C => X"2222222222222222222222222222222222222222222222222222222222222222",
      INIT_0D => X"2222222222222222222222222222222222222222222222222222222222222222",
      INIT_0E => X"2222222222222222222222222222222222222222222222222222222222222222",
      INIT_0F => X"2222222222222222222222222222222222222222222222222222222222222222",
      INIT_10 => X"2222222222222222222222222222222222222222222222222222222222222222",
      INIT_11 => X"2222222222222222222222222222222222222222222222222222222222222222",
      INIT_12 => X"2222222222222222222222222222222222222222222222222222222222222222",
      INIT_13 => X"2222222222222222222222222222222222222222222222222222222222222222",
      INIT_14 => X"2801800120000000FFFFFFFFDEADDEADDEADDEADDEADDEAD2222222222222222",
      INIT_15 => X"FFFFFFFFADDD02C8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2000000020000000",
      INIT_16 => X"20000000000000013000800120000000200000001D1D1D1D3001800120000000",
      INIT_17 => X"DADADADADADADADADADADADADADADADADADADADA500000A23000400020000000",
      INIT_18 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_19 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_1A => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_1B => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_1C => X"DADADADADADADADADADADADADADADADAECCCECCCDADADADADADADADADADADADA",
      INIT_1D => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_1E => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_1F => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_20 => X"DADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADADA",
      INIT_21 => X"30ADDD0120000000FFFFFFFF20000000DADADADADADADADADADADADADADADADA",
      INIT_22 => X"200000002000000028ADDD0120000000FFFFFFFF2000000020000000DADADADA",
      INIT_23 => X"DEADDEADDEADDEADFFFFFFFFADDD0440FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_24 => X"DEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEADDEAD",
      INIT_25 => X"20000000FFFFFFFF2000000020000000AA99556620000000FFFFFFFFDEADDEAD",
      INIT_26 => X"2000000020000000480000A22800600020000000200000000000000430008001",
      INIT_27 => X"2000000020000000200000002000000020000000200000002000000020000000",
      INIT_28 => X"2000000020000000200000002000000020000000200000002000000020000000",
      INIT_29 => X"2000000020000000200000002000000020000000200000002000000020000000",
      INIT_2A => X"FFFFFFFFFFFFFFFF200000002000000020000000200000002000000020000000",
      INIT_2B => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2C => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2D => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2E => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_2F => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_30 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_31 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_32 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_33 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_34 => X"FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_35 => X"ADDD02F8ADDD02F4ADDD02F0ADDD02ECFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF",
      INIT_36 => X"ADDD0318ADDD0314ADDD0310ADDD030CADDD0308ADDD0304ADDD0300ADDD02FC",
      INIT_37 => X"ADDD0338ADDD0334ADDD0330ADDD032CADDD0328ADDD0324ADDD0320ADDD031C",
      INIT_38 => X"ADDD0358ADDD0354ADDD0350ADDD034CADDD0348ADDD0344ADDD0340ADDD033C",
      INIT_39 => X"ADDD0378ADDD0374ADDD0370ADDD036CADDD0368ADDD0364ADDD0360ADDD035C",
      INIT_3A => X"ADDD0398ADDD0394ADDD0390ADDD038CADDD0388ADDD0384ADDD0380ADDD037C",
      INIT_3B => X"ADDD03B8ADDD03B4ADDD03B0ADDD03ACADDD03A8ADDD03A4ADDD03A0ADDD039C",
      INIT_3C => X"ADDD03D8ADDD03D4ADDD03D0ADDD03CCADDD03C8ADDD03C4ADDD03C0ADDD03BC",
      INIT_3D => X"ADDD03F8ADDD03F4ADDD03F0ADDD03ECADDD03E8ADDD03E4ADDD03E0ADDD03DC",
      INIT_3E => X"ADDD0418ADDD0414ADDD0410ADDD040CADDD0408ADDD0404ADDD0400ADDD03FC",
      INIT_3F => X"FFFFFFFF20000000FFFFFFFFADDD042CADDD0428ADDD0424ADDD0420ADDD041C",
      INIT_FILE => "NONE",
      RAM_MODE => "SDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      INIT_A => X"3FFFF",
      INIT_B => X"3FFFF",
      WRITE_MODE_A => "READ_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      DOA_REG => 0,
      DOB_REG => 0,
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 0,
      WRITE_WIDTH_A => 0,
      WRITE_WIDTH_B => 36,
      SRVAL_B => X"3FFFF"
    )
    port map (
      CLKARDCLK => icap_clk,
      CLKBWRCLK => icap_clk,
      ENARDEN => BU2_U0_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_8_o,
      ENBWREN => BU2_U0_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_8_o,
      REGCEAREGCE => BU2_N0,
      REGCEB => BU2_N0,
      RSTRAMARSTRAM => BU2_U0_wrapper_controller_sync_init,
      RSTRAMB => BU2_U0_wrapper_controller_sync_init,
      RSTREGARSTREG => BU2_N0,
      RSTREGB => BU2_N0,
      ADDRARDADDR(13) => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_590,
      ADDRARDADDR(12) => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_9_591,
      ADDRARDADDR(11) => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(8),
      ADDRARDADDR(10) => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(7),
      ADDRARDADDR(9) => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(6),
      ADDRARDADDR(8) => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(5),
      ADDRARDADDR(7) => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(4),
      ADDRARDADDR(6) => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(3),
      ADDRARDADDR(5) => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(2),
      ADDRARDADDR(4) => BU2_N0,
      ADDRARDADDR(3) => BU2_N0,
      ADDRARDADDR(2) => BU2_N0,
      ADDRARDADDR(1) => BU2_N0,
      ADDRARDADDR(0) => BU2_N0,
      ADDRBWRADDR(13) => BU2_U0_wrapper_controller_controller_dbuffer_addra(8),
      ADDRBWRADDR(12) => BU2_U0_wrapper_controller_controller_dbuffer_addra(7),
      ADDRBWRADDR(11) => BU2_U0_wrapper_controller_controller_dbuffer_addra(6),
      ADDRBWRADDR(10) => BU2_U0_wrapper_controller_controller_dbuffer_addra(5),
      ADDRBWRADDR(9) => BU2_U0_wrapper_controller_controller_dbuffer_addra(4),
      ADDRBWRADDR(8) => BU2_U0_wrapper_controller_controller_dbuffer_addra(3),
      ADDRBWRADDR(7) => BU2_U0_wrapper_controller_controller_dbuffer_addra(2),
      ADDRBWRADDR(6) => BU2_U0_wrapper_controller_controller_dbuffer_addra(1),
      ADDRBWRADDR(5) => BU2_U0_wrapper_controller_controller_dbuffer_addra(0),
      ADDRBWRADDR(4) => BU2_N0,
      ADDRBWRADDR(3) => BU2_N0,
      ADDRBWRADDR(2) => BU2_N0,
      ADDRBWRADDR(1) => BU2_N0,
      ADDRBWRADDR(0) => BU2_N0,
      DIADI(15) => BU2_U0_wrapper_controller_controller_dbuffer_dina_16_Q,
      DIADI(14) => BU2_U0_wrapper_controller_controller_dbuffer_dina_15_Q,
      DIADI(13) => BU2_U0_wrapper_controller_controller_dbuffer_dina_14_Q,
      DIADI(12) => BU2_U0_wrapper_controller_controller_dbuffer_dina_13_Q,
      DIADI(11) => BU2_U0_wrapper_controller_controller_dbuffer_dina_12_Q,
      DIADI(10) => BU2_U0_wrapper_controller_controller_dbuffer_dina_11_Q,
      DIADI(9) => BU2_U0_wrapper_controller_controller_dbuffer_dina_10_Q,
      DIADI(8) => BU2_U0_wrapper_controller_controller_dbuffer_dina_9_Q,
      DIADI(7) => BU2_U0_wrapper_controller_controller_dbuffer_dina_7_Q,
      DIADI(6) => BU2_U0_wrapper_controller_controller_dbuffer_dina_6_Q,
      DIADI(5) => BU2_U0_wrapper_controller_controller_dbuffer_dina_5_Q,
      DIADI(4) => BU2_U0_wrapper_controller_controller_dbuffer_dina_4_Q,
      DIADI(3) => BU2_U0_wrapper_controller_controller_dbuffer_dina_3_Q,
      DIADI(2) => BU2_U0_wrapper_controller_controller_dbuffer_dina_2_Q,
      DIADI(1) => BU2_U0_wrapper_controller_controller_dbuffer_dina_1_Q,
      DIADI(0) => BU2_U0_wrapper_controller_controller_dbuffer_dina_0_Q,
      DIBDI(15) => BU2_U0_wrapper_controller_controller_dbuffer_dina_34_Q,
      DIBDI(14) => BU2_U0_wrapper_controller_controller_dbuffer_dina_33_Q,
      DIBDI(13) => BU2_U0_wrapper_controller_controller_dbuffer_dina_32_Q,
      DIBDI(12) => BU2_U0_wrapper_controller_controller_dbuffer_dina_31_Q,
      DIBDI(11) => BU2_U0_wrapper_controller_controller_dbuffer_dina_30_Q,
      DIBDI(10) => BU2_U0_wrapper_controller_controller_dbuffer_dina_29_Q,
      DIBDI(9) => BU2_U0_wrapper_controller_controller_dbuffer_dina_28_Q,
      DIBDI(8) => BU2_U0_wrapper_controller_controller_dbuffer_dina_27_Q,
      DIBDI(7) => BU2_U0_wrapper_controller_controller_dbuffer_dina_25_Q,
      DIBDI(6) => BU2_U0_wrapper_controller_controller_dbuffer_dina_24_Q,
      DIBDI(5) => BU2_U0_wrapper_controller_controller_dbuffer_dina_23_Q,
      DIBDI(4) => BU2_U0_wrapper_controller_controller_dbuffer_dina_22_Q,
      DIBDI(3) => BU2_U0_wrapper_controller_controller_dbuffer_dina_21_Q,
      DIBDI(2) => BU2_U0_wrapper_controller_controller_dbuffer_dina_20_Q,
      DIBDI(1) => BU2_U0_wrapper_controller_controller_dbuffer_dina_19_Q,
      DIBDI(0) => BU2_U0_wrapper_controller_controller_dbuffer_dina_18_Q,
      DIPADIP(1) => BU2_N1,
      DIPADIP(0) => BU2_N1,
      DIPBDIP(1) => BU2_N0,
      DIPBDIP(0) => BU2_N0,
      DOADO(15) => NlwRenamedSig_OI_icap_i(8),
      DOADO(14) => NlwRenamedSig_OI_icap_i(9),
      DOADO(13) => NlwRenamedSig_OI_icap_i(10),
      DOADO(12) => NlwRenamedSig_OI_icap_i(11),
      DOADO(11) => NlwRenamedSig_OI_icap_i(12),
      DOADO(10) => NlwRenamedSig_OI_icap_i(13),
      DOADO(9) => NlwRenamedSig_OI_icap_i(14),
      DOADO(8) => NlwRenamedSig_OI_icap_i(15),
      DOADO(7) => NlwRenamedSig_OI_icap_i(0),
      DOADO(6) => NlwRenamedSig_OI_icap_i(1),
      DOADO(5) => NlwRenamedSig_OI_icap_i(2),
      DOADO(4) => NlwRenamedSig_OI_icap_i(3),
      DOADO(3) => NlwRenamedSig_OI_icap_i(4),
      DOADO(2) => NlwRenamedSig_OI_icap_i(5),
      DOADO(1) => NlwRenamedSig_OI_icap_i(6),
      DOADO(0) => NlwRenamedSig_OI_icap_i(7),
      DOBDO(15) => NlwRenamedSig_OI_icap_i(24),
      DOBDO(14) => NlwRenamedSig_OI_icap_i(25),
      DOBDO(13) => NlwRenamedSig_OI_icap_i(26),
      DOBDO(12) => NlwRenamedSig_OI_icap_i(27),
      DOBDO(11) => NlwRenamedSig_OI_icap_i(28),
      DOBDO(10) => NlwRenamedSig_OI_icap_i(29),
      DOBDO(9) => NlwRenamedSig_OI_icap_i(30),
      DOBDO(8) => NlwRenamedSig_OI_icap_i(31),
      DOBDO(7) => NlwRenamedSig_OI_icap_i(16),
      DOBDO(6) => NlwRenamedSig_OI_icap_i(17),
      DOBDO(5) => NlwRenamedSig_OI_icap_i(18),
      DOBDO(4) => NlwRenamedSig_OI_icap_i(19),
      DOBDO(3) => NlwRenamedSig_OI_icap_i(20),
      DOBDO(2) => NlwRenamedSig_OI_icap_i(21),
      DOBDO(1) => NlwRenamedSig_OI_icap_i(22),
      DOBDO(0) => NlwRenamedSig_OI_icap_i(23),
      DOPADOP(1) => BU2_U0_wrapper_controller_controller_dbuffer_doutb_17_Q,
      DOPADOP(0) => NLW_BU2_U0_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_storage_DOPADOP_0_UNCONNECTED,
      DOPBDOP(1) => BU2_U0_wrapper_controller_controller_dbuffer_doutb_35_Q,
      DOPBDOP(0) => BU2_U0_wrapper_controller_controller_dbuffer_doutb_26_Q,
      WEA(1) => BU2_N0,
      WEA(0) => BU2_N0,
      WEBWE(3) => BU2_U0_wrapper_controller_controller_dbuffer_wea(3),
      WEBWE(2) => BU2_U0_wrapper_controller_controller_dbuffer_wea(2),
      WEBWE(1) => BU2_U0_wrapper_controller_controller_dbuffer_wea(1),
      WEBWE(0) => BU2_U0_wrapper_controller_controller_dbuffer_wea(0)
    );
  BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18 : RAMB18E1
    generic map(
      SRVAL_A => X"00000",
      INITP_00 => X"3CE3E3E3F8D3488FCFFFF7D34F48D374FCFFFF888FFFFF7F0FFF33FF8DDDDF8F",
      INITP_01 => X"F3CCCCF0FFCFFFAAB7C373CC3D3F7FCBCFD3F7FF7D34F7762222234A22222282",
      INITP_02 => X"FFFFFFBFFFFFFFA080CD334E2D2DCB724B3FFCFFFEA03FFF54036AED0FE00034",
      INITP_03 => X"00002D2D28A2667666AAABC3C30030B30C030B0C300C330C0030BFF333FC3FBF",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"B4AA0A5ED0A69003000000000000000000000000000000000000000000000000",
      INITP_06 => X"888C88C88C88C88BC302CB2CB3888BFFE30FFE30820FBFDEFFE5DAAAA8BFFCB4",
      INITP_07 => X"EBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB00C2FBEFBFA2200EAAEA88A88B4B",
      INIT_00 => X"CF1E0F01510040105092400050404002501B4001032DC000CF1E0F000138C000",
      INIT_01 => X"01010080034601740184401A031B033A001F033000604015401540154015C000",
      INIT_02 => X"E000400401EF01EC01EF01EC03560353017E01980170541D4C93039903620386",
      INIT_03 => X"40020321033A000201E9035603530170017901C401700346E0024006E0014005",
      INIT_04 => X"2002400C405C544E400E4013C0130080504E2080401354792080546220404014",
      INIT_05 => X"033A000003BA03D840020321018A03BA03EC545B4053405C54554049400D545B",
      INIT_06 => X"007F0085E00300085C714051401A507520204014E012401CE011401B40020321",
      INIT_07 => X"401A4002033A000403BAE0030001407B0085E0030002407B0085E0030004407B",
      INIT_08 => X"4015E0084016E009401DE0044017E0054018E0064019A000E00BA01F4014E00A",
      INIT_09 => X"4013E00F4012E00E4011E00D4010E00C400FC013008050A820804013A000E007",
      INIT_0A => X"405340E854AF404F400D54E72002400C40E854A8400A50EE400C50EE2008E010",
      INIT_0B => X"01DD400D02FC03BC54E54020400D02FC03EA54C7405240E6018A03BA03EC54B5",
      INIT_0C => X"020903BC54E54020400D02FC03E254E7404E400003BA03FC03161100C01F58E5",
      INIT_0D => X"EA0C54D1C20103FC03161100DA0054D6C10101D6010458E501DD400D02FC0A00",
      INIT_0E => X"03BC03E240020321033A000203BA03E44002032103BA40FCEE10ED0FEC0EEB0D",
      INIT_0F => X"4002033A001003BA03056C0C03056C0D03056C0E03056C0F03FC0316A10F6110",
      INIT_10 => X"A07F10B001D601D601D6E00BA01F10A06E106D0F6C0E6B0D6A0C51342008401E",
      INIT_11 => X"FFE0FBD0DAC0AE016F026B016A00512A2E80CE03CD02CC0101D6E00A5D344051",
      INIT_12 => X"02E103AB0346EE06ED05EC044E194D184C1701F301EF01EC035601B603465934",
      INIT_13 => X"2080401EA000033A00010164014F013E40020321033A000001E9035601A703AE",
      INIT_14 => X"0000A000554CC20102FFA0005547C101014B01FFA0005542C00101460024B000",
      INIT_15 => X"C0130080400E400E4157400E555C2020400C4152400D55572002400C0382C000",
      INIT_16 => X"417203C203BE03C403F203BE03E003D003EC03BE03C603F2A000C01FA00F401F",
      INIT_17 => X"03CE03EA418203EE03D803E203D8418203E603C803CC03D8A00003BA03DC03E4",
      INIT_18 => X"6C0103056C0203BC03D203E04343A00F401F03BC03EC03D2A00003BC03DC03CA",
      INIT_19 => X"CD03AC3FAD7CAEFEAF0103A4010100C0A00001840335033F03BA03056C000305",
      INIT_1A => X"00A003A80C800D050E000F000386010000C003A8AEFD03A4010200E003A8CC80",
      INIT_1B => X"010000A003A80C800D000E000F000386010000C0A00003A80C000D0403860100",
      INIT_1C => X"03860102008003A8CC80CF40AC7FADFDAFBF03A4010100C0A00003A80C800386",
      INIT_1D => X"C0E9B80080B9A0000F000E000D000C000B000A06A00003680386010200600362",
      INIT_1E => X"4007A000C0070010A000C01400E0A000800AA000C0F6B80080075DE7C011B800",
      INIT_1F => X"000000000000000000000000000000000000A00051F320014007A00051EF2010",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0500040000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"5AF2C0010101A007030002002008030002002010600B620A0300050204EC42E3",
      INIT_2F => X"A00056FC2002400CA000C008C209C30AF0104008C209C30AB350924042EE0106",
      INIT_30 => X"0C0601000C060100A00003FC0316030C03FC0316030C1C00A00057002001400C",
      INIT_31 => X"03BA03EE03DE03C803D6A000813081075B19410AA00001000C0601000C060100",
      INIT_32 => X"A000A01F4000A000A0604000432503D8A00003BC03C003E453284000032DA000",
      INIT_33 => X"03ECC100D100032AA11F11004343032A03BC03CC03D2C100D100032DA1601100",
      INIT_34 => X"A00003590C000382C00A00C4C00B00BBC00900A4A00003BA0304032D03BC03CC",
      INIT_35 => X"03860100008003930F000E000D00A00003590C0DA00003590C10A00003590C07",
      INIT_36 => X"C00900B8437F00C4C00B004FC0090034437F00C4C00B0077C009004CA0000368",
      INIT_37 => X"C00A00C2C00B0037C00900EC037F00C2C00B002FC0090094437F00F4C00B00FF",
      INIT_38 => X"C209023DC20A0204C108C008C2090255C20A0204A00057822080400AA0000382",
      INIT_39 => X"0004A0004F084E084D084C08039FA000CF08CE08CD08CC08039FA000C108C008",
      INIT_3A => X"037403B1A000036E03B1A00003680393A000039903620386A000C0090040C00A",
      INIT_3B => X"43FC015F43FC012043FC010DA00003A86C046D056E060F00038601000020A000",
      INIT_3C => X"43FC014443FC014343FC014243FC014143FC013643FC013143FC013243FC013E",
      INIT_3D => X"43FC014C43FC014B43FC014A43FC014943FC014843FC014743FC014643FC0145",
      INIT_3E => X"43FC015443FC015343FC015243FC015143FC015043FC014F43FC014E43FC014D",
      INIT_3F => X"43FFA000C10D030043FC015A43FC015943FC015843FC015743FC015643FC0155",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      INIT_A => X"00000",
      INIT_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DOA_REG => 0,
      DOB_REG => 0,
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18,
      SRVAL_B => X"00000"
    )
    port map (
      CLKARDCLK => BU2_N0,
      CLKBWRCLK => icap_clk,
      ENARDEN => BU2_N0,
      ENBWREN => BU2_N1,
      REGCEAREGCE => BU2_N0,
      REGCEB => BU2_N0,
      RSTRAMARSTRAM => BU2_N0,
      RSTRAMB => BU2_N0,
      RSTREGARSTREG => BU2_N0,
      RSTREGB => BU2_N0,
      ADDRARDADDR(13) => BU2_N0,
      ADDRARDADDR(12) => BU2_N0,
      ADDRARDADDR(11) => BU2_N0,
      ADDRARDADDR(10) => BU2_N0,
      ADDRARDADDR(9) => BU2_N0,
      ADDRARDADDR(8) => BU2_N0,
      ADDRARDADDR(7) => BU2_N0,
      ADDRARDADDR(6) => BU2_N0,
      ADDRARDADDR(5) => BU2_N0,
      ADDRARDADDR(4) => BU2_N0,
      ADDRARDADDR(3) => BU2_N0,
      ADDRARDADDR(2) => BU2_N0,
      ADDRARDADDR(1) => BU2_N0,
      ADDRARDADDR(0) => BU2_N0,
      ADDRBWRADDR(13) => BU2_U0_wrapper_controller_address(9),
      ADDRBWRADDR(12) => BU2_U0_wrapper_controller_address(8),
      ADDRBWRADDR(11) => BU2_U0_wrapper_controller_address(7),
      ADDRBWRADDR(10) => BU2_U0_wrapper_controller_address(6),
      ADDRBWRADDR(9) => BU2_U0_wrapper_controller_address(5),
      ADDRBWRADDR(8) => BU2_U0_wrapper_controller_address(4),
      ADDRBWRADDR(7) => BU2_U0_wrapper_controller_address(3),
      ADDRBWRADDR(6) => BU2_U0_wrapper_controller_address(2),
      ADDRBWRADDR(5) => BU2_U0_wrapper_controller_address(1),
      ADDRBWRADDR(4) => BU2_U0_wrapper_controller_address(0),
      ADDRBWRADDR(3) => BU2_N0,
      ADDRBWRADDR(2) => BU2_N0,
      ADDRBWRADDR(1) => BU2_N0,
      ADDRBWRADDR(0) => BU2_N0,
      DIADI(15) => BU2_N0,
      DIADI(14) => BU2_N0,
      DIADI(13) => BU2_N0,
      DIADI(12) => BU2_N0,
      DIADI(11) => BU2_N0,
      DIADI(10) => BU2_N0,
      DIADI(9) => BU2_N0,
      DIADI(8) => BU2_N0,
      DIADI(7) => BU2_N0,
      DIADI(6) => BU2_N0,
      DIADI(5) => BU2_N0,
      DIADI(4) => BU2_N0,
      DIADI(3) => BU2_N0,
      DIADI(2) => BU2_N0,
      DIADI(1) => BU2_N0,
      DIADI(0) => BU2_N0,
      DIBDI(15) => BU2_N0,
      DIBDI(14) => BU2_N0,
      DIBDI(13) => BU2_N0,
      DIBDI(12) => BU2_N0,
      DIBDI(11) => BU2_N0,
      DIBDI(10) => BU2_N0,
      DIBDI(9) => BU2_N0,
      DIBDI(8) => BU2_N0,
      DIBDI(7) => BU2_N0,
      DIBDI(6) => BU2_N0,
      DIBDI(5) => BU2_N0,
      DIBDI(4) => BU2_N0,
      DIBDI(3) => BU2_N0,
      DIBDI(2) => BU2_N0,
      DIBDI(1) => BU2_N0,
      DIBDI(0) => BU2_N0,
      DIPADIP(1) => BU2_N0,
      DIPADIP(0) => BU2_N0,
      DIPBDIP(1) => BU2_N0,
      DIPBDIP(0) => BU2_N0,
      DOADO(15) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_15_UNCONNECTED,
      DOADO(14) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_14_UNCONNECTED,
      DOADO(13) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_13_UNCONNECTED,
      DOADO(12) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_12_UNCONNECTED,
      DOADO(11) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_11_UNCONNECTED,
      DOADO(10) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_10_UNCONNECTED,
      DOADO(9) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_9_UNCONNECTED,
      DOADO(8) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_8_UNCONNECTED,
      DOADO(7) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_7_UNCONNECTED,
      DOADO(6) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_6_UNCONNECTED,
      DOADO(5) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_5_UNCONNECTED,
      DOADO(4) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_4_UNCONNECTED,
      DOADO(3) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_3_UNCONNECTED,
      DOADO(2) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_2_UNCONNECTED,
      DOADO(1) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_1_UNCONNECTED,
      DOADO(0) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOADO_0_UNCONNECTED,
      DOBDO(15) => BU2_U0_wrapper_controller_controller_instrom_instruction0(15),
      DOBDO(14) => BU2_U0_wrapper_controller_controller_instrom_instruction0(14),
      DOBDO(13) => BU2_U0_wrapper_controller_controller_instrom_instruction0(13),
      DOBDO(12) => BU2_U0_wrapper_controller_controller_instrom_instruction0(12),
      DOBDO(11) => BU2_U0_wrapper_controller_controller_instrom_instruction0(11),
      DOBDO(10) => BU2_U0_wrapper_controller_controller_instrom_instruction0(10),
      DOBDO(9) => BU2_U0_wrapper_controller_controller_instrom_instruction0(9),
      DOBDO(8) => BU2_U0_wrapper_controller_controller_instrom_instruction0(8),
      DOBDO(7) => BU2_U0_wrapper_controller_controller_instrom_instruction0(7),
      DOBDO(6) => BU2_U0_wrapper_controller_controller_instrom_instruction0(6),
      DOBDO(5) => BU2_U0_wrapper_controller_controller_instrom_instruction0(5),
      DOBDO(4) => BU2_U0_wrapper_controller_controller_instrom_instruction0(4),
      DOBDO(3) => BU2_U0_wrapper_controller_controller_instrom_instruction0(3),
      DOBDO(2) => BU2_U0_wrapper_controller_controller_instrom_instruction0(2),
      DOBDO(1) => BU2_U0_wrapper_controller_controller_instrom_instruction0(1),
      DOBDO(0) => BU2_U0_wrapper_controller_controller_instrom_instruction0(0),
      DOPADOP(1) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPADOP_1_UNCONNECTED,
      DOPADOP(0) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw0_fw0_1024x18_DOPADOP_0_UNCONNECTED,
      DOPBDOP(1) => BU2_U0_wrapper_controller_controller_instrom_instruction0(17),
      DOPBDOP(0) => BU2_U0_wrapper_controller_controller_instrom_instruction0(16),
      WEA(1) => BU2_N0,
      WEA(0) => BU2_N0,
      WEBWE(3) => BU2_N0,
      WEBWE(2) => BU2_N0,
      WEBWE(1) => BU2_N0,
      WEBWE(0) => BU2_N0
    );
  BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18 : RAMB18E1
    generic map(
      SRVAL_A => X"00000",
      INITP_00 => X"76A0CA0FD37D3CCFFFCFFFFF7FFF4D57F76AA832803FD34F4D3F33778FFFFF8F",
      INITP_01 => X"CCCF000CBFEFFBFEF3FF3FBCCCFFCCCFEFFBFFFFDBFFFF6FFF4CFCDF3F3DFF5F",
      INITP_02 => X"0000000000000B4B4A28B4B48F3FF3FB5D7AA000282D60282BBBBBBB0B555000",
      INITP_03 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_04 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INITP_05 => X"B4AA0A5ED0A69003000000000000000000000000000000000000000000000000",
      INITP_06 => X"888C88C88C88C88BC302CB2CB3888BFFE30FFE30820FBFDEFFE5DAAAA8BFFCB4",
      INITP_07 => X"EBCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCCB00C2FBEFBFA2200EAAEA88A88B4B",
      INIT_00 => X"CF1E0F01401540154015401540154015401540154015C000CF1E0F0040154015",
      INIT_01 => X"40016003505E2002401E401A031B033A001F0330006050674008501B4004C000",
      INIT_02 => X"CB0A0AEC0B020E000F00010E00F203AB5C464060600650462001401E0346505E",
      INIT_03 => X"03AE54414F0154414E43CC08CE09CF0ACD08CA09CB0AFCD04D0E01504C08CA09",
      INIT_04 => X"4002405302DE011F03AE02E103AB544F40086003402FAF008E01AB008A014053",
      INIT_05 => X"00E1009A015803564063A0DF032A00EB012B00E1009A01580356405C405C5452",
      INIT_06 => X"5C8540606006548A2020032A508A2004401E4002033A00080330C020032A00EB",
      INIT_07 => X"4F0154824E43CD08CE09CF0ABDC04C0E01504D08CE09CF0A0E000F00010E00F0",
      INIT_08 => X"A0BF032A40910330C040032A508E250100EB012B00E64074AF008E0140855482",
      INIT_09 => X"03CE03D003CE54A3470267034095000040020321033A000254982020032A0330",
      INIT_0A => X"54BA4708A00000BF03BA03D403E203BC03CE03D003EC54AE4704A00000BF03BA",
      INIT_0B => X"03E6A00003BA03CC03EA03CCA00000D400BF03BA03DC03E403BC03CE03D003EC",
      INIT_0C => X"030460080304600903BC03C803DE03BA03046004030460050304600603BC03C8",
      INIT_0D => X"03BA0304600B03BC03EE03CA03BC0304600A03BC03CE03F4A00003BA03046007",
      INIT_0E => X"A00003BA03CE03E203D0A00003BA03C803DE03CCA00003BA03EA03E403CCA000",
      INIT_0F => X"01504E0E01504D0E01504C0E015001120B000A040F000E000D000C0040F30C04",
      INIT_10 => X"0B010A44A0005D06EB00CA01AF00BE60BD509C406609650864070B010A434F0E",
      INIT_11 => X"0000A000CA0E0154CB0E0154CC0E0154CD0E0154CE0E0154CF0E0154A0000112",
      INIT_12 => X"0700C10AC00901000000A0005D26E100C001C208020001010043C10AC0090100",
      INIT_13 => X"475187015536462086011942080809080A080B0E06004B084A08490848080500",
      INIT_14 => X"A000C50103BA03051C6003BC03EE03CA03BC03051C7003BC03CE03F4A0005531",
      INIT_15 => X"20104007A000C0070010A000C01400E0A00055542010400CA00055502020400C",
      INIT_16 => X"0000000000000000000000000000000000000000A000516220014007A000515E",
      INIT_17 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_18 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_19 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1D => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1E => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_1F => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_20 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_21 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_22 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_23 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_24 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_25 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_26 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_27 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_28 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_29 => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2A => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2B => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2C => X"0000000000000000000000000000000000000000000000000000000000000000",
      INIT_2D => X"0500040000000000000000000000000000000000000000000000000000000000",
      INIT_2E => X"5AF2C0010101A007030002002008030002002010600B620A0300050204EC42E3",
      INIT_2F => X"A00056FC2002400CA000C008C209C30AF0104008C209C30AB350924042EE0106",
      INIT_30 => X"0C0601000C060100A00003FC0316030C03FC0316030C1C00A00057002001400C",
      INIT_31 => X"03BA03EE03DE03C803D6A000813081075B19410AA00001000C0601000C060100",
      INIT_32 => X"A000A01F4000A000A0604000432503D8A00003BC03C003E453284000032DA000",
      INIT_33 => X"03ECC100D100032AA11F11004343032A03BC03CC03D2C100D100032DA1601100",
      INIT_34 => X"A00003590C000382C00A00C4C00B00BBC00900A4A00003BA0304032D03BC03CC",
      INIT_35 => X"03860100008003930F000E000D00A00003590C0DA00003590C10A00003590C07",
      INIT_36 => X"C00900B8437F00C4C00B004FC0090034437F00C4C00B0077C009004CA0000368",
      INIT_37 => X"C00A00C2C00B0037C00900EC037F00C2C00B002FC0090094437F00F4C00B00FF",
      INIT_38 => X"C209023DC20A0204C108C008C2090255C20A0204A00057822080400AA0000382",
      INIT_39 => X"0004A0004F084E084D084C08039FA000CF08CE08CD08CC08039FA000C108C008",
      INIT_3A => X"037403B1A000036E03B1A00003680393A000039903620386A000C0090040C00A",
      INIT_3B => X"43FC015F43FC012043FC010DA00003A86C046D056E060F00038601000020A000",
      INIT_3C => X"43FC014443FC014343FC014243FC014143FC013643FC013143FC013243FC013E",
      INIT_3D => X"43FC014C43FC014B43FC014A43FC014943FC014843FC014743FC014643FC0145",
      INIT_3E => X"43FC015443FC015343FC015243FC015143FC015043FC014F43FC014E43FC014D",
      INIT_3F => X"43FFA000C10D030043FC015A43FC015943FC015843FC015743FC015643FC0155",
      INIT_FILE => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      RSTREG_PRIORITY_A => "REGCE",
      RSTREG_PRIORITY_B => "REGCE",
      SIM_COLLISION_CHECK => "ALL",
      INIT_A => X"00000",
      INIT_B => X"00000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "WRITE_FIRST",
      DOA_REG => 0,
      DOB_REG => 0,
      READ_WIDTH_A => 18,
      READ_WIDTH_B => 18,
      WRITE_WIDTH_A => 18,
      WRITE_WIDTH_B => 18,
      SRVAL_B => X"00000"
    )
    port map (
      CLKARDCLK => BU2_N0,
      CLKBWRCLK => icap_clk,
      ENARDEN => BU2_N0,
      ENBWREN => BU2_N1,
      REGCEAREGCE => BU2_N0,
      REGCEB => BU2_N0,
      RSTRAMARSTRAM => BU2_N0,
      RSTRAMB => BU2_N0,
      RSTREGARSTREG => BU2_N0,
      RSTREGB => BU2_N0,
      ADDRARDADDR(13) => BU2_N0,
      ADDRARDADDR(12) => BU2_N0,
      ADDRARDADDR(11) => BU2_N0,
      ADDRARDADDR(10) => BU2_N0,
      ADDRARDADDR(9) => BU2_N0,
      ADDRARDADDR(8) => BU2_N0,
      ADDRARDADDR(7) => BU2_N0,
      ADDRARDADDR(6) => BU2_N0,
      ADDRARDADDR(5) => BU2_N0,
      ADDRARDADDR(4) => BU2_N0,
      ADDRARDADDR(3) => BU2_N0,
      ADDRARDADDR(2) => BU2_N0,
      ADDRARDADDR(1) => BU2_N0,
      ADDRARDADDR(0) => BU2_N0,
      ADDRBWRADDR(13) => BU2_U0_wrapper_controller_address(9),
      ADDRBWRADDR(12) => BU2_U0_wrapper_controller_address(8),
      ADDRBWRADDR(11) => BU2_U0_wrapper_controller_address(7),
      ADDRBWRADDR(10) => BU2_U0_wrapper_controller_address(6),
      ADDRBWRADDR(9) => BU2_U0_wrapper_controller_address(5),
      ADDRBWRADDR(8) => BU2_U0_wrapper_controller_address(4),
      ADDRBWRADDR(7) => BU2_U0_wrapper_controller_address(3),
      ADDRBWRADDR(6) => BU2_U0_wrapper_controller_address(2),
      ADDRBWRADDR(5) => BU2_U0_wrapper_controller_address(1),
      ADDRBWRADDR(4) => BU2_U0_wrapper_controller_address(0),
      ADDRBWRADDR(3) => BU2_N0,
      ADDRBWRADDR(2) => BU2_N0,
      ADDRBWRADDR(1) => BU2_N0,
      ADDRBWRADDR(0) => BU2_N0,
      DIADI(15) => BU2_N0,
      DIADI(14) => BU2_N0,
      DIADI(13) => BU2_N0,
      DIADI(12) => BU2_N0,
      DIADI(11) => BU2_N0,
      DIADI(10) => BU2_N0,
      DIADI(9) => BU2_N0,
      DIADI(8) => BU2_N0,
      DIADI(7) => BU2_N0,
      DIADI(6) => BU2_N0,
      DIADI(5) => BU2_N0,
      DIADI(4) => BU2_N0,
      DIADI(3) => BU2_N0,
      DIADI(2) => BU2_N0,
      DIADI(1) => BU2_N0,
      DIADI(0) => BU2_N0,
      DIBDI(15) => BU2_N0,
      DIBDI(14) => BU2_N0,
      DIBDI(13) => BU2_N0,
      DIBDI(12) => BU2_N0,
      DIBDI(11) => BU2_N0,
      DIBDI(10) => BU2_N0,
      DIBDI(9) => BU2_N0,
      DIBDI(8) => BU2_N0,
      DIBDI(7) => BU2_N0,
      DIBDI(6) => BU2_N0,
      DIBDI(5) => BU2_N0,
      DIBDI(4) => BU2_N0,
      DIBDI(3) => BU2_N0,
      DIBDI(2) => BU2_N0,
      DIBDI(1) => BU2_N0,
      DIBDI(0) => BU2_N0,
      DIPADIP(1) => BU2_N0,
      DIPADIP(0) => BU2_N0,
      DIPBDIP(1) => BU2_N0,
      DIPBDIP(0) => BU2_N0,
      DOADO(15) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_15_UNCONNECTED,
      DOADO(14) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_14_UNCONNECTED,
      DOADO(13) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_13_UNCONNECTED,
      DOADO(12) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_12_UNCONNECTED,
      DOADO(11) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_11_UNCONNECTED,
      DOADO(10) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_10_UNCONNECTED,
      DOADO(9) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_9_UNCONNECTED,
      DOADO(8) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_8_UNCONNECTED,
      DOADO(7) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_7_UNCONNECTED,
      DOADO(6) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_6_UNCONNECTED,
      DOADO(5) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_5_UNCONNECTED,
      DOADO(4) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_4_UNCONNECTED,
      DOADO(3) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_3_UNCONNECTED,
      DOADO(2) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_2_UNCONNECTED,
      DOADO(1) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_1_UNCONNECTED,
      DOADO(0) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOADO_0_UNCONNECTED,
      DOBDO(15) => BU2_U0_wrapper_controller_controller_instrom_instruction1(15),
      DOBDO(14) => BU2_U0_wrapper_controller_controller_instrom_instruction1(14),
      DOBDO(13) => BU2_U0_wrapper_controller_controller_instrom_instruction1(13),
      DOBDO(12) => BU2_U0_wrapper_controller_controller_instrom_instruction1(12),
      DOBDO(11) => BU2_U0_wrapper_controller_controller_instrom_instruction1(11),
      DOBDO(10) => BU2_U0_wrapper_controller_controller_instrom_instruction1(10),
      DOBDO(9) => BU2_U0_wrapper_controller_controller_instrom_instruction1(9),
      DOBDO(8) => BU2_U0_wrapper_controller_controller_instrom_instruction1(8),
      DOBDO(7) => BU2_U0_wrapper_controller_controller_instrom_instruction1(7),
      DOBDO(6) => BU2_U0_wrapper_controller_controller_instrom_instruction1(6),
      DOBDO(5) => BU2_U0_wrapper_controller_controller_instrom_instruction1(5),
      DOBDO(4) => BU2_U0_wrapper_controller_controller_instrom_instruction1(4),
      DOBDO(3) => BU2_U0_wrapper_controller_controller_instrom_instruction1(3),
      DOBDO(2) => BU2_U0_wrapper_controller_controller_instrom_instruction1(2),
      DOBDO(1) => BU2_U0_wrapper_controller_controller_instrom_instruction1(1),
      DOBDO(0) => BU2_U0_wrapper_controller_controller_instrom_instruction1(0),
      DOPADOP(1) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPADOP_1_UNCONNECTED,
      DOPADOP(0) => NLW_BU2_U0_wrapper_controller_controller_instrom_fw1_fw1_1024x18_DOPADOP_0_UNCONNECTED,
      DOPBDOP(1) => BU2_U0_wrapper_controller_controller_instrom_instruction1(17),
      DOPBDOP(0) => BU2_U0_wrapper_controller_controller_instrom_instruction1(16),
      WEA(1) => BU2_N0,
      WEA(0) => BU2_N0,
      WEBWE(3) => BU2_N0,
      WEBWE(2) => BU2_N0,
      WEBWE(1) => BU2_N0,
      WEBWE(0) => BU2_N0
    );
  BU2_U0_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_8_o1_INV_0 : INV
    port map (
      I => BU2_U0_wrapper_controller_sync_init,
      O => BU2_U0_wrapper_controller_controller_dbuffer_controller_dbuffer_mem_sync_init_INV_8_o
    );
  BU2_U0_wrapper_controller_word_count_7_inv1_INV_0 : INV
    port map (
      I => BU2_U0_wrapper_controller_word_count(7),
      O => BU2_U0_wrapper_controller_word_count_7_inv
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_lut_0_INV_0 : INV
    port map (
      I => BU2_U0_wrapper_controller_frame_count(0),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_lut(0)
    );
  BU2_U0_wrapper_controller_Mcount_word_count_lut_0_INV_0 : INV
    port map (
      I => BU2_U0_wrapper_controller_word_count(0),
      O => BU2_U0_wrapper_controller_Mcount_word_count_lut(0)
    );
  BU2_U0_wrapper_controller_in_port_3_inv1_G : LUT6
    generic map(
      INIT => X"139B57DF028A46CE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux3_81,
      I3 => BU2_U0_wrapper_controller_mux3_9_274,
      I4 => BU2_U0_wrapper_controller_mux3_10_282,
      I5 => BU2_U0_wrapper_controller_dbuf_din(3),
      O => BU2_N47
    );
  BU2_U0_wrapper_controller_in_port_3_inv1_F : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux3_7_267,
      I3 => BU2_U0_wrapper_controller_mux3_8_272,
      I4 => BU2_U0_wrapper_controller_mux3_91_280,
      I5 => BU2_U0_wrapper_controller_mux3_82_277,
      O => BU2_N46
    );
  BU2_U0_wrapper_controller_in_port_3_inv1 : MUXF7
    port map (
      I0 => BU2_N46,
      I1 => BU2_N47,
      S => BU2_U0_wrapper_controller_port_id(3),
      O => BU2_U0_wrapper_controller_in_port(3)
    );
  BU2_U0_wrapper_controller_in_port_2_inv1_G : LUT6
    generic map(
      INIT => X"139B57DF028A46CE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux2_81,
      I3 => BU2_U0_wrapper_controller_mux2_9_294,
      I4 => BU2_U0_wrapper_controller_mux2_10_302,
      I5 => BU2_U0_wrapper_controller_dbuf_din(2),
      O => BU2_N45
    );
  BU2_U0_wrapper_controller_in_port_2_inv1_F : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux2_7_287,
      I3 => BU2_U0_wrapper_controller_mux2_8_292,
      I4 => BU2_U0_wrapper_controller_mux2_91_300,
      I5 => BU2_U0_wrapper_controller_mux2_82_297,
      O => BU2_N44
    );
  BU2_U0_wrapper_controller_in_port_2_inv1 : MUXF7
    port map (
      I0 => BU2_N44,
      I1 => BU2_N45,
      S => BU2_U0_wrapper_controller_port_id(3),
      O => BU2_U0_wrapper_controller_in_port(2)
    );
  BU2_U0_wrapper_controller_in_port_5_inv1_G : LUT5
    generic map(
      INIT => X"15043726"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux5_10_262,
      I3 => BU2_U0_wrapper_controller_dbuf_din(5),
      I4 => BU2_U0_wrapper_controller_mux5_81,
      O => BU2_N43
    );
  BU2_U0_wrapper_controller_in_port_5_inv1_F : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux5_7_249,
      I3 => BU2_U0_wrapper_controller_mux5_8_254,
      I4 => BU2_U0_wrapper_controller_mux5_9_260,
      I5 => BU2_U0_wrapper_controller_mux5_82_257,
      O => BU2_N42
    );
  BU2_U0_wrapper_controller_in_port_5_inv1 : MUXF7
    port map (
      I0 => BU2_N42,
      I1 => BU2_N43,
      S => BU2_U0_wrapper_controller_port_id(3),
      O => BU2_U0_wrapper_controller_in_port(5)
    );
  BU2_U0_wrapper_controller_in_port_4_inv1_G : LUT6
    generic map(
      INIT => X"139B57DF028A46CE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux4_81,
      I3 => BU2_U0_wrapper_controller_mux4_9_313,
      I4 => BU2_U0_wrapper_controller_mux4_10_322,
      I5 => BU2_U0_wrapper_controller_dbuf_din(4),
      O => BU2_N41
    );
  BU2_U0_wrapper_controller_in_port_4_inv1_F : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux4_7_306,
      I3 => BU2_U0_wrapper_controller_mux4_8_311,
      I4 => BU2_U0_wrapper_controller_mux4_91_320,
      I5 => BU2_U0_wrapper_controller_mux4_82_316,
      O => BU2_N40
    );
  BU2_U0_wrapper_controller_in_port_4_inv1 : MUXF7
    port map (
      I0 => BU2_N40,
      I1 => BU2_N41,
      S => BU2_U0_wrapper_controller_port_id(3),
      O => BU2_U0_wrapper_controller_in_port(4)
    );
  BU2_U0_wrapper_controller_in_port_0_inv1_G : LUT6
    generic map(
      INIT => X"139B57DF028A46CE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux_81,
      I3 => BU2_U0_wrapper_controller_mux_9_360,
      I4 => BU2_U0_wrapper_controller_mux_10_371,
      I5 => BU2_U0_wrapper_controller_dbuf_din(0),
      O => BU2_N39
    );
  BU2_U0_wrapper_controller_in_port_0_inv1_F : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux_7_352,
      I3 => BU2_U0_wrapper_controller_mux_8_357,
      I4 => BU2_U0_wrapper_controller_mux_91_369,
      I5 => BU2_U0_wrapper_controller_mux_82_364,
      O => BU2_N38
    );
  BU2_U0_wrapper_controller_in_port_0_inv1 : MUXF7
    port map (
      I0 => BU2_N38,
      I1 => BU2_N39,
      S => BU2_U0_wrapper_controller_port_id(3),
      O => BU2_U0_wrapper_controller_in_port(0)
    );
  BU2_U0_wrapper_controller_in_port_7_inv1_G : LUT6
    generic map(
      INIT => X"2275777522207720"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id_2_2,
      I2 => BU2_N20,
      I3 => BU2_U0_wrapper_controller_port_id(2),
      I4 => BU2_U0_wrapper_controller_mux7_10_219,
      I5 => BU2_U0_wrapper_controller_dbuf_din(7),
      O => BU2_N37
    );
  BU2_U0_wrapper_controller_in_port_7_inv1_F : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux7_8_211,
      I3 => BU2_U0_wrapper_controller_mux7_7_206,
      I4 => BU2_U0_wrapper_controller_mux7_9_217,
      I5 => BU2_U0_wrapper_controller_mux7_81_214,
      O => BU2_N36
    );
  BU2_U0_wrapper_controller_in_port_7_inv1 : MUXF7
    port map (
      I0 => BU2_N36,
      I1 => BU2_N37,
      S => BU2_U0_wrapper_controller_port_id(3),
      O => BU2_U0_wrapper_controller_in_port(7)
    );
  BU2_U0_wrapper_controller_mux1_81_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_rdbk_synwd(1),
      I2 => BU2_U0_wrapper_controller_rdbk_syn(1),
      O => BU2_N35
    );
  BU2_U0_wrapper_controller_mux1_81_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => NlwRenamedSig_OI_status_injection,
      I2 => BU2_U0_wrapper_controller_fecc_far_dly(17),
      I3 => BU2_U0_wrapper_controller_fecc_far_cap(17),
      I4 => BU2_U0_wrapper_controller_fecc_far_cap(9),
      I5 => BU2_U0_wrapper_controller_fecc_far_dly(9),
      O => BU2_N34
    );
  BU2_U0_wrapper_controller_mux1_81 : MUXF7
    port map (
      I0 => BU2_N34,
      I1 => BU2_N35,
      S => BU2_U0_wrapper_controller_port_id(1),
      O => BU2_U0_wrapper_controller_mux1_81_335
    );
  BU2_U0_wrapper_controller_mux6_81_G : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_rdbk_synwd(6),
      I2 => BU2_U0_wrapper_controller_rdbk_syn(6),
      O => BU2_N33
    );
  BU2_U0_wrapper_controller_mux6_81_F : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => NlwRenamedSig_OI_status_injection,
      I2 => BU2_U0_wrapper_controller_fecc_far_dly(22),
      I3 => BU2_U0_wrapper_controller_fecc_far_cap(22),
      I4 => BU2_U0_wrapper_controller_fecc_far_cap(14),
      I5 => BU2_U0_wrapper_controller_fecc_far_dly(14),
      O => BU2_N32
    );
  BU2_U0_wrapper_controller_mux6_81 : MUXF7
    port map (
      I0 => BU2_N32,
      I1 => BU2_N33,
      S => BU2_U0_wrapper_controller_port_id(1),
      O => BU2_U0_wrapper_controller_mux6_81_232
    );
  BU2_U0_wrapper_controller_controller_dbuffer_burst_glue_set : LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_burst_588,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_halt9,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_halt91_1039,
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_halt92_1040,
      I4 => BU2_U0_wrapper_controller_controller_dbuffer_go,
      O => BU2_U0_wrapper_controller_controller_dbuffer_burst_glue_set_1051
    );
  BU2_U0_wrapper_controller_controller_dbuffer_inc41 : LUT4
    generic map(
      INIT => X"2AAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_burst_588,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_halt9,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_halt91_1039,
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_halt92_1040,
      O => BU2_U0_wrapper_controller_controller_dbuffer_inc4
    );
  BU2_U0_wrapper_controller_controller_dbuffer_n0258_inv1 : LUT5
    generic map(
      INIT => X"00400000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_write_strobe,
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_inc4,
      I4 => BU2_U0_wrapper_controller_dbuf_select,
      O => BU2_U0_wrapper_controller_controller_dbuffer_n0258_inv
    );
  BU2_U0_wrapper_controller_errinj_ego_glue_set : LUT6
    generic map(
      INIT => X"FFFFFFFF8AAAAAAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_errinj_ego_210,
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_port_id(4),
      I3 => NlwRenamedSig_OI_monitor_txdata(7),
      I4 => BU2_U0_wrapper_controller_N9,
      I5 => inject_strobe,
      O => BU2_U0_wrapper_controller_errinj_ego_glue_set_1050
    );
  BU2_U0_wrapper_controller_frame_eos_glue_set : LUT6
    generic map(
      INIT => X"FFFFFFFF8AAAAAAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_eos_319,
      I1 => BU2_U0_wrapper_controller_port_id(4),
      I2 => NlwRenamedSig_OI_monitor_txdata(4),
      I3 => BU2_U0_wrapper_controller_port_id(2),
      I4 => BU2_U0_wrapper_controller_N9,
      I5 => BU2_U0_wrapper_controller_long_gap_474,
      O => BU2_U0_wrapper_controller_frame_eos_glue_set_1048
    );
  BU2_U0_wrapper_controller_rdbk_crc_glue_set : LUT5
    generic map(
      INIT => X"FFFF2AAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_crc_202,
      I1 => BU2_U0_wrapper_controller_pid_4_PWR_6_o_equal_41_o,
      I2 => BU2_U0_wrapper_controller_write_strobe,
      I3 => NlwRenamedSig_OI_monitor_txdata(7),
      I4 => fecc_crcerr,
      O => BU2_U0_wrapper_controller_rdbk_crc_glue_set_1047
    );
  BU2_U0_wrapper_controller_rdbk_ecc_glue_set : LUT6
    generic map(
      INIT => X"7FFF2AAA2AAA2AAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_ecc_226,
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => BU2_U0_wrapper_controller_pid_4_PWR_6_o_equal_41_o,
      I3 => BU2_U0_wrapper_controller_write_strobe,
      I4 => NlwRenamedSignal_fecc_syndromevalid,
      I5 => fecc_eccerr,
      O => BU2_U0_wrapper_controller_rdbk_ecc_glue_set_1049
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q : LUT6
    generic map(
      INIT => X"1BE41BE41BE4E4E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_N72,
      I4 => BU2_U0_wrapper_controller_read_strobe,
      I5 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q_585
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_2_Q : LUT6
    generic map(
      INIT => X"F5F5C6F5A0A093A0"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_inc1,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(2),
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_burst_588,
      I4 => BU2_U0_wrapper_controller_controller_dbuffer_halt,
      I5 => NlwRenamedSig_OI_monitor_txdata(2),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_2_Q_579
    );
  BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv1 : LUT6
    generic map(
      INIT => X"8000000080008000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_dbuf_select,
      I1 => BU2_U0_wrapper_controller_write_strobe,
      I2 => BU2_U0_wrapper_controller_port_id(0),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_controller_dbuffer_halt,
      I5 => BU2_U0_wrapper_controller_controller_dbuffer_burst_588,
      O => BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A121 : LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_inc4,
      I1 => BU2_U0_wrapper_controller_port_id(0),
      I2 => BU2_U0_wrapper_controller_write_strobe,
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_dbuf_select,
      O => BU2_U0_wrapper_controller_controller_dbuffer_N3
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A1011 : LUT5
    generic map(
      INIT => X"FFBFFFFF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_write_strobe,
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_inc4,
      I4 => BU2_U0_wrapper_controller_dbuf_select,
      O => BU2_U0_wrapper_controller_controller_dbuffer_N4
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(0),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0_glue_set_1061
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(1),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1_glue_set_1060
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(2),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2_glue_set_1059
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(3),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3_glue_set_1058
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(4),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4_glue_set_1057
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(5),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5_glue_set_1056
    );
  BU2_U0_wrapper_controller_mux7_3_SW0 : LUT6
    generic map(
      INIT => X"AAAAFFFF0000CCF0"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_syn(7),
      I1 => BU2_U0_wrapper_controller_fecc_far_cap(15),
      I2 => BU2_U0_wrapper_controller_fecc_far_dly(15),
      I3 => NlwRenamedSig_OI_status_injection,
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_N20
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(6),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6_glue_set_1055
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(7),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7_glue_set_1054
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(8),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(8),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8_glue_set_1053
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9_glue_set : LUT4
    generic map(
      INIT => X"FDF8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(9),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I3 => BU2_U0_wrapper_controller_address(9),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9_glue_set_1052
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Sh11 : LUT5
    generic map(
      INIT => X"00000010"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(1),
      I1 => BU2_U0_wrapper_controller_port_id(4),
      I2 => BU2_U0_wrapper_controller_port_id(3),
      I3 => BU2_U0_wrapper_controller_port_id(2),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_controller_dbuffer_N72
    );
  BU2_U0_wrapper_controller_bank_sel_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_bank_sel_reg_rstpot_1064,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_bank_sel_reg_935
    );
  BU2_U0_wrapper_controller_bank_sel_reg_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_ws_pid_4_AND_23_o,
      I1 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I2 => NlwRenamedSig_OI_monitor_txdata(0),
      O => BU2_U0_wrapper_controller_bank_sel_reg_rstpot_1064
    );
  BU2_U0_wrapper_controller_frame_locate_16 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_frame_locate_16_rstpot_1063,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(16)
    );
  BU2_U0_wrapper_controller_frame_locate_16_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_ws_pid_4_AND_4_o,
      I1 => BU2_U0_wrapper_controller_frame_locate(16),
      I2 => NlwRenamedSig_OI_monitor_txdata(0),
      O => BU2_U0_wrapper_controller_frame_locate_16_rstpot_1063
    );
  BU2_U0_wrapper_controller_ireq_reg : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_ireq_reg_rstpot_1062,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_icap_request
    );
  BU2_U0_wrapper_controller_ireq_reg_rstpot : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_ws_pid_4_AND_24_o,
      I1 => NlwRenamedSig_OI_icap_request,
      I2 => NlwRenamedSig_OI_monitor_txdata(7),
      O => BU2_U0_wrapper_controller_ireq_reg_rstpot_1062
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_16_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(16),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_xor_16_rt_396
    );
  BU2_U0_wrapper_controller_Mcount_word_count_xor_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_word_count(7),
      O => BU2_U0_wrapper_controller_Mcount_word_count_xor_7_rt_373
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(1),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_1_rt_441
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(2),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_2_rt_438
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(3),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_3_rt_435
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(4),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_4_rt_432
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(5),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_5_rt_429
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(6),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_6_rt_426
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_7_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(7),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_7_rt_423
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_8_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(8),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_8_rt_420
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_9_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(9),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_9_rt_417
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_10_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(10),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_10_rt_414
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_11_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(11),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_11_rt_411
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_12_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(12),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_12_rt_408
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_13_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(13),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_13_rt_405
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_14_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(14),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_14_rt_402
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_15_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(15),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy_15_rt_399
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_1_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_word_count(1),
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy_1_rt_391
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_2_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_word_count(2),
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy_2_rt_388
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_3_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_word_count(3),
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy_3_rt_385
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_4_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_word_count(4),
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy_4_rt_382
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_5_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_word_count(5),
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy_5_rt_379
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_6_rt : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_word_count(6),
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy_6_rt_376
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_0_glue_set_1061,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_1_glue_set_1060,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_2_glue_set_1059,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_3_glue_set_1058,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_4_glue_set_1057,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_5_glue_set_1056,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_6_glue_set_1055,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_7_glue_set_1054,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_8_glue_set_1053,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(8)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_pc_loop_register_bit_9_glue_set_1052,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_address(9)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_burst : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_burst_glue_set_1051,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_burst_588
    );
  BU2_U0_wrapper_controller_errinj_ego : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_errinj_ego_glue_set_1050,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_ego_210
    );
  BU2_U0_wrapper_controller_rdbk_ecc : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_rdbk_ecc_glue_set_1049,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_ecc_226
    );
  BU2_U0_wrapper_controller_frame_eos : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_frame_eos_glue_set_1048,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_eos_319
    );
  BU2_U0_wrapper_controller_rdbk_crc : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_rdbk_crc_glue_set_1047,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_crc_202
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux12 : LUT6
    generic map(
      INIT => X"AAAAF0F0CCCCFF00"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(1),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_9_591,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I3 => BU2_N18,
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_dbuf_din(1)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux12_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(22),
      I3 => NlwRenamedSig_OI_icap_i(30),
      I4 => NlwRenamedSig_OI_icap_i(14),
      I5 => NlwRenamedSig_OI_icap_i(6),
      O => BU2_N18
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux124 : LUT5
    generic map(
      INIT => X"AACC000F"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(3),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(3),
      I2 => BU2_N16,
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_dbuf_din(3)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux124_SW0 : LUT6
    generic map(
      INIT => X"028A46CE139B57DF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(20),
      I3 => NlwRenamedSig_OI_icap_i(28),
      I4 => NlwRenamedSig_OI_icap_i(12),
      I5 => NlwRenamedSig_OI_icap_i(4),
      O => BU2_N16
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux9 : LUT6
    generic map(
      INIT => X"AAAAF0F0CCCCFF00"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(0),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(8),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I3 => BU2_N14,
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_dbuf_din(0)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux9_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(23),
      I3 => NlwRenamedSig_OI_icap_i(31),
      I4 => NlwRenamedSig_OI_icap_i(15),
      I5 => NlwRenamedSig_OI_icap_i(7),
      O => BU2_N14
    );
  BU2_U0_wrapper_controller_controller_dbuffer_halt94 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_halt9,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_halt91_1039,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_halt92_1040,
      O => BU2_U0_wrapper_controller_controller_dbuffer_halt
    );
  BU2_U0_wrapper_controller_controller_dbuffer_halt93 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(2),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(2),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(6),
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(6),
      I4 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(5),
      I5 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(5),
      O => BU2_U0_wrapper_controller_controller_dbuffer_halt92_1040
    );
  BU2_U0_wrapper_controller_controller_dbuffer_halt92 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(4),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(4),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(3),
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(3),
      I4 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_9_612,
      I5 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_9_591,
      O => BU2_U0_wrapper_controller_controller_dbuffer_halt91_1039
    );
  BU2_U0_wrapper_controller_controller_dbuffer_halt91 : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_10_613,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_590,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_8_611,
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(8),
      I4 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(7),
      I5 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(7),
      O => BU2_U0_wrapper_controller_controller_dbuffer_halt9
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux1210 : LUT6
    generic map(
      INIT => X"CCCCF0F0AAAAFF00"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_10_613,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(6),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(6),
      I3 => BU2_N12,
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_dbuf_din(6)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux1210_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I2 => NlwRenamedSig_OI_icap_i(9),
      I3 => NlwRenamedSig_OI_icap_i(25),
      I4 => NlwRenamedSig_OI_icap_i(17),
      I5 => NlwRenamedSig_OI_icap_i(1),
      O => BU2_N12
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux1212 : LUT6
    generic map(
      INIT => X"AAAACCCCF0F0FF00"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(7),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(7),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_burst_588,
      I3 => BU2_N10,
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_dbuf_din(7)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux1212_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I2 => NlwRenamedSig_OI_icap_i(8),
      I3 => NlwRenamedSig_OI_icap_i(24),
      I4 => NlwRenamedSig_OI_icap_i(16),
      I5 => NlwRenamedSig_OI_icap_i(0),
      O => BU2_N10
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux122 : LUT6
    generic map(
      INIT => X"AAAAF0F0CCCCFF00"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(2),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_590,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(2),
      I3 => BU2_N8,
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_dbuf_din(2)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux122_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(21),
      I3 => NlwRenamedSig_OI_icap_i(29),
      I4 => NlwRenamedSig_OI_icap_i(13),
      I5 => NlwRenamedSig_OI_icap_i(5),
      O => BU2_N8
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux126 : LUT6
    generic map(
      INIT => X"CCCCF0F0AAAAFF00"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_8_611,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(4),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(4),
      I3 => BU2_N6,
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_dbuf_din(4)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux126_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(19),
      I3 => NlwRenamedSig_OI_icap_i(27),
      I4 => NlwRenamedSig_OI_icap_i(11),
      I5 => NlwRenamedSig_OI_icap_i(3),
      O => BU2_N6
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux128 : LUT6
    generic map(
      INIT => X"CCCCF0F0AAAAFF00"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_9_612,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(5),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(5),
      I3 => BU2_N4,
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_dbuf_din(5)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_mux128_SW0 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I2 => NlwRenamedSig_OI_icap_i(18),
      I3 => NlwRenamedSig_OI_icap_i(26),
      I4 => NlwRenamedSig_OI_icap_i(10),
      I5 => NlwRenamedSig_OI_icap_i(2),
      O => BU2_N4
    );
  BU2_U0_wrapper_controller_word_count_6_PWR_6_o_equal_12_o_6_Q : LUT6
    generic map(
      INIT => X"0000000800000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_word_count(0),
      I1 => BU2_U0_wrapper_controller_word_count(4),
      I2 => BU2_U0_wrapper_controller_word_count(1),
      I3 => BU2_U0_wrapper_controller_word_count(2),
      I4 => BU2_N2,
      I5 => BU2_U0_wrapper_controller_word_count(6),
      O => BU2_U0_wrapper_controller_word_count_6_PWR_6_o_equal_12_o
    );
  BU2_U0_wrapper_controller_word_count_6_PWR_6_o_equal_12_o_6_SW0 : LUT2
    generic map(
      INIT => X"E"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_word_count(3),
      I1 => BU2_U0_wrapper_controller_word_count(5),
      O => BU2_N2
    );
  BU2_U0_wrapper_controller_port_id_2_1 : LUT6
    generic map(
      INIT => X"FF00FF530000FF00"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_fecc_far_cap(23),
      I1 => BU2_U0_wrapper_controller_fecc_far_dly(23),
      I2 => NlwRenamedSig_OI_status_injection,
      I3 => BU2_U0_wrapper_controller_port_id(2),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_port_id_2_2
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina321 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => icap_o_4(15),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_9_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina311 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => icap_o_4(0),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_7_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina301 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => icap_o_4(1),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_6_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina291 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => icap_o_4(2),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_5_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina281 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => icap_o_4(3),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_4_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina271 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => icap_o_4(4),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_3_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina261 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => icap_o_4(24),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_34_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina251 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => icap_o_4(25),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_33_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina241 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => icap_o_4(26),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_32_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina231 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => icap_o_4(27),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_31_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina221 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => icap_o_4(28),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_30_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina211 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => icap_o_4(5),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_2_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina201 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => icap_o_4(29),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_29_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina191 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => icap_o_4(30),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_28_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => icap_o_4(31),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_27_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => icap_o_4(16),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_25_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => icap_o_4(17),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_24_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => icap_o_4(18),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_23_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => icap_o_4(19),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_22_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => icap_o_4(20),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_21_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => icap_o_4(21),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_20_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => icap_o_4(6),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_1_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => icap_o_4(22),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_19_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => icap_o_4(23),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_18_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => icap_o_4(8),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_16_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => icap_o_4(9),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_15_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => icap_o_4(10),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_14_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => icap_o_4(11),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_13_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => icap_o_4(12),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_12_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina33 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => icap_o_4(13),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_11_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina210 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => icap_o_4(14),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_10_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_dina110 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => icap_o_4(7),
      O => BU2_U0_wrapper_controller_controller_dbuffer_dina_0_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_addra91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_590,
      I2 => NlwRenamedSig_OI_icap_i(13),
      O => BU2_U0_wrapper_controller_controller_dbuffer_addra(8)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_addra81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_9_591,
      I2 => NlwRenamedSig_OI_icap_i(14),
      O => BU2_U0_wrapper_controller_controller_dbuffer_addra(7)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_addra71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(8),
      I2 => NlwRenamedSig_OI_icap_i(15),
      O => BU2_U0_wrapper_controller_controller_dbuffer_addra(6)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_addra61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(7),
      I2 => NlwRenamedSig_OI_icap_i(0),
      O => BU2_U0_wrapper_controller_controller_dbuffer_addra(5)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_addra51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(6),
      I2 => NlwRenamedSig_OI_icap_i(1),
      O => BU2_U0_wrapper_controller_controller_dbuffer_addra(4)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_addra41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(5),
      I2 => NlwRenamedSig_OI_icap_i(2),
      O => BU2_U0_wrapper_controller_controller_dbuffer_addra(3)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_addra31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(4),
      I2 => NlwRenamedSig_OI_icap_i(3),
      O => BU2_U0_wrapper_controller_controller_dbuffer_addra(2)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_addra21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(3),
      I2 => NlwRenamedSig_OI_icap_i(4),
      O => BU2_U0_wrapper_controller_controller_dbuffer_addra(1)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_addra11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(2),
      I2 => NlwRenamedSig_OI_icap_i(5),
      O => BU2_U0_wrapper_controller_controller_dbuffer_addra(0)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_icap_rdwrb11 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_doutb_26_Q,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      O => icap_rdwrb
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_icap_csb11 : LUT2
    generic map(
      INIT => X"B"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_doutb_35_Q,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      O => icap_csb
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(7),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_7_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(6),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_6_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(5),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_5_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(4),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_4_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(3),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_3_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(2),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_2_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_1_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A11 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N3,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_0_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N4,
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_9_591,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_9_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N4,
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(8),
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_8_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_A21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N4,
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_590,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_10_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_inc11 : LUT3
    generic map(
      INIT => X"A8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_N72,
      I1 => BU2_U0_wrapper_controller_read_strobe,
      I2 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_controller_dbuffer_inc1
    );
  BU2_U0_wrapper_controller_controller_dbuffer_go1 : LUT5
    generic map(
      INIT => X"40000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_dbuf_select,
      I4 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_controller_dbuffer_go
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_wea11 : LUT6
    generic map(
      INIT => X"01000000ABAAAAAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_N72,
      I4 => BU2_U0_wrapper_controller_write_strobe,
      I5 => BU2_U0_wrapper_controller_controller_dbuffer_doutb_17_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_wea(0)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_wea21 : LUT6
    generic map(
      INIT => X"04000000AEAAAAAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_N72,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I4 => BU2_U0_wrapper_controller_write_strobe,
      I5 => BU2_U0_wrapper_controller_controller_dbuffer_doutb_17_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_wea(1)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_wea41 : LUT6
    generic map(
      INIT => X"40000000EAAAAAAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_N72,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I4 => BU2_U0_wrapper_controller_write_strobe,
      I5 => BU2_U0_wrapper_controller_controller_dbuffer_doutb_17_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_wea(3)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_wea31 : LUT6
    generic map(
      INIT => X"04000000AEAAAAAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589,
      I1 => BU2_U0_wrapper_controller_controller_dbuffer_N72,
      I2 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0),
      I3 => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1),
      I4 => BU2_U0_wrapper_controller_write_strobe,
      I5 => BU2_U0_wrapper_controller_controller_dbuffer_doutb_17_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_wea(2)
    );
  BU2_U0_wrapper_controller_first_ecc_event1 : LUT3
    generic map(
      INIT => X"08"
    )
    port map (
      I0 => fecc_eccerr,
      I1 => NlwRenamedSignal_fecc_syndromevalid,
      I2 => BU2_U0_wrapper_controller_rdbk_ecc_226,
      O => BU2_U0_wrapper_controller_first_ecc_event
    );
  BU2_U0_wrapper_controller_dbuf_select_4_1 : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(3),
      I2 => BU2_U0_wrapper_controller_port_id(2),
      O => BU2_U0_wrapper_controller_dbuf_select
    );
  BU2_U0_wrapper_controller_pid_4_PWR_6_o_equal_41_o_4_1 : LUT5
    generic map(
      INIT => X"00000020"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => BU2_U0_wrapper_controller_port_id(3),
      I2 => BU2_U0_wrapper_controller_port_id(2),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_pid_4_PWR_6_o_equal_41_o
    );
  BU2_U0_wrapper_controller_mux811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_injection,
      I1 => BU2_U0_wrapper_controller_fecc_far_dly(0),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(0),
      O => BU2_U0_wrapper_controller_rdbk_fecc_far(0)
    );
  BU2_U0_wrapper_controller_mux1911 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_injection,
      I1 => BU2_U0_wrapper_controller_fecc_far_dly(1),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(1),
      O => BU2_U0_wrapper_controller_rdbk_fecc_far(1)
    );
  BU2_U0_wrapper_controller_mux2411 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_injection,
      I1 => BU2_U0_wrapper_controller_fecc_far_dly(2),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(2),
      O => BU2_U0_wrapper_controller_rdbk_fecc_far(2)
    );
  BU2_U0_wrapper_controller_mux2511 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_injection,
      I1 => BU2_U0_wrapper_controller_fecc_far_dly(3),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(3),
      O => BU2_U0_wrapper_controller_rdbk_fecc_far(3)
    );
  BU2_U0_wrapper_controller_mux2611 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_injection,
      I1 => BU2_U0_wrapper_controller_fecc_far_dly(4),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(4),
      O => BU2_U0_wrapper_controller_rdbk_fecc_far(4)
    );
  BU2_U0_wrapper_controller_mux2911 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_injection,
      I1 => BU2_U0_wrapper_controller_fecc_far_dly(7),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(7),
      O => BU2_U0_wrapper_controller_rdbk_fecc_far(7)
    );
  BU2_U0_wrapper_controller_mux2711 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_injection,
      I1 => BU2_U0_wrapper_controller_fecc_far_dly(5),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(5),
      O => BU2_U0_wrapper_controller_rdbk_fecc_far(5)
    );
  BU2_U0_wrapper_controller_mux2811 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_injection,
      I1 => BU2_U0_wrapper_controller_fecc_far_dly(6),
      I2 => BU2_U0_wrapper_controller_fecc_far_cap(6),
      O => BU2_U0_wrapper_controller_rdbk_fecc_far(6)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction181 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(9),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(9),
      O => BU2_U0_wrapper_controller_instruction(9)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction171 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(8),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(8),
      O => BU2_U0_wrapper_controller_instruction(8)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction161 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(7),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(7),
      O => BU2_U0_wrapper_controller_instruction(7)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction151 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(6),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(6),
      O => BU2_U0_wrapper_controller_instruction(6)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction141 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(5),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(5),
      O => BU2_U0_wrapper_controller_instruction(5)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction131 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(4),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(4),
      O => BU2_U0_wrapper_controller_instruction(4)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction121 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(3),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(3),
      O => BU2_U0_wrapper_controller_instruction(3)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction111 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(2),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(2),
      O => BU2_U0_wrapper_controller_instruction(2)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction101 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(1),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(1),
      O => BU2_U0_wrapper_controller_instruction(1)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction91 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(17),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(17),
      O => BU2_U0_wrapper_controller_instruction(17)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction81 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(16),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(16),
      O => BU2_U0_wrapper_controller_instruction(16)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction71 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(15),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(15),
      O => BU2_U0_wrapper_controller_instruction(15)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction61 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(14),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(14),
      O => BU2_U0_wrapper_controller_instruction(14)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction51 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(13),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(13),
      O => BU2_U0_wrapper_controller_instruction(13)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction41 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(12),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(12),
      O => BU2_U0_wrapper_controller_instruction(12)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction31 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(11),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(11),
      O => BU2_U0_wrapper_controller_instruction(11)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction21 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(10),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(10),
      O => BU2_U0_wrapper_controller_instruction(10)
    );
  BU2_U0_wrapper_controller_controller_instrom_Mmux_instruction19 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_bank_sel_reg_935,
      I1 => BU2_U0_wrapper_controller_controller_instrom_instruction0(0),
      I2 => BU2_U0_wrapper_controller_controller_instrom_instruction1(0),
      O => BU2_U0_wrapper_controller_instruction(0)
    );
  BU2_U0_wrapper_controller_ws_pid_4_AND_16_o11 : LUT4
    generic map(
      INIT => X"0800"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(1),
      I1 => BU2_U0_wrapper_controller_port_id(0),
      I2 => BU2_U0_wrapper_controller_port_id(3),
      I3 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_N9
    );
  BU2_U0_wrapper_controller_monitor_txwrite1 : LUT6
    generic map(
      INIT => X"0000000008000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_write_strobe,
      I1 => BU2_U0_wrapper_controller_port_id(0),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(2),
      I4 => BU2_U0_wrapper_controller_port_id(3),
      I5 => BU2_U0_wrapper_controller_port_id(4),
      O => monitor_txwrite
    );
  BU2_U0_wrapper_controller_monitor_rxread1 : LUT6
    generic map(
      INIT => X"0000000008000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_read_strobe,
      I1 => BU2_U0_wrapper_controller_port_id(0),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(2),
      I4 => BU2_U0_wrapper_controller_port_id(3),
      I5 => BU2_U0_wrapper_controller_port_id(4),
      O => monitor_rxread
    );
  BU2_U0_wrapper_controller_fetch_txwrite1 : LUT6
    generic map(
      INIT => X"0000000008000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(1),
      I1 => BU2_U0_wrapper_controller_write_strobe,
      I2 => BU2_U0_wrapper_controller_port_id(0),
      I3 => BU2_U0_wrapper_controller_port_id(2),
      I4 => BU2_U0_wrapper_controller_port_id(3),
      I5 => BU2_U0_wrapper_controller_port_id(4),
      O => BU2_fetch_txwrite
    );
  BU2_U0_wrapper_controller_fetch_rxread1 : LUT6
    generic map(
      INIT => X"0000000008000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(1),
      I1 => BU2_U0_wrapper_controller_read_strobe,
      I2 => BU2_U0_wrapper_controller_port_id(0),
      I3 => BU2_U0_wrapper_controller_port_id(2),
      I4 => BU2_U0_wrapper_controller_port_id(3),
      I5 => BU2_U0_wrapper_controller_port_id(4),
      O => BU2_fetch_rxread
    );
  BU2_U0_wrapper_controller_ws_pid_4_AND_23_o1 : LUT6
    generic map(
      INIT => X"4000000000000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_port_id(2),
      I3 => BU2_U0_wrapper_controller_port_id(3),
      I4 => BU2_U0_wrapper_controller_port_id(4),
      I5 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_ws_pid_4_AND_23_o
    );
  BU2_U0_wrapper_controller_ws_pid_4_AND_24_o1 : LUT6
    generic map(
      INIT => X"8000000000000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_port_id(2),
      I3 => BU2_U0_wrapper_controller_port_id(3),
      I4 => BU2_U0_wrapper_controller_port_id(4),
      I5 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_ws_pid_4_AND_24_o
    );
  BU2_U0_wrapper_controller_ws_pid_4_AND_1_o1 : LUT6
    generic map(
      INIT => X"0000000100000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_port_id(2),
      I3 => BU2_U0_wrapper_controller_port_id(3),
      I4 => BU2_U0_wrapper_controller_port_id(4),
      I5 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_ws_pid_4_AND_1_o
    );
  BU2_U0_wrapper_controller_ws_pid_4_AND_2_o1 : LUT6
    generic map(
      INIT => X"0000000200000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_port_id(2),
      I3 => BU2_U0_wrapper_controller_port_id(3),
      I4 => BU2_U0_wrapper_controller_port_id(4),
      I5 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_ws_pid_4_AND_2_o
    );
  BU2_U0_wrapper_controller_ws_pid_4_AND_3_o1 : LUT6
    generic map(
      INIT => X"0000000200000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(1),
      I1 => BU2_U0_wrapper_controller_port_id(0),
      I2 => BU2_U0_wrapper_controller_port_id(2),
      I3 => BU2_U0_wrapper_controller_port_id(3),
      I4 => BU2_U0_wrapper_controller_port_id(4),
      I5 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_ws_pid_4_AND_3_o
    );
  BU2_U0_wrapper_controller_ws_pid_4_AND_4_o1 : LUT6
    generic map(
      INIT => X"0000000800000000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_port_id(2),
      I3 => BU2_U0_wrapper_controller_port_id(3),
      I4 => BU2_U0_wrapper_controller_port_id(4),
      I5 => BU2_U0_wrapper_controller_write_strobe,
      O => BU2_U0_wrapper_controller_ws_pid_4_AND_4_o
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_toggle_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_not_t_state,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_t_state
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_int_capture_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_N0,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_clean_int
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_int_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_int_pulse,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_ack_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_interrupt_ack_internal
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shadow_carry_flop : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_carry_flag,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shadow_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shadow_zero_flop : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_zero_flag,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shadow_zero
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_int_enable_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_int_update_enable,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_int_enable_value,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_int_enable
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_flag_write_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_flag_type,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_flag_write
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_zero_flag_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_flag_enable,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_zero_fast_route,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_zero_flag
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_carry_flag_flop : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_flag_enable,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_carry_fast_route,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_carry_flag
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_register_write_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_register_type,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_register_write
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_write_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_memory_type,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_memory_write
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_store_flop_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(0),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_store_flop_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(1),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_store_flop_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(2),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_store_flop_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(3),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_store_flop_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(4),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_store_flop_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(5),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_store_flop_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(6),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_store_flop_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(7),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_flop_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(0),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_flop_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(1),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_flop_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(2),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_flop_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(3),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_flop_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(4),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_flop_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(5),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_flop_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(6),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_flop_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(7),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pipeline_bit : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_shift_carry_value,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shift_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_flop_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(0),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_flop_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(1),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_flop_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(2),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_flop_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(3),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_flop_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(4),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_flop_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(5),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_flop_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(6),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_flop_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(7),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_flop_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(0),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_flop_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(1),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_flop_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(2),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_flop_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(3),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_flop_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(4),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_flop_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(5),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_flop_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(6),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_flop_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(7),
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_out,
      R => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_group_flop : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_input_fetch_type,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_sel_group
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_write_strobe_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_write_active,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_write_strobe
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_read_strobe_flop : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_read_active,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_read_strobe
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(0),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(1),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(2),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(3),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(4),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(5),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(6),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(7),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(8),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(8)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_flop_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(9),
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(9)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_count_loop_register_bit_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_kcpsm3_not_active_interrupt,
      D => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_0 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_instruction(8),
      A1 => BU2_U0_wrapper_controller_instruction(9),
      A2 => BU2_U0_wrapper_controller_instruction(10),
      A3 => BU2_U0_wrapper_controller_instruction(11),
      D => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(0),
      DPRA0 => BU2_U0_wrapper_controller_instruction(4),
      DPRA1 => BU2_U0_wrapper_controller_instruction(5),
      DPRA2 => BU2_U0_wrapper_controller_instruction(6),
      DPRA3 => BU2_U0_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(0),
      DPO => BU2_U0_wrapper_controller_controller_kcpsm3_sy(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_1 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_instruction(8),
      A1 => BU2_U0_wrapper_controller_instruction(9),
      A2 => BU2_U0_wrapper_controller_instruction(10),
      A3 => BU2_U0_wrapper_controller_instruction(11),
      D => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(1),
      DPRA0 => BU2_U0_wrapper_controller_instruction(4),
      DPRA1 => BU2_U0_wrapper_controller_instruction(5),
      DPRA2 => BU2_U0_wrapper_controller_instruction(6),
      DPRA3 => BU2_U0_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(1),
      DPO => BU2_U0_wrapper_controller_controller_kcpsm3_sy(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_2 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_instruction(8),
      A1 => BU2_U0_wrapper_controller_instruction(9),
      A2 => BU2_U0_wrapper_controller_instruction(10),
      A3 => BU2_U0_wrapper_controller_instruction(11),
      D => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(2),
      DPRA0 => BU2_U0_wrapper_controller_instruction(4),
      DPRA1 => BU2_U0_wrapper_controller_instruction(5),
      DPRA2 => BU2_U0_wrapper_controller_instruction(6),
      DPRA3 => BU2_U0_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(2),
      DPO => BU2_U0_wrapper_controller_controller_kcpsm3_sy(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_3 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_instruction(8),
      A1 => BU2_U0_wrapper_controller_instruction(9),
      A2 => BU2_U0_wrapper_controller_instruction(10),
      A3 => BU2_U0_wrapper_controller_instruction(11),
      D => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(3),
      DPRA0 => BU2_U0_wrapper_controller_instruction(4),
      DPRA1 => BU2_U0_wrapper_controller_instruction(5),
      DPRA2 => BU2_U0_wrapper_controller_instruction(6),
      DPRA3 => BU2_U0_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(3),
      DPO => BU2_U0_wrapper_controller_controller_kcpsm3_sy(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_4 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_instruction(8),
      A1 => BU2_U0_wrapper_controller_instruction(9),
      A2 => BU2_U0_wrapper_controller_instruction(10),
      A3 => BU2_U0_wrapper_controller_instruction(11),
      D => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(4),
      DPRA0 => BU2_U0_wrapper_controller_instruction(4),
      DPRA1 => BU2_U0_wrapper_controller_instruction(5),
      DPRA2 => BU2_U0_wrapper_controller_instruction(6),
      DPRA3 => BU2_U0_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(4),
      DPO => BU2_U0_wrapper_controller_controller_kcpsm3_sy(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_5 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_instruction(8),
      A1 => BU2_U0_wrapper_controller_instruction(9),
      A2 => BU2_U0_wrapper_controller_instruction(10),
      A3 => BU2_U0_wrapper_controller_instruction(11),
      D => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(5),
      DPRA0 => BU2_U0_wrapper_controller_instruction(4),
      DPRA1 => BU2_U0_wrapper_controller_instruction(5),
      DPRA2 => BU2_U0_wrapper_controller_instruction(6),
      DPRA3 => BU2_U0_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(5),
      DPO => BU2_U0_wrapper_controller_controller_kcpsm3_sy(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_6 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_instruction(8),
      A1 => BU2_U0_wrapper_controller_instruction(9),
      A2 => BU2_U0_wrapper_controller_instruction(10),
      A3 => BU2_U0_wrapper_controller_instruction(11),
      D => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(6),
      DPRA0 => BU2_U0_wrapper_controller_instruction(4),
      DPRA1 => BU2_U0_wrapper_controller_instruction(5),
      DPRA2 => BU2_U0_wrapper_controller_instruction(6),
      DPRA3 => BU2_U0_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(6),
      DPO => BU2_U0_wrapper_controller_controller_kcpsm3_sy(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_reg_loop_register_bit_7 : RAM16X1D
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_instruction(8),
      A1 => BU2_U0_wrapper_controller_instruction(9),
      A2 => BU2_U0_wrapper_controller_instruction(10),
      A3 => BU2_U0_wrapper_controller_instruction(11),
      D => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(7),
      DPRA0 => BU2_U0_wrapper_controller_instruction(4),
      DPRA1 => BU2_U0_wrapper_controller_instruction(5),
      DPRA2 => BU2_U0_wrapper_controller_instruction(6),
      DPRA3 => BU2_U0_wrapper_controller_instruction(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_register_enable,
      SPO => NlwRenamedSig_OI_monitor_txdata(7),
      DPO => BU2_U0_wrapper_controller_controller_kcpsm3_sy(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_bit_0 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_port_id(0),
      A1 => BU2_U0_wrapper_controller_port_id(1),
      A2 => BU2_U0_wrapper_controller_port_id(2),
      A3 => BU2_U0_wrapper_controller_port_id(3),
      A4 => BU2_U0_wrapper_controller_port_id(4),
      A5 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      D => NlwRenamedSig_OI_monitor_txdata(0),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_bit_1 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_port_id(0),
      A1 => BU2_U0_wrapper_controller_port_id(1),
      A2 => BU2_U0_wrapper_controller_port_id(2),
      A3 => BU2_U0_wrapper_controller_port_id(3),
      A4 => BU2_U0_wrapper_controller_port_id(4),
      A5 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      D => NlwRenamedSig_OI_monitor_txdata(1),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_bit_2 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_port_id(0),
      A1 => BU2_U0_wrapper_controller_port_id(1),
      A2 => BU2_U0_wrapper_controller_port_id(2),
      A3 => BU2_U0_wrapper_controller_port_id(3),
      A4 => BU2_U0_wrapper_controller_port_id(4),
      A5 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      D => NlwRenamedSig_OI_monitor_txdata(2),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_bit_3 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_port_id(0),
      A1 => BU2_U0_wrapper_controller_port_id(1),
      A2 => BU2_U0_wrapper_controller_port_id(2),
      A3 => BU2_U0_wrapper_controller_port_id(3),
      A4 => BU2_U0_wrapper_controller_port_id(4),
      A5 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      D => NlwRenamedSig_OI_monitor_txdata(3),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_bit_4 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_port_id(0),
      A1 => BU2_U0_wrapper_controller_port_id(1),
      A2 => BU2_U0_wrapper_controller_port_id(2),
      A3 => BU2_U0_wrapper_controller_port_id(3),
      A4 => BU2_U0_wrapper_controller_port_id(4),
      A5 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      D => NlwRenamedSig_OI_monitor_txdata(4),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_bit_5 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_port_id(0),
      A1 => BU2_U0_wrapper_controller_port_id(1),
      A2 => BU2_U0_wrapper_controller_port_id(2),
      A3 => BU2_U0_wrapper_controller_port_id(3),
      A4 => BU2_U0_wrapper_controller_port_id(4),
      A5 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      D => NlwRenamedSig_OI_monitor_txdata(5),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_bit_6 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_port_id(0),
      A1 => BU2_U0_wrapper_controller_port_id(1),
      A2 => BU2_U0_wrapper_controller_port_id(2),
      A3 => BU2_U0_wrapper_controller_port_id(3),
      A4 => BU2_U0_wrapper_controller_port_id(4),
      A5 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      D => NlwRenamedSig_OI_monitor_txdata(6),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_bit_7 : RAM64X1S
    generic map(
      INIT => X"0000000000000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_port_id(0),
      A1 => BU2_U0_wrapper_controller_port_id(1),
      A2 => BU2_U0_wrapper_controller_port_id(2),
      A3 => BU2_U0_wrapper_controller_port_id(3),
      A4 => BU2_U0_wrapper_controller_port_id(4),
      A5 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      D => NlwRenamedSig_OI_monitor_txdata(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_data(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_0 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(0),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_1 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(1),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_2 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(2),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_3 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(3),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_4 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(4),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_5 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(5),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_6 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(6),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_7 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(7),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_8 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(8),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(8)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_bit_9 : RAM32X1S
    generic map(
      INIT => X"00000000"
    )
    port map (
      A0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      A1 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      A2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      A3 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      A4 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      D => BU2_U0_wrapper_controller_address(9),
      WCLK => icap_clk,
      WE => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_data(9)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_int_update_lut : LUT4
    generic map(
      INIT => X"EAAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      I3 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_int_update_enable
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_move_group_lut : LUT4
    generic map(
      INIT => X"7400"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(14),
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      I3 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_move_group
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_call_type_lut : LUT4
    generic map(
      INIT => X"1000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(14),
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      I3 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_call_type
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_push_pop_lut : LUT4
    generic map(
      INIT => X"5400"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(14),
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      I3 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_push_or_pop_type
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_flag_type_lut : LUT4
    generic map(
      INIT => X"41FC"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(14),
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      I3 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_flag_type
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_parity_lut : LUT4
    generic map(
      INIT => X"F3FF"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_parity,
      I1 => BU2_U0_wrapper_controller_instruction(13),
      I2 => BU2_U0_wrapper_controller_instruction(15),
      I3 => BU2_U0_wrapper_controller_instruction(16),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_parity
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift_carry_lut : LUT2
    generic map(
      INIT => X"C"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_carry,
      I1 => BU2_U0_wrapper_controller_instruction(15),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(0),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(1),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(2),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(3),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(4),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(5),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(6),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(7),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(8),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(8),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(8)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_vector_select_mux_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(15),
      I1 => BU2_U0_wrapper_controller_instruction(9),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_pop_data(9),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(9)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_register_type_lut : LUT4
    generic map(
      INIT => X"0145"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      I3 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_register_type
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_type_lut : LUT4
    generic map(
      INIT => X"0400"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      I3 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_type
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical_lut : LUT4
    generic map(
      INIT => X"FFE2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(14),
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      I3 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_logical
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith_lut : LUT3
    generic map(
      INIT => X"1F"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(14),
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_input_fetch_type_lut : LUT4
    generic map(
      INIT => X"0002"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(14),
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(16),
      I3 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_input_fetch_type
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_write_active_lut : LUT4
    generic map(
      INIT => X"4000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(17),
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_io_initial_decode,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_write_active
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_read_active_lut : LUT4
    generic map(
      INIT => X"0100"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I1 => BU2_U0_wrapper_controller_instruction(15),
      I2 => BU2_U0_wrapper_controller_instruction(17),
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_io_initial_decode,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_read_active
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_shadow_zero_lut : LUT3
    generic map(
      INIT => X"3F"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_shadow_zero,
      I1 => BU2_U0_wrapper_controller_instruction(16),
      I2 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shadow_zero
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith_carry_lut : LUT3
    generic map(
      INIT => X"F3"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry,
      I1 => BU2_U0_wrapper_controller_instruction(16),
      I2 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_io_decode_lut : LUT4
    generic map(
      INIT => X"0010"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => BU2_U0_wrapper_controller_instruction(13),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      I3 => BU2_U0_wrapper_controller_instruction(16),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_io_initial_decode
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_shadow_carry_lut : LUT2
    generic map(
      INIT => X"3"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_shadow_carry,
      I1 => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shadow_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift_inv : INV
    port map (
      I => BU2_U0_wrapper_controller_instruction(17),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_int_value_lut : LUT3
    generic map(
      INIT => X"04"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      I1 => BU2_U0_wrapper_controller_instruction(0),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_interrupt_ack_internal,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_int_enable_value
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_operand_select_mux_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_instruction(0),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_sy(0),
      O => BU2_U0_wrapper_controller_port_id(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_high_shift_in_lut : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(1),
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => BU2_U0_wrapper_controller_instruction(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_high_shift_in
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable_lut : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I1 => BU2_U0_wrapper_controller_instruction(13),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_memory_write,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_memory_enable
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_lut_0 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(0),
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => BU2_U0_wrapper_controller_instruction(13),
      I3 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_lut_1 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(1),
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => BU2_U0_wrapper_controller_instruction(13),
      I3 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_lut_2 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(2),
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => BU2_U0_wrapper_controller_instruction(13),
      I3 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_lut_3 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => BU2_U0_wrapper_controller_instruction(13),
      I3 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_lut_4 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(4),
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => BU2_U0_wrapper_controller_instruction(13),
      I3 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_lut_5 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => BU2_U0_wrapper_controller_instruction(13),
      I3 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_lut_6 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(6),
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => BU2_U0_wrapper_controller_instruction(13),
      I3 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_logical_lut_7 : LUT4
    generic map(
      INIT => X"6E8A"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(7),
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => BU2_U0_wrapper_controller_instruction(13),
      I3 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_logical_value(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_in_lut : LUT3
    generic map(
      INIT => X"6C"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(13),
      I1 => BU2_U0_wrapper_controller_instruction(14),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_carry_flag,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith_carry_in
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_lut_0 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(0),
      I1 => BU2_U0_wrapper_controller_port_id(0),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_lut_1 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(1),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_lut_2 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(2),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_lut_3 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(3),
      I1 => BU2_U0_wrapper_controller_port_id(3),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_lut_4 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(4),
      I1 => BU2_U0_wrapper_controller_port_id(4),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_lut_5 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(5),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_lut_6 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(6),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(6),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_out_lut : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_invert_arith_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_lut_7 : LUT3
    generic map(
      INIT => X"96"
    )
    port map (
      I0 => NlwRenamedSig_OI_monitor_txdata(7),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(7),
      I2 => BU2_U0_wrapper_controller_instruction(14),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_condition_met_lut : LUT4
    generic map(
      INIT => X"5A3C"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_carry_flag,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_zero_flag,
      I2 => BU2_U0_wrapper_controller_instruction(10),
      I3 => BU2_U0_wrapper_controller_instruction(11),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_condition_met
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_normal_count_lut : LUT3
    generic map(
      INIT => X"2F"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_condition_met,
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_move_group,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_valid_move_lut : LUT2
    generic map(
      INIT => X"D"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_condition_met,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_valid_to_move
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_operand_select_mux_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_instruction(1),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_sy(1),
      O => BU2_U0_wrapper_controller_port_id(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_operand_select_mux_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_instruction(2),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_sy(2),
      O => BU2_U0_wrapper_controller_port_id(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_operand_select_mux_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_instruction(3),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_sy(3),
      O => BU2_U0_wrapper_controller_port_id(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_operand_select_mux_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_instruction(4),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_sy(4),
      O => BU2_U0_wrapper_controller_port_id(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_operand_select_mux_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_instruction(5),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_sy(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_operand_select_mux_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_instruction(6),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_sy(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_operand_select_mux_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(12),
      I1 => BU2_U0_wrapper_controller_instruction(7),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_sy(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_second_operand(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_0 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_instruction(13),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_0 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_instruction(13),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_mux_lut_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(13),
      I1 => BU2_U0_wrapper_controller_in_port(0),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_mux_lut_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(13),
      I1 => BU2_U0_wrapper_controller_in_port(1),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_mux_lut_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(13),
      I1 => BU2_U0_wrapper_controller_in_port(2),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_mux_lut_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(13),
      I1 => BU2_U0_wrapper_controller_in_port(3),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_mux_lut_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(13),
      I1 => BU2_U0_wrapper_controller_in_port(4),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_mux_lut_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(13),
      I1 => BU2_U0_wrapper_controller_in_port(5),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_mux_lut_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(13),
      I1 => BU2_U0_wrapper_controller_in_port(6),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_mux_lut_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(13),
      I1 => BU2_U0_wrapper_controller_in_port(7),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_store_data(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_low_shift_in_lut : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(1),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_carry_flag,
      I2 => NlwRenamedSig_OI_monitor_txdata(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_low_shift_in
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_in_muxf5 : MUXF5
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_low_shift_in,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_high_shift_in,
      S => BU2_U0_wrapper_controller_instruction(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_in
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_carry_lut : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(7),
      I2 => NlwRenamedSig_OI_monitor_txdata(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_carry_value
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_mux_lut_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(3),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_in,
      I2 => NlwRenamedSig_OI_monitor_txdata(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_mux_lut_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(0),
      I2 => NlwRenamedSig_OI_monitor_txdata(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_mux_lut_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(1),
      I2 => NlwRenamedSig_OI_monitor_txdata(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_mux_lut_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(2),
      I2 => NlwRenamedSig_OI_monitor_txdata(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_mux_lut_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(3),
      I2 => NlwRenamedSig_OI_monitor_txdata(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_mux_lut_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(4),
      I2 => NlwRenamedSig_OI_monitor_txdata(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_mux_lut_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(5),
      I2 => NlwRenamedSig_OI_monitor_txdata(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_mux_lut_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_instruction(3),
      I1 => NlwRenamedSig_OI_monitor_txdata(6),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_in,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_shift_value(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_t_state_lut : INV
    port map (
      I => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_not_t_state
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_int_pulse_lut : LUT4
    generic map(
      INIT => X"0080"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_clean_int,
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_int_enable,
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_int_pulse
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_flag_enable_lut : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_flag_write,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_flag_enable
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_invert_enable : INV
    port map (
      I => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_enable
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_register_enable_lut : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_register_write,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_register_enable
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_ram_inv : INV
    port map (
      I => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_write_enable
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_lut_0 : LUT4
    generic map(
      INIT => X"6555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_push_or_pop_type,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_lut_1 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_call_type,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_lut_2 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_call_type,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_lut_3 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_call_type,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_lut_4 : LUT4
    generic map(
      INIT => X"A999"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(4),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_t_state,
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_valid_to_move,
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_call_type,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_stack_count_inv : INV
    port map (
      I => BU2_U0_wrapper_controller_controller_kcpsm3_active_interrupt,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_not_active_interrupt
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_shadow_muxcy : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_wrapper_controller_controller_kcpsm3_shadow_carry,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shadow_carry,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_carry(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_zero_cymux : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_high_zero_carry,
      DI => BU2_U0_wrapper_controller_controller_kcpsm3_shadow_zero,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shadow_zero,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_zero_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_0 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(0),
      I2 => BU2_U0_wrapper_controller_address(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_1 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(1),
      I2 => BU2_U0_wrapper_controller_address(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_2 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(2),
      I2 => BU2_U0_wrapper_controller_address(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_3 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(3),
      I2 => BU2_U0_wrapper_controller_address(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_4 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(4),
      I2 => BU2_U0_wrapper_controller_address(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_5 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(5),
      I2 => BU2_U0_wrapper_controller_address(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_6 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(6),
      I2 => BU2_U0_wrapper_controller_address(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_7 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(7),
      I2 => BU2_U0_wrapper_controller_address(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_8 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(8),
      I2 => BU2_U0_wrapper_controller_address(8),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(8)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_value_select_mux_9 : LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(9),
      I2 => BU2_U0_wrapper_controller_address(9),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(9)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_muxcy_0 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_in,
      DI => NlwRenamedSig_OI_monitor_txdata(0),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_muxcy_1 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(0),
      DI => NlwRenamedSig_OI_monitor_txdata(1),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_muxcy_2 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(1),
      DI => NlwRenamedSig_OI_monitor_txdata(2),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_muxcy_3 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(2),
      DI => NlwRenamedSig_OI_monitor_txdata(3),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_muxcy_4 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(3),
      DI => NlwRenamedSig_OI_monitor_txdata(4),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_muxcy_5 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(4),
      DI => NlwRenamedSig_OI_monitor_txdata(5),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_muxcy_6 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(5),
      DI => NlwRenamedSig_OI_monitor_txdata(6),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_muxcy_7 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(6),
      DI => NlwRenamedSig_OI_monitor_txdata(7),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_low_parity_lut : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(0),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(1),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(2),
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_low_parity
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_or_lut_0 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(0),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(0),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_or_lut_1 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(1),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(1),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_or_lut_2 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(2),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(2),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_or_lut_3 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(3),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(3),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_high_parity_lut : LUT4
    generic map(
      INIT => X"6996"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(4),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(5),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(6),
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_high_parity
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_or_lut_4 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(4),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(4),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_or_lut_5 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(5),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(5),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_or_lut_6 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(6),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(6),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_or_lut_7 : LUT3
    generic map(
      INIT => X"FE"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_logical_result(7),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_arith_result(7),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_shift_result(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift_muxcy : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_sel_carry(0),
      DI => BU2_U0_wrapper_controller_controller_kcpsm3_shift_carry,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_shift_carry,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_carry(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith_muxcy : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_sel_carry(1),
      DI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith_carry,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_carry(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_in_muxf5_0 : MUXF5
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(0),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(0),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_group,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_in_muxf5_1 : MUXF5
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(1),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(1),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_group,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_in_muxf5_2 : MUXF5
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(2),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(2),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_group,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_in_muxf5_3 : MUXF5
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(3),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(3),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_group,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_in_muxf5_4 : MUXF5
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(4),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(4),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_group,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_in_muxf5_5 : MUXF5
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(5),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(5),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_group,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_in_muxf5_6 : MUXF5
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(6),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(6),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_group,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_shift_in_muxf5_7 : MUXF5
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_group(7),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_input_group(7),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_group,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_muxcy_0 : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(0),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_muxcy_1 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(0),
      DI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(1),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_muxcy_2 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(1),
      DI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(2),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_muxcy_3 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(2),
      DI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address(3),
      S => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_sel_parity_muxcy : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_sel_carry(2),
      DI => BU2_U0_wrapper_controller_controller_kcpsm3_parity,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_parity,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_sel_carry(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_1 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(0),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_1 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(0),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_2 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(1),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_2 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(1),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_3 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(2),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_3 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(2),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_4 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(3),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_4 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(3),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_5 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(4),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_5 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(4),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_6 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(5),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_6 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(5),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_7 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(6),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_7 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(6),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_muxcy_8 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(7),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(8),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(8)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_8 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(7),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(8),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(8)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_xor_high : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector_carry(8),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_vector(9),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_vector(9)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_in_muxcy : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_sel_arith_carry_in,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_in
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_xor_0 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_in,
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_xor_1 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(0),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_xor_2 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(1),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_xor_3 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(2),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_xor_4 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(3),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_xor_5 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(4),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_xor_6 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(5),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_out_xor : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(7),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_invert_arith_carry,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_carry_out
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_arith_xor_7 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_arith_internal_carry(6),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_arith(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_arith_value(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_muxcy_0 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_0 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_normal_count,
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_xor_0 : XORCY
    port map (
      CI => BU2_N0,
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(0),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(0)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_xor_1 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(0),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_xor_2 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(1),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_xor_3 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(2),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_count_xor_4 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_stack_address_carry(3),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_half_stack_address(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_next_stack_address(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_zero_xor : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_zero_carry,
      LI => BU2_N0,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_zero_fast_route
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_muxcy_1 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(0),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_1 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(0),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(1),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(1)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_muxcy_2 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(1),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_2 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(1),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(2),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(2)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_muxcy_3 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(2),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_3 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(2),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(3)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_muxcy_4 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(3),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_4 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(3),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(4),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(4)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_muxcy_5 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(4),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_5 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(4),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(5),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(5)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_muxcy_6 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(5),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_6 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(5),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(6),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(6)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_muxcy_7 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(6),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_7 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(6),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(7)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_muxcy_8 : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(7),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(8),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(8)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_8 : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(7),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(8),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(8)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_xor_high : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value_carry(8),
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_pc_value(9),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_inc_pc_value(9)
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_parity_muxcy : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_low_parity,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_parity_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_parity_xor : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_parity_carry,
      LI => BU2_U0_wrapper_controller_controller_kcpsm3_high_parity,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_parity
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_low_zero_lut : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(0),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(1),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(2),
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(3),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_low_zero
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_high_zero_lut : LUT4
    generic map(
      INIT => X"0001"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(4),
      I1 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(5),
      I2 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(6),
      I3 => BU2_U0_wrapper_controller_controller_kcpsm3_alu_result(7),
      O => BU2_U0_wrapper_controller_controller_kcpsm3_high_zero
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_carry_xor : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_sel_carry(3),
      LI => BU2_N0,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_carry_fast_route
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_low_zero_muxcy : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_low_zero,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_low_zero_carry
    );
  BU2_U0_wrapper_controller_controller_kcpsm3_high_zero_cymux : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_kcpsm3_low_zero_carry,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_kcpsm3_high_zero,
      O => BU2_U0_wrapper_controller_controller_kcpsm3_high_zero_carry
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0258_inv,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_10_613
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0258_inv,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_9_612
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0258_inv,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_8_611
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_0 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_0_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(0)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_1 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_1_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(1)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(0)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(1)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(2)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(3)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(4)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(5)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(6)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_end_ptr_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_controller_dbuffer_n0291_inv,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_end_ptr(7)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_2 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_2_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(2)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_3 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_3_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(3)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_4 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_4_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(4)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_5 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_5_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(5)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_6 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_6_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(6)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_7 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_7_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(7)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_8 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_8_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr(8)
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_9 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_9_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_9_591
    );
  BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10 : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_10_Q,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_590
    );
  BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_dbuffer_burst_588,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_controller_dbuffer_ctl_ena_589
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_0_Q,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q_585,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q_582
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_0_Q : XORCY
    port map (
      CI => BU2_N0,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_0_Q_585,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_0_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q_582,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_1_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q_578
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_0_Q_582,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_1_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_1_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q_578,
      DI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_2_Q,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_2_Q_579,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q_575
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_1_Q_578,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_lut_2_Q_579,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_2_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q_575,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_3_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q_572
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_2_Q_575,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_3_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_3_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q_572,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_4_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q_569
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_3_Q_572,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_4_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_4_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q_569,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_5_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q_566
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_4_Q_569,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_5_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_5_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q_566,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_6_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q_563
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_6_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_5_Q_566,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_6_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_6_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q_563,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_7_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q_560
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_7_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_6_Q_563,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_7_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_7_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q_560,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_8_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q_557
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_7_Q_560,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_8_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_8_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_9_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q_557,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_9_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_9_Q_554
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_8_Q_557,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_9_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_9_Q
    );
  BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_xor_10_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_cy_9_Q_554,
      LI => BU2_U0_wrapper_controller_controller_dbuffer_Mmux_sta_ptr_10_sta_ptr_10_mux_11_OUT_rs_A_10_Q,
      O => BU2_U0_wrapper_controller_controller_dbuffer_sta_ptr_10_sta_ptr_10_mux_11_OUT_10_Q
    );
  BU2_U0_wrapper_controller_fecc_far_dly_0 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(0),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(0)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_1 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(1),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(1)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_2 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(2),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(2)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_3 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(3),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(3)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_4 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(4),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(4)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_5 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(5),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(5)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_6 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(6),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(6)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_7 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(7),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(7)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_8 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(8),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(8)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_9 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(9),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(9)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_10 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(10),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(10)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_11 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(11),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(11)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_12 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(12),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(12)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_13 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(13),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(13)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_14 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(14),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(14)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_15 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(15),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(15)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_16 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(16),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(16)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_17 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(17),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(17)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_18 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(18),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(18)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_19 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(19),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(19)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_20 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(20),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(20)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_21 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(21),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(21)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_22 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(22),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(22)
    );
  BU2_U0_wrapper_controller_fecc_far_dly_23 : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => fecc_far_6(23),
      Q => BU2_U0_wrapper_controller_fecc_far_dly(23)
    );
  BU2_U0_wrapper_controller_long_gap : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_word_count_6_PWR_6_o_equal_12_o,
      Q => BU2_U0_wrapper_controller_long_gap_474
    );
  BU2_U0_wrapper_controller_fecc_far_cap_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(0),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(0)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(1),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(1)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(2),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(2)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(3),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(3)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(4),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(4)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(5),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(5)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(6),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(6)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(7),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(7)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(8),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(8)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(9),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(9)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(10),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(10)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(11),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(11)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(12),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(12)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(13),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(13)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(14),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(14)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(15),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(15)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(16),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(16)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_17 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(17),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(17)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_18 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(18),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(18)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_19 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(19),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(19)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_20 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(20),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(20)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_21 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(21),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(21)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_22 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(22),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(22)
    );
  BU2_U0_wrapper_controller_fecc_far_cap_23 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_fecc_far_dly(23),
      Q => BU2_U0_wrapper_controller_fecc_far_cap(23)
    );
  BU2_U0_wrapper_controller_errinj_reg_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(0)
    );
  BU2_U0_wrapper_controller_errinj_reg_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(1)
    );
  BU2_U0_wrapper_controller_errinj_reg_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(2)
    );
  BU2_U0_wrapper_controller_errinj_reg_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(3)
    );
  BU2_U0_wrapper_controller_errinj_reg_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(4)
    );
  BU2_U0_wrapper_controller_errinj_reg_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(5),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(5)
    );
  BU2_U0_wrapper_controller_errinj_reg_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(6),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(6)
    );
  BU2_U0_wrapper_controller_errinj_reg_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(7),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(7)
    );
  BU2_U0_wrapper_controller_errinj_reg_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(8),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(8)
    );
  BU2_U0_wrapper_controller_errinj_reg_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(9),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(9)
    );
  BU2_U0_wrapper_controller_errinj_reg_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(10),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(10)
    );
  BU2_U0_wrapper_controller_errinj_reg_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(11),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(11)
    );
  BU2_U0_wrapper_controller_errinj_reg_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(12),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(12)
    );
  BU2_U0_wrapper_controller_errinj_reg_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(13),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(13)
    );
  BU2_U0_wrapper_controller_errinj_reg_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(14),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(14)
    );
  BU2_U0_wrapper_controller_errinj_reg_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(15),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(15)
    );
  BU2_U0_wrapper_controller_errinj_reg_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(16),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(16)
    );
  BU2_U0_wrapper_controller_errinj_reg_17 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(17),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(17)
    );
  BU2_U0_wrapper_controller_errinj_reg_18 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(18),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(18)
    );
  BU2_U0_wrapper_controller_errinj_reg_19 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(19),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(19)
    );
  BU2_U0_wrapper_controller_errinj_reg_20 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(20),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(20)
    );
  BU2_U0_wrapper_controller_errinj_reg_21 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(21),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(21)
    );
  BU2_U0_wrapper_controller_errinj_reg_22 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(22),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(22)
    );
  BU2_U0_wrapper_controller_errinj_reg_23 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(23),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(23)
    );
  BU2_U0_wrapper_controller_errinj_reg_24 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(24),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(24)
    );
  BU2_U0_wrapper_controller_errinj_reg_25 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(25),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(25)
    );
  BU2_U0_wrapper_controller_errinj_reg_26 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(26),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(26)
    );
  BU2_U0_wrapper_controller_errinj_reg_27 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(27),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(27)
    );
  BU2_U0_wrapper_controller_errinj_reg_28 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(28),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(28)
    );
  BU2_U0_wrapper_controller_errinj_reg_29 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(29),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(29)
    );
  BU2_U0_wrapper_controller_errinj_reg_30 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(30),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(30)
    );
  BU2_U0_wrapper_controller_errinj_reg_31 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(31),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(31)
    );
  BU2_U0_wrapper_controller_errinj_reg_32 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(32),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(32)
    );
  BU2_U0_wrapper_controller_errinj_reg_33 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(33),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(33)
    );
  BU2_U0_wrapper_controller_errinj_reg_34 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(34),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(34)
    );
  BU2_U0_wrapper_controller_errinj_reg_35 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => inject_strobe,
      D => inject_address_3(35),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_errinj_reg(35)
    );
  BU2_U0_wrapper_controller_rdbk_syn_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(0)
    );
  BU2_U0_wrapper_controller_rdbk_syn_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(1)
    );
  BU2_U0_wrapper_controller_rdbk_syn_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(2)
    );
  BU2_U0_wrapper_controller_rdbk_syn_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(3)
    );
  BU2_U0_wrapper_controller_rdbk_syn_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(4)
    );
  BU2_U0_wrapper_controller_rdbk_syn_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(5),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(5)
    );
  BU2_U0_wrapper_controller_rdbk_syn_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(6),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(6)
    );
  BU2_U0_wrapper_controller_rdbk_syn_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(7),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(7)
    );
  BU2_U0_wrapper_controller_rdbk_syn_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(8),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(8)
    );
  BU2_U0_wrapper_controller_rdbk_syn_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(9),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(9)
    );
  BU2_U0_wrapper_controller_rdbk_syn_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(10),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(10)
    );
  BU2_U0_wrapper_controller_rdbk_syn_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(11),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(11)
    );
  BU2_U0_wrapper_controller_rdbk_syn_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_syndrome_5(12),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_syn(12)
    );
  BU2_U0_wrapper_controller_rdbk_synbt_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synbit_7(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synbt(0)
    );
  BU2_U0_wrapper_controller_rdbk_synbt_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synbit_7(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synbt(1)
    );
  BU2_U0_wrapper_controller_rdbk_synbt_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synbit_7(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synbt(2)
    );
  BU2_U0_wrapper_controller_rdbk_synbt_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synbit_7(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synbt(3)
    );
  BU2_U0_wrapper_controller_rdbk_synbt_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synbit_7(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synbt(4)
    );
  BU2_U0_wrapper_controller_rdbk_synwd_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synword_8(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synwd(0)
    );
  BU2_U0_wrapper_controller_rdbk_synwd_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synword_8(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synwd(1)
    );
  BU2_U0_wrapper_controller_rdbk_synwd_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synword_8(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synwd(2)
    );
  BU2_U0_wrapper_controller_rdbk_synwd_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synword_8(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synwd(3)
    );
  BU2_U0_wrapper_controller_rdbk_synwd_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synword_8(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synwd(4)
    );
  BU2_U0_wrapper_controller_rdbk_synwd_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synword_8(5),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synwd(5)
    );
  BU2_U0_wrapper_controller_rdbk_synwd_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_synword_8(6),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_synwd(6)
    );
  BU2_U0_wrapper_controller_frame_total_0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(0),
      Q => BU2_U0_wrapper_controller_frame_total(0)
    );
  BU2_U0_wrapper_controller_frame_total_1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(1),
      Q => BU2_U0_wrapper_controller_frame_total(1)
    );
  BU2_U0_wrapper_controller_frame_total_2 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(2),
      Q => BU2_U0_wrapper_controller_frame_total(2)
    );
  BU2_U0_wrapper_controller_frame_total_3 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(3),
      Q => BU2_U0_wrapper_controller_frame_total(3)
    );
  BU2_U0_wrapper_controller_frame_total_4 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(4),
      Q => BU2_U0_wrapper_controller_frame_total(4)
    );
  BU2_U0_wrapper_controller_frame_total_5 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(5),
      Q => BU2_U0_wrapper_controller_frame_total(5)
    );
  BU2_U0_wrapper_controller_frame_total_6 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(6),
      Q => BU2_U0_wrapper_controller_frame_total(6)
    );
  BU2_U0_wrapper_controller_frame_total_7 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(7),
      Q => BU2_U0_wrapper_controller_frame_total(7)
    );
  BU2_U0_wrapper_controller_frame_total_8 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(8),
      Q => BU2_U0_wrapper_controller_frame_total(8)
    );
  BU2_U0_wrapper_controller_frame_total_9 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(9),
      Q => BU2_U0_wrapper_controller_frame_total(9)
    );
  BU2_U0_wrapper_controller_frame_total_10 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(10),
      Q => BU2_U0_wrapper_controller_frame_total(10)
    );
  BU2_U0_wrapper_controller_frame_total_11 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(11),
      Q => BU2_U0_wrapper_controller_frame_total(11)
    );
  BU2_U0_wrapper_controller_frame_total_12 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(12),
      Q => BU2_U0_wrapper_controller_frame_total(12)
    );
  BU2_U0_wrapper_controller_frame_total_13 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(13),
      Q => BU2_U0_wrapper_controller_frame_total(13)
    );
  BU2_U0_wrapper_controller_frame_total_14 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(14),
      Q => BU2_U0_wrapper_controller_frame_total(14)
    );
  BU2_U0_wrapper_controller_frame_total_15 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(15),
      Q => BU2_U0_wrapper_controller_frame_total(15)
    );
  BU2_U0_wrapper_controller_frame_total_16 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_long_gap_474,
      D => BU2_U0_wrapper_controller_frame_count(16),
      Q => BU2_U0_wrapper_controller_frame_total(16)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(0)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(1)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(2)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(3)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(4)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(5),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(5)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(6),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(6)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(7),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(7)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(8),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(8)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(9),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(9)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(10),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(10)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(11),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(11)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(12),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(12)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(13),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(13)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(14),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(14)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(15),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(15)
    );
  BU2_U0_wrapper_controller_rdbk_efcr_16 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => BU2_U0_wrapper_controller_frame_count(16),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_efcr(16)
    );
  BU2_U0_wrapper_controller_rdbk_sbe : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_first_ecc_event,
      D => fecc_eccerrsingle,
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_rdbk_sbe_250
    );
  BU2_U0_wrapper_controller_frame_locate_14 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(14)
    );
  BU2_U0_wrapper_controller_frame_locate_15 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(15)
    );
  BU2_U0_wrapper_controller_frame_locate_11 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(11)
    );
  BU2_U0_wrapper_controller_frame_locate_13 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(13)
    );
  BU2_U0_wrapper_controller_frame_locate_12 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(12)
    );
  BU2_U0_wrapper_controller_frame_locate_10 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(10)
    );
  BU2_U0_wrapper_controller_frame_locate_9 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(9)
    );
  BU2_U0_wrapper_controller_frame_locate_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(6)
    );
  BU2_U0_wrapper_controller_frame_locate_8 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_3_o,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(8)
    );
  BU2_U0_wrapper_controller_frame_locate_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(7),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(7)
    );
  BU2_U0_wrapper_controller_frame_locate_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(3)
    );
  BU2_U0_wrapper_controller_frame_locate_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(5)
    );
  BU2_U0_wrapper_controller_frame_locate_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(4)
    );
  BU2_U0_wrapper_controller_frame_locate_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(0)
    );
  BU2_U0_wrapper_controller_frame_locate_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(2)
    );
  BU2_U0_wrapper_controller_frame_locate_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_2_o,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => BU2_U0_wrapper_controller_frame_locate(1)
    );
  BU2_U0_wrapper_controller_status_reg_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_1_o,
      D => NlwRenamedSig_OI_monitor_txdata(0),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_status_initialization
    );
  BU2_U0_wrapper_controller_status_reg_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_1_o,
      D => NlwRenamedSig_OI_monitor_txdata(1),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_status_observation
    );
  BU2_U0_wrapper_controller_status_reg_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_1_o,
      D => NlwRenamedSig_OI_monitor_txdata(2),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_status_correction
    );
  BU2_U0_wrapper_controller_status_reg_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_1_o,
      D => NlwRenamedSig_OI_monitor_txdata(3),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_status_classification
    );
  BU2_U0_wrapper_controller_status_reg_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_1_o,
      D => NlwRenamedSig_OI_monitor_txdata(4),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_status_injection
    );
  BU2_U0_wrapper_controller_status_reg_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_1_o,
      D => NlwRenamedSig_OI_monitor_txdata(5),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_status_uncorrectable
    );
  BU2_U0_wrapper_controller_status_reg_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_ws_pid_4_AND_1_o,
      D => NlwRenamedSig_OI_monitor_txdata(6),
      R => BU2_U0_wrapper_controller_sync_init,
      Q => NlwRenamedSig_OI_status_critical
    );
  BU2_U0_wrapper_controller_frame_flm : FD
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_frame_count_16_frame_locate_16_equal_28_o,
      Q => BU2_U0_wrapper_controller_frame_flm_367
    );
  BU2_U0_wrapper_controller_controller_instrom_init_sync1 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      D => BU2_U0_wrapper_controller_controller_instrom_temp_init,
      PRE => BU2_N0,
      Q => BU2_U0_wrapper_controller_sync_init
    );
  BU2_U0_wrapper_controller_controller_instrom_init_sync0 : FDP
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      D => BU2_N0,
      PRE => BU2_N0,
      Q => BU2_U0_wrapper_controller_controller_instrom_temp_init
    );
  BU2_U0_wrapper_controller_word_count_0 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_word_count_7_inv,
      D => BU2_U0_wrapper_controller_Result_0_1,
      R => NlwRenamedSignal_fecc_syndromevalid,
      Q => BU2_U0_wrapper_controller_word_count(0)
    );
  BU2_U0_wrapper_controller_word_count_1 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_word_count_7_inv,
      D => BU2_U0_wrapper_controller_Result_1_1,
      R => NlwRenamedSignal_fecc_syndromevalid,
      Q => BU2_U0_wrapper_controller_word_count(1)
    );
  BU2_U0_wrapper_controller_word_count_2 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_word_count_7_inv,
      D => BU2_U0_wrapper_controller_Result_2_1,
      R => NlwRenamedSignal_fecc_syndromevalid,
      Q => BU2_U0_wrapper_controller_word_count(2)
    );
  BU2_U0_wrapper_controller_word_count_3 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_word_count_7_inv,
      D => BU2_U0_wrapper_controller_Result_3_1,
      R => NlwRenamedSignal_fecc_syndromevalid,
      Q => BU2_U0_wrapper_controller_word_count(3)
    );
  BU2_U0_wrapper_controller_word_count_4 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_word_count_7_inv,
      D => BU2_U0_wrapper_controller_Result_4_1,
      R => NlwRenamedSignal_fecc_syndromevalid,
      Q => BU2_U0_wrapper_controller_word_count(4)
    );
  BU2_U0_wrapper_controller_word_count_5 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_word_count_7_inv,
      D => BU2_U0_wrapper_controller_Result_5_1,
      R => NlwRenamedSignal_fecc_syndromevalid,
      Q => BU2_U0_wrapper_controller_word_count(5)
    );
  BU2_U0_wrapper_controller_word_count_6 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_word_count_7_inv,
      D => BU2_U0_wrapper_controller_Result_6_1,
      R => NlwRenamedSignal_fecc_syndromevalid,
      Q => BU2_U0_wrapper_controller_word_count(6)
    );
  BU2_U0_wrapper_controller_word_count_7 : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => icap_clk,
      CE => BU2_U0_wrapper_controller_word_count_7_inv,
      D => BU2_U0_wrapper_controller_Result_7_1,
      R => NlwRenamedSignal_fecc_syndromevalid,
      Q => BU2_U0_wrapper_controller_word_count(7)
    );
  BU2_U0_wrapper_controller_frame_count_0 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(0),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(0)
    );
  BU2_U0_wrapper_controller_frame_count_1 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(1),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(1)
    );
  BU2_U0_wrapper_controller_frame_count_2 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(2),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(2)
    );
  BU2_U0_wrapper_controller_frame_count_3 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(3),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(3)
    );
  BU2_U0_wrapper_controller_frame_count_4 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(4),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(4)
    );
  BU2_U0_wrapper_controller_frame_count_5 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(5),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(5)
    );
  BU2_U0_wrapper_controller_frame_count_6 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(6),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(6)
    );
  BU2_U0_wrapper_controller_frame_count_7 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(7),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(7)
    );
  BU2_U0_wrapper_controller_frame_count_8 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(8),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(8)
    );
  BU2_U0_wrapper_controller_frame_count_9 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(9),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(9)
    );
  BU2_U0_wrapper_controller_frame_count_10 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(10),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(10)
    );
  BU2_U0_wrapper_controller_frame_count_11 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(11),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(11)
    );
  BU2_U0_wrapper_controller_frame_count_12 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(12),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(12)
    );
  BU2_U0_wrapper_controller_frame_count_13 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(13),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(13)
    );
  BU2_U0_wrapper_controller_frame_count_14 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(14),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(14)
    );
  BU2_U0_wrapper_controller_frame_count_15 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(15),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(15)
    );
  BU2_U0_wrapper_controller_frame_count_16 : FDSE
    generic map(
      INIT => '1'
    )
    port map (
      C => icap_clk,
      CE => NlwRenamedSignal_fecc_syndromevalid,
      D => BU2_U0_wrapper_controller_Result(16),
      S => BU2_U0_wrapper_controller_long_gap_474,
      Q => BU2_U0_wrapper_controller_frame_count(16)
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_0_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(0),
      I1 => BU2_U0_wrapper_controller_frame_locate(0),
      I2 => BU2_U0_wrapper_controller_frame_count(1),
      I3 => BU2_U0_wrapper_controller_frame_locate(1),
      I4 => BU2_U0_wrapper_controller_frame_count(2),
      I5 => BU2_U0_wrapper_controller_frame_locate(2),
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_0_Q_470
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_0_Q : MUXCY
    port map (
      CI => BU2_N1,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_0_Q_470,
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_0_Q_465
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_1_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(3),
      I1 => BU2_U0_wrapper_controller_frame_locate(3),
      I2 => BU2_U0_wrapper_controller_frame_count(4),
      I3 => BU2_U0_wrapper_controller_frame_locate(4),
      I4 => BU2_U0_wrapper_controller_frame_count(5),
      I5 => BU2_U0_wrapper_controller_frame_locate(5),
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_1_Q_466
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_0_Q_465,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_1_Q_466,
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_1_Q_460
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_2_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(6),
      I1 => BU2_U0_wrapper_controller_frame_locate(6),
      I2 => BU2_U0_wrapper_controller_frame_count(7),
      I3 => BU2_U0_wrapper_controller_frame_locate(7),
      I4 => BU2_U0_wrapper_controller_frame_count(8),
      I5 => BU2_U0_wrapper_controller_frame_locate(8),
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_2_Q_461
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_1_Q_460,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_2_Q_461,
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_2_Q_455
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_3_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(9),
      I1 => BU2_U0_wrapper_controller_frame_locate(9),
      I2 => BU2_U0_wrapper_controller_frame_count(10),
      I3 => BU2_U0_wrapper_controller_frame_locate(10),
      I4 => BU2_U0_wrapper_controller_frame_count(11),
      I5 => BU2_U0_wrapper_controller_frame_locate(11),
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_3_Q_456
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_2_Q_455,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_3_Q_456,
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_3_Q_450
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_4_Q : LUT6
    generic map(
      INIT => X"9009000000009009"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(12),
      I1 => BU2_U0_wrapper_controller_frame_locate(12),
      I2 => BU2_U0_wrapper_controller_frame_count(13),
      I3 => BU2_U0_wrapper_controller_frame_locate(13),
      I4 => BU2_U0_wrapper_controller_frame_count(14),
      I5 => BU2_U0_wrapper_controller_frame_locate(14),
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_4_Q_451
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_3_Q_450,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_4_Q_451,
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_4_Q_445
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_5_Q : LUT4
    generic map(
      INIT => X"9009"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(15),
      I1 => BU2_U0_wrapper_controller_frame_locate(15),
      I2 => BU2_U0_wrapper_controller_frame_count(16),
      I3 => BU2_U0_wrapper_controller_frame_locate(16),
      O => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_5_Q_446
    );
  BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_cy_4_Q_445,
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcompar_frame_count_16_frame_locate_16_equal_28_o_lut_5_Q_446,
      O => BU2_U0_wrapper_controller_frame_count_16_frame_locate_16_equal_28_o
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_N1,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_lut(0),
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(0)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_0_Q : XORCY
    port map (
      CI => BU2_N0,
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_lut(0),
      O => BU2_U0_wrapper_controller_Result(0)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(0),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_1_rt_441,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(1)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(0),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_1_rt_441,
      O => BU2_U0_wrapper_controller_Result(1)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(1),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_2_rt_438,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(2)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(1),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_2_rt_438,
      O => BU2_U0_wrapper_controller_Result(2)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(2),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_3_rt_435,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(3)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(2),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_3_rt_435,
      O => BU2_U0_wrapper_controller_Result(3)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(3),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_4_rt_432,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(4)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(3),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_4_rt_432,
      O => BU2_U0_wrapper_controller_Result(4)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(4),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_5_rt_429,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(5)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(4),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_5_rt_429,
      O => BU2_U0_wrapper_controller_Result(5)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(5),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_6_rt_426,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(6)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_6_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(5),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_6_rt_426,
      O => BU2_U0_wrapper_controller_Result(6)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_7_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(6),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_7_rt_423,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(7)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_7_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(6),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_7_rt_423,
      O => BU2_U0_wrapper_controller_Result(7)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_8_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(7),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_8_rt_420,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(8)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_8_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(7),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_8_rt_420,
      O => BU2_U0_wrapper_controller_Result(8)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_9_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(8),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_9_rt_417,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(9)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_9_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(8),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_9_rt_417,
      O => BU2_U0_wrapper_controller_Result(9)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_10_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(9),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_10_rt_414,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(10)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_10_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(9),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_10_rt_414,
      O => BU2_U0_wrapper_controller_Result(10)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_11_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(10),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_11_rt_411,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(11)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_11_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(10),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_11_rt_411,
      O => BU2_U0_wrapper_controller_Result(11)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_12_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(11),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_12_rt_408,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(12)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_12_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(11),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_12_rt_408,
      O => BU2_U0_wrapper_controller_Result(12)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_13_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(12),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_13_rt_405,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(13)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_13_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(12),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_13_rt_405,
      O => BU2_U0_wrapper_controller_Result(13)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_14_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(13),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_14_rt_402,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(14)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_14_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(13),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_14_rt_402,
      O => BU2_U0_wrapper_controller_Result(14)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_cy_15_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(14),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_frame_count_cy_15_rt_399,
      O => BU2_U0_wrapper_controller_Mcount_frame_count_cy(15)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_15_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(14),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_cy_15_rt_399,
      O => BU2_U0_wrapper_controller_Result(15)
    );
  BU2_U0_wrapper_controller_Mcount_frame_count_xor_16_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_frame_count_cy(15),
      LI => BU2_U0_wrapper_controller_Mcount_frame_count_xor_16_rt_396,
      O => BU2_U0_wrapper_controller_Result(16)
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_0_Q : MUXCY
    port map (
      CI => BU2_N0,
      DI => BU2_N1,
      S => BU2_U0_wrapper_controller_Mcount_word_count_lut(0),
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy(0)
    );
  BU2_U0_wrapper_controller_Mcount_word_count_xor_0_Q : XORCY
    port map (
      CI => BU2_N0,
      LI => BU2_U0_wrapper_controller_Mcount_word_count_lut(0),
      O => BU2_U0_wrapper_controller_Result_0_1
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_1_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(0),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_word_count_cy_1_rt_391,
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy(1)
    );
  BU2_U0_wrapper_controller_Mcount_word_count_xor_1_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(0),
      LI => BU2_U0_wrapper_controller_Mcount_word_count_cy_1_rt_391,
      O => BU2_U0_wrapper_controller_Result_1_1
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_2_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(1),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_word_count_cy_2_rt_388,
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy(2)
    );
  BU2_U0_wrapper_controller_Mcount_word_count_xor_2_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(1),
      LI => BU2_U0_wrapper_controller_Mcount_word_count_cy_2_rt_388,
      O => BU2_U0_wrapper_controller_Result_2_1
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_3_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(2),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_word_count_cy_3_rt_385,
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy(3)
    );
  BU2_U0_wrapper_controller_Mcount_word_count_xor_3_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(2),
      LI => BU2_U0_wrapper_controller_Mcount_word_count_cy_3_rt_385,
      O => BU2_U0_wrapper_controller_Result_3_1
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_4_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(3),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_word_count_cy_4_rt_382,
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy(4)
    );
  BU2_U0_wrapper_controller_Mcount_word_count_xor_4_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(3),
      LI => BU2_U0_wrapper_controller_Mcount_word_count_cy_4_rt_382,
      O => BU2_U0_wrapper_controller_Result_4_1
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_5_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(4),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_word_count_cy_5_rt_379,
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy(5)
    );
  BU2_U0_wrapper_controller_Mcount_word_count_xor_5_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(4),
      LI => BU2_U0_wrapper_controller_Mcount_word_count_cy_5_rt_379,
      O => BU2_U0_wrapper_controller_Result_5_1
    );
  BU2_U0_wrapper_controller_Mcount_word_count_cy_6_Q : MUXCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(5),
      DI => BU2_N0,
      S => BU2_U0_wrapper_controller_Mcount_word_count_cy_6_rt_376,
      O => BU2_U0_wrapper_controller_Mcount_word_count_cy(6)
    );
  BU2_U0_wrapper_controller_Mcount_word_count_xor_6_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(5),
      LI => BU2_U0_wrapper_controller_Mcount_word_count_cy_6_rt_376,
      O => BU2_U0_wrapper_controller_Result_6_1
    );
  BU2_U0_wrapper_controller_Mcount_word_count_xor_7_Q : XORCY
    port map (
      CI => BU2_U0_wrapper_controller_Mcount_word_count_cy(6),
      LI => BU2_U0_wrapper_controller_Mcount_word_count_xor_7_rt_373,
      O => BU2_U0_wrapper_controller_Result_7_1
    );
  BU2_U0_wrapper_controller_mux_10 : LUT6
    generic map(
      INIT => X"00FF0F0F33335555"
    )
    port map (
      I0 => monitor_txfull,
      I1 => N0,
      I2 => monitor_rxdata_2(0),
      I3 => BU2_U0_wrapper_controller_errinj_reg(0),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux_10_371
    );
  BU2_U0_wrapper_controller_mux_91 : LUT6
    generic map(
      INIT => X"0F0F00FF33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_total(0),
      I1 => BU2_U0_wrapper_controller_frame_total(16),
      I2 => BU2_U0_wrapper_controller_frame_flm_367,
      I3 => BU2_U0_wrapper_controller_frame_total(8),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux_91_369
    );
  BU2_U0_wrapper_controller_mux_82 : LUT6
    generic map(
      INIT => X"0F0F00FF33335555"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_initialization,
      I1 => BU2_U0_wrapper_controller_frame_count(8),
      I2 => BU2_U0_wrapper_controller_frame_count(16),
      I3 => BU2_U0_wrapper_controller_frame_count(0),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux_82_364
    );
  BU2_U0_wrapper_controller_mux_9 : LUT4
    generic map(
      INIT => X"F3F5"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_syn(8),
      I1 => BU2_U0_wrapper_controller_rdbk_efcr(16),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux_9_360
    );
  BU2_U0_wrapper_controller_mux_8 : LUT6
    generic map(
      INIT => X"00FF0F0F33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_synbt(0),
      I1 => BU2_U0_wrapper_controller_rdbk_efcr(8),
      I2 => BU2_U0_wrapper_controller_rdbk_efcr(0),
      I3 => BU2_U0_wrapper_controller_rdbk_fecc_far(0),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux_8_357
    );
  BU2_U0_wrapper_controller_mux_7 : LUT6
    generic map(
      INIT => X"0F0F00FF33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_errinj_reg(8),
      I1 => BU2_U0_wrapper_controller_errinj_reg(24),
      I2 => BU2_U0_wrapper_controller_errinj_reg(32),
      I3 => BU2_U0_wrapper_controller_errinj_reg(16),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux_7_352
    );
  BU2_U0_wrapper_controller_mux1_2_f7 : MUXF7
    port map (
      I0 => BU2_U0_wrapper_controller_mux1_4_346,
      I1 => BU2_U0_wrapper_controller_mux1_3_336,
      S => BU2_U0_wrapper_controller_port_id(4),
      O => BU2_U0_wrapper_controller_in_port(1)
    );
  BU2_U0_wrapper_controller_mux1_4 : LUT6
    generic map(
      INIT => X"FE76DC54BA329810"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(3),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux1_82_339,
      I3 => BU2_U0_wrapper_controller_mux1_10_344,
      I4 => BU2_U0_wrapper_controller_dbuf_din(1),
      I5 => BU2_U0_wrapper_controller_mux1_91_342,
      O => BU2_U0_wrapper_controller_mux1_4_346
    );
  BU2_U0_wrapper_controller_mux1_10 : LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
    port map (
      I0 => monitor_rxempty,
      I1 => monitor_rxdata_2(1),
      I2 => N0,
      I3 => BU2_U0_wrapper_controller_errinj_reg(1),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux1_10_344
    );
  BU2_U0_wrapper_controller_mux1_91 : LUT4
    generic map(
      INIT => X"0A0C"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_total(9),
      I1 => BU2_U0_wrapper_controller_frame_total(1),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux1_91_342
    );
  BU2_U0_wrapper_controller_mux1_82 : LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_observation,
      I1 => BU2_U0_wrapper_controller_frame_count(1),
      I2 => BU2_U0_wrapper_controller_frame_count(9),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux1_82_339
    );
  BU2_U0_wrapper_controller_mux1_3 : LUT6
    generic map(
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(3),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux1_9_334,
      I3 => BU2_U0_wrapper_controller_mux1_7_327,
      I4 => BU2_U0_wrapper_controller_mux1_8_332,
      I5 => BU2_U0_wrapper_controller_mux1_81_335,
      O => BU2_U0_wrapper_controller_mux1_3_336
    );
  BU2_U0_wrapper_controller_mux1_9 : LUT3
    generic map(
      INIT => X"F2"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_syn(9),
      I1 => BU2_U0_wrapper_controller_port_id(0),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      O => BU2_U0_wrapper_controller_mux1_9_334
    );
  BU2_U0_wrapper_controller_mux1_8 : LUT6
    generic map(
      INIT => X"FF00CCCCF0F0AAAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_synbt(1),
      I1 => BU2_U0_wrapper_controller_rdbk_efcr(1),
      I2 => BU2_U0_wrapper_controller_rdbk_efcr(9),
      I3 => BU2_U0_wrapper_controller_rdbk_fecc_far(1),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux1_8_332
    );
  BU2_U0_wrapper_controller_mux1_7 : LUT6
    generic map(
      INIT => X"F0F0CCCCFF00AAAA"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_errinj_reg(9),
      I1 => BU2_U0_wrapper_controller_errinj_reg(17),
      I2 => BU2_U0_wrapper_controller_errinj_reg(33),
      I3 => BU2_U0_wrapper_controller_errinj_reg(25),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux1_7_327
    );
  BU2_U0_wrapper_controller_mux4_10 : LUT6
    generic map(
      INIT => X"00FF0F0F33335555"
    )
    port map (
      I0 => N0,
      I1 => N0,
      I2 => monitor_rxdata_2(4),
      I3 => BU2_U0_wrapper_controller_errinj_reg(4),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux4_10_322
    );
  BU2_U0_wrapper_controller_mux4_91 : LUT5
    generic map(
      INIT => X"0F55FF33"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_total(12),
      I1 => BU2_U0_wrapper_controller_frame_total(4),
      I2 => BU2_U0_wrapper_controller_frame_eos_319,
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux4_91_320
    );
  BU2_U0_wrapper_controller_mux4_82 : LUT5
    generic map(
      INIT => X"FF33550F"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(12),
      I1 => BU2_U0_wrapper_controller_frame_count(4),
      I2 => NlwRenamedSig_OI_status_injection,
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux4_82_316
    );
  BU2_U0_wrapper_controller_mux4_9 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_syn(12),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux4_9_313
    );
  BU2_U0_wrapper_controller_mux4_8 : LUT6
    generic map(
      INIT => X"00FF0F0F33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_synbt(4),
      I1 => BU2_U0_wrapper_controller_rdbk_efcr(12),
      I2 => BU2_U0_wrapper_controller_rdbk_efcr(4),
      I3 => BU2_U0_wrapper_controller_rdbk_fecc_far(4),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux4_8_311
    );
  BU2_U0_wrapper_controller_mux4_7 : LUT5
    generic map(
      INIT => X"FF0F3355"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_errinj_reg(12),
      I1 => BU2_U0_wrapper_controller_errinj_reg(28),
      I2 => BU2_U0_wrapper_controller_errinj_reg(20),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux4_7_306
    );
  BU2_U0_wrapper_controller_mux2_10 : LUT5
    generic map(
      INIT => X"0F5533FF"
    )
    port map (
      I0 => monitor_rxdata_2(2),
      I1 => N0,
      I2 => BU2_U0_wrapper_controller_errinj_reg(2),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux2_10_302
    );
  BU2_U0_wrapper_controller_mux2_91 : LUT4
    generic map(
      INIT => X"F3F5"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_total(2),
      I1 => BU2_U0_wrapper_controller_frame_total(10),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux2_91_300
    );
  BU2_U0_wrapper_controller_mux2_82 : LUT5
    generic map(
      INIT => X"FF0F3355"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_correction,
      I1 => BU2_U0_wrapper_controller_frame_count(10),
      I2 => BU2_U0_wrapper_controller_frame_count(2),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux2_82_297
    );
  BU2_U0_wrapper_controller_mux2_9 : LUT3
    generic map(
      INIT => X"FD"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_syn(10),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux2_9_294
    );
  BU2_U0_wrapper_controller_mux2_8 : LUT6
    generic map(
      INIT => X"00FF0F0F33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_synbt(2),
      I1 => BU2_U0_wrapper_controller_rdbk_efcr(10),
      I2 => BU2_U0_wrapper_controller_rdbk_efcr(2),
      I3 => BU2_U0_wrapper_controller_rdbk_fecc_far(2),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux2_8_292
    );
  BU2_U0_wrapper_controller_mux2_7 : LUT6
    generic map(
      INIT => X"0F0F00FF33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_errinj_reg(10),
      I1 => BU2_U0_wrapper_controller_errinj_reg(26),
      I2 => BU2_U0_wrapper_controller_errinj_reg(34),
      I3 => BU2_U0_wrapper_controller_errinj_reg(18),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux2_7_287
    );
  BU2_U0_wrapper_controller_mux3_10 : LUT5
    generic map(
      INIT => X"0F5533FF"
    )
    port map (
      I0 => monitor_rxdata_2(3),
      I1 => N0,
      I2 => BU2_U0_wrapper_controller_errinj_reg(3),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux3_10_282
    );
  BU2_U0_wrapper_controller_mux3_91 : LUT4
    generic map(
      INIT => X"F3F5"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_total(3),
      I1 => BU2_U0_wrapper_controller_frame_total(11),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux3_91_280
    );
  BU2_U0_wrapper_controller_mux3_82 : LUT5
    generic map(
      INIT => X"FF0F3355"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_classification,
      I1 => BU2_U0_wrapper_controller_frame_count(11),
      I2 => BU2_U0_wrapper_controller_frame_count(3),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux3_82_277
    );
  BU2_U0_wrapper_controller_mux3_9 : LUT3
    generic map(
      INIT => X"F1"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_syn(11),
      I1 => BU2_U0_wrapper_controller_port_id(1),
      I2 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux3_9_274
    );
  BU2_U0_wrapper_controller_mux3_8 : LUT6
    generic map(
      INIT => X"00FF0F0F33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_synbt(3),
      I1 => BU2_U0_wrapper_controller_rdbk_efcr(11),
      I2 => BU2_U0_wrapper_controller_rdbk_efcr(3),
      I3 => BU2_U0_wrapper_controller_rdbk_fecc_far(3),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux3_8_272
    );
  BU2_U0_wrapper_controller_mux3_7 : LUT6
    generic map(
      INIT => X"0F0F00FF33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_errinj_reg(11),
      I1 => BU2_U0_wrapper_controller_errinj_reg(27),
      I2 => BU2_U0_wrapper_controller_errinj_reg(35),
      I3 => BU2_U0_wrapper_controller_errinj_reg(19),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux3_7_267
    );
  BU2_U0_wrapper_controller_mux5_10 : LUT6
    generic map(
      INIT => X"00FF0F0F33335555"
    )
    port map (
      I0 => N1,
      I1 => N0,
      I2 => monitor_rxdata_2(5),
      I3 => BU2_U0_wrapper_controller_errinj_reg(5),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux5_10_262
    );
  BU2_U0_wrapper_controller_mux5_9 : LUT4
    generic map(
      INIT => X"F3F5"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_total(5),
      I1 => BU2_U0_wrapper_controller_frame_total(13),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux5_9_260
    );
  BU2_U0_wrapper_controller_mux5_82 : LUT5
    generic map(
      INIT => X"FF0F3355"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_uncorrectable,
      I1 => BU2_U0_wrapper_controller_frame_count(13),
      I2 => BU2_U0_wrapper_controller_frame_count(5),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux5_82_257
    );
  BU2_U0_wrapper_controller_mux5_8 : LUT6
    generic map(
      INIT => X"00FF0F0F33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_sbe_250,
      I1 => BU2_U0_wrapper_controller_rdbk_efcr(13),
      I2 => BU2_U0_wrapper_controller_rdbk_efcr(5),
      I3 => BU2_U0_wrapper_controller_rdbk_fecc_far(5),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux5_8_254
    );
  BU2_U0_wrapper_controller_mux5_7 : LUT5
    generic map(
      INIT => X"FF0F3355"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_errinj_reg(13),
      I1 => BU2_U0_wrapper_controller_errinj_reg(29),
      I2 => BU2_U0_wrapper_controller_errinj_reg(21),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux5_7_249
    );
  BU2_U0_wrapper_controller_mux6_2_f7 : MUXF7
    port map (
      I0 => BU2_U0_wrapper_controller_mux6_4_243,
      I1 => BU2_U0_wrapper_controller_mux6_3_233,
      S => BU2_U0_wrapper_controller_port_id(4),
      O => BU2_U0_wrapper_controller_in_port(6)
    );
  BU2_U0_wrapper_controller_mux6_4 : LUT6
    generic map(
      INIT => X"F7D5B391E6C4A280"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(3),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux6_10_241,
      I3 => BU2_U0_wrapper_controller_dbuf_din(6),
      I4 => BU2_U0_wrapper_controller_mux6_91_239,
      I5 => BU2_U0_wrapper_controller_mux6_82_236,
      O => BU2_U0_wrapper_controller_mux6_4_243
    );
  BU2_U0_wrapper_controller_mux6_10 : LUT5
    generic map(
      INIT => X"F0AACC00"
    )
    port map (
      I0 => monitor_rxdata_2(6),
      I1 => N0,
      I2 => BU2_U0_wrapper_controller_errinj_reg(6),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux6_10_241
    );
  BU2_U0_wrapper_controller_mux6_91 : LUT4
    generic map(
      INIT => X"0A0C"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_total(14),
      I1 => BU2_U0_wrapper_controller_frame_total(6),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux6_91_239
    );
  BU2_U0_wrapper_controller_mux6_82 : LUT5
    generic map(
      INIT => X"00CCF0AA"
    )
    port map (
      I0 => NlwRenamedSig_OI_status_critical,
      I1 => BU2_U0_wrapper_controller_frame_count(6),
      I2 => BU2_U0_wrapper_controller_frame_count(14),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux6_82_236
    );
  BU2_U0_wrapper_controller_mux6_3 : LUT6
    generic map(
      INIT => X"F7E6B3A2D5C49180"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_port_id(3),
      I1 => BU2_U0_wrapper_controller_port_id(2),
      I2 => BU2_U0_wrapper_controller_mux6_9_229,
      I3 => BU2_U0_wrapper_controller_mux6_7_223,
      I4 => BU2_U0_wrapper_controller_mux6_8_228,
      I5 => BU2_U0_wrapper_controller_mux6_81_232,
      O => BU2_U0_wrapper_controller_mux6_3_233
    );
  BU2_U0_wrapper_controller_mux6_9 : LUT3
    generic map(
      INIT => X"80"
    )
    port map (
      I0 => icap_grant,
      I1 => BU2_U0_wrapper_controller_port_id(0),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      O => BU2_U0_wrapper_controller_mux6_9_229
    );
  BU2_U0_wrapper_controller_mux6_8 : LUT6
    generic map(
      INIT => X"FF00AAAACCCCF0F0"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_efcr(6),
      I1 => BU2_U0_wrapper_controller_rdbk_efcr(14),
      I2 => BU2_U0_wrapper_controller_rdbk_ecc_226,
      I3 => BU2_U0_wrapper_controller_rdbk_fecc_far(6),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux6_8_228
    );
  BU2_U0_wrapper_controller_mux6_7 : LUT5
    generic map(
      INIT => X"00AACCF0"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_errinj_reg(22),
      I1 => BU2_U0_wrapper_controller_errinj_reg(30),
      I2 => BU2_U0_wrapper_controller_errinj_reg(14),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux6_7_223
    );
  BU2_U0_wrapper_controller_mux7_10 : LUT5
    generic map(
      INIT => X"0F5533FF"
    )
    port map (
      I0 => monitor_rxdata_2(7),
      I1 => N0,
      I2 => BU2_U0_wrapper_controller_errinj_reg(7),
      I3 => BU2_U0_wrapper_controller_port_id(1),
      I4 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux7_10_219
    );
  BU2_U0_wrapper_controller_mux7_9 : LUT4
    generic map(
      INIT => X"F3F5"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_total(7),
      I1 => BU2_U0_wrapper_controller_frame_total(15),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux7_9_217
    );
  BU2_U0_wrapper_controller_mux7_81 : LUT4
    generic map(
      INIT => X"F35F"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_frame_count(15),
      I1 => BU2_U0_wrapper_controller_frame_count(7),
      I2 => BU2_U0_wrapper_controller_port_id(1),
      I3 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux7_81_214
    );
  BU2_U0_wrapper_controller_mux7_8 : LUT6
    generic map(
      INIT => X"00FF0F0F33335555"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_errinj_reg(15),
      I1 => BU2_U0_wrapper_controller_errinj_reg(31),
      I2 => BU2_U0_wrapper_controller_errinj_reg(23),
      I3 => BU2_U0_wrapper_controller_errinj_ego_210,
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux7_8_211
    );
  BU2_U0_wrapper_controller_mux7_7 : LUT6
    generic map(
      INIT => X"00FF333355550F0F"
    )
    port map (
      I0 => BU2_U0_wrapper_controller_rdbk_efcr(15),
      I1 => BU2_U0_wrapper_controller_rdbk_efcr(7),
      I2 => BU2_U0_wrapper_controller_rdbk_crc_202,
      I3 => BU2_U0_wrapper_controller_rdbk_fecc_far(7),
      I4 => BU2_U0_wrapper_controller_port_id(1),
      I5 => BU2_U0_wrapper_controller_port_id(0),
      O => BU2_U0_wrapper_controller_mux7_7_206
    );
  BU2_XST_VCC : VCC
    port map (
      P => BU2_N1
    );
  BU2_XST_GND : GND
    port map (
      G => BU2_N0
    );

end STRUCTURE;

-- synthesis translate_on
