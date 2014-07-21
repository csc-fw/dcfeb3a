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
	parameter USE_CHIPSCOPE = 1
	)(
	inout [35:0] LA_CNTRL,
	input WCLK,
	input RCLK,
	input RST_RESYNC,
	input [6:0] SAMP_MAX,
	input [17:0] WDATA,          // 18 bits {movlp,ovrlp,ocnt,ring_out}
	input WREN,
	input [36:0] L1A_EVT_DATA,
	input L1A_WRT_EN,
	input WARN,
	input TRIG_IN,
	output TRIG_OUT,
	output EVT_BUF_AMT,
	output EVT_BUF_AFL,
	output reg LAST_WRD,
	output reg DVALID,
	output reg MLT_OVLP,
	output reg [15:0] DOUT
	);


wire injectdbiterr;
wire injectsbiterr;

// signals for readout FIFO
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
reg  mlt_ovlp1;
reg  mlt_ovlp2;
wire [3:0] ocnt;
wire [11:0] data_out;
reg serial;
wire l1a_phase;
wire l1a_phs;
wire nxt_l1a;
reg nxt_l1a_sync1,nxt_l1a_sync2;
wire l1a_out;
wire nxt_wrd;
reg [4:0] l1abuf;
wire [23:0] l1acnt;
wire [11:0] l1amcnt;
wire [23:0] l1anum;
wire [11:0] l1a_mtch_num;
reg [12:0] adcdata;
reg [14:0] crc;
reg [15:0] fullwrd;
reg [15:0] frame;
wire [2:0] frm_state;

wire inc_seq;
wire rst_seq;
wire inc_smp;
wire rst_smp;
wire valid0;
wire clr_crc0;
reg [6:0] smp;
reg [6:0] seq,seq1;
reg clr_crc;
reg valid1,valid2;
reg mt_r1,mt_r2,mt_r3;

assign injectdbiterr = 0;
assign injectsbiterr = 0;
assign {l1a_phase,l1amcnt,l1acnt} = L1A_EVT_DATA;
assign l1a_out = nxt_l1a_sync1 & ~nxt_l1a_sync2;

generate
if(USE_CHIPSCOPE==1) 
begin : chipscope_rng_chn
//
// Logic analyzer for readout FIFO
wire [146:0] rng_chn_la_data;
wire [3:0] rng_chn_la_trig;

chnlnk_fifo_la chnlnk_fifo_la_i (
    .CONTROL(LA_CNTRL),
    .CLK(WRCLK),
    .DATA(rng_chn_la_data),  // IN BUS [146:0]
    .TRIG0(rng_chn_la_trig),  // IN BUS [3:0]
    .TRIG_OUT(TRIG_OUT) // OUT
);

// LA Data [146:0]
	assign rng_chn_la_data[3:0]     = l1acnt[3:0];
	assign rng_chn_la_data[7:4]     = l1amcnt[3:0];
	assign rng_chn_la_data[24:8]    = WDATA[16:0];
	assign rng_chn_la_data[36:25]   = data_out;
	assign rng_chn_la_data[52:37]   = fullwrd;
	assign rng_chn_la_data[68:53]   = frame;
	assign rng_chn_la_data[84:69]   = DOUT;
	assign rng_chn_la_data[89:85]   = l1abuf;
	assign rng_chn_la_data[93:90]   = ocnt;
	assign rng_chn_la_data[97:94]   = l1anum[3:0];
	assign rng_chn_la_data[101:98]  = l1a_mtch_num[3:0];
	assign rng_chn_la_data[105:102] = frm_state;
	assign rng_chn_la_data[112:106] = smp;
	assign rng_chn_la_data[119:113] = seq;
	
	assign rng_chn_la_data[120]     = WREN;
	assign rng_chn_la_data[121]     = L1A_WRT_EN;
	assign rng_chn_la_data[122]     = EVT_BUF_AMT;
	assign rng_chn_la_data[123]     = EVT_BUF_AFL;
	assign rng_chn_la_data[124]     = LAST_WRD;
	assign rng_chn_la_data[125]     = WARN;
	assign rng_chn_la_data[126]     = l1a_buf_mt;
	assign rng_chn_la_data[127]     = evt_buf_mt;
	assign rng_chn_la_data[128]     = 1'b0;
	assign rng_chn_la_data[129]     = mt_r3;
	assign rng_chn_la_data[130]     = ovrlp;
	assign rng_chn_la_data[131]     = movlp;
	assign rng_chn_la_data[132]     = serial;
	assign rng_chn_la_data[133]     = l1a_out;
	assign rng_chn_la_data[134]     = 1'b0;
	assign rng_chn_la_data[135]     = 1'b0;
	assign rng_chn_la_data[136]     = l1a_phs;
	assign rng_chn_la_data[137]     = l1a_phase;
	assign rng_chn_la_data[138]     = nxt_l1a;
	assign rng_chn_la_data[139]     = nxt_wrd;
	assign rng_chn_la_data[140]     = valid0;
	assign rng_chn_la_data[141]     = DVALID;
	assign rng_chn_la_data[142]     = 1'b0;
	assign rng_chn_la_data[143]     = inc_seq;
	assign rng_chn_la_data[144]     = rst_seq;
	assign rng_chn_la_data[145]     = inc_smp;
	assign rng_chn_la_data[146]     = rst_smp;
	

