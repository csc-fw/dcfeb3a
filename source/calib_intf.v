`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    07/27/2012 
// Design Name: 
// Module Name:    calib_intf 
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
module calib_intf(
	input CLK40,
	input RST,
	input RESYNC,
	// external connections
	input SKW_EXTPLS_P,
	input SKW_EXTPLS_N,
	input SKW_INJPLS_P,
	input SKW_INJPLS_N,
	input FMU_INJPLS,
	input INJPLS_LV,
	input EXTPLS_LV,
	// internal signals
	input FEM_INJPLS,
	input [1:0] TTC_SRC,
	input CAL_MODE,
	// common signals
	output INJPULSE_P,
	output INJPULSE_N,
	output EXTPULSE_P,
	output EXTPULSE_N,
	output reg TRG_PULSE,
	// counters
	output reg [11:0] INJPLSCNT,
	output reg [11:0] EXTPLSCNT
	);
  // TTC configuration modes
  parameter 
  FF_EMU_mode    = 2'b00, 
  FF_EEM_mode    = 2'b01, 
  Skew_Clr_mode  = 2'b10;

wire skw_rw_extpls;
wire skw_rw_injpls;
//wire fmu_rw_extpls;
wire fmu_rw_injpls;
wire trg_extpls;
wire trg_injpls;
reg ext_pulse;
reg inj_pulse;
reg ext_pulse_r1;
reg inj_pulse_r1;
wire inc_ext;
wire inc_inj;
wire rst_resync;

assign rst_resync = RST || RESYNC;
assign inc_ext = ext_pulse & ~ext_pulse_r1;
assign inc_inj = inj_pulse & ~inj_pulse_r1;

  IBUFDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFDS_SKW_EXP (.O(skw_rw_extpls),.I(SKW_EXTPLS_P),.IB(SKW_EXTPLS_N));
  IBUFDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFDS_SKW_IJP (.O(skw_rw_injpls),.I(SKW_INJPLS_P),.IB(SKW_INJPLS_N));
  IBUF IBUF_FMU_IJP (.O(fmu_rw_injpls),.I(FMU_INJPLS));
  IBUF IBUF_TRG_EXP (.O(trg_extpls),.I(EXTPLS_LV));
  IBUF IBUF_TRG_IJP (.O(trg_injpls),.I(INJPLS_LV));
  OBUFDS #(.IOSTANDARD("DEFAULT")) OBUFDS_EXP (.O(EXTPULSE_P),.OB(EXTPULSE_N),.I(ext_pulse));
  OBUFDS #(.IOSTANDARD("DEFAULT")) OBUFDS_IJP (.O(INJPULSE_P),.OB(INJPULSE_N),.I(inj_pulse));

	always @* begin		// These are not clocked, just passed through to preserve timing.
		TRG_PULSE = trg_extpls | trg_injpls;
		case(TTC_SRC)
			FF_EMU_mode : begin
//				ext_pulse = fmu_rw_extpls;
//				inj_pulse = fmu_rw_injpls;
				if(CAL_MODE) begin
						inj_pulse = fmu_rw_injpls;
						ext_pulse = 1'b0;
					end
				else begin
						inj_pulse = 1'b0;
						ext_pulse = fmu_rw_injpls;
					end
			end
			FF_EEM_mode : begin
//				ext_pulse = FEM_EXTPLS;
//				inj_pulse = FEM_INJPLS;
				if(CAL_MODE) begin
						inj_pulse = FEM_INJPLS;
						ext_pulse = 1'b0;
					end
				else begin
						inj_pulse = 1'b0;
						ext_pulse = FEM_INJPLS;
					end
			end
			Skew_Clr_mode : begin
				ext_pulse = skw_rw_extpls;
				inj_pulse = skw_rw_injpls;
			end
			default: begin
				ext_pulse = skw_rw_extpls;
				inj_pulse = skw_rw_injpls;
			end
		endcase
	end
	
	always @(posedge CLK40) begin
		ext_pulse_r1 <= ext_pulse;
		inj_pulse_r1 <= inj_pulse;
	end
	
	always @(posedge CLK40 or posedge rst_resync) begin
		if(rst_resync)
			EXTPLSCNT <= 12'h000;
		else
			if(inc_ext)
				EXTPLSCNT <= EXTPLSCNT + 1;
			else
				EXTPLSCNT <= EXTPLSCNT;
	end
	
	always @(posedge CLK40 or posedge rst_resync) begin
		if(rst_resync)
			INJPLSCNT <= 12'h000;
		else
			if(inc_inj)
				INJPLSCNT <= INJPLSCNT + 1;
			else
				INJPLSCNT <= INJPLSCNT;
	end
endmodule
