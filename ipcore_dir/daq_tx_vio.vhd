--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: daq_tx_vio.vhd
-- /___/   /\     Timestamp: Mon Jul 22 17:04:55 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/daq_tx_vio.ngc C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/daq_tx_vio.vhd 
-- Device	: xc6vlx130t-ff1156-1
-- Input file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/daq_tx_vio.ngc
-- Output file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/daq_tx_vio.vhd
-- # of Entities	: 1
-- Design Name	: daq_tx_vio
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

entity daq_tx_vio is
  port (
    ASYNC_IN : in STD_LOGIC_VECTOR ( 15 downto 0 ); 
    CONTROL : inout STD_LOGIC_VECTOR ( 35 downto 0 ); 
    ASYNC_OUT : out STD_LOGIC_VECTOR ( 7 downto 0 ) 
  );
end daq_tx_vio;

architecture STRUCTURE of daq_tx_vio is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U0_I_VIO_GEN_UPDATE_OUT_15_UPDATE_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_DATA_DOUT : STD_LOGIC; 
  signal U0_I_VIO_RESET : STD_LOGIC; 
  signal U0_I_VIO_STAT_DOUT : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_TDO_next : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_CFG_CE_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_falling_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_f_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_r_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_rising_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_user_in_n : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_mux1_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd3_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd2_out : STD_LOGIC; 
  signal U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd1_out : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O2 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_293 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_294 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_295 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_296 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_297 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_298 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_299 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_300 : STD_LOGIC; 
  signal U0_I_VIO_reset_f_edge_iDOUT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_INPUT_SHIFT : STD_LOGIC_VECTOR ( 16 downto 1 ); 
  signal U0_I_VIO_OUTPUT_SHIFT : STD_LOGIC_VECTOR ( 15 downto 1 ); 
  signal U0_I_VIO_UPDATE : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_iSTAT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_iSTAT_CNT : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_U_STAT_CNT_D : STD_LOGIC_VECTOR ( 7 downto 0 ); 
  signal U0_I_VIO_U_STATUS_U_STAT_CNT_CI : STD_LOGIC_VECTOR ( 7 downto 1 ); 
  signal U0_I_VIO_U_STATUS_U_STAT_CNT_S : STD_LOGIC_VECTOR ( 7 downto 0 ); 
