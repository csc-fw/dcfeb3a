///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2011 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 1.0
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : bpi_la.veo
// /___/   /\     Timestamp  : Wed Oct 19 10:28:37 Eastern Daylight Time 2011
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
bpi_la YourInstanceName (
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .CLK(CLK), // IN
    .DATA(DATA), // IN BUS [163:0]
    .TRIG0(TRIG0) // IN BUS [7:0]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

