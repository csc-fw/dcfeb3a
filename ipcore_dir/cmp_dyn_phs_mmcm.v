// file: cmp_dyn_phs_mmcm.v
// 
// (c) Copyright 2008 - 2011 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
//----------------------------------------------------------------------------
// User entered comments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
// "Output    Output      Phase     Duty      Pk-to-Pk        Phase"
// "Clock    Freq (MHz) (degrees) Cycle (%) Jitter (ps)  Error (ps)"
//----------------------------------------------------------------------------
// CLK_OUT1____40.000______0.000______50.0______247.096____196.976
// CLK_OUT2____80.000______0.000______50.0______200.412____196.976
// CLK_OUT3___160.000______0.000______50.0______169.112____196.976
//
//----------------------------------------------------------------------------
// "Input Clock   Freq (MHz)    Input Jitter (UI)"
//----------------------------------------------------------------------------
// __primary__________40.000____________0.010

`timescale 1ps/1ps

(* CORE_GENERATION_INFO = "cmp_dyn_phs_mmcm,clk_wiz_v3_6,{component_name=cmp_dyn_phs_mmcm,use_phase_alignment=true,use_min_o_jitter=false,use_max_i_jitter=false,use_dyn_phase_shift=true,use_inclk_switchover=false,use_dyn_reconfig=false,feedback_source=FDBK_AUTO,primtype_sel=MMCM_ADV,num_out_clk=3,clkin1_period=25.000,clkin2_period=25.000,use_power_down=false,use_reset=true,use_locked=true,use_inclk_stopped=false,use_status=false,use_freeze=false,use_clk_valid=false,feedback_type=SINGLE,clock_mgr_type=MANUAL,manual_override=false}" *)
module cmp_dyn_phs_mmcm
 (// Clock in ports
  input         CLK_IN1,
  // Clock out ports
  output        CLK_OUT1,
  output        CLK_OUT2,
  output        CLK_OUT3,
  // Dynamic phase shift ports
  input         PSCLK,
  input         PSEN,
  input         PSINCDEC,
  output        PSDONE,
  // Status and control signals
  input         RESET,
  output        LOCKED
 );

  // Input buffering
  //------------------------------------
  assign clkin1 = CLK_IN1;


  // Clocking primitive
  //------------------------------------
  // Instantiation of the MMCM primitive
  //    * Unused inputs are tied off
  //    * Unused outputs are labeled unused
  wire [15:0] do_unused;
  wire        drdy_unused;
  wire        clkfbout;
  wire        clkfbout_buf;
  wire        clkfboutb_unused;
  wire        clkout0b_unused;
  wire        clkout1b_unused;
  wire        clkout2b_unused;
  wire        clkout3_unused;
  wire        clkout3b_unused;
  wire        clkout4_unused;
  wire        clkout5_unused;
  wire        clkout6_unused;
  wire        clkfbstopped_unused;
  wire        clkinstopped_unused;

  MMCM_ADV
  #(.BANDWIDTH            ("OPTIMIZED"),
    .CLKOUT4_CASCADE      ("FALSE"),
    .CLOCK_HOLD           ("FALSE"),
    .COMPENSATION         ("ZHOLD"),
    .STARTUP_WAIT         ("FALSE"),
    .DIVCLK_DIVIDE        (1),
    .CLKFBOUT_MULT_F      (24.000),
    .CLKFBOUT_PHASE       (0.000),
    .CLKFBOUT_USE_FINE_PS ("FALSE"),
    .CLKOUT0_DIVIDE_F     (24.000),
    .CLKOUT0_PHASE        (0.000),
    .CLKOUT0_DUTY_CYCLE   (0.500),
    .CLKOUT0_USE_FINE_PS  ("TRUE"),
    .CLKOUT1_DIVIDE       (12),
    .CLKOUT1_PHASE        (0.000),
    .CLKOUT1_DUTY_CYCLE   (0.500),
    .CLKOUT1_USE_FINE_PS  ("TRUE"),
    .CLKOUT2_DIVIDE       (6),
    .CLKOUT2_PHASE        (0.000),
    .CLKOUT2_DUTY_CYCLE   (0.500),
    .CLKOUT2_USE_FINE_PS  ("TRUE"),
    .CLKIN1_PERIOD        (25.000),
    .REF_JITTER1          (0.010))
  mmcm_adv_inst
    // Output clocks
   (.CLKFBOUT            (clkfbout),
    .CLKFBOUTB           (clkfboutb_unused),
    .CLKOUT0             (clkout0),
    .CLKOUT0B            (clkout0b_unused),
    .CLKOUT1             (clkout1),
    .CLKOUT1B            (clkout1b_unused),
    .CLKOUT2             (clkout2),
    .CLKOUT2B            (clkout2b_unused),
    .CLKOUT3             (clkout3_unused),
    .CLKOUT3B            (clkout3b_unused),
    .CLKOUT4             (clkout4_unused),
    .CLKOUT5             (clkout5_unused),
    .CLKOUT6             (clkout6_unused),
     // Input clock control
    .CLKFBIN             (clkfbout_buf),
    .CLKIN1              (clkin1),
    .CLKIN2              (1'b0),
     // Tied to always select the primary input clock
    .CLKINSEL            (1'b1),
    // Ports for dynamic reconfiguration
    .DADDR               (7'h0),
    .DCLK                (1'b0),
    .DEN                 (1'b0),
    .DI                  (16'h0),
    .DO                  (do_unused),
    .DRDY                (drdy_unused),
    .DWE                 (1'b0),
    // Ports for dynamic phase shift
    .PSCLK               (PSCLK),
    .PSEN                (PSEN),
    .PSINCDEC            (PSINCDEC),
    .PSDONE              (PSDONE),
    // Other control and status signals
    .LOCKED              (LOCKED),
    .CLKINSTOPPED        (clkinstopped_unused),
    .CLKFBSTOPPED        (clkfbstopped_unused),
    .PWRDWN              (1'b0),
    .RST                 (RESET));

  // Output buffering
  //-----------------------------------
  BUFG clkf_buf
   (.O (clkfbout_buf),
    .I (clkfbout));

  BUFG clkout1_buf
   (.O   (CLK_OUT1),
    .I   (clkout0));


  BUFG clkout2_buf
   (.O   (CLK_OUT2),
    .I   (clkout1));

  BUFG clkout3_buf
   (.O   (CLK_OUT3),
    .I   (clkout2));



endmodule
