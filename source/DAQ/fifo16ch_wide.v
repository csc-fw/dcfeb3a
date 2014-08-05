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
module fifo16ch_wide #(
	parameter USE_CHIPSCOPE = 1
	)(
	inout [35:0] LA_CNTRL,
	input CLK40,
	input RDCLK,
	input SMPCLK,
	input WRCLK,
	input RST,
	input RST_RESYNC,
	input FIFO_RST,
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
	input TRIG_IN,
	output TRIG_OUT,
	output RDY,
	output [37:0] L1A_SMP_OUT,
	output reg [6:0] OVRLP_SMP_OUT,
	output [191:0] DOUT_16CH,
	output [23:0] L1A_CNT,
	output [11:0] L1A_MTCH_CNT,
	output [15:0] fmt
	);
	 
	
	wire wren;
//	wire [15:0] fmt;
	wire [15:0] ffl;
	wire [15:0] ovrflw;
	reg [11:0] muxout[15:0];
	wire [11:0] fout[15:0];
	wire evt_start;
	wire evt_end;
	wire phase_align0;
	wire phase_align1;
	wire stretch_l1a;
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
	
	wire evt_end_smp_out;
	wire ovrlap_smp_out;
	wire multi_ovlp_smp_out;
	wire [3:0] ovrlap_cnt_smp_out;
	wire [23:0] l1acnt_smp_out;
	wire [11:0] l1amcnt_smp_out;
	wire l1a_match_smp_out;
	wire l1a_phase_smp_out;
	 
	reg l1a_match_d1;
	reg l1a_match_d2;
	reg [23:0] l1acnt;
	reg [11:0] l1amcnt;
	reg [23:0] l1acnt_r1;
	reg [11:0] l1amcnt_r1;
	reg l1a_phase;
	reg l1a_phase_r1;
	reg smpclk_dp5,smpclk_d1,smpclk_d2,smpclk_d3;
	wire [2:0] sel;

	assign L1A_CNT = l1acnt;
	assign L1A_MTCH_CNT = l1amcnt;
	assign L1A_SMP_OUT = {l1a_phase_smp_out,l1a_match_smp_out,l1amcnt_smp_out,l1acnt_smp_out};
	 
	assign DOUT_16CH = {fout[15],fout[14],fout[13],fout[12],fout[11],fout[10],fout[9],fout[8],fout[7],fout[6],fout[5],fout[4],fout[3],fout[2],fout[1],fout[0]};
	assign stretch_l1a = L1A_MATCH | l1a_match_d1;
