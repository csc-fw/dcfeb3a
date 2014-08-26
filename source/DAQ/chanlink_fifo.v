`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:47:21 05/27/2011 
// Design Name: 
// Module Name:    readout_fifo 
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
module chanlink_fifo #(
	parameter USE_CHIPSCOPE = 1,
	parameter TMR = 0
)(
	inout [35:0] LA_CNTRL,
	input WCLK,
	input RCLK,
	input RST_RESYNC,
	input FIFO_RST,
	input [6:0] SAMP_MAX,
	input [11:0] WDATA,          // Data from FIFO1 sample FIFO through xfer2ringbuf multiplexer (12 bits);
	input WREN,                  // write enable from transfer_samples state machine.
	input [37:0] L1A_EVT_DATA,   // 38 bit wide input, {l1a_phase,l1a_match,l1amcnt,l1acnt};
	input [6:0] OVRLP_EVT_DATA,  // 7 bit wide input, {evt_end,movlp,ovrlp,ocnt,ring_out};
	input L1A_WRT_EN,            // Output from L1A sample FIFO is written into L1A event FIFO if an L1A match is present (two read enables per sample).
	input WARN,
	input TRIG_IN,
	output TRIG_OUT,
	output reg LAST_WRD,
	output reg DVALID,
	output reg OVLP_MUX,
	output reg MLT_OVLP,
	output reg [15:0] DOUT
	);


wire injectdbiterr;
wire injectsbiterr;

// signals for readout FIFO
wire evt_buf_overflow;
wire evt_buf_underflow;
wire evt_buf_amt;
wire evt_buf_afl;
wire evt_buf_mt;
wire evt_buf_full;
wire evt_sbiterr;
wire evt_dbiterr;
	
// signals for L1A buffer
wire l1a_buf_mt;
wire l1a_buf_full;
wire l1a_sbiterr;
wire l1a_dbiterr;
	
wire ovrlp;
wire movlp;
wire end_evt;
reg  mlt_ovlp1;
reg  mlt_ovlp2;
wire [3:0] ocnt;
reg ovlp_bit;
reg ovlp_frm;
wire [11:0] data_out;
reg serial;
wire l1a_phase;
wire l1a_match_smp;
wire l1a_push;
wire ovrlap_smp;
wire multi_ovlp_smp;
wire evt_end_smp;
wire l1a_phs;
wire nxt_l1a;
reg nxt_l1a_r1;
reg nxt_l1a_sync1,nxt_l1a_sync2;
wire l1a_out;
wire nxt_wrd;
reg [4:0] l1abuf;
wire [23:0] l1acnt;
wire [11:0] l1amcnt;
wire [3:0] ovrlap_cnt;
wire [23:0] l1anum;
wire [11:0] l1a_mtch_num;
reg [12:0] adcdata;
reg [14:0] crc;
reg [15:0] fullwrd;
reg [15:0] frame;
wire [2:0] frm_state;

wire valid0;
wire clr_crc0;
wire [6:0] seq;
reg [6:0] seq1;
reg clr_crc;
reg valid1,valid2;
reg mt_r1,mt_r2,mt_r3;



assign injectdbiterr = 0;
assign injectsbiterr = 0;
assign {l1a_phase,l1a_match_smp,l1amcnt,l1acnt} = L1A_EVT_DATA;
assign {evt_end_smp,multi_ovlp_smp,ovrlap_smp,ovrlap_cnt} = OVRLP_EVT_DATA;
assign l1a_push  = L1A_WRT_EN & l1a_match_smp;
assign l1a_out   = nxt_l1a_sync1 & ~nxt_l1a_sync2;

generate
if(USE_CHIPSCOPE==1) 
begin : chipscope_rng_chn
//
// Logic analyzer for readout FIFO
wire [146:0] chn_lnk_la_data;
wire [3:0] chn_lnk_la_trig;

chnlnk_fifo_la chnlnk_fifo_la_i (
    .CONTROL(LA_CNTRL),
    .CLK(WCLK),
    .DATA(chn_lnk_la_data),  // IN BUS [146:0]
    .TRIG0(chn_lnk_la_trig),  // IN BUS [3:0]
    .TRIG_OUT(TRIG_OUT) // OUT
);

// LA Data [146:0]
	assign chn_lnk_la_data[3:0]     = l1acnt[3:0];
	assign chn_lnk_la_data[7:4]     = l1amcnt[3:0];
	assign chn_lnk_la_data[19:8]    = WDATA;
	assign chn_lnk_la_data[23:20]   = ovrlap_cnt;
	assign chn_lnk_la_data[24]      = ovrlap_smp;
	assign chn_lnk_la_data[36:25]   = data_out;
	assign chn_lnk_la_data[52:37]   = fullwrd;
	assign chn_lnk_la_data[68:53]   = frame;
	assign chn_lnk_la_data[84:69]   = DOUT;
	assign chn_lnk_la_data[89:85]   = l1abuf;
	assign chn_lnk_la_data[93:90]   = ocnt;
	assign chn_lnk_la_data[97:94]   = l1anum[3:0];
	assign chn_lnk_la_data[101:98]  = l1a_mtch_num[3:0];
	assign chn_lnk_la_data[105:102] = {1'b0,frm_state};
//	assign chn_lnk_la_data[112:106] = smp;
	assign chn_lnk_la_data[112:106] = 7'h00;
	assign chn_lnk_la_data[119:113] = seq;
	
	assign chn_lnk_la_data[120]     = WREN;
	assign chn_lnk_la_data[121]     = L1A_WRT_EN;
	assign chn_lnk_la_data[122]     = evt_buf_amt;
	assign chn_lnk_la_data[123]     = evt_buf_afl;
	assign chn_lnk_la_data[124]     = LAST_WRD;
	assign chn_lnk_la_data[125]     = WARN;
	assign chn_lnk_la_data[126]     = l1a_buf_mt;
	assign chn_lnk_la_data[127]     = evt_buf_mt;
	assign chn_lnk_la_data[128]     = l1a_push;
	assign chn_lnk_la_data[129]     = mt_r3;
	assign chn_lnk_la_data[130]     = ovrlp;
	assign chn_lnk_la_data[131]     = movlp;
	assign chn_lnk_la_data[132]     = serial;
	assign chn_lnk_la_data[133]     = l1a_out;
	assign chn_lnk_la_data[134]     = clr_crc0;
	assign chn_lnk_la_data[135]     = clr_crc;
	assign chn_lnk_la_data[136]     = l1a_phs;
	assign chn_lnk_la_data[137]     = l1a_phase;
	assign chn_lnk_la_data[138]     = nxt_l1a;
	assign chn_lnk_la_data[139]     = nxt_wrd;
	assign chn_lnk_la_data[140]     = valid0;
	assign chn_lnk_la_data[141]     = DVALID;
	assign chn_lnk_la_data[142]     = end_evt;
//	assign chn_lnk_la_data[143]     = inc_seq;
//	assign chn_lnk_la_data[144]     = rst_seq;
//	assign chn_lnk_la_data[145]     = inc_smp;
//	assign chn_lnk_la_data[146]     = rst_smp;
	assign chn_lnk_la_data[143]     = RCLK;
	assign chn_lnk_la_data[144]     = 1'b0;
	assign chn_lnk_la_data[145]     = 1'b0;
	assign chn_lnk_la_data[146]     = 1'b0;
	

// LA Trigger [11:0]
	assign chn_lnk_la_trig[0]       = WREN;
	assign chn_lnk_la_trig[1]       = evt_buf_mt;
	assign chn_lnk_la_trig[2]       = l1a_buf_mt;
	assign chn_lnk_la_trig[3]       = TRIG_IN;
	
end
else
begin
	assign TRIG_OUT = 0;
end
endgenerate

always @(posedge WCLK) begin
	nxt_l1a_sync1 <= nxt_l1a;
	nxt_l1a_sync2 <= nxt_l1a_sync1;
end

always @(posedge WCLK or posedge RST_RESYNC) begin
	if(RST_RESYNC)
		l1abuf <= 5'h00;
	else
		if(l1a_push && !l1a_out)
			l1abuf <= l1abuf + 1;
		else if(l1a_out && !l1a_push)
			l1abuf <= l1abuf - 1;
		else
			l1abuf <= l1abuf;
end
	
	l1a_buf chlnk_l1a_buf_i (
		.rst(FIFO_RST),
		.wr_clk(WCLK),
		.rd_clk(RCLK),
		.din({l1a_phase,l1amcnt,l1acnt}), // input [36 : 0] din
		.wr_en(l1a_push),
		.rd_en(nxt_l1a),
		.injectdbiterr(injectdbiterr),
		.injectsbiterr(injectsbiterr),
		.dout({l1a_phs,l1a_mtch_num,l1anum}), // output [36 : 0] dout
		.full(l1a_buf_full),
		.empty(l1a_buf_mt),
		.sbiterr(l1a_sbiterr),
		.dbiterr(l1a_dbiterr)
	);

	evt_buf chlnk_evt_buf (
		.rst(FIFO_RST),
		.wr_clk(WCLK),
		.rd_clk(RCLK),
		.din({evt_end_smp,multi_ovlp_smp,ovrlap_smp,ovrlap_cnt,WDATA}), // input [18 : 0] din
		.wr_en(WREN),
		.rd_en(nxt_wrd),
		.injectdbiterr(injectdbiterr),
		.injectsbiterr(injectsbiterr),
		.dout({end_evt,movlp,ovrlp,ocnt,data_out}), // output [18 : 0] dout
		.full(evt_buf_full),
		.overflow(evt_buf_overflow), // output overflow
		.empty(evt_buf_mt),
		.underflow(evt_buf_underflow), // output underflow
		.prog_full(evt_buf_afl),
		.prog_empty(evt_buf_amt),
		.sbiterr(evt_sbiterr),
		.dbiterr(evt_dbiterr)
	);



always @* begin
	case(seq)  // seq counts from 0
		7'd72, 7'd73, 7'd74, 7'd75, 7'd76,7'd77: serial = l1a_phs;
		7'd90, 7'd91, 7'd92, 7'd93, 7'd94,7'd95: serial = (SAMP_MAX == 7'h0F);
		default: serial = 0;
	endcase
end

always @(posedge RCLK) begin
	mt_r1 <= evt_buf_mt;
	mt_r2 <= mt_r1;
	mt_r3 <= mt_r2;
	adcdata <= {1'b0,data_out};
	fullwrd <= {1'b0,~ovrlp,serial,1'b0,data_out};
	ovlp_bit <= ovrlp;
	clr_crc <= clr_crc0;
	seq1    <= seq;
	mlt_ovlp1  <= movlp;
	mlt_ovlp2  <= mlt_ovlp1;
	MLT_OVLP  <= mlt_ovlp2;
	valid1    <= valid0;
	valid2    <= valid1;
	DVALID    <= valid2;
	DOUT      <= frame;
	OVLP_MUX  <= ~ovlp_frm;
	nxt_l1a_r1 <= nxt_l1a;
	LAST_WRD   <= nxt_l1a_r1;
end
always @(posedge RCLK or posedge clr_crc) begin
	if(clr_crc)
		crc <= 15'h0000;
	else
		crc <= CRC15_D13(adcdata, crc);
end

always @(posedge RCLK) begin
	case(seq1)
		7'd96: frame <= {1'b0,crc};
		7'd97: frame <= 16'h700C;
		7'd98: frame <= {4'h7,l1anum[5:0],l1abuf,WARN};
		7'd99: frame <= 16'h7FFF;
		default: frame <= fullwrd;
	endcase
	case(seq1)
		7'd96,7'd97,7'd98,7'd99: ovlp_frm <= ovlp_frm;
		default: ovlp_frm <= ovlp_bit;
	endcase
end


function [14:0] CRC15_D13 (input [12:0] d, input [14:0] c);
  reg [14:0] newcrc;
  begin
    newcrc[0] =   d[0] ^                  c[2];
    newcrc[1] =   d[0] ^  d[1] ^  c[2] ^  c[3];
    newcrc[2] =   d[1] ^  d[2] ^  c[3] ^  c[4];
    newcrc[3] =   d[2] ^  d[3] ^  c[4] ^  c[5];
    newcrc[4] =   d[3] ^  d[4] ^  c[5] ^  c[6];
    newcrc[5] =   d[4] ^  d[5] ^  c[6] ^  c[7];
    newcrc[6] =   d[5] ^  d[6] ^  c[7] ^  c[8];
    newcrc[7] =   d[6] ^  d[7] ^  c[8] ^  c[9];
    newcrc[8] =   d[7] ^  d[8] ^  c[9] ^ c[10];
    newcrc[9] =   d[8] ^  d[9] ^ c[10] ^ c[11];
    newcrc[10] =  d[9] ^ d[10] ^ c[11] ^ c[12];
    newcrc[11] = d[10] ^ d[11] ^ c[12] ^ c[13];
    newcrc[12] = d[11] ^ d[12] ^ c[13] ^ c[14];
    newcrc[13] = d[12]         ^ c[14] ^  c[0];
    newcrc[14] =                          c[1];
    CRC15_D13 = newcrc;
  end
  endfunction

generate
if(TMR==1) 
begin : ClnkFrm_FSM_TMR
	ChnLnk_Frame_FSM_TMR 
	ChnLnk_Frame_FSM_i (
		.CLR_CRC(clr_crc0),
		.LAST_WRD(nxt_l1a),
		.RD(nxt_wrd),
		.SEQ(seq),
		.VALID(valid0),
		.FRM_STATE(frm_state),
		.CLK(RCLK),
		.END_EVT(end_evt),
		.F_MT(mt_r3),
		.L1A_BUF_MT(l1a_buf_mt),
		.RST(RST_RESYNC)
	);
end
else 
begin : ClnkFrm_FSM
	ChnLnk_Frame_FSM 
	ChnLnk_Frame_FSM_i (
		.CLR_CRC(clr_crc0),
		.LAST_WRD(nxt_l1a),
		.RD(nxt_wrd),
		.SEQ(seq),
		.VALID(valid0),
		.FRM_STATE(frm_state),
		.CLK(RCLK),
		.END_EVT(end_evt),
		.F_MT(mt_r3),
		.L1A_BUF_MT(l1a_buf_mt),
		.RST(RST_RESYNC)
	);
end
endgenerate


endmodule