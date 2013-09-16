--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: adc_mem_vio.vhd
-- /___/   /\     Timestamp: Thu Apr 28 10:12:58 2011
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f1.0/ipcore_dir/tmp/_cg/adc_mem_vio.ngc C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f1.0/ipcore_dir/tmp/_cg/adc_mem_vio.vhd 
-- Device	: xc6vlx130t-ff1156-1
-- Input file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f1.0/ipcore_dir/tmp/_cg/adc_mem_vio.ngc
-- Output file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f1.0/ipcore_dir/tmp/_cg/adc_mem_vio.vhd
-- # of Entities	: 1
-- Design Name	: adc_mem_vio
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

entity adc_mem_vio is
  port (
    CLK : in STD_LOGIC := 'X'; 
    SYNC_IN : in STD_LOGIC_VECTOR ( 23 downto 0 ); 
    CONTROL : inout STD_LOGIC_VECTOR ( 35 downto 0 ); 
    SYNC_OUT : out STD_LOGIC_VECTOR ( 63 downto 0 ) 
  );
end adc_mem_vio;

architecture STRUCTURE of adc_mem_vio is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U0_I_VIO_GEN_UPDATE_OUT_127_UPDATE_CELL_out_temp : STD_LOGIC; 
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
  signal U0_I_VIO_GEN_SYNC_OUT_8_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_8_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_9_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_9_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_10_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_10_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_11_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_11_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_12_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_12_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_13_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_13_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_14_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_14_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_15_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_15_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_16_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_16_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_17_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_17_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_18_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_18_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_19_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_19_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_20_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_20_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_21_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_21_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_22_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_22_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_23_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_23_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_24_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_24_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_25_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_25_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_26_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_26_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_27_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_27_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_28_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_28_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_29_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_29_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_30_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_30_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_31_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_31_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_32_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_32_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_33_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_33_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_34_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_34_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_35_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_35_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_36_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_36_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_37_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_37_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_38_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_38_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_39_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_39_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_40_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_40_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_41_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_41_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_42_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_42_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_43_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_43_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_44_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_44_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_45_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_45_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_46_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_46_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_47_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_47_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_48_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_48_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_49_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_49_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_50_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_50_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_51_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_51_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_52_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_52_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_53_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_53_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_54_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_54_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_55_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_55_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_56_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_56_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_57_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_57_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_58_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_58_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_59_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_59_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_60_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_60_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_61_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_61_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_62_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_62_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_63_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_63_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
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
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_1072 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_1073 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_1074 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_1075 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_1076 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_1077 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_1078 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_1079 : STD_LOGIC; 
  signal U0_I_VIO_reset_f_edge_iDOUT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_GEN_TRANS_U_ARM_iDIN : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_GEN_TRANS_U_ARM_iDOUT_dly : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_INPUT_SHIFT : STD_LOGIC_VECTOR ( 24 downto 1 ); 
  signal U0_I_VIO_UPDATE : STD_LOGIC_VECTOR ( 63 downto 0 ); 
  signal U0_I_VIO_OUTPUT_SHIFT : STD_LOGIC_VECTOR ( 127 downto 1 ); 
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
  U0_I_VIO_GEN_SYNC_OUT_8_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(8),
      Q => U0_I_VIO_GEN_SYNC_OUT_8_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_8_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_8_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_8_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(9)
    );
  U0_I_VIO_GEN_SYNC_OUT_9_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(9),
      Q => U0_I_VIO_GEN_SYNC_OUT_9_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_9_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_9_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_9_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(10)
    );
  U0_I_VIO_GEN_SYNC_OUT_10_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(10),
      Q => U0_I_VIO_GEN_SYNC_OUT_10_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_10_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_10_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_10_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(11)
    );
  U0_I_VIO_GEN_SYNC_OUT_11_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(11),
      Q => U0_I_VIO_GEN_SYNC_OUT_11_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_11_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_11_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_11_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(12)
    );
  U0_I_VIO_GEN_SYNC_OUT_12_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(12),
      Q => U0_I_VIO_GEN_SYNC_OUT_12_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_12_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_12_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_12_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(13)
    );
  U0_I_VIO_GEN_SYNC_OUT_13_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(13),
      Q => U0_I_VIO_GEN_SYNC_OUT_13_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_13_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_13_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_13_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(14)
    );
  U0_I_VIO_GEN_SYNC_OUT_14_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(14),
      Q => U0_I_VIO_GEN_SYNC_OUT_14_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_14_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_14_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_14_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(15)
    );
  U0_I_VIO_GEN_SYNC_OUT_15_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(15),
      Q => U0_I_VIO_GEN_SYNC_OUT_15_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_15_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_15_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_15_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(16)
    );
  U0_I_VIO_GEN_SYNC_OUT_16_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(16),
      Q => U0_I_VIO_GEN_SYNC_OUT_16_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_16_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_16_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_16_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(17)
    );
  U0_I_VIO_GEN_SYNC_OUT_17_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(17),
      Q => U0_I_VIO_GEN_SYNC_OUT_17_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_17_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_17_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_17_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(18)
    );
  U0_I_VIO_GEN_SYNC_OUT_18_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(18),
      Q => U0_I_VIO_GEN_SYNC_OUT_18_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_18_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_18_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_18_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(19)
    );
  U0_I_VIO_GEN_SYNC_OUT_19_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(19),
      Q => U0_I_VIO_GEN_SYNC_OUT_19_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_19_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_19_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_19_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(20)
    );
  U0_I_VIO_GEN_SYNC_OUT_20_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(20),
      Q => U0_I_VIO_GEN_SYNC_OUT_20_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_20_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_20_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_20_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(21)
    );
  U0_I_VIO_GEN_SYNC_OUT_21_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(21),
      Q => U0_I_VIO_GEN_SYNC_OUT_21_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_21_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_21_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_21_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(22)
    );
  U0_I_VIO_GEN_SYNC_OUT_22_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(22),
      Q => U0_I_VIO_GEN_SYNC_OUT_22_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_22_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_22_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_22_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(23)
    );
  U0_I_VIO_GEN_SYNC_OUT_23_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(23),
      Q => U0_I_VIO_GEN_SYNC_OUT_23_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_23_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_23_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_23_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(24)
    );
  U0_I_VIO_GEN_SYNC_OUT_24_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(24),
      Q => U0_I_VIO_GEN_SYNC_OUT_24_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_24_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_24_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_24_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(25)
    );
  U0_I_VIO_GEN_SYNC_OUT_25_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(25),
      Q => U0_I_VIO_GEN_SYNC_OUT_25_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_25_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_25_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_25_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(26)
    );
  U0_I_VIO_GEN_SYNC_OUT_26_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(26),
      Q => U0_I_VIO_GEN_SYNC_OUT_26_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_26_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_26_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_26_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(27)
    );
  U0_I_VIO_GEN_SYNC_OUT_27_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(27),
      Q => U0_I_VIO_GEN_SYNC_OUT_27_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_27_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_27_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_27_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(28)
    );
  U0_I_VIO_GEN_SYNC_OUT_28_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(28),
      Q => U0_I_VIO_GEN_SYNC_OUT_28_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_28_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_28_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_28_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(29)
    );
  U0_I_VIO_GEN_SYNC_OUT_29_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(29),
      Q => U0_I_VIO_GEN_SYNC_OUT_29_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_29_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_29_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_29_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(30)
    );
  U0_I_VIO_GEN_SYNC_OUT_30_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(30),
      Q => U0_I_VIO_GEN_SYNC_OUT_30_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_30_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_30_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_30_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(31)
    );
  U0_I_VIO_GEN_SYNC_OUT_31_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(31),
      Q => U0_I_VIO_GEN_SYNC_OUT_31_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_31_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_31_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_31_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(32)
    );
  U0_I_VIO_GEN_SYNC_OUT_32_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(32),
      Q => U0_I_VIO_GEN_SYNC_OUT_32_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_32_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_32_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_32_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(33)
    );
  U0_I_VIO_GEN_SYNC_OUT_33_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(33),
      Q => U0_I_VIO_GEN_SYNC_OUT_33_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_33_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_33_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_33_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(34)
    );
  U0_I_VIO_GEN_SYNC_OUT_34_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(34),
      Q => U0_I_VIO_GEN_SYNC_OUT_34_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_34_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_34_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_34_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(35)
    );
  U0_I_VIO_GEN_SYNC_OUT_35_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(35),
      Q => U0_I_VIO_GEN_SYNC_OUT_35_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_35_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_35_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_35_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(36)
    );
  U0_I_VIO_GEN_SYNC_OUT_36_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(36),
      Q => U0_I_VIO_GEN_SYNC_OUT_36_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_36_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_36_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_36_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(37)
    );
  U0_I_VIO_GEN_SYNC_OUT_37_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(37),
      Q => U0_I_VIO_GEN_SYNC_OUT_37_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_37_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_37_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_37_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(38)
    );
  U0_I_VIO_GEN_SYNC_OUT_38_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(38),
      Q => U0_I_VIO_GEN_SYNC_OUT_38_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_38_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_38_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_38_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(39)
    );
  U0_I_VIO_GEN_SYNC_OUT_39_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(39),
      Q => U0_I_VIO_GEN_SYNC_OUT_39_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_39_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_39_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_39_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(40)
    );
  U0_I_VIO_GEN_SYNC_OUT_40_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(40),
      Q => U0_I_VIO_GEN_SYNC_OUT_40_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_40_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_40_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_40_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(41)
    );
  U0_I_VIO_GEN_SYNC_OUT_41_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(41),
      Q => U0_I_VIO_GEN_SYNC_OUT_41_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_41_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_41_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_41_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(42)
    );
  U0_I_VIO_GEN_SYNC_OUT_42_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(42),
      Q => U0_I_VIO_GEN_SYNC_OUT_42_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_42_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_42_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_42_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(43)
    );
  U0_I_VIO_GEN_SYNC_OUT_43_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(43),
      Q => U0_I_VIO_GEN_SYNC_OUT_43_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_43_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_43_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_43_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(44)
    );
  U0_I_VIO_GEN_SYNC_OUT_44_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(44),
      Q => U0_I_VIO_GEN_SYNC_OUT_44_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_44_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_44_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_44_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(45)
    );
  U0_I_VIO_GEN_SYNC_OUT_45_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(45),
      Q => U0_I_VIO_GEN_SYNC_OUT_45_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_45_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_45_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_45_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(46)
    );
  U0_I_VIO_GEN_SYNC_OUT_46_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(46),
      Q => U0_I_VIO_GEN_SYNC_OUT_46_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_46_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_46_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_46_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(47)
    );
  U0_I_VIO_GEN_SYNC_OUT_47_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(47),
      Q => U0_I_VIO_GEN_SYNC_OUT_47_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_47_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_47_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_47_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(48)
    );
  U0_I_VIO_GEN_SYNC_OUT_48_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(48),
      Q => U0_I_VIO_GEN_SYNC_OUT_48_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_48_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_48_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_48_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(49)
    );
  U0_I_VIO_GEN_SYNC_OUT_49_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(49),
      Q => U0_I_VIO_GEN_SYNC_OUT_49_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_49_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_49_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_49_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(50)
    );
  U0_I_VIO_GEN_SYNC_OUT_50_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(50),
      Q => U0_I_VIO_GEN_SYNC_OUT_50_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_50_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_50_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_50_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(51)
    );
  U0_I_VIO_GEN_SYNC_OUT_51_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(51),
      Q => U0_I_VIO_GEN_SYNC_OUT_51_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_51_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_51_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_51_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(52)
    );
  U0_I_VIO_GEN_SYNC_OUT_52_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(52),
      Q => U0_I_VIO_GEN_SYNC_OUT_52_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_52_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_52_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_52_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(53)
    );
  U0_I_VIO_GEN_SYNC_OUT_53_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(53),
      Q => U0_I_VIO_GEN_SYNC_OUT_53_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_53_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_53_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_53_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(54)
    );
  U0_I_VIO_GEN_SYNC_OUT_54_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(54),
      Q => U0_I_VIO_GEN_SYNC_OUT_54_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_54_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_54_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_54_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(55)
    );
  U0_I_VIO_GEN_SYNC_OUT_55_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(55),
      Q => U0_I_VIO_GEN_SYNC_OUT_55_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_55_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_55_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_55_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(56)
    );
  U0_I_VIO_GEN_SYNC_OUT_56_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(56),
      Q => U0_I_VIO_GEN_SYNC_OUT_56_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_56_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_56_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_56_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(57)
    );
  U0_I_VIO_GEN_SYNC_OUT_57_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(57),
      Q => U0_I_VIO_GEN_SYNC_OUT_57_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_57_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_57_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_57_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(58)
    );
  U0_I_VIO_GEN_SYNC_OUT_58_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(58),
      Q => U0_I_VIO_GEN_SYNC_OUT_58_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_58_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_58_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_58_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(59)
    );
  U0_I_VIO_GEN_SYNC_OUT_59_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(59),
      Q => U0_I_VIO_GEN_SYNC_OUT_59_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_59_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_59_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_59_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(60)
    );
  U0_I_VIO_GEN_SYNC_OUT_60_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(60),
      Q => U0_I_VIO_GEN_SYNC_OUT_60_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_60_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_60_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_60_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(61)
    );
  U0_I_VIO_GEN_SYNC_OUT_61_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(61),
      Q => U0_I_VIO_GEN_SYNC_OUT_61_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_61_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_61_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_61_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(62)
    );
  U0_I_VIO_GEN_SYNC_OUT_62_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(62),
      Q => U0_I_VIO_GEN_SYNC_OUT_62_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_62_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_62_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_62_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(63)
    );
  U0_I_VIO_GEN_SYNC_OUT_63_SYNC_OUT_CELL_I_SRL_T2_U_SRL : SRLC16E
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
      D => U0_I_VIO_OUTPUT_SHIFT(63),
      Q => U0_I_VIO_GEN_SYNC_OUT_63_SYNC_OUT_CELL_out_temp,
      Q15 => U0_I_VIO_GEN_SYNC_OUT_63_SYNC_OUT_CELL_SHIFT_OUT_temp
    );
  U0_I_VIO_GEN_SYNC_OUT_63_SYNC_OUT_CELL_LUT_OUT : LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      I0 => CONTROL(5),
      I1 => U0_I_VIO_GEN_SYNC_OUT_63_SYNC_OUT_CELL_SHIFT_OUT_temp,
      O => U0_I_VIO_OUTPUT_SHIFT(64)
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
  U0_I_VIO_GEN_UPDATE_OUT_64_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(64),
      Q => U0_I_VIO_OUTPUT_SHIFT(65)
    );
  U0_I_VIO_GEN_UPDATE_OUT_64_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(65),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(0)
    );
  U0_I_VIO_GEN_UPDATE_OUT_65_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(65),
      Q => U0_I_VIO_OUTPUT_SHIFT(66)
    );
  U0_I_VIO_GEN_UPDATE_OUT_65_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(66),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(1)
    );
  U0_I_VIO_GEN_UPDATE_OUT_66_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(66),
      Q => U0_I_VIO_OUTPUT_SHIFT(67)
    );
  U0_I_VIO_GEN_UPDATE_OUT_66_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(67),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(2)
    );
  U0_I_VIO_GEN_UPDATE_OUT_67_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(67),
      Q => U0_I_VIO_OUTPUT_SHIFT(68)
    );
  U0_I_VIO_GEN_UPDATE_OUT_67_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(68),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(3)
    );
  U0_I_VIO_GEN_UPDATE_OUT_68_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(68),
      Q => U0_I_VIO_OUTPUT_SHIFT(69)
    );
  U0_I_VIO_GEN_UPDATE_OUT_68_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(69),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(4)
    );
  U0_I_VIO_GEN_UPDATE_OUT_69_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(69),
      Q => U0_I_VIO_OUTPUT_SHIFT(70)
    );
  U0_I_VIO_GEN_UPDATE_OUT_69_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(70),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(5)
    );
  U0_I_VIO_GEN_UPDATE_OUT_70_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(70),
      Q => U0_I_VIO_OUTPUT_SHIFT(71)
    );
  U0_I_VIO_GEN_UPDATE_OUT_70_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(71),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(6)
    );
  U0_I_VIO_GEN_UPDATE_OUT_71_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(71),
      Q => U0_I_VIO_OUTPUT_SHIFT(72)
    );
  U0_I_VIO_GEN_UPDATE_OUT_71_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(72),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(7)
    );
  U0_I_VIO_GEN_UPDATE_OUT_72_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(72),
      Q => U0_I_VIO_OUTPUT_SHIFT(73)
    );
  U0_I_VIO_GEN_UPDATE_OUT_72_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(73),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(8)
    );
  U0_I_VIO_GEN_UPDATE_OUT_73_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(73),
      Q => U0_I_VIO_OUTPUT_SHIFT(74)
    );
  U0_I_VIO_GEN_UPDATE_OUT_73_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(74),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(9)
    );
  U0_I_VIO_GEN_UPDATE_OUT_74_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(74),
      Q => U0_I_VIO_OUTPUT_SHIFT(75)
    );
  U0_I_VIO_GEN_UPDATE_OUT_74_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(75),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(10)
    );
  U0_I_VIO_GEN_UPDATE_OUT_75_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(75),
      Q => U0_I_VIO_OUTPUT_SHIFT(76)
    );
  U0_I_VIO_GEN_UPDATE_OUT_75_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(76),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(11)
    );
  U0_I_VIO_GEN_UPDATE_OUT_76_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(76),
      Q => U0_I_VIO_OUTPUT_SHIFT(77)
    );
  U0_I_VIO_GEN_UPDATE_OUT_76_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(77),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(12)
    );
  U0_I_VIO_GEN_UPDATE_OUT_77_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(77),
      Q => U0_I_VIO_OUTPUT_SHIFT(78)
    );
  U0_I_VIO_GEN_UPDATE_OUT_77_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(78),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(13)
    );
  U0_I_VIO_GEN_UPDATE_OUT_78_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(78),
      Q => U0_I_VIO_OUTPUT_SHIFT(79)
    );
  U0_I_VIO_GEN_UPDATE_OUT_78_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(79),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(14)
    );
  U0_I_VIO_GEN_UPDATE_OUT_79_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(79),
      Q => U0_I_VIO_OUTPUT_SHIFT(80)
    );
  U0_I_VIO_GEN_UPDATE_OUT_79_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(80),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(15)
    );
  U0_I_VIO_GEN_UPDATE_OUT_80_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(80),
      Q => U0_I_VIO_OUTPUT_SHIFT(81)
    );
  U0_I_VIO_GEN_UPDATE_OUT_80_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(81),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(16)
    );
  U0_I_VIO_GEN_UPDATE_OUT_81_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(81),
      Q => U0_I_VIO_OUTPUT_SHIFT(82)
    );
  U0_I_VIO_GEN_UPDATE_OUT_81_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(82),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(17)
    );
  U0_I_VIO_GEN_UPDATE_OUT_82_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(82),
      Q => U0_I_VIO_OUTPUT_SHIFT(83)
    );
  U0_I_VIO_GEN_UPDATE_OUT_82_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(83),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(18)
    );
  U0_I_VIO_GEN_UPDATE_OUT_83_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(83),
      Q => U0_I_VIO_OUTPUT_SHIFT(84)
    );
  U0_I_VIO_GEN_UPDATE_OUT_83_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(84),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(19)
    );
  U0_I_VIO_GEN_UPDATE_OUT_84_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(84),
      Q => U0_I_VIO_OUTPUT_SHIFT(85)
    );
  U0_I_VIO_GEN_UPDATE_OUT_84_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(85),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(20)
    );
  U0_I_VIO_GEN_UPDATE_OUT_85_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(85),
      Q => U0_I_VIO_OUTPUT_SHIFT(86)
    );
  U0_I_VIO_GEN_UPDATE_OUT_85_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(86),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(21)
    );
  U0_I_VIO_GEN_UPDATE_OUT_86_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(86),
      Q => U0_I_VIO_OUTPUT_SHIFT(87)
    );
  U0_I_VIO_GEN_UPDATE_OUT_86_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(87),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(22)
    );
  U0_I_VIO_GEN_UPDATE_OUT_87_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(87),
      Q => U0_I_VIO_OUTPUT_SHIFT(88)
    );
  U0_I_VIO_GEN_UPDATE_OUT_87_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(88),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(23)
    );
  U0_I_VIO_GEN_UPDATE_OUT_88_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(88),
      Q => U0_I_VIO_OUTPUT_SHIFT(89)
    );
  U0_I_VIO_GEN_UPDATE_OUT_88_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(89),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(24)
    );
  U0_I_VIO_GEN_UPDATE_OUT_89_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(89),
      Q => U0_I_VIO_OUTPUT_SHIFT(90)
    );
  U0_I_VIO_GEN_UPDATE_OUT_89_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(90),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(25)
    );
  U0_I_VIO_GEN_UPDATE_OUT_90_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(90),
      Q => U0_I_VIO_OUTPUT_SHIFT(91)
    );
  U0_I_VIO_GEN_UPDATE_OUT_90_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(91),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(26)
    );
  U0_I_VIO_GEN_UPDATE_OUT_91_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(91),
      Q => U0_I_VIO_OUTPUT_SHIFT(92)
    );
  U0_I_VIO_GEN_UPDATE_OUT_91_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(92),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(27)
    );
  U0_I_VIO_GEN_UPDATE_OUT_92_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(92),
      Q => U0_I_VIO_OUTPUT_SHIFT(93)
    );
  U0_I_VIO_GEN_UPDATE_OUT_92_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(93),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(28)
    );
  U0_I_VIO_GEN_UPDATE_OUT_93_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(93),
      Q => U0_I_VIO_OUTPUT_SHIFT(94)
    );
  U0_I_VIO_GEN_UPDATE_OUT_93_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(94),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(29)
    );
  U0_I_VIO_GEN_UPDATE_OUT_94_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(94),
      Q => U0_I_VIO_OUTPUT_SHIFT(95)
    );
  U0_I_VIO_GEN_UPDATE_OUT_94_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(95),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(30)
    );
  U0_I_VIO_GEN_UPDATE_OUT_95_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(95),
      Q => U0_I_VIO_OUTPUT_SHIFT(96)
    );
  U0_I_VIO_GEN_UPDATE_OUT_95_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(96),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(31)
    );
  U0_I_VIO_GEN_UPDATE_OUT_96_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(96),
      Q => U0_I_VIO_OUTPUT_SHIFT(97)
    );
  U0_I_VIO_GEN_UPDATE_OUT_96_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(97),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(32)
    );
  U0_I_VIO_GEN_UPDATE_OUT_97_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(97),
      Q => U0_I_VIO_OUTPUT_SHIFT(98)
    );
  U0_I_VIO_GEN_UPDATE_OUT_97_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(98),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(33)
    );
  U0_I_VIO_GEN_UPDATE_OUT_98_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(98),
      Q => U0_I_VIO_OUTPUT_SHIFT(99)
    );
  U0_I_VIO_GEN_UPDATE_OUT_98_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(99),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(34)
    );
  U0_I_VIO_GEN_UPDATE_OUT_99_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(99),
      Q => U0_I_VIO_OUTPUT_SHIFT(100)
    );
  U0_I_VIO_GEN_UPDATE_OUT_99_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(100),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(35)
    );
  U0_I_VIO_GEN_UPDATE_OUT_100_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(100),
      Q => U0_I_VIO_OUTPUT_SHIFT(101)
    );
  U0_I_VIO_GEN_UPDATE_OUT_100_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(101),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(36)
    );
  U0_I_VIO_GEN_UPDATE_OUT_101_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(101),
      Q => U0_I_VIO_OUTPUT_SHIFT(102)
    );
  U0_I_VIO_GEN_UPDATE_OUT_101_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(102),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(37)
    );
  U0_I_VIO_GEN_UPDATE_OUT_102_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(102),
      Q => U0_I_VIO_OUTPUT_SHIFT(103)
    );
  U0_I_VIO_GEN_UPDATE_OUT_102_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(103),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(38)
    );
  U0_I_VIO_GEN_UPDATE_OUT_103_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(103),
      Q => U0_I_VIO_OUTPUT_SHIFT(104)
    );
  U0_I_VIO_GEN_UPDATE_OUT_103_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(104),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(39)
    );
  U0_I_VIO_GEN_UPDATE_OUT_104_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(104),
      Q => U0_I_VIO_OUTPUT_SHIFT(105)
    );
  U0_I_VIO_GEN_UPDATE_OUT_104_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(105),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(40)
    );
  U0_I_VIO_GEN_UPDATE_OUT_105_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(105),
      Q => U0_I_VIO_OUTPUT_SHIFT(106)
    );
  U0_I_VIO_GEN_UPDATE_OUT_105_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(106),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(41)
    );
  U0_I_VIO_GEN_UPDATE_OUT_106_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(106),
      Q => U0_I_VIO_OUTPUT_SHIFT(107)
    );
  U0_I_VIO_GEN_UPDATE_OUT_106_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(107),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(42)
    );
  U0_I_VIO_GEN_UPDATE_OUT_107_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(107),
      Q => U0_I_VIO_OUTPUT_SHIFT(108)
    );
  U0_I_VIO_GEN_UPDATE_OUT_107_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(108),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(43)
    );
  U0_I_VIO_GEN_UPDATE_OUT_108_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(108),
      Q => U0_I_VIO_OUTPUT_SHIFT(109)
    );
  U0_I_VIO_GEN_UPDATE_OUT_108_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(109),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(44)
    );
  U0_I_VIO_GEN_UPDATE_OUT_109_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(109),
      Q => U0_I_VIO_OUTPUT_SHIFT(110)
    );
  U0_I_VIO_GEN_UPDATE_OUT_109_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(110),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(45)
    );
  U0_I_VIO_GEN_UPDATE_OUT_110_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(110),
      Q => U0_I_VIO_OUTPUT_SHIFT(111)
    );
  U0_I_VIO_GEN_UPDATE_OUT_110_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(111),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(46)
    );
  U0_I_VIO_GEN_UPDATE_OUT_111_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(111),
      Q => U0_I_VIO_OUTPUT_SHIFT(112)
    );
  U0_I_VIO_GEN_UPDATE_OUT_111_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(112),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(47)
    );
  U0_I_VIO_GEN_UPDATE_OUT_112_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(112),
      Q => U0_I_VIO_OUTPUT_SHIFT(113)
    );
  U0_I_VIO_GEN_UPDATE_OUT_112_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(113),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(48)
    );
  U0_I_VIO_GEN_UPDATE_OUT_113_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(113),
      Q => U0_I_VIO_OUTPUT_SHIFT(114)
    );
  U0_I_VIO_GEN_UPDATE_OUT_113_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(114),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(49)
    );
  U0_I_VIO_GEN_UPDATE_OUT_114_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(114),
      Q => U0_I_VIO_OUTPUT_SHIFT(115)
    );
  U0_I_VIO_GEN_UPDATE_OUT_114_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(115),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(50)
    );
  U0_I_VIO_GEN_UPDATE_OUT_115_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(115),
      Q => U0_I_VIO_OUTPUT_SHIFT(116)
    );
  U0_I_VIO_GEN_UPDATE_OUT_115_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(116),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(51)
    );
  U0_I_VIO_GEN_UPDATE_OUT_116_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(116),
      Q => U0_I_VIO_OUTPUT_SHIFT(117)
    );
  U0_I_VIO_GEN_UPDATE_OUT_116_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(117),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(52)
    );
  U0_I_VIO_GEN_UPDATE_OUT_117_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(117),
      Q => U0_I_VIO_OUTPUT_SHIFT(118)
    );
  U0_I_VIO_GEN_UPDATE_OUT_117_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(118),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(53)
    );
  U0_I_VIO_GEN_UPDATE_OUT_118_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(118),
      Q => U0_I_VIO_OUTPUT_SHIFT(119)
    );
  U0_I_VIO_GEN_UPDATE_OUT_118_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(119),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(54)
    );
  U0_I_VIO_GEN_UPDATE_OUT_119_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(119),
      Q => U0_I_VIO_OUTPUT_SHIFT(120)
    );
  U0_I_VIO_GEN_UPDATE_OUT_119_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(120),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(55)
    );
  U0_I_VIO_GEN_UPDATE_OUT_120_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(120),
      Q => U0_I_VIO_OUTPUT_SHIFT(121)
    );
  U0_I_VIO_GEN_UPDATE_OUT_120_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(121),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(56)
    );
  U0_I_VIO_GEN_UPDATE_OUT_121_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(121),
      Q => U0_I_VIO_OUTPUT_SHIFT(122)
    );
  U0_I_VIO_GEN_UPDATE_OUT_121_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(122),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(57)
    );
  U0_I_VIO_GEN_UPDATE_OUT_122_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(122),
      Q => U0_I_VIO_OUTPUT_SHIFT(123)
    );
  U0_I_VIO_GEN_UPDATE_OUT_122_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(123),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(58)
    );
  U0_I_VIO_GEN_UPDATE_OUT_123_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(123),
      Q => U0_I_VIO_OUTPUT_SHIFT(124)
    );
  U0_I_VIO_GEN_UPDATE_OUT_123_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(124),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(59)
    );
  U0_I_VIO_GEN_UPDATE_OUT_124_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(124),
      Q => U0_I_VIO_OUTPUT_SHIFT(125)
    );
  U0_I_VIO_GEN_UPDATE_OUT_124_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(125),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(60)
    );
  U0_I_VIO_GEN_UPDATE_OUT_125_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(125),
      Q => U0_I_VIO_OUTPUT_SHIFT(126)
    );
  U0_I_VIO_GEN_UPDATE_OUT_125_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(126),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(61)
    );
  U0_I_VIO_GEN_UPDATE_OUT_126_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(126),
      Q => U0_I_VIO_OUTPUT_SHIFT(127)
    );
  U0_I_VIO_GEN_UPDATE_OUT_126_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(127),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(62)
    );
  U0_I_VIO_GEN_UPDATE_OUT_127_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(127),
      Q => U0_I_VIO_GEN_UPDATE_OUT_127_UPDATE_CELL_out_temp
    );
  U0_I_VIO_GEN_UPDATE_OUT_127_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_GEN_UPDATE_OUT_127_UPDATE_CELL_out_temp,
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(63)
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
  U0_I_VIO_GEN_SYNC_OUT_8_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(8),
      D => U0_I_VIO_GEN_SYNC_OUT_8_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(8)
    );
  U0_I_VIO_GEN_SYNC_OUT_9_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(9),
      D => U0_I_VIO_GEN_SYNC_OUT_9_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(9)
    );
  U0_I_VIO_GEN_SYNC_OUT_10_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(10),
      D => U0_I_VIO_GEN_SYNC_OUT_10_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(10)
    );
  U0_I_VIO_GEN_SYNC_OUT_11_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(11),
      D => U0_I_VIO_GEN_SYNC_OUT_11_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(11)
    );
  U0_I_VIO_GEN_SYNC_OUT_12_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(12),
      D => U0_I_VIO_GEN_SYNC_OUT_12_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(12)
    );
  U0_I_VIO_GEN_SYNC_OUT_13_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(13),
      D => U0_I_VIO_GEN_SYNC_OUT_13_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(13)
    );
  U0_I_VIO_GEN_SYNC_OUT_14_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(14),
      D => U0_I_VIO_GEN_SYNC_OUT_14_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(14)
    );
  U0_I_VIO_GEN_SYNC_OUT_15_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(15),
      D => U0_I_VIO_GEN_SYNC_OUT_15_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(15)
    );
  U0_I_VIO_GEN_SYNC_OUT_16_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(16),
      D => U0_I_VIO_GEN_SYNC_OUT_16_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(16)
    );
  U0_I_VIO_GEN_SYNC_OUT_17_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(17),
      D => U0_I_VIO_GEN_SYNC_OUT_17_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(17)
    );
  U0_I_VIO_GEN_SYNC_OUT_18_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(18),
      D => U0_I_VIO_GEN_SYNC_OUT_18_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(18)
    );
  U0_I_VIO_GEN_SYNC_OUT_19_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(19),
      D => U0_I_VIO_GEN_SYNC_OUT_19_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(19)
    );
  U0_I_VIO_GEN_SYNC_OUT_20_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(20),
      D => U0_I_VIO_GEN_SYNC_OUT_20_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(20)
    );
  U0_I_VIO_GEN_SYNC_OUT_21_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(21),
      D => U0_I_VIO_GEN_SYNC_OUT_21_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(21)
    );
  U0_I_VIO_GEN_SYNC_OUT_22_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(22),
      D => U0_I_VIO_GEN_SYNC_OUT_22_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(22)
    );
  U0_I_VIO_GEN_SYNC_OUT_23_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(23),
      D => U0_I_VIO_GEN_SYNC_OUT_23_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(23)
    );
  U0_I_VIO_GEN_SYNC_OUT_24_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(24),
      D => U0_I_VIO_GEN_SYNC_OUT_24_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(24)
    );
  U0_I_VIO_GEN_SYNC_OUT_25_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(25),
      D => U0_I_VIO_GEN_SYNC_OUT_25_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(25)
    );
  U0_I_VIO_GEN_SYNC_OUT_26_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(26),
      D => U0_I_VIO_GEN_SYNC_OUT_26_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(26)
    );
  U0_I_VIO_GEN_SYNC_OUT_27_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(27),
      D => U0_I_VIO_GEN_SYNC_OUT_27_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(27)
    );
  U0_I_VIO_GEN_SYNC_OUT_28_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(28),
      D => U0_I_VIO_GEN_SYNC_OUT_28_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(28)
    );
  U0_I_VIO_GEN_SYNC_OUT_29_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(29),
      D => U0_I_VIO_GEN_SYNC_OUT_29_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(29)
    );
  U0_I_VIO_GEN_SYNC_OUT_30_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(30),
      D => U0_I_VIO_GEN_SYNC_OUT_30_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(30)
    );
  U0_I_VIO_GEN_SYNC_OUT_31_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(31),
      D => U0_I_VIO_GEN_SYNC_OUT_31_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(31)
    );
  U0_I_VIO_GEN_SYNC_OUT_32_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(32),
      D => U0_I_VIO_GEN_SYNC_OUT_32_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(32)
    );
  U0_I_VIO_GEN_SYNC_OUT_33_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(33),
      D => U0_I_VIO_GEN_SYNC_OUT_33_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(33)
    );
  U0_I_VIO_GEN_SYNC_OUT_34_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(34),
      D => U0_I_VIO_GEN_SYNC_OUT_34_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(34)
    );
  U0_I_VIO_GEN_SYNC_OUT_35_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(35),
      D => U0_I_VIO_GEN_SYNC_OUT_35_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(35)
    );
  U0_I_VIO_GEN_SYNC_OUT_36_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(36),
      D => U0_I_VIO_GEN_SYNC_OUT_36_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(36)
    );
  U0_I_VIO_GEN_SYNC_OUT_37_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(37),
      D => U0_I_VIO_GEN_SYNC_OUT_37_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(37)
    );
  U0_I_VIO_GEN_SYNC_OUT_38_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(38),
      D => U0_I_VIO_GEN_SYNC_OUT_38_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(38)
    );
  U0_I_VIO_GEN_SYNC_OUT_39_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(39),
      D => U0_I_VIO_GEN_SYNC_OUT_39_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(39)
    );
  U0_I_VIO_GEN_SYNC_OUT_40_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(40),
      D => U0_I_VIO_GEN_SYNC_OUT_40_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(40)
    );
  U0_I_VIO_GEN_SYNC_OUT_41_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(41),
      D => U0_I_VIO_GEN_SYNC_OUT_41_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(41)
    );
  U0_I_VIO_GEN_SYNC_OUT_42_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(42),
      D => U0_I_VIO_GEN_SYNC_OUT_42_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(42)
    );
  U0_I_VIO_GEN_SYNC_OUT_43_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(43),
      D => U0_I_VIO_GEN_SYNC_OUT_43_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(43)
    );
  U0_I_VIO_GEN_SYNC_OUT_44_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(44),
      D => U0_I_VIO_GEN_SYNC_OUT_44_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(44)
    );
  U0_I_VIO_GEN_SYNC_OUT_45_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(45),
      D => U0_I_VIO_GEN_SYNC_OUT_45_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(45)
    );
  U0_I_VIO_GEN_SYNC_OUT_46_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(46),
      D => U0_I_VIO_GEN_SYNC_OUT_46_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(46)
    );
  U0_I_VIO_GEN_SYNC_OUT_47_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(47),
      D => U0_I_VIO_GEN_SYNC_OUT_47_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(47)
    );
  U0_I_VIO_GEN_SYNC_OUT_48_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(48),
      D => U0_I_VIO_GEN_SYNC_OUT_48_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(48)
    );
  U0_I_VIO_GEN_SYNC_OUT_49_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(49),
      D => U0_I_VIO_GEN_SYNC_OUT_49_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(49)
    );
  U0_I_VIO_GEN_SYNC_OUT_50_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(50),
      D => U0_I_VIO_GEN_SYNC_OUT_50_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(50)
    );
  U0_I_VIO_GEN_SYNC_OUT_51_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(51),
      D => U0_I_VIO_GEN_SYNC_OUT_51_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(51)
    );
  U0_I_VIO_GEN_SYNC_OUT_52_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(52),
      D => U0_I_VIO_GEN_SYNC_OUT_52_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(52)
    );
  U0_I_VIO_GEN_SYNC_OUT_53_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(53),
      D => U0_I_VIO_GEN_SYNC_OUT_53_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(53)
    );
  U0_I_VIO_GEN_SYNC_OUT_54_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(54),
      D => U0_I_VIO_GEN_SYNC_OUT_54_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(54)
    );
  U0_I_VIO_GEN_SYNC_OUT_55_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(55),
      D => U0_I_VIO_GEN_SYNC_OUT_55_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(55)
    );
  U0_I_VIO_GEN_SYNC_OUT_56_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(56),
      D => U0_I_VIO_GEN_SYNC_OUT_56_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(56)
    );
  U0_I_VIO_GEN_SYNC_OUT_57_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(57),
      D => U0_I_VIO_GEN_SYNC_OUT_57_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(57)
    );
  U0_I_VIO_GEN_SYNC_OUT_58_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(58),
      D => U0_I_VIO_GEN_SYNC_OUT_58_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(58)
    );
  U0_I_VIO_GEN_SYNC_OUT_59_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(59),
      D => U0_I_VIO_GEN_SYNC_OUT_59_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(59)
    );
  U0_I_VIO_GEN_SYNC_OUT_60_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(60),
      D => U0_I_VIO_GEN_SYNC_OUT_60_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(60)
    );
  U0_I_VIO_GEN_SYNC_OUT_61_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(61),
      D => U0_I_VIO_GEN_SYNC_OUT_61_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(61)
    );
  U0_I_VIO_GEN_SYNC_OUT_62_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(62),
      D => U0_I_VIO_GEN_SYNC_OUT_62_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(62)
    );
  U0_I_VIO_GEN_SYNC_OUT_63_SYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_UPDATE(63),
      D => U0_I_VIO_GEN_SYNC_OUT_63_SYNC_OUT_CELL_out_temp,
      Q => SYNC_OUT(63)
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
      D => U0_I_VIO_INPUT_SHIFT(24),
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
      INIT => X"8000"
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
      INIT => X"0001"
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
      INIT => X"0000"
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
      INIT => X"0004"
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_1072
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_1073
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_1074
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_1075
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_1076
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_1077
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_1078
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O29 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_1073,
      I1 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_1074,
      I2 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_1075,
      I3 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_1076,
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_1077,
      I5 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_1078,
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_1079
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O210 : LUT5
    generic map(
      INIT => X"AFACA3A0"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_1079,
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(4),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(7),
      I3 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_1072,
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O2,
      O => U0_I_VIO_U_STATUS_TDO_next
    );

end STRUCTURE;

-- synthesis translate_on
