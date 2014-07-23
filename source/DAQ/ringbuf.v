`timescale 1ns / 1ps
module ringbuf #(
	parameter USE_CHIPSCOPE = 1
	)(
	inout [35:0] LA_CNTRL,
   input CLK,
	input RST_RESYNC,
	input FIFO_RST,
	input [6:0] SAMP_MAX,
	input [11:0] WDATA,
	input WREN,
	input [37:0] L1A_SMP_DATA,
	input [5:0] OVRLP_SMP_DATA,
	input L1A_WRT_EN,
	input EVT_BUF_AMT,
	input EVT_BUF_AFL,
	input TRIG_IN,
	output TRIG_OUT,
	output [36:0] L1A_EVT_DATA,
	output L1A_EVT_PUSH,
	output [17:0] RDATA,
	output reg DATA_PUSH,
	output WARN
   );


wire [11:0] ring_out;
	
wire injectdbiterr;
wire injectsbiterr;
// signals for L1A buffer
wire l1a_buf_mt;
wire l1a_buf_fl0;
wire l1a_sbiterr;
wire l1a_dbiterr;
// signals for ring buffer
wire ring_sbiterr;
wire ring_dbiterr;
wire ring_err;
reg [12:0] wrt_addr;
reg [12:0] wrt_addr2;
reg [11:0] rd_addr;
wire [11:0] rdaddrecc;
wire [11:0] strt_addr;
reg  [11:0] prev_strt_addr;
wire mask_b12_strt;
wire mask_b12_rdad;
wire [12:0] ring_cnt_strt;
wire [12:0] ring_cnt_rdad;
wire ring_amt;

wire ovrlp;
wire movlp;
wire l1a_match_smp;
wire l1a_phase_smp;
wire ovrlap_smp;
wire multi_ovlp_smp;
wire l1a_phs;
wire l1a_push;
wire nxt_l1a;
wire nxt_wrd;
reg valid1;
reg eb_amt_s1;
reg eb_amt_s2;
reg [4:0] l1abuf;
wire [3:0] ovrlap_cnt;
wire [3:0] ocnt;
wire [23:0] l1acnt;
wire [11:0] l1amcnt;
wire [23:0] l1anum;
wire [11:0] l1a_mtch_num;
wire [3:0] evt_state;


wire ld_addr;
wire inc_seq;
wire rst_seq;
wire inc_smp;
wire rst_smp;
reg [6:0] smp;
reg [6:0] seq;


assign injectdbiterr = 0;
assign injectsbiterr = 0;
assign {l1a_phase_smp,l1a_match_smp,l1amcnt,l1acnt} = L1A_SMP_DATA;
assign {multi_ovlp_smp,ovrlap_smp,ovrlap_cnt} = OVRLP_SMP_DATA;
assign l1a_push     = L1A_WRT_EN & l1a_match_smp;
assign ring_cnt_strt = wrt_addr - strt_addr;
assign ring_cnt_rdad = wrt_addr2 - rd_addr;
assign ring_amt     = (ring_cnt_rdad < 13'd7);
assign WARN         = (ring_cnt_strt > 13'd3328);
assign ring_err     = (ring_cnt_strt > 13'h0FFF);
assign mask_b12_strt = (({1'b0,strt_addr} - prev_strt_addr) >= 0);
assign mask_b12_rdad = nxt_wrd && (rd_addr == 12'hFFF);
assign L1A_EVT_DATA = {l1a_phs,l1a_mtch_num,l1anum};
assign L1A_EVT_PUSH = ld_addr;
assign RDATA        = {movlp,ovrlp,ocnt,ring_out};
assign evt_state[3] = 0;

generate
if(USE_CHIPSCOPE==1) 
begin : chipscope_rng_buf
//
// Logic analyzer for readout FIFO
wire [171:0] rng_buf_la_data;
wire [5:0] rng_buf_la_trig0;
wire [3:0] rng_buf_la_trig1;
wire [3:0] rng_buf_la_trig2;

ring_buf_la ring_buf_la_i (
    .CONTROL(LA_CNTRL),
    .CLK(CLK),
    .DATA(rng_buf_la_data),  // IN BUS [171:0]
    .TRIG0(rng_buf_la_trig0),  // IN BUS [5:0]
    .TRIG1(rng_buf_la_trig1),  // IN BUS [3:0]
    .TRIG2(rng_buf_la_trig2),  // IN BUS [3:0]
    .TRIG_OUT(TRIG_OUT) // OUT
);

// LA Data [171:0]
	assign rng_buf_la_data[3:0]     = l1acnt[3:0];
	assign rng_buf_la_data[7:4]     = l1amcnt[3:0];
	assign rng_buf_la_data[11:8]    = ovrlap_cnt[3:0];
	assign rng_buf_la_data[23:12]   = rd_addr;
	assign rng_buf_la_data[35:24]   = rdaddrecc;
	assign rng_buf_la_data[47:36]   = strt_addr;
	assign rng_buf_la_data[59:48]   = prev_strt_addr;
	assign rng_buf_la_data[71:60]   = ring_cnt_rdad;
	assign rng_buf_la_data[84:72]   = wrt_addr;
	assign rng_buf_la_data[89:85]   = l1abuf;
	assign rng_buf_la_data[93:90]   = ocnt;
	assign rng_buf_la_data[97:94]   = l1anum[3:0];
	assign rng_buf_la_data[101:98]  = l1a_mtch_num[3:0];
	assign rng_buf_la_data[105:102] = evt_state;
	assign rng_buf_la_data[112:106] = smp;
	assign rng_buf_la_data[119:113] = seq;
	assign rng_buf_la_data[131:120] = WDATA;
	assign rng_buf_la_data[143:132] = ring_out;

	assign rng_buf_la_data[144]     = WREN;
	assign rng_buf_la_data[145]     = L1A_WRT_EN;
	assign rng_buf_la_data[146]     = eb_amt_s2;
	assign rng_buf_la_data[147]     = EVT_BUF_AFL;
	assign rng_buf_la_data[148]     = L1A_EVT_PUSH;
	assign rng_buf_la_data[149]     = WARN;
	assign rng_buf_la_data[150]     = l1a_buf_mt;
	assign rng_buf_la_data[151]     = ring_err;
	assign rng_buf_la_data[152]     = mask_b12_rdad;
	assign rng_buf_la_data[153]     = ring_amt;
	assign rng_buf_la_data[154]     = ovrlp;
	assign rng_buf_la_data[155]     = movlp;
	assign rng_buf_la_data[156]     = l1a_match_smp;
	assign rng_buf_la_data[157]     = l1a_phase_smp;
	assign rng_buf_la_data[158]     = ovrlap_smp;
	assign rng_buf_la_data[159]     = multi_ovlp_smp;
	assign rng_buf_la_data[160]     = l1a_phs;
	assign rng_buf_la_data[161]     = l1a_push;
	assign rng_buf_la_data[162]     = nxt_l1a;
	assign rng_buf_la_data[163]     = nxt_wrd;
	assign rng_buf_la_data[164]     = valid1;
	assign rng_buf_la_data[165]     = DATA_PUSH;
	assign rng_buf_la_data[166]     = ld_addr;
	assign rng_buf_la_data[167]     = inc_seq;
	assign rng_buf_la_data[168]     = rst_seq;
	assign rng_buf_la_data[169]     = inc_smp;
	assign rng_buf_la_data[170]     = rst_smp;
	assign rng_buf_la_data[171]     = mask_b12_strt;

// LA Trigger0 [5:0]
	assign rng_buf_la_trig0[0]       = WREN;
	assign rng_buf_la_trig0[1]       = L1A_WRT_EN;
	assign rng_buf_la_trig0[2]       = l1a_buf_mt;
	assign rng_buf_la_trig0[3]       = TRIG_IN;
	assign rng_buf_la_trig0[4]       = EVT_BUF_AMT;
	assign rng_buf_la_trig0[5]       = EVT_BUF_AFL;
	
// LA Trigger1 [3:0]
	assign rng_buf_la_trig1[3:0]     = evt_state;

// LA Trigger2 [3:0]
	assign rng_buf_la_trig2[3:0]     = smp[3:0];
	
end
else
begin
	assign TRIG_OUT = 0;
end
endgenerate

always @(posedge CLK or posedge RST_RESYNC) begin
	if(RST_RESYNC)
		wrt_addr <= 13'h0000;
	else
		if(WREN)
			wrt_addr <= (wrt_addr & {mask_b12_strt,12'hFFF}) + 1;
		else
			wrt_addr <= (wrt_addr & {mask_b12_strt,12'hFFF});
end

always @(posedge CLK or posedge RST_RESYNC) begin
	if(RST_RESYNC)
		wrt_addr2 <= 13'h0000;
	else
		if(WREN)
			wrt_addr2 <= (wrt_addr2 & {mask_b12_rdad,12'hFFF}) + 1;
		else
			wrt_addr2 <= (wrt_addr2 & {mask_b12_rdad,12'hFFF});
end


	ring_l1a_buf ring_l1a_buf_i (
	  .clk(CLK), // input clk for read and write
	  .rst(FIFO_RST),
	  .din({l1a_phase_smp,wrt_addr[11:0],l1amcnt,l1acnt}), // input [48 : 0] din
	  .wr_en(l1a_push),
	  .rd_en(nxt_l1a),
	  .injectdbiterr(injectdbiterr),
	  .injectsbiterr(injectsbiterr),
	  .dout({l1a_phs,strt_addr,l1a_mtch_num,l1anum}), // output [48 : 0] dout
	  .full(l1a_buf_fl0),
	  .empty(l1a_buf_mt),
	  .sbiterr(l1a_sbiterr),
	  .dbiterr(l1a_dbiterr)
	);

	ring_buf ring_buf_i (
	  .clka(CLK),
	  .wea(WREN),
	  .addra(wrt_addr[11:0]),                 // input [11 : 0] addra
	  .dina({multi_ovlp_smp,ovrlap_smp,ovrlap_cnt,WDATA}), // input [17 : 0] dina
	  .clkb(CLK),
	  .addrb(rd_addr),                  // input [11 : 0] addrb
	  .doutb({movlp,ovrlp,ocnt,ring_out}), // output [17 : 0] doutb
	  .injectsbiterr(injectsbiterr),
	  .injectdbiterr(injectdbiterr),
	  .sbiterr(ring_sbiterr),
	  .dbiterr(ring_dbiterr),
	  .rdaddrecc(rdaddrecc)             // output [11 : 0] rdaddrecc
	);



always @(posedge CLK or posedge RST_RESYNC) begin
	if(RST_RESYNC)
		prev_strt_addr <= 12'h000;
	else
		if(nxt_l1a)
			prev_strt_addr <= strt_addr;
		else
			prev_strt_addr <= prev_strt_addr;
end

always @(posedge CLK or posedge RST_RESYNC) begin
	if(RST_RESYNC)
		rd_addr <= 12'h000;
	else
		if(ld_addr)
			rd_addr <= strt_addr;
		else if(nxt_wrd)
			rd_addr <= rd_addr + 1;
		else
			rd_addr <= rd_addr;
end



always @(posedge CLK or posedge RST_RESYNC) begin
	if(RST_RESYNC)
		l1abuf <= 5'h00;
	else
		if(l1a_push && !nxt_l1a)
			l1abuf <= l1abuf + 1;
		else if(nxt_l1a && !l1a_push)
			l1abuf <= l1abuf - 1;
		else
			l1abuf <= l1abuf;
end

always @(posedge CLK or posedge RST_RESYNC) begin
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
always @(posedge CLK or posedge RST_RESYNC) begin
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

always @(posedge CLK) begin
	valid1 <= nxt_wrd;
	DATA_PUSH <= valid1;
	eb_amt_s1 <= EVT_BUF_AMT;
	eb_amt_s2 <= eb_amt_s1;
end

Ring_Trans
Ring_Trans_FSM (
   .INC_SEQ(inc_seq),
   .INC_SMP(inc_smp),
   .LD_ADDR(ld_addr),
   .NXT_L1A(nxt_l1a),
   .RD(nxt_wrd),
   .RST_SEQ(rst_seq),
   .RST_SMP(rst_smp),
   .EVT_STATE(evt_state[2:0]),
   .CLK(CLK),
   .EVT_BUF_AFL(EVT_BUF_AFL),
   .EVT_BUF_AMT(eb_amt_s2),
   .L1A_BUF_MT(l1a_buf_mt),
   .RING_AMT(ring_amt),
   .RST(RST_RESYNC),
   .SAMP_MAX(SAMP_MAX),
   .SEQ(seq),
   .SMP(smp)
);
//Ring_Trans_TMR
//Ring_Trans_TMR_FSM (
//   .INC_SEQ(inc_seq),
//   .INC_SMP(inc_smp),
//   .LD_ADDR(ld_addr),
//   .NXT_L1A(nxt_l1a),
//   .RD(nxt_wrd),
//   .RST_SEQ(rst_seq),
//   .RST_SMP(rst_smp),
//   .EVT_STATE(evt_state[2:0]),
//   .CLK(CLK),
//   .EVT_BUF_AFL(EVT_BUF_AFL),
//   .EVT_BUF_AMT(eb_amt_s2),
//   .L1A_BUF_MT(l1a_buf_mt),
//   .RING_AMT(ring_amt),
//   .RST(RST_RESYNC),
//   .SAMP_MAX(SAMP_MAX),
//   .SEQ(seq),
//   .SMP(smp)
//);
	
endmodule
