/////////////////////////////////////////////////////////////////////////////
//
//
//
/////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /
// \   \   \/    Core:          sem
//  \   \        Module:        sem_target
//  /   /        Filename:      sem_target.v
// /___/   /\    Purpose:       Soft error target for cascade.
// \   \  /  \
//  \___\/\___\
//
/////////////////////////////////////////////////////////////////////////////
//
// (c) Copyright 2010 Xilinx, Inc. All rights reserved.
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
/////////////////////////////////////////////////////////////////////////////
//
// Module Description:
//
// This module contains two counters.  One counter leads the other counter
// by a cycle, with the lead corrected by a pipeline stage, before they
// are compared.  Logically, the values should always match.  However, if
// a soft error occurs and changes the data or the circuit in such a way
// that the comparison fails, the failure is observable.  The module is
// designed to be cascaded an arbitrary number of times by accepting a
// "fail_in" input from the previous stage and generating a "fail_out"
// output to the next stage.
//
/////////////////////////////////////////////////////////////////////////////
//
// Port Definition:
//
// Name                          Type   Description
// ============================= ====== ====================================
// icap_clk                      input  The system clock signal.
//
// reset                         input  Reset signal to put the byte fsm
//                                      back into idle.  Synchronous to
//                                      icap_clk.
//
// fail_in                       input  Fail indicator from previous stage.
//                                      Synchronous to icap_clk.
//
// fail_out                      output Fail indicator to next stage.
//                                      Synchronous to icap_clk.
//
/////////////////////////////////////////////////////////////////////////////
//
// Parameter and Localparam Definition:
//
// Name                          Type   Description
// ============================= ====== ====================================
// TCQ                           int    Sets the clock-to-out for behavioral
//                                      descriptions of sequential logic.
//
/////////////////////////////////////////////////////////////////////////////
//
// Module Dependencies:
//
// sem_target
// |
// \- (nothing)
//
/////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

/////////////////////////////////////////////////////////////////////////////
// Module
/////////////////////////////////////////////////////////////////////////////

module sem_target (
  input  wire        icap_clk,
  input  wire        reset,
  input  wire        fail_in,
  output wire        fail_out
  );

  ///////////////////////////////////////////////////////////////////////////
  // Define local constants.
  ///////////////////////////////////////////////////////////////////////////

  localparam TCQ = 1;

  ///////////////////////////////////////////////////////////////////////////
  // Declare signals.
  ///////////////////////////////////////////////////////////////////////////

  reg         a_count_en = 1'b0;
  reg         b_count_en = 1'b0;
  reg         fail_flag = 1'b0;
  reg  [15:0] a_count = 16'h0000;
  reg  [15:0] b_count = 16'h0000;
  reg  [15:0] a_delay = 16'h0000;
  reg  [15:0] compare = 16'h0000;
  wire [15:0] bit_compare;
  reg         cycle_fail = 1'b0;
  reg         fail_out_int = 1'b0;

  ///////////////////////////////////////////////////////////////////////////
  // Create counter enables.  The A counter leads the B counter by one clock.
  // The B counter enable has an initial value but no functional reset, as
  // it is intended to track the A counter enable signal behavior.
  ///////////////////////////////////////////////////////////////////////////

  always @(posedge icap_clk)
  begin
    if (reset)
      a_count_en <= #TCQ 1'b0;
    else
      a_count_en <= #TCQ !fail_flag;
    b_count_en <= #TCQ a_count_en;
  end

  ///////////////////////////////////////////////////////////////////////////
  // Implement the A counter and the B counter, and the A counter delay.  The
  // A counter delay has an initial value but no functional reset, as it is
  // intended to track the A counter signal behavior.
  ///////////////////////////////////////////////////////////////////////////

  always @(posedge icap_clk)
  begin
    if (reset)
      a_count <= #TCQ 16'h0000;
    else if (a_count_en)
      a_count <= #TCQ a_count + 16'h0001;
    if (reset)
      b_count <= #TCQ 16'h0000;
    else if (b_count_en)
      b_count <= #TCQ b_count + 16'h0001;
    a_delay <= #TCQ a_count;
  end

  ///////////////////////////////////////////////////////////////////////////
  // Implement the failure check.  The compare, cycle_fail, and fail_out
  // logic is intended to run at all times; these registers have initial
  // values but no functional resets.
  ///////////////////////////////////////////////////////////////////////////

  assign bit_compare = a_delay ^ b_count;

  always @(posedge icap_clk)
  begin
    compare <= #TCQ bit_compare;
    if (compare == 16'h0000)
      cycle_fail <= #TCQ 1'b0;
    else
      cycle_fail <= #TCQ 1'b1;
    if (reset)
      fail_flag <= #TCQ 1'b0;
    else
      fail_flag <= #TCQ fail_flag || cycle_fail;
    fail_out_int <= #TCQ fail_in || fail_flag;
  end

  assign fail_out = fail_out_int;

  ///////////////////////////////////////////////////////////////////////////
  //
  ///////////////////////////////////////////////////////////////////////////

endmodule

/////////////////////////////////////////////////////////////////////////////
//
/////////////////////////////////////////////////////////////////////////////