begin
  XST_VCC : VCC
    port map (
      P => N0
    );
  XST_GND : GND
    port map (
      G => N1
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
  U0_I_VIO_GEN_ASYNC_OUT_0_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => CONTROL(1),
      Q => U0_I_VIO_OUTPUT_SHIFT(1)
    );
  U0_I_VIO_GEN_ASYNC_OUT_0_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(0),
      D => U0_I_VIO_OUTPUT_SHIFT(1),
      Q => ASYNC_OUT(0)
    );
  U0_I_VIO_GEN_ASYNC_OUT_1_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(1),
      Q => U0_I_VIO_OUTPUT_SHIFT(2)
    );
  U0_I_VIO_GEN_ASYNC_OUT_1_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(1),
      D => U0_I_VIO_OUTPUT_SHIFT(2),
      Q => ASYNC_OUT(1)
    );
  U0_I_VIO_GEN_ASYNC_OUT_2_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(2),
      Q => U0_I_VIO_OUTPUT_SHIFT(3)
    );
  U0_I_VIO_GEN_ASYNC_OUT_2_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(2),
      D => U0_I_VIO_OUTPUT_SHIFT(3),
      Q => ASYNC_OUT(2)
    );
  U0_I_VIO_GEN_ASYNC_OUT_3_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(3),
      Q => U0_I_VIO_OUTPUT_SHIFT(4)
    );
  U0_I_VIO_GEN_ASYNC_OUT_3_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(3),
      D => U0_I_VIO_OUTPUT_SHIFT(4),
      Q => ASYNC_OUT(3)
    );
  U0_I_VIO_GEN_ASYNC_OUT_4_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(4),
      Q => U0_I_VIO_OUTPUT_SHIFT(5)
    );
  U0_I_VIO_GEN_ASYNC_OUT_4_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(4),
      D => U0_I_VIO_OUTPUT_SHIFT(5),
      Q => ASYNC_OUT(4)
    );
  U0_I_VIO_GEN_ASYNC_OUT_5_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(5),
      Q => U0_I_VIO_OUTPUT_SHIFT(6)
    );
  U0_I_VIO_GEN_ASYNC_OUT_5_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(5),
      D => U0_I_VIO_OUTPUT_SHIFT(6),
      Q => ASYNC_OUT(5)
    );
  U0_I_VIO_GEN_ASYNC_OUT_6_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(6),
      Q => U0_I_VIO_OUTPUT_SHIFT(7)
    );
  U0_I_VIO_GEN_ASYNC_OUT_6_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(6),
      D => U0_I_VIO_OUTPUT_SHIFT(7),
      Q => ASYNC_OUT(6)
    );
  U0_I_VIO_GEN_ASYNC_OUT_7_ASYNC_OUT_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(7),
      Q => U0_I_VIO_OUTPUT_SHIFT(8)
    );
  U0_I_VIO_GEN_ASYNC_OUT_7_ASYNC_OUT_CELL_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => U0_I_VIO_UPDATE(7),
      D => U0_I_VIO_OUTPUT_SHIFT(8),
      Q => ASYNC_OUT(7)
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
  U0_I_VIO_GEN_UPDATE_OUT_8_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
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
  U0_I_VIO_GEN_UPDATE_OUT_9_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
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
  U0_I_VIO_GEN_UPDATE_OUT_10_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
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
  U0_I_VIO_GEN_UPDATE_OUT_11_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
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
  U0_I_VIO_GEN_UPDATE_OUT_12_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
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
  U0_I_VIO_GEN_UPDATE_OUT_13_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
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
  U0_I_VIO_GEN_UPDATE_OUT_14_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
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
  U0_I_VIO_GEN_UPDATE_OUT_15_UPDATE_CELL_GEN_NO_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(6),
      D => U0_I_VIO_GEN_UPDATE_OUT_15_UPDATE_CELL_out_temp,
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(7)
    );
  U0_I_VIO_U_DATA_OUT : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_INPUT_SHIFT(16),
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
      INIT => X"0001"
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
      INIT => X"8000"
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
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(15),
      O => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(15),
      I1 => U0_I_VIO_INPUT_SHIFT(15),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(15),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(16)
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_15_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(14),
      O => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(14),
      I1 => U0_I_VIO_INPUT_SHIFT(14),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(14),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(15)
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_14_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(13),
      O => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(13),
      I1 => U0_I_VIO_INPUT_SHIFT(13),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(13),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(14)
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_13_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(12),
      O => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(12),
      I1 => U0_I_VIO_INPUT_SHIFT(12),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(12),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(13)
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_12_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(11),
      O => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(11),
      I1 => U0_I_VIO_INPUT_SHIFT(11),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(11),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(12)
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_11_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(10),
      O => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(10),
      I1 => U0_I_VIO_INPUT_SHIFT(10),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(10),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(11)
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_10_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(9),
      O => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(9),
      I1 => U0_I_VIO_INPUT_SHIFT(9),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(9),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(10)
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_9_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(8),
      O => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(8),
      I1 => U0_I_VIO_INPUT_SHIFT(8),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(8),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(9)
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_8_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(7),
      O => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(7),
      I1 => U0_I_VIO_INPUT_SHIFT(7),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(7),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(8)
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_7_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(6),
      O => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(6),
      I1 => U0_I_VIO_INPUT_SHIFT(6),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(6),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(7)
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_6_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(5),
      O => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(5),
      I1 => U0_I_VIO_INPUT_SHIFT(5),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(5),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(6)
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_5_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(4),
      O => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(4),
      I1 => U0_I_VIO_INPUT_SHIFT(4),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(4),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(5)
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_4_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(3),
      O => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(3),
      I1 => U0_I_VIO_INPUT_SHIFT(3),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(3),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(4)
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_3_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(2),
      O => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(2),
      I1 => U0_I_VIO_INPUT_SHIFT(2),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(2),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(3)
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_2_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(1),
      O => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(1),
      I1 => U0_I_VIO_INPUT_SHIFT(1),
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(1),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(2)
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_1_ASYNC_IN_CELL_fd1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_ASYNC_F_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_falling_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd2_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_f_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_ASYNC_R_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_rising_out,
      I1 => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd1_out,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_r_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_U_STATCMD_n : INV
    port map (
      I => ASYNC_IN(0),
      O => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_user_in_n
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_USER_MUX : LUT3
    generic map(
      INIT => X"CA"
    )
    port map (
      I0 => ASYNC_IN(0),
      I1 => N1,
      I2 => CONTROL(7),
      O => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_mux1_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_U_FALLING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_user_in_n,
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_falling_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_U_RISING : FDCE
    generic map(
      INIT => '0'
    )
    port map (
      C => ASYNC_IN(0),
      CE => N0,
      CLR => U0_I_VIO_RESET,
      D => N0,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_rising_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_S_ASYNC_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd3_out,
      Q => U0_I_VIO_INPUT_SHIFT(1)
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_S_ASYNC_F_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_f_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd3_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_S_ASYNC_R_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_async_mux_r_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd2_out
    );
  U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_S_USER_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => N0,
      D => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_mux1_out,
      Q => U0_I_VIO_GEN_ASYNC_IN_0_ASYNC_IN_CELL_fd1_out
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_293
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_294
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_295
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_296
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_297
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_298
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_299
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O29 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_294,
      I1 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_295,
      I2 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_296,
      I3 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_297,
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_298,
      I5 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_299,
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_300
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O210 : LUT5
    generic map(
      INIT => X"AFACA3A0"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_300,
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(4),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(7),
      I3 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_293,
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O2,
      O => U0_I_VIO_U_STATUS_TDO_next
    );

end STRUCTURE;

-- synthesis translate_on
