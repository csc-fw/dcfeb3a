`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:42 01/14/2014 
// Design Name: 
// Module Name:    al_cdac 
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
module al_cdac #(
	parameter TMR = 0
)(
    input CLK40,
    input CLK1MHZ,
    input RST,
    input CLR_AL_DONE,
    input CAPTURE,
    input [11:0] BPI_AL_REG,
    output SHCK_ENA,
    output SDATA,
    output DAC_ENB,
    output reg DONE
    );
	 
	 
	reg load_cthresh;
	reg load_cthresh_r1;
	wire le_load_cthresh;
	wire set_done;
	reg [15:0] cth_shft;
	reg [11:0] cthresh_hold;
	
	
	assign DAC_ENB = load_cthresh;
	assign SDATA = cth_shft[15];
	assign le_load_cthresh   = load_cthresh & ~load_cthresh_r1;

always @(negedge CLK1MHZ) begin
	load_cthresh_r1 <= load_cthresh;
end
always @(negedge CLK1MHZ or posedge RST) begin
	if(RST)
		cth_shft <= 16'h0000;
	else
		if(le_load_cthresh)
			cth_shft <= {3'b0,cthresh_hold,1'b0};
		else if(SHCK_ENA)
			cth_shft <= {cth_shft[14:0],1'b0};
		else
			cth_shft <= cth_shft;
end

generate
if(TMR==1) 
begin : CmpTh_FSM_TMR
	comp_thresh_load_FSM_TMR         //States change on negative edge of clock
	comp_thresh_load_FSM_i(
	  .SET_DONE(set_done),
	  .SHFT_ENA(SHCK_ENA),
	  .CLK(CLK1MHZ),
	  .RST(RST),
	  .START(load_cthresh) 
	);
end
else 
begin : CmpTh_FSM
	comp_thresh_load_FSM         //States change on negative edge of clock
	comp_thresh_load_FSM_i(
	  .SET_DONE(set_done),
	  .SHFT_ENA(SHCK_ENA),
	  .CLK(CLK1MHZ),
	  .RST(RST),
	  .START(load_cthresh) 
	);
end
endgenerate
  
always @(posedge CLK40 or posedge RST) begin
	if(RST)
		load_cthresh <= 1'b0;
	else
		if(DONE)
			load_cthresh <= 1'b0;
		else if(CAPTURE)
			load_cthresh <= 1'b1;
		else
			load_cthresh <= load_cthresh;
end
always @(posedge CLK40 or posedge RST) begin
	if(RST)
		DONE <= 1'b0;
	else
		if(CLR_AL_DONE)
			DONE <= 1'b0;
		else if(set_done)
			DONE <= 1'b1;
		else
			DONE <= DONE;
end
always @(posedge CLK40 or posedge RST) begin
	if(RST)
		cthresh_hold <= 12'h000;
	else
		if(CAPTURE)
			cthresh_hold <= BPI_AL_REG[11:0];
		else
			cthresh_hold <= cthresh_hold;
end


endmodule
