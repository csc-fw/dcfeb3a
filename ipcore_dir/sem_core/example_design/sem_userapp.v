/////////////////////////////////////////////////////////////////////////////
//
//
//
/////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /
// \   \   \/    Core:          sem
//  \   \        Module:        sem_userapp
//  /   /        Filename:      sem_userapp.v
// /___/   /\    Purpose:       Scalable soft error target.
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
// This module implements a scalable cascade of a soft error target.  The
// only input to this module is a clock, with a single output that indicates
// a functional discrepancy in the soft error targets.  This module creates
// its own local reset.  This module is functionally unrelated to the soft
// error mitigation solution and is provided for demonstration purposes only.
//
/////////////////////////////////////////////////////////////////////////////
//
// Port Definition:
//
// Name                          Type   Description
// ============================= ====== ====================================
// icap_clk                      input  The system clock signal.
//
// userapp_buzz                  output Fail indicator, intended to enable
//                                      a piezo buzzer or other indicator.
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
// CASCADE                       int    Sets the number of targets to be
//                                      cascaded.
//
/////////////////////////////////////////////////////////////////////////////
//
// Module Dependencies:
//
// sem_userapp
// |
// +- sem_target
// |
// \- FDP (unisim)
//
/////////////////////////////////////////////////////////////////////////////

`timescale 1 ps / 1 ps

/////////////////////////////////////////////////////////////////////////////
// Module
/////////////////////////////////////////////////////////////////////////////

module sem_userapp (
  input  wire        icap_clk,
  output wire        userapp_buzz
  );

  ///////////////////////////////////////////////////////////////////////////
  // Define local constants.
  ///////////////////////////////////////////////////////////////////////////

  localparam TCQ = 1;
  localparam CASCADE = 130 * 1;

  ///////////////////////////////////////////////////////////////////////////
  // Declare signals.
  ///////////////////////////////////////////////////////////////////////////

  wire        temp_reset0;
  wire        temp_reset1;
  wire        temp_reset2;
  wire        reset;
  wire [CASCADE:0] connect;

  ///////////////////////////////////////////////////////////////////////////
  // Create a local synchronous reset.  The first flip flop is tagged
  // ASYNC_REG to avoid generation of X during simulation if any timing
  // requirements are violated.  This reset will be at least three cycles.
  ///////////////////////////////////////////////////////////////////////////

  (* ASYNC_REG = "TRUE" *)
  FDP init_sync0 (.Q(temp_reset0),.C(icap_clk),.D(1'b0),.PRE(1'b0));
  FDP init_sync1 (.Q(temp_reset1),.C(icap_clk),.D(temp_reset0),.PRE(1'b0));
  FDP init_sync2 (.Q(temp_reset2),.C(icap_clk),.D(temp_reset1),.PRE(1'b0));
  FDP init_sync3 (.Q(reset),.C(icap_clk),.D(temp_reset2),.PRE(1'b0));

  ///////////////////////////////////////////////////////////////////////////
  // Cascade the targets; the final output is the buzzer enable signal.
  ///////////////////////////////////////////////////////////////////////////

  genvar targetnum;
  generate
    // this generate statement creates a daisy chain
    // of CASCADE targets by instantiating them and
    // connecting the fail passthrough signals; the
    // initial application of zero to the first fail
    // in is done outside the generate statement; the
    // tap of the last fail out is also done outside
    // the generate statement
    for (targetnum = 1; targetnum <= CASCADE; targetnum = targetnum + 1)
    begin : targetgen
      sem_target example_target (
        .icap_clk(icap_clk),
        .reset(reset),
        .fail_in(connect[targetnum - 1]),
        .fail_out(connect[targetnum])
        );
    end
  endgenerate

  assign connect[0] = 1'b0;
  assign userapp_buzz = connect[CASCADE];

  ///////////////////////////////////////////////////////////////////////////
  //
  ///////////////////////////////////////////////////////////////////////////

endmodule

/////////////////////////////////////////////////////////////////////////////
//
/////////////////////////////////////////////////////////////////////////////
