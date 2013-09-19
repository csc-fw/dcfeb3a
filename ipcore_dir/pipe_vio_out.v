///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2013 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.6
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : pipe_vio_out.v
// /___/   /\     Timestamp  : Wed Sep 18 16:14:56 Eastern Daylight Time 2013
// \   \  /  \
//  \___\/\___\
//
// Design Name: Verilog Synthesis Wrapper
///////////////////////////////////////////////////////////////////////////////
// This wrapper is used to integrate with Project Navigator and PlanAhead

`timescale 1ns/1ps

module pipe_vio_out(
    CONTROL,
    CLK,
    SYNC_OUT) /* synthesis syn_black_box syn_noprune=1 */;


inout [35 : 0] CONTROL;
input CLK;
output [3 : 0] SYNC_OUT;

endmodule