// LA Trigger [11:0]
	assign rng_chn_la_trig[0]       = WREN;
	assign rng_chn_la_trig[1]       = evt_buf_mt;
	assign rng_chn_la_trig[2]       = l1a_buf_mt;
	assign rng_chn_la_trig[3]       = TRIG_IN;
	
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
		if(L1A_WRT_EN && !l1a_out)
			l1abuf <= l1abuf + 1;
		else if(l1a_out && !L1A_WRT_EN)
			l1abuf <= l1abuf - 1;
		else
			l1abuf <= l1abuf;
end
	
	l1a_buf chlnk_l1a_buf_i (
		.rst(RST_RESYNC),
		.wr_clk(WCLK),
		.rd_clk(RCLK),
		.din({l1a_phase,l1amcnt,l1acnt}), // input [36 : 0] din
		.wr_en(L1A_WRT_EN),
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
		.rst(RST_RESYNC),
		.wr_clk(WCLK),
		.rd_clk(RCLK),
		.din(WDATA), // input [17 : 0] din
		.wr_en(WREN),
		.rd_en(nxt_wrd),
		.injectdbiterr(injectdbiterr),
		.injectsbiterr(injectsbiterr),
		.dout({movlp,ovrlp,ocnt,data_out}), // output [17 : 0] dout
		.full(evt_buf_full),
		.empty(evt_buf_mt),
		.prog_full(EVT_BUF_AFL),
		.prog_empty(EVT_BUF_AMT),
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
	mt_r1 <= EVT_BUF_AMT;
	mt_r2 <= mt_r1;
	mt_r3 <= mt_r2;
	adcdata <= {1'b0,data_out};
	fullwrd <= {1'b0,~ovrlp,serial,1'b0,data_out};
	clr_crc <= clr_crc0;
	seq1    <= seq;
	mlt_ovlp1  <= movlp;
	mlt_ovlp2  <= mlt_ovlp1;
	MLT_OVLP  <= mlt_ovlp2;
	valid1  <= valid0;
	valid2  <= valid1;
	DVALID  <= valid2;
	DOUT    <= frame;
	LAST_WRD <= nxt_l1a;
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
end


always @(posedge RCLK or posedge RST_RESYNC) begin
	if(RST_RESYNC)
		smp <= 7'h00;
	else
		if(inc_smp)
			smp <= smp +1;
		else if(rst_smp)
			smp <= 7'h00;
		else
			smp <= smp;
end
always @(posedge RCLK or posedge RST_RESYNC) begin
	if(RST_RESYNC)
		seq <= 7'h00;
	else
		if(inc_seq)
			seq <= seq +1;
		else if(rst_seq)
			seq <= 7'h00;
		else
			seq <= seq;
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

Frame_Seq_FSM 
Frame_Seq_FSM1 (
   .CLR_CRC(clr_crc0),
   .INC_SEQ(inc_seq),
   .INC_SMP(inc_smp),
   .LAST_WRD(nxt_l1a),
   .RD(nxt_wrd),
   .RST_SEQ(rst_seq),
   .RST_SMP(rst_smp),
   .VALID(valid0),
	.FRM_STATE(frm_state),
   .CLK(RCLK),
   .FAMT(mt_r3),
   .L1A_BUF_MT(l1a_buf_mt),
   .RST(RST_RESYNC),
   .SAMP_MAX(SAMP_MAX),
   .SEQ(seq),
   .SMP(smp)
);
  

endmodule
