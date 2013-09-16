`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:07:25 02/24/2011 
// Design Name: 
// Module Name:    bky_shift 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module bky_shift(
    input DRCK,        // Data Reg Clock
    input SEL,         // User 2 mode active
    input F,           // Function select
    input TDI,         // Serial Test Data In
    input [6:1] MASK,  // Mask of which amplifiers to include in shift loop
    input SHIFT,       // Shift state
    input [6:1] DRTN,  // Serial data returned from amplifiers
    output [6:1] DSND, // Serial data sent to amplifiers
    output [6:1] BCLK, // Shift clock for amplifiers
    output TDO        // Test data out of the complete loop
	 );
	
   wire all;
	wire shclk, shin;
	wire [6:1] msel;
   wire [7:1] mout;
	
   assign all     = ~|MASK;  // NOR of all bits in mask (active if no bits set in mask).
	assign shclk   = SEL & DRCK & F; // shift clock
	assign shin    = SEL & TDI & F;  // shift data
//   assign BCLK    = {6{SHIFT & shclk}} & ( {6{all}} | MASK); 
   assign BCLK[1] = (SHIFT & shclk) & (all | MASK[1]); 
   assign BCLK[2] = (SHIFT & shclk) & (all | MASK[2]); 
   assign BCLK[3] = (SHIFT & shclk) & (all | MASK[3]); 
   assign BCLK[4] = (SHIFT & shclk) & (all | MASK[4]); 
   assign BCLK[5] = (SHIFT & shclk) & (all | MASK[5]); 
   assign BCLK[6] = (SHIFT & shclk) & (all | MASK[6]); 
	
	assign msel    = {|MASK[5:1],|MASK[4:1],|MASK[3:1],|MASK[2:1],MASK[1],1'b0};  // selection word for data to send to amplifiers
	
//	assign mout    = MASK ? DRTN : m0in;   // Multiplexer for data from amplifiers
//	assign DSND    = msel ? mout : {6{shin}};  // Multiplexer for data to amplifiers
	assign mout[1]    = shin; 
	assign mout[2]    = MASK[1] ? DRTN[1] : mout[1];   // Multiplexer for data from amplifiers
	assign mout[3]    = MASK[2] ? DRTN[2] : mout[2];   // Multiplexer for data from amplifiers
	assign mout[4]    = MASK[3] ? DRTN[3] : mout[3];   // Multiplexer for data from amplifiers
	assign mout[5]    = MASK[4] ? DRTN[4] : mout[4];   // Multiplexer for data from amplifiers
	assign mout[6]    = MASK[5] ? DRTN[5] : mout[5];   // Multiplexer for data from amplifiers
	assign mout[7]    = MASK[6] ? DRTN[6] : mout[6];   // Multiplexer for data from amplifiers
	
	assign DSND[1]    = msel[1] ? mout[1] : shin;  // Multiplexer for data to amplifiers
	assign DSND[2]    = msel[2] ? mout[2] : shin;  // Multiplexer for data to amplifiers
	assign DSND[3]    = msel[3] ? mout[3] : shin;  // Multiplexer for data to amplifiers
	assign DSND[4]    = msel[4] ? mout[4] : shin;  // Multiplexer for data to amplifiers
	assign DSND[5]    = msel[5] ? mout[5] : shin;  // Multiplexer for data to amplifiers
	assign DSND[6]    = msel[6] ? mout[6] : shin;  // Multiplexer for data to amplifiers
	assign TDO     = F & mout[7];             // serial output

endmodule