//	assign phase_align0 = SMPCLK & smpclk_d2;
//	assign phase_align1 = ~SMPCLK & ~smpclk_d2;
	assign phase_align0 = ~smpclk_d3 & smpclk_d2;
	assign phase_align1 = smpclk_d3 & ~smpclk_d2;
	assign evt_start = stretch_l1a & phase_align1;
	assign evt_end = event_pipe[SAMP_MAX];
	assign ovrlap = (ovrlap_cnt > 4'h0);
	assign multi_ovlp = (ovrlap_cnt > 4'h1);
	assign new_l1a = (L1A_MATCH & wren);
	assign oinc = (new_l1a | new_l1a_d1 | (L1A_MATCH & l1a_match_d1));
	assign odec = evt_end & (ovrlap | oinc);
	assign l1a_wren = wren & (phase_align0 | phase_align1);
	assign RDY = ~l1a_smp_mt;
	assign injectsbiterr = 1'b0;
	assign injectdbiterr = 1'b0;
	
	
generate
if(USE_CHIPSCOPE==1) 
begin : chipscope_rng_fifo1
//
// Logic analyzer for readout FIFO
wire [74:0] rng_fifo1_la_data;
wire [3:0] rng_fifo1_la_trig;

fifo1_la fifo1_la_i (
    .CONTROL(LA_CNTRL),
    .CLK(WRCLK),
    .DATA(rng_fifo1_la_data),  // IN BUS [74:0]
    .TRIG0(rng_fifo1_la_trig),  // IN BUS [3:0]
    .TRIG_OUT(TRIG_OUT) // OUT
);
		

// LA Data [74:0]
	assign rng_fifo1_la_data[3:0]    = l1acnt[3:0];
	assign rng_fifo1_la_data[7:4]    = l1acnt_r1[3:0];
	assign rng_fifo1_la_data[11:8]   = l1amcnt[3:0];
	assign rng_fifo1_la_data[15:12]  = l1amcnt_r1[3:0];
	assign rng_fifo1_la_data[19:16]  = ovrlap_cnt[3:0];
	assign rng_fifo1_la_data[31:20]  = event_pipe[11:0];
	assign rng_fifo1_la_data[43:32]  = muxout[0];
	assign rng_fifo1_la_data[46:44]  = sel[2:0];
//	assign rng_fifo1_la_data[53:47]  = sample[6:0];
	assign rng_fifo1_la_data[53:47]  = 7'h00;
	assign rng_fifo1_la_data[54]     = L1A;
	assign rng_fifo1_la_data[55]     = L1A_MATCH;
	assign rng_fifo1_la_data[56]     = l1a_match_d1;
	assign rng_fifo1_la_data[57]     = l1a_match_d2;
	assign rng_fifo1_la_data[58]     = phase_align0;
	assign rng_fifo1_la_data[59]     = phase_align1;
	assign rng_fifo1_la_data[60]     = l1a_phase;
	assign rng_fifo1_la_data[61]     = l1a_phase_r1;
	assign rng_fifo1_la_data[62]     = stretch_l1a;
	assign rng_fifo1_la_data[63]     = evt_start;
	assign rng_fifo1_la_data[64]     = evt_end;
	assign rng_fifo1_la_data[65]     = wren;
	assign rng_fifo1_la_data[66]     = l1a_wren;
	assign rng_fifo1_la_data[67]     = ovrlap;
	assign rng_fifo1_la_data[68]     = multi_ovlp;
	assign rng_fifo1_la_data[69]     = oinc;
	assign rng_fifo1_la_data[70]     = 1'b0;
	assign rng_fifo1_la_data[71]     = l1a_smp_mt;
	assign rng_fifo1_la_data[72]     = L1A_RD_EN;
	assign rng_fifo1_la_data[73]     = RD_ENA[0];
	assign rng_fifo1_la_data[74]     = new_l1a;

// LA Trigger [3:0]
	assign rng_fifo1_la_trig[0]      = L1A;
	assign rng_fifo1_la_trig[1]      = L1A_MATCH;
	assign rng_fifo1_la_trig[2]      = evt_start;
	assign rng_fifo1_la_trig[3]      = TRIG_IN;
	
end
else
begin
	assign TRIG_OUT = 0;
end
endgenerate


	always @(posedge CLK40) begin
		if(RST_RESYNC)
			l1acnt <= 24'h000000;
		else
			if(L1A)
				l1acnt <= l1acnt + 1;
			else
				l1acnt <= l1acnt;
	end
	always @(posedge CLK40) begin
		if(RST_RESYNC)
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
		if(~wren)
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
		smpclk_d3 <= smpclk_d2;
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


	FIFO_Load_FSM 
	FIFO_Load_FSM1(
     .SEL(sel),
     .WRENA(wren),
     .CLK(WRCLK),
     .RST(RST_RESYNC),
	  .SAMP_MAX(SAMP_MAX),
     .START(evt_start) 
);
  

genvar Ch;

generate
	for (Ch=0; Ch<16; Ch=Ch+1) begin : channel
		ch_fifo_ecc fifo_ch (            // 36Kb FIFO with ECC protection
		  .rst(FIFO_RST),                // input rst
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
  .rst(FIFO_RST),                      // input rst
  .wr_clk(WRCLK),                      // input wr_clk
  .rd_clk(RDCLK),                      // input rd_clk
  .din({evt_end,multi_ovlp,ovrlap,l1a_phase_r1,l1a_match_d2,ovrlap_cnt,l1amcnt_r1,l1acnt_r1}), // input [44 : 0] din
  .wr_en(l1a_wren),                    // input wr_en
  .rd_en(L1A_RD_EN),                   // input rd_en
  .dout({evt_end_smp_out,multi_ovlp_smp_out,ovrlap_smp_out,l1a_phase_smp_out,l1a_match_smp_out,ovrlap_cnt_smp_out,l1amcnt_smp_out,l1acnt_smp_out}),             // output [43 : 0] dout
  .full(l1a_smp_fl),                   // output full
  .empty(l1a_smp_mt),                  // output empty
  .sbiterr(l1a_smp_sbiterr),           // output sbiterr
  .dbiterr(l1a_smp_dbiterr)            // output dbiterr
);

always @(posedge RDCLK) begin
   if(L1A_RD_EN)
		OVRLP_SMP_OUT <= {evt_end_smp_out,multi_ovlp_smp_out,ovrlap_smp_out,ovrlap_cnt_smp_out};
	else
		OVRLP_SMP_OUT <= OVRLP_SMP_OUT;
end
	
endmodule