--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: deser_vio.vhd
-- /___/   /\     Timestamp: Thu Jun 13 09:36:13 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/deser_vio.ngc C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/deser_vio.vhd 
-- Device	: xc6vlx130t-ff1156-1
-- Input file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/deser_vio.ngc
-- Output file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/deser_vio.vhd
-- # of Entities	: 1
-- Design Name	: deser_vio
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

entity deser_vio is
  port (
    CLK : in STD_LOGIC := 'X'; 
    SYNC_IN : in STD_LOGIC_VECTOR ( 47 downto 0 ); 
    CONTROL : inout STD_LOGIC_VECTOR ( 35 downto 0 ); 
    SYNC_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end deser_vio;

architecture STRUCTURE of deser_vio is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U0_I_VIO_GEN_UPDATE_OUT_15_UPDATE_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_4_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_4_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_5_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_5_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_6_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_6_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_7_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_7_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_arm_dly1 : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_arm_dly2 : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_reset : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_ce : STD_LOGIC; 
  signal U0_I_VIO_GEN_TRANS_U_ARM_din_latched : STD_LOGIC; 
  signal U0_I_VIO_GEN_TRANS_U_ARM_iCLR : STD_LOGIC; 
  signal U0_I_VIO_DATA_DOUT : STD_LOGIC; 
  signal U0_I_VIO_RESET : STD_LOGIC; 
  signal U0_I_VIO_ARM_pulse : STD_LOGIC; 
  signal U0_I_VIO_STAT_DOUT : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_TDO_next : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_CFG_CE_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_falling : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_rising : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_clocked : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd5_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd4_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O2 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_1312 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_1313 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_1314 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_1315 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_1316 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_1317 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_1318 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_1319 : STD_LOGIC; 
  signal U0_I_VIO_reset_f_edge_iDOUT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_GEN_TRANS_U_ARM_iDIN : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_GEN_TRANS_U_ARM_iDOUT_dly : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_INPUT_SHIFT : STD_LOGIC_VECTOR ( 48 downto 1 ); 
  signal U0_I_VIO_UPDATE : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_OUTPUT_SHIFT : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal U0_I_VIO_addr : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_I_VIO_U_STATUS_iSTAT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_U_STAT_CNT_D : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_U_STAT_CNT_CI : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal U0_I_VIO_U_STATUS_U_STAT_CNT_S : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_D : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_CI : STD_LOGIC_VECTOR ( 3 downto 1 ); 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
    );
  U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_I_VIO_addr(0),
      A1 => U0_I_VIO_addr(1),
      A2 => U0_I_VIO_addr(2),
      A3 => U0_I_VIO_addr(3),
      CE => CONTROL(5),
      CLK => CONTROL(0),
      D => CONTROL(1),
      Q => U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(1)
    );
  U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_I_VIO_addr(0),
      A1 => U0_I_VIO_addr(1),
      A2 => U0_I_VIO_addr(2),
      A3 => U0_I_VIO_addr(3),
      CE => CONTROL(5),
      CLK => CONTROL(0),
      D => U0_I_VIO_OUTPUT_SHIFT(1),
      Q => U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(2)
    );
  U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_I_VIO_addr(0),
      A1 => U0_I_VIO_addr(1),
      A2 => U0_I_VIO_addr(2),
      A3 => U0_I_VIO_addr(3),
      CE => CONTROL(5),
      CLK => CONTROL(0),
      D => U0_I_VIO_OUTPUT_SHIFT(2),
      Q => U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(3)
    );
  U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_I_VIO_addr(0),
      A1 => U0_I_VIO_addr(1),
      A2 => U0_I_VIO_addr(2),
      A3 => U0_I_VIO_addr(3),
      CE => CONTROL(5),
      CLK => CONTROL(0),
      D => U0_I_VIO_OUTPUT_SHIFT(3),
      Q => U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(4)
    );
  U0_I_VIO_GEN_SYNC_OUT_4_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_I_VIO_addr(0),
      A1 => U0_I_VIO_addr(1),
      A2 => U0_I_VIO_addr(2),
      A3 => U0_I_VIO_addr(3),
      CE => CONTROL(5),
      CLK => CONTROL(0),
      D => U0_I_VIO_OUTPUT_SHIFT(4),
      Q => U0_I_VIO_GEN_SYNC_OUT_4_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_4_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_4_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_4_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(5)
    );
  U0_I_VIO_GEN_SYNC_OUT_5_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_I_VIO_addr(0),
      A1 => U0_I_VIO_addr(1),
      A2 => U0_I_VIO_addr(2),
      A3 => U0_I_VIO_addr(3),
      CE => CONTROL(5),
      CLK => CONTROL(0),
      D => U0_I_VIO_OUTPUT_SHIFT(5),
      Q => U0_I_VIO_GEN_SYNC_OUT_5_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_5_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_5_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_5_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(6)
    );
  U0_I_VIO_GEN_SYNC_OUT_6_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_I_VIO_addr(0),
      A1 => U0_I_VIO_addr(1),
      A2 => U0_I_VIO_addr(2),
      A3 => U0_I_VIO_addr(3),
      CE => CONTROL(5),
      CLK => CONTROL(0),
      D => U0_I_VIO_OUTPUT_SHIFT(6),
      Q => U0_I_VIO_GEN_SYNC_OUT_6_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_6_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_6_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_6_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(7)
    );
  U0_I_VIO_GEN_SYNC_OUT_7_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
    generic map(
      INIT => X"0000"
    )
    port map (
      A0 => U0_I_VIO_addr(0),
      A1 => U0_I_VIO_addr(1),
      A2 => U0_I_VIO_addr(2),
      A3 => U0_I_VIO_addr(3),
      CE => CONTROL(5),
      CLK => CONTROL(0),
      D => U0_I_VIO_OUTPUT_SHIFT(7),
      Q => U0_I_VIO_GEN_SYNC_OUT_7_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_7_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_7_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_7_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(8)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_LUT_OUT : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_arm_dly2,
      I1 => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_arm_dly1,
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_reset
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_LUT_CE : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => U0_I_VIO_addr(0),
      I1 => U0_I_VIO_addr(1),
      I2 => U0_I_VIO_addr(2),
      I3 => U0_I_VIO_addr(3),
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_ce
    );
  U0_I_VIO_GEN_TRANS_U_ARM_U_CLEAR : LUT2
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_GEN_TRANS_U_ARM_iDOUT_dly(1),
      I1 => CONTROL(6),
      O => U0_I_VIO_GEN_TRANS_U_ARM_iCLR
    );
  U0_I_VIO_U_DOUT : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_STAT_DOUT,
      I1 => U0_I_VIO_DATA_DOUT,
      I2 => CONTROL(7),
      O => CONTROL(3)
    );
  U0_I_VIO_reset_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => CONTROL(7),
      Q => U0_I_VIO_reset_f_edge_iDOUT(0)
    );
  U0_I_VIO_reset_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_reset_f_edge_iDOUT(0),
      Q => U0_I_VIO_reset_f_edge_iDOUT(1)
    );
  U0_I_VIO_reset_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      D => U0_I_VIO_reset_f_edge_iDOUT(1),
      R => U0_I_VIO_reset_f_edge_iDOUT(0),
      Q => U0_I_VIO_RESET
    );
  U0_I_VIO_GEN_UPDATE_OUT_8_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(8),
      Q => U0_I_VIO_OUTPUT_SHIFT(9)
    );
  U0_I_VIO_GEN_UPDATE_OUT_8_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(9),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(0)
    );
  U0_I_VIO_GEN_UPDATE_OUT_9_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(9),
      Q => U0_I_VIO_OUTPUT_SHIFT(10)
    );
  U0_I_VIO_GEN_UPDATE_OUT_9_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(10),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(1)
    );
  U0_I_VIO_GEN_UPDATE_OUT_10_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(10),
      Q => U0_I_VIO_OUTPUT_SHIFT(11)
    );
  U0_I_VIO_GEN_UPDATE_OUT_10_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(11),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(2)
    );
  U0_I_VIO_GEN_UPDATE_OUT_11_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(11),
      Q => U0_I_VIO_OUTPUT_SHIFT(12)
    );
  U0_I_VIO_GEN_UPDATE_OUT_11_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(12),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(3)
    );
  U0_I_VIO_GEN_UPDATE_OUT_12_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(12),
      Q => U0_I_VIO_OUTPUT_SHIFT(13)
    );
  U0_I_VIO_GEN_UPDATE_OUT_12_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(13),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(4)
    );
  U0_I_VIO_GEN_UPDATE_OUT_13_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(13),
      Q => U0_I_VIO_OUTPUT_SHIFT(14)
    );
  U0_I_VIO_GEN_UPDATE_OUT_13_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(14),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(5)
    );
  U0_I_VIO_GEN_UPDATE_OUT_14_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(14),
      Q => U0_I_VIO_OUTPUT_SHIFT(15)
    );
  U0_I_VIO_GEN_UPDATE_OUT_14_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(15),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(6)
    );
  U0_I_VIO_GEN_UPDATE_OUT_15_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(15),
      Q => U0_I_VIO_GEN_UPDATE_OUT_15_UPDATE_CELL_out_temp
    );
  U0_I_VIO_GEN_UPDATE_OUT_15_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_GEN_UPDATE_OUT_15_UPDATE_CELL_out_temp,
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(7)
    );
  U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(0),
      D => U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(0)
    );
  U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(1),
      D => U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(1)
    );
  U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(2),
      D => U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(2)
    );
  U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(3),
      D => U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(3)
    );
  U0_I_VIO_GEN_SYNC_OUT_4_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(4),
      D => U0_I_VIO_GEN_SYNC_OUT_4_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(4)
    );
  U0_I_VIO_GEN_SYNC_OUT_5_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(5),
      D => U0_I_VIO_GEN_SYNC_OUT_5_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(5)
    );
  U0_I_VIO_GEN_SYNC_OUT_6_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(6),
      D => U0_I_VIO_GEN_SYNC_OUT_6_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(6)
    );
  U0_I_VIO_GEN_SYNC_OUT_7_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(7),
      D => U0_I_VIO_GEN_SYNC_OUT_7_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(7)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_DLY1_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_ARM_pulse,
      Q => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_arm_dly1
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_DLY2_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_arm_dly1,
      Q => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_arm_dly2
    );
  U0_I_VIO_GEN_TRANS_U_ARM_U_TFDRE : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      CLR => U0_I_VIO_GEN_TRANS_U_ARM_iCLR,
      D => CONTROL(6),
      Q => U0_I_VIO_GEN_TRANS_U_ARM_din_latched
    );
  U0_I_VIO_GEN_TRANS_U_ARM_U_DOUT0 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      CLR => U0_I_VIO_GEN_TRANS_U_ARM_iCLR,
      D => U0_I_VIO_GEN_TRANS_U_ARM_din_latched,
      Q => U0_I_VIO_GEN_TRANS_U_ARM_iDIN(0)
    );
  U0_I_VIO_GEN_TRANS_U_ARM_U_DOUT1 : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      CLR => U0_I_VIO_GEN_TRANS_U_ARM_iCLR,
      D => U0_I_VIO_GEN_TRANS_U_ARM_iDIN(0),
      Q => U0_I_VIO_GEN_TRANS_U_ARM_iDIN(1)
    );
  U0_I_VIO_GEN_TRANS_U_ARM_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_TRANS_U_ARM_iDIN(0),
      R => U0_I_VIO_GEN_TRANS_U_ARM_iDIN(1),
      Q => U0_I_VIO_ARM_pulse
    );
  U0_I_VIO_GEN_TRANS_U_ARM_U_RFDRE : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      CLR => U0_I_VIO_GEN_TRANS_U_ARM_iCLR,
      D => U0_I_VIO_ARM_pulse,
      Q => U0_I_VIO_GEN_TRANS_U_ARM_iDOUT_dly(0)
    );
  U0_I_VIO_GEN_TRANS_U_ARM_U_GEN_DELAY_1_U_FD : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_TRANS_U_ARM_iDOUT_dly(0),
      Q => U0_I_VIO_GEN_TRANS_U_ARM_iDOUT_dly(1)
    );
  U0_I_VIO_U_DATA_OUT : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_INPUT_SHIFT(48),
      Q => U0_I_VIO_DATA_DOUT
    );
  U0_I_VIO_U_STATUS_F_STAT_0_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0101"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(0)
    );
  U0_I_VIO_U_STATUS_F_STAT_1_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"C409"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(1)
    );
  U0_I_VIO_U_STATUS_F_STAT_2_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"2100"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(2)
    );
  U0_I_VIO_U_STATUS_F_STAT_3_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0610"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(3)
    );
  U0_I_VIO_U_STATUS_F_STAT_4_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(4)
    );
  U0_I_VIO_U_STATUS_F_STAT_5_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0003"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(5)
    );
  U0_I_VIO_U_STATUS_F_STAT_6_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(6)
    );
  U0_I_VIO_U_STATUS_F_STAT_7_I_STAT_U_STAT : LUT4
    generic map(
      INIT => X"0000"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_iSTAT(7)
    );
  U0_I_VIO_U_STATUS_U_CE_n : INV
    port map (
      I => CONTROL(4),
      O => U0_I_VIO_U_STATUS_CFG_CE_n
    );
  U0_I_VIO_U_STATUS_U_TDO : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_U_STATUS_TDO_next,
      Q => U0_I_VIO_STAT_DOUT
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_U_XORCY : XORCY
    port map (
      CI => N0,
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(0),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(0)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => N0,
      DI => N1,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(0),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(1),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(1),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(1),
      DI => N1,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(1),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(2),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(2),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(2),
      DI => N1,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(2),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(3),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(3),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(3),
      DI => N1,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(3),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(4),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(4),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(4),
      DI => N1,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(4),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(5),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(5),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(5),
      DI => N1,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(5),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(6),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(6),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(6),
      DI => N1,
      S => U0_I_VIO_U_STATUS_U_STAT_CNT_S(6),
      LO => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(7)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_7_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_U_STATUS_U_STAT_CNT_CI(7),
      LI => U0_I_VIO_U_STATUS_U_STAT_CNT_S(7),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_D(7)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(0),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(0)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(1),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(2),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(3),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(4),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(5),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(6),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_7_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(7),
      O => U0_I_VIO_U_STATUS_U_STAT_CNT_S(7)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_0_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(0),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(0)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_1_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(1),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(1)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_2_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(2),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(2)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_3_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(3),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(3)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_4_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(4),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(4)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_5_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(5),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(5)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_6_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(6),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(6)
    );
  U0_I_VIO_U_STATUS_U_STAT_CNT_G_7_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_U_STATUS_U_STAT_CNT_D(7),
      R => U0_I_VIO_U_STATUS_CFG_CE_n,
      Q => U0_I_VIO_U_STATUS_iSTAT_CNT(7)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_0_U_XORCY : XORCY
    port map (
      CI => N0,
      LI => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(0),
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_D(0)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_0_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => N0,
      DI => N1,
      S => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(0),
      LO => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_CI(1)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_1_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_CI(1),
      LI => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(1),
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_D(1)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_1_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_CI(1),
      DI => N1,
      S => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(1),
      LO => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_CI(2)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_2_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_CI(2),
      LI => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(2),
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_D(2)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_2_GnH_U_MUXCY : MUXCY_L
    port map (
      CI => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_CI(2),
      DI => N1,
      S => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(2),
      LO => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_CI(3)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_3_U_XORCY : XORCY
    port map (
      CI => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_CI(3),
      LI => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(3),
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_D(3)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_0_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_addr(0),
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(0)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_1_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_addr(1),
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(1)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_2_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_addr(2),
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(2)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_3_U_LUT : LUT1
    generic map(
      INIT => X"2"
    )
    port map (
      I0 => U0_I_VIO_addr(3),
      O => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_S(3)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_0_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_ce,
      D => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_D(0),
      R => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_reset,
      Q => U0_I_VIO_addr(0)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_1_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_ce,
      D => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_D(1),
      R => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_reset,
      Q => U0_I_VIO_addr(1)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_2_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_ce,
      D => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_D(2),
      R => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_reset,
      Q => U0_I_VIO_addr(2)
    );
  U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_G_3_U_FDRE : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_ce,
      D => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_COUNT_D(3),
      R => U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_reset,
      Q => U0_I_VIO_addr(3)
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(47),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(47),
      O => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(47),
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(47),
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(47),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(47),
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(48)
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_47_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(46),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(46),
      O => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(46),
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(46),
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(46),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(46),
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(47)
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_46_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(45),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(45),
      O => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(45),
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(45),
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(45),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(45),
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(46)
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_45_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(44),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(44),
      O => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(44),
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(44),
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(44),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(44),
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(45)
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_44_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(43),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(43),
      O => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(43),
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(43),
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(43),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(43),
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(44)
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_43_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(42),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(42),
      O => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(42),
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(42),
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(42),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(42),
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(43)
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_42_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(41),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(41),
      O => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(41),
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(41),
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(41),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(41),
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(42)
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_41_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(40),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(40),
      O => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(40),
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(40),
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(40),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(40),
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(41)
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_40_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(39),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(39),
      O => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(39),
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(39),
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(39),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(39),
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(40)
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_39_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(38),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(38),
      O => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(38),
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(38),
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(38),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(38),
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(39)
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_38_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(37),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(37),
      O => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(37),
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(37),
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(37),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(37),
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(38)
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_37_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(36),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(36),
      O => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(36),
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(36),
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(36),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(36),
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(37)
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_36_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(35),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(35),
      O => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(35),
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(35),
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(35),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(35),
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(36)
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_35_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(34),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(34),
      O => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(34),
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(34),
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(34),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(34),
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(35)
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_34_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(33),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(33),
      O => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(33),
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(33),
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(33),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(33),
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(34)
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_33_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(32),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(32),
      O => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(32),
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(32),
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(32),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(32),
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(33)
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_32_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(31),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(31),
      O => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(31),
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(31),
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(31),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(31),
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(32)
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_31_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(30),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(30),
      O => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(30),
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(30),
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(30),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(30),
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(31)
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_30_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(29),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(29),
      O => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(29),
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(29),
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(29),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(29),
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(30)
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_29_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(28),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(28),
      O => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(28),
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(28),
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(28),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(28),
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(29)
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_28_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(27),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(27),
      O => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(27),
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(27),
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(27),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(27),
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(28)
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_27_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(26),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(26),
      O => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(26),
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(26),
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(26),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(26),
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(27)
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_26_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(25),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(25),
      O => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(25),
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(25),
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(25),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(25),
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(26)
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_25_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(24),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(24),
      O => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(24),
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(24),
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(24),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(24),
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(25)
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_24_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(23),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(23),
      O => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(23),
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(23),
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(23),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(23),
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(24)
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_23_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(22),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(22),
      O => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(22),
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(22),
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(22),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(22),
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(23)
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_22_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(21),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(21),
      O => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(21),
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(21),
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(21),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(21),
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(22)
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_21_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(20),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(20),
      O => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(20),
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(20),
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(20),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(20),
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(21)
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_20_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(19),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(19),
      O => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(19),
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(19),
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(19),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(19),
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(20)
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_19_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(18),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(18),
      O => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(18),
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(18),
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(18),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(18),
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(19)
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_18_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(17),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(17),
      O => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(17),
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(17),
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(17),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(17),
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(18)
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_17_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(16),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(16),
      O => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(16),
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(16),
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(16),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(16),
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(17)
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_16_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(15),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(15),
      O => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(15),
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(15),
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(15),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(15),
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(16)
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_15_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(14),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(14),
      O => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(14),
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(14),
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(14),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(14),
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(15)
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_14_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(13),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(13),
      O => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(13),
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(13),
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(13),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(13),
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(14)
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_13_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(12),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(12),
      O => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(12),
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(12),
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(12),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(12),
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(13)
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_12_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(11),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(11),
      O => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(11),
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(11),
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(11),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(11),
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(12)
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_11_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(10),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(10),
      O => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(10),
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(10),
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(10),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(10),
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(11)
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_10_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(9),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(9),
      O => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(9),
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(9),
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(9),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(9),
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(10)
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_9_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(8),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(8),
      O => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(8),
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(8),
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(8),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(8),
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(9)
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_8_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(7),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(7),
      O => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(7),
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(7),
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(7),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(7),
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(8)
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_7_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(6),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(6),
      O => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(6),
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(6),
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(6),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(6),
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(7)
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_6_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(5),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(5),
      O => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(5),
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(5),
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(5),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(5),
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(6)
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_5_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(4),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(4),
      O => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(4),
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(4),
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(4),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(4),
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(5)
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_4_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(3),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(3),
      O => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(3),
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(3),
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(3),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(3),
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(4)
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_3_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(2),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(2),
      O => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(2),
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(2),
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(2),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(2),
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(3)
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_2_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_clocked,
      I1 => U0_I_VIO_INPUT_SHIFT(1),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(1),
      O => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(1),
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(1),
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(1),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(1),
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(2)
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_1_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_SYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd4_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_SYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd3_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_clocked,
      I1 => N1,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => SYNC_IN(0),
      O => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(0),
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_I_H2L_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_iDOUT_1_Q,
      R => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_falling
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_U_DOUT0 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(0),
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_U_DOUT1 : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_I_L2H_U_DOUT : FDR
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_iDOUT_0_Q,
      R => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_edge_iDOUT_1_Q,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_rising
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => SYNC_IN(0),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_U_SYNC_F : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_falling,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_f_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_U_SYNC_R : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_rising,
      D => N0,
      R => U0_I_VIO_RESET,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_r_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_USER_CLK_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => N0,
      D => SYNC_IN(0),
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_clocked
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd5_out,
      Q => U0_I_VIO_INPUT_SHIFT(1)
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_S_SYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd5_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_S_SYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_sync_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd4_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_SYNC_IN_0_SYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(5),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(6),
      I2 => U0_I_VIO_U_STATUS_iSTAT(3),
      I3 => U0_I_VIO_U_STATUS_iSTAT(7),
      I4 => U0_I_VIO_U_STATUS_iSTAT(5),
      I5 => U0_I_VIO_U_STATUS_iSTAT(1),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O2
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22 : LUT6
    generic map(
      INIT => X"FD75B931EC64A820"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_iSTAT_CNT(5),
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(6),
      I2 => U0_I_VIO_U_STATUS_iSTAT(2),
      I3 => U0_I_VIO_U_STATUS_iSTAT(6),
      I4 => U0_I_VIO_U_STATUS_iSTAT(4),
      I5 => U0_I_VIO_U_STATUS_iSTAT(0),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_1312
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(15),
      I1 => CONTROL(14),
      I2 => CONTROL(16),
      I3 => CONTROL(17),
      I4 => CONTROL(18),
      I5 => CONTROL(19),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_1313
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(21),
      I1 => CONTROL(20),
      I2 => CONTROL(22),
      I3 => CONTROL(23),
      I4 => CONTROL(24),
      I5 => CONTROL(25),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_1314
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(2),
      I1 => CONTROL(1),
      I2 => CONTROL(4),
      I3 => CONTROL(5),
      I4 => CONTROL(6),
      I5 => CONTROL(7),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_1315
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(9),
      I1 => CONTROL(8),
      I2 => CONTROL(10),
      I3 => CONTROL(11),
      I4 => CONTROL(12),
      I5 => CONTROL(13),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_1316
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27 : LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
    port map (
      I0 => CONTROL(27),
      I1 => CONTROL(26),
      I2 => CONTROL(28),
      I3 => CONTROL(29),
      I4 => CONTROL(30),
      I5 => CONTROL(31),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_1317
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28 : LUT4
    generic map(
      INIT => X"7FFF"
    )
    port map (
      I0 => CONTROL(33),
      I1 => CONTROL(32),
      I2 => CONTROL(34),
      I3 => CONTROL(35),
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_1318
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O29 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_1313,
      I1 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_1314,
      I2 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_1315,
      I3 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_1316,
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_1317,
      I5 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_1318,
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_1319
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O210 : LUT5
    generic map(
      INIT => X"AFACA3A0"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_1319,
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(4),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(7),
      I3 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_1312,
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O2,
      O => U0_I_VIO_U_STATUS_TDO_next
    );

end STRUCTURE;

-- synthesis translate_on
