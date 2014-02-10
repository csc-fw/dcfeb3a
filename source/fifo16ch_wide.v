`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:11 03/30/2011 
// Design Name: 
// Module Name:    fifo16ch_wide 
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
module fifo16ch_wide(
    input CLK40,
    input RDCLK,
	 input SMPCLK,
    input WRCLK,
    input RST,
    input RESYNC,
    input L1A,
    input L1A_MATCH,
    input [191:0] G1IN,
    input [191:0] G2IN,
    input [191:0] G3IN,
    input [191:0] G4IN,
    input [191:0] G5IN,
    input [191:0] G6IN,
    input [15:0] RD_ENA,
    input L1A_RD_EN,
	 input [6:0] SAMP_MAX,  // number of samples per event minus 1
	 output RDY,
    output [43:0] L1A_SMP_OUT,
    output [191:0] DOUT_16CH
    );
	 
	reg resync_1;
	reg resync_2;
	reg resync_3;
	reg resync_4;
	wire resync_stretch;
	wire rst_resync;
	
	wire wren;
	wire [15:0] fmt;
	wire [15:0] ffl;
	wire [15:0] ovrflw;
	reg [11:0] muxout[15:0];
	wire [11:0] fout[15:0];
	wire evt_start;
	wire evt_end;
	wire phase_align0;
	wire phase_align1;
	wire stretch_l1a;
	wire srst;
	wire sinc;
	wire injectsbiterr;
	wire injectdbiterr;
	wire sbiterr[15:0];
	wire dbiterr[15:0];
	wire l1a_wren;
	wire l1a_smp_sbiterr;
	wire l1a_smp_dbiterr;
	wire l1a_smp_fl;
	wire l1a_smp_mt;
	wire ovrlap;
	wire multi_ovlp;
	wire new_l1a;
	wire oinc;
	wire odec;
	reg  new_l1a_d1;
	reg  [3:0] ovrlap_cnt;
	reg  [127:0] event_pipe;
	 
	reg l1a_match_d1;
	reg l1a_match_d2;
	reg [23:0] l1acnt;
	reg [11:0] l1amcnt;
	reg [23:0] l1acnt_r1;
	reg [11:0] l1amcnt_r1;
	reg l1a_phase;
	reg l1a_phase_r1;
	reg smpclk_dp5,smpclk_d1,smpclk_d2;
	reg [2:0] sel;
	reg [6:0] sample;

	 
	assign DOUT_16CH = {fout[15],fout[14],fout[13],fout[12],fout[11],fout[10],fout[9],fout[8],fout[7],fout[6],fout[5],fout[4],fout[3],fout[2],fout[1],fout[0]};
	assign stretch_l1a = L1A_MATCH | l1a_match_d1;
	assign phase_align0 = SMPCLK & smpclk_d2;
	assign phase_align1 = ~SMPCLK & ~smpclk_d2;
	assign evt_start = stretch_l1a & phase_align1;
	assign evt_end = event_pipe[SAMP_MAX];
	assign wren = sinc;
	assign ovrlap = (ovrlap_cnt > 4'h0);
	assign multi_ovlp = (ovrlap_cnt > 4'h1);
	assign new_l1a = (L1A_MATCH & wren);
	assign oinc = (new_l1a | new_l1a_d1 | (L1A_MATCH & l1a_match_d1));
	assign odec = evt_end;
	assign l1a_wren = wren & (phase_align0 | phase_align1);
	assign RDY = ~l1a_smp_mt;
	assign injectsbiterr = 1'b0;
	assign injectdbiterr = 1'b0;

	assign resync_stretch = (resync_1 | resync_2 | resync_3 | resync_4); 
	assign rst_resync = RST || resync_stretch;

	always @(posedge CLK40) begin
		resync_1 <= RESYNC;
		resync_2 <= resync_1;
		resync_3 <= resync_2;
		resync_4 <= resync_3;
	end
	always @(posedge CLK40) begin
		if(rst_resync)
			l1acnt <= 24'h000000;
		else
			if(L1A)
				l1acnt <= l1acnt + 1;
			else
				l1acnt <= l1acnt;
	end
	always @(posedge CLK40) begin
		if(rst_resync)
			l1amcnt <= 12'h000;
		else
			if(L1A_MATCH)
				l1amcnt <= l1amcnt + 1;
			else
				l1amcnt <= l1amcnt;
	end
	always @(posedge CLK40) begin
		if(L1A_MATCH)
			l1a_phase <= L1A_MATCH & ~SMPCLK;
		else
			l1a_phase <= l1a_phase;
	end
	
	always @(posedge WRCLK) begin
		if(srst)
			ovrlap_cnt <= 4'h0;
		else
		   if(phase_align1)
				case({oinc,odec})
					2'b10: ovrlap_cnt <= ovrlap_cnt + 1;
					2'b01: ovrlap_cnt <= ovrlap_cnt - 1;
					default: ovrlap_cnt <= ovrlap_cnt;
				endcase
			else
				ovrlap_cnt <= ovrlap_cnt;
	end
	always @(posedge WRCLK) begin   // output tap selected by SAMP_MAX
		if(phase_align1)
			event_pipe <= {event_pipe[126:0],evt_start};
		else
			event_pipe <= event_pipe;
	end
	 
	always @(posedge CLK40) begin
		l1a_match_d1 <= L1A_MATCH;
		l1a_match_d2 <= l1a_match_d1;
		l1acnt_r1    <= l1acnt;
		l1amcnt_r1   <= l1amcnt;
		l1a_phase_r1 <= l1a_phase;
		new_l1a_d1   <= new_l1a;
	end
		
	always @(negedge WRCLK) begin
	   if(SMPCLK)
		   smpclk_dp5 <= 1'b1;
		else
		   smpclk_dp5 <= 1'b0;
	end
	always @(posedge WRCLK) begin
		smpclk_d1 <= smpclk_dp5;
		smpclk_d2 <= smpclk_d1;
	end
	 
	always @* begin
		case (sel)
			3'h0: {muxout[15],muxout[14],muxout[13],muxout[12],muxout[11],muxout[10],muxout[9],muxout[8],muxout[7],muxout[6],muxout[5],muxout[4],muxout[3],muxout[2],muxout[1],muxout[0]} = G1IN;
			3'h1: {muxout[15],muxout[14],muxout[13],muxout[12],muxout[11],muxout[10],muxout[9],muxout[8],muxout[7],muxout[6],muxout[5],muxout[4],muxout[3],muxout[2],muxout[1],muxout[0]} = G2IN;
			3'h2: {muxout[15],muxout[14],muxout[13],muxout[12],muxout[11],muxout[10],muxout[9],muxout[8],muxout[7],muxout[6],muxout[5],muxout[4],muxout[3],muxout[2],muxout[1],muxout[0]} = G3IN;
			3'h3: {muxout[15],muxout[14],muxout[13],muxout[12],muxout[11],muxout[10],muxout[9],muxout[8],muxout[7],muxout[6],muxout[5],muxout[4],muxout[3],muxout[2],muxout[1],muxout[0]} = G4IN;
			3'h4: {muxout[15],muxout[14],muxout[13],muxout[12],muxout[11],muxout[10],muxout[9],muxout[8],muxout[7],muxout[6],muxout[5],muxout[4],muxout[3],muxout[2],muxout[1],muxout[0]} = G5IN;
			3'h5: {muxout[15],muxout[14],muxout[13],muxout[12],muxout[11],muxout[10],muxout[9],muxout[8],muxout[7],muxout[6],muxout[5],muxout[4],muxout[3],muxout[2],muxout[1],muxout[0]} = G6IN;
			default: {muxout[15],muxout[14],muxout[13],muxout[12],muxout[11],muxout[10],muxout[9],muxout[8],muxout[7],muxout[6],muxout[5],muxout[4],muxout[3],muxout[2],muxout[1],muxout[0]} = 0;
		endcase
	end

	always @(posedge WRCLK or posedge srst) begin  // counter for mux selection
		if(srst)
			sel <= 0;
		else
			if(sel == 3'd5)
				sel <= 0;
			else if(sinc) 
				sel <= sel + 1;
			else
			   sel <= sel;
	end

	always @(posedge WRCLK or posedge srst) begin  // counter for samples
		if(srst)
			sample <= 0;
		else
			if(sinc && evt_start)
			   sample <= 0;
			else if(sinc && (sel == 3'd5))
				sample <= sample + 1;
			else
			   sample <= sample;
	end

	FIFO_Load_FSM 
	FIFO_Load_FSM1(
     .SINC(sinc),
     .SRST(srst),
     .CLK(WRCLK),
     .RST(rst_resync),
	  .SAMPLE(sample),
	  .SAMP_MAX(SAMP_MAX),
     .SEL(sel),
     .START(evt_start) 
);
  

genvar Ch;

generate
	for (Ch=0; Ch<16; Ch=Ch+1) begin : channel
		ch_fifo_ecc fifo_ch (            // 36Kb FIFO with ECC protection
		  .rst(rst_resync),              // input rst
		  .wr_clk(WRCLK),                // input wr_clk
		  .rd_clk(RDCLK),                // input rd_clk
		  .din(muxout[Ch]),              // input [11 : 0] din
		  .wr_en(wren),                  // input wr_en
		  .rd_en(RD_ENA[Ch]),            // input rd_en
		  .injectdbiterr(injectdbiterr), // input injectdbiterr
		  .injectsbiterr(injectsbiterr), // input injectsbiterr
		  .dout(fout[Ch]),               // output [11 : 0] dout
		  .full(ffl[Ch]),                // output full
		  .overflow(ovrflw[Ch]),         // output overflow
		  .empty(fmt[Ch]),               // output empty
		  .sbiterr(sbiterr[Ch]),         // output sbiterr
		  .dbiterr(dbiterr[Ch])          // output dbiterr
		);
	end
endgenerate

l1a_smp_fifo l1a_smp_fifo_i (
  .rst(rst_resync),                    // input rst
  .wr_clk(WRCLK),                      // input wr_clk
  .rd_clk(RDCLK),                      // input rd_clk
  .din({multi_ovlp,ovrlap,l1a_phase_r1,l1a_match_d2,ovrlap_cnt,l1amcnt_r1,l1acnt_r1}), // input [43 : 0] din
  .wr_en(l1a_wren),                    // input wr_en
  .rd_en(L1A_RD_EN),                   // input rd_en
  .dout(L1A_SMP_OUT),                  // output [43 : 0] dout
  .full(l1a_smp_fl),                   // output full
  .empty(l1a_smp_mt),                  // output empty
  .sbiterr(l1a_smp_sbiterr),           // output sbiterr
  .dbiterr(l1a_smp_dbiterr)            // output dbiterr
);

	
endmodule
