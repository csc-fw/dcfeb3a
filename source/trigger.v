`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:59 04/01/2011 
// Design Name: 
// Module Name:    trigger 
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
module trigger(
	input CLK40,
	input RST,
	// external connections
	input SKW_L1A_P,
	input SKW_L1A_N,
	input SKW_L1A_MATCH_P,
	input SKW_L1A_MATCH_N,
	input SKW_RESYNC_P,
	input SKW_RESYNC_N,
	input SKW_BC0_P,
	input SKW_BC0_N,
	input FMU_L1A,
	input FMU_RESYNC,
	input FMU_L1A_MATCH,
	// internal signals
	input FEM_L1A,
	input FEM_RESYNC,
	input FEM_L1A_MATCH,
	input [1:0] TTC_SRC,
	input USE_ANY_L1A,
	input CSP_RESYNC,
	// common signals
	output reg L1A,
	output reg L1A_MATCH,
	output reg LCT,
	output reg RESYNC,
	output reg [3:0] BC0CNT,
	output reg BC0
	);
  // TTC configuration modes
  parameter 
  FF_EMU_mode    = 2'b00, 
  FF_FEM_mode    = 2'b01, 
  Skew_Clr_mode  = 2'b10;

wire skw_rw_l1a;
wire skw_rw_l1a_match;
wire skw_rw_resync;
wire skw_rw_bc0;
wire fmu_rw_l1a;
wire fmu_rw_l1a_match;
wire fmu_rw_resync;

  IBUFDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFDS_SKW_L1A (.O(skw_rw_l1a),.I(SKW_L1A_P),.IB(SKW_L1A_N));
  IBUFDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFDS_SKW_L1A_MATCH (.O(skw_rw_l1a_match),.I(SKW_L1A_MATCH_P),.IB(SKW_L1A_MATCH_N));
  IBUFDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFDS_SKW_RESYNC (.O(skw_rw_resync),.I(SKW_RESYNC_P),.IB(SKW_RESYNC_N));
  IBUFDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFDS_SKW_BC0 (.O(skw_rw_bc0),.I(SKW_BC0_P),.IB(SKW_BC0_N));
  IBUF IBUF_FMU_L1A (.O(fmu_rw_l1a),.I(FMU_L1A));
  IBUF IBUF_FMU_RESYNC (.O(fmu_rw_resync),.I(FMU_RESYNC));
  IBUF IBUF_FMU_EXP (.O(fmu_rw_l1a_match),.I(FMU_L1A_MATCH));

	always @(posedge CLK40) begin
		LCT <= skw_rw_l1a_match;  // for use with old DMB's
		case(TTC_SRC)
			FF_EMU_mode : begin
				L1A    		<= fmu_rw_l1a;
				L1A_MATCH   <= fmu_rw_l1a_match;
				RESYNC 		<= fmu_rw_resync;
				BC0	 		<= 1'b0;
			end
			FF_FEM_mode : begin
				L1A    		<= FEM_L1A;
				L1A_MATCH   <= FEM_L1A_MATCH;
				RESYNC 		<= FEM_RESYNC;
				BC0	 		<= 1'b0;
			end
			Skew_Clr_mode : begin
				L1A    		<= skw_rw_l1a;
				if(USE_ANY_L1A)
					L1A_MATCH   <= skw_rw_l1a; //Send data on all L1A's
				else
					L1A_MATCH   <= skw_rw_l1a_match; //Send data only on matched L1A's
				RESYNC 		<= skw_rw_resync || CSP_RESYNC;
				BC0	 		<= skw_rw_bc0;
			end
			default: begin
				L1A    		<= skw_rw_l1a;
				L1A_MATCH   <= skw_rw_l1a_match;
				RESYNC 		<= skw_rw_resync;
				BC0	 		<= skw_rw_bc0;
			end
		endcase
	end
	
	
	always @(posedge CLK40 or posedge RST) begin
		if(RST)
			BC0CNT <= 4'h0;
		else
			if(BC0)
				BC0CNT <= BC0CNT + 1;
			else
				BC0CNT <= BC0CNT;
	end
	
endmodule
