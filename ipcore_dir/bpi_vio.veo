///////////////////////////////////////////////////////////////////////////////
// Copyright (c) 2013 Xilinx, Inc.
// All Rights Reserved
///////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor     : Xilinx
// \   \   \/     Version    : 14.7
//  \   \         Application: Xilinx CORE Generator
//  /   /         Filename   : bpi_vio.veo
// /___/   /\     Timestamp  : Tue Nov 05 17:18:10 Eastern Standard Time 2013
// \   \  /  \
//  \___\/\___\
//
// Design Name: ISE Instantiation template
///////////////////////////////////////////////////////////////////////////////

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
bpi_vio YourInstanceName (
    .CONTROL(CONTROL), // INOUT BUS [35:0]
    .CLK(CLK), // IN
    .ASYNC_IN(ASYNC_IN), // IN BUS [127:0]
    .ASYNC_OUT(ASYNC_OUT), // OUT BUS [59:0]
    .SYNC_IN(SYNC_IN), // IN BUS [79:0]
    .SYNC_OUT(SYNC_OUT) // OUT BUS [12:0]
);

// INST_TAG_END ------ End INSTANTIATION Template ---------

