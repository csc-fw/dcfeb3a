--------------------------------------------------------------------------------
-- Copyright (c) 1995-2010 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: M.81d
--  \   \         Application: netgen
--  /   /         Filename: pipe_vio_out.vhd
-- /___/   /\     Timestamp: Thu Aug 08 13:32:47 2013
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -w -sim -ofmt vhdl C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/pipe_vio_out.ngc C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/pipe_vio_out.vhd 
-- Device	: xc6vlx130t-ff1156-1
-- Input file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/pipe_vio_out.ngc
-- Output file	: C:/Users/bylsma/Projects/DCFEB/firmware/dcfeb_f3.0/ipcore_dir/tmp/_cg/pipe_vio_out.vhd
-- # of Entities	: 1
-- Design Name	: pipe_vio_out
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

entity pipe_vio_out is
  port (
    CLK : in STD_LOGIC := 'X'; 
    CONTROL : inout STD_LOGIC_VECTOR ( 35 downto 0 ); 
    SYNC_OUT : out STD_LOGIC_VECTOR ( 3 downto 0 ) 
  );
end pipe_vio_out;

architecture STRUCTURE of pipe_vio_out is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal U0_I_VIO_GEN_UPDATE_OUT_7_UPDATE_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_0_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_1_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_2_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_out_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_3_SYNC_OUT_CELL_SHIFT_OUT_temp : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_arm_dly1 : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_arm_dly2 : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_reset : STD_LOGIC; 
  signal U0_I_VIO_GEN_SYNC_OUT_ADDR_SYNC_OUT_ADDR_cnt_ce : STD_LOGIC; 
  signal U0_I_VIO_GEN_TRANS_U_ARM_din_latched : STD_LOGIC; 
  signal U0_I_VIO_GEN_TRANS_U_ARM_iCLR : STD_LOGIC; 
  signal U0_I_VIO_DATA_DOUT : STD_LOGIC; 
  signal U0_I_VIO_ARM_pulse : STD_LOGIC; 
  signal U0_I_VIO_STAT_DOUT : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_TDO_next : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_CFG_CE_n : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O2 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_135 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_136 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_137 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_138 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_139 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_140 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_141 : STD_LOGIC; 
  signal U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_142 : STD_LOGIC; 
  signal NLW_U0_I_VIO_reset_f_edge_I_H2L_U_DOUT_Q_UNCONNECTED : STD_LOGIC; 
  signal U0_I_VIO_reset_f_edge_iDOUT : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_GEN_TRANS_U_ARM_iDIN : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_GEN_TRANS_U_ARM_iDOUT_dly : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal U0_I_VIO_UPDATE : STD_LOGIC_VECTOR ( 3 downto 0 ); 
  signal U0_I_VIO_OUTPUT_SHIFT : STD_LOGIC_VECTOR ( 7 downto 1 ); 
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
      Q => NLW_U0_I_VIO_reset_f_edge_I_H2L_U_DOUT_Q_UNCONNECTED
    );
  U0_I_VIO_GEN_UPDATE_OUT_4_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(4),
      Q => U0_I_VIO_OUTPUT_SHIFT(5)
    );
  U0_I_VIO_GEN_UPDATE_OUT_4_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(5),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(0)
    );
  U0_I_VIO_GEN_UPDATE_OUT_5_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(5),
      Q => U0_I_VIO_OUTPUT_SHIFT(6)
    );
  U0_I_VIO_GEN_UPDATE_OUT_5_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(6),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(1)
    );
  U0_I_VIO_GEN_UPDATE_OUT_6_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(6),
      Q => U0_I_VIO_OUTPUT_SHIFT(7)
    );
  U0_I_VIO_GEN_UPDATE_OUT_6_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_OUTPUT_SHIFT(7),
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(2)
    );
  U0_I_VIO_GEN_UPDATE_OUT_7_UPDATE_CELL_SHIFT_REG : FDE
    generic map(
      INIT => '0'
    )
    port map (
      C => CONTROL(0),
      CE => CONTROL(5),
      D => U0_I_VIO_OUTPUT_SHIFT(7),
      Q => U0_I_VIO_GEN_UPDATE_OUT_7_UPDATE_CELL_out_temp
    );
  U0_I_VIO_GEN_UPDATE_OUT_7_UPDATE_CELL_GEN_CLK_USER_REG : FDRE
    generic map(
      INIT => '0'
    )
    port map (
      C => CLK,
      CE => U0_I_VIO_ARM_pulse,
      D => U0_I_VIO_GEN_UPDATE_OUT_7_UPDATE_CELL_out_temp,
      R => CONTROL(5),
      Q => U0_I_VIO_UPDATE(3)
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
      D => N1,
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
      INIT => X"0000"
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
      INIT => X"4000"
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_135
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_136
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_137
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_138
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_139
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_140
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
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_141
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O29 : LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O22_136,
      I1 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O23_137,
      I2 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O24_138,
      I3 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O25_139,
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O26_140,
      I5 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O27_141,
      O => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_142
    );
  U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O210 : LUT5
    generic map(
      INIT => X"AFACA3A0"
    )
    port map (
      I0 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O28_142,
      I1 => U0_I_VIO_U_STATUS_iSTAT_CNT(4),
      I2 => U0_I_VIO_U_STATUS_iSTAT_CNT(7),
      I3 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O21_135,
      I4 => U0_I_VIO_U_STATUS_U_SMUX_U_CS_MUX_I4_U_MUX16_Mmux_O2,
      O => U0_I_VIO_U_STATUS_TDO_next
    );

end STRUCTURE;

-- synthesis translate_on
