`timescale 1ns / 1ps


module reset_manager #(
	parameter Strt_dly = 20'h7FFFF,
	parameter POR_tmo = 7'd120,
	parameter ADC_Init_tmo = 12'd1000 // 10ms
)(
    input STUP_CLK,
    input CLK,
    input COMP_CLK,
    input CLK100KHZ,
    input EOS,
    input JTAG_SYS_RST,
	 input CSP_SYS_RST,
    input DAQ_MMCM_LOCK,
    input TRG_MMCM_LOCK,
    input CMP_PHS_CHANGE,
    input TRG_SYNC_DONE,
    input QP_ERROR,
    input QP_LOCKED,
	 input AL_DONE,
	 input ADC_INIT_DONE,
	 input BPI_SEQ_IDLE,
	 output ADC_INIT_RST,
	 output ADC_INIT,
	 output ADC_RDY,
	 output reg AL_START,
    output TRG_GTXTXRESET,
    output MMCM_RST,
    output SYS_MON_RST,
    output ADC_RST,
    output TRG_RST,
	 output DSR_RST,
    output reg SYS_RST,
	 output reg RUN,
	 output QPLL_LOCK,
	 output QPLL_ERROR,
	 output [3:0] POR_STATE
    );

wire ainc;
reg [4:0] awcnt;
wire awrst;
wire qpll_lock_disable;
reg [11:0] dsr_tmr;
reg [6:0] timer;
wire por_done;
wire por_cnt;

reg adc_rdy_r1, adc_rdy_r2;
reg al_done_r1, al_done_r2;
reg bpi_seq_idle_r1, bpi_seq_idle_r2;
reg daq_mmcm_lock_r1, daq_mmcm_lock_r2;
reg qpll_lock_r1, qpll_lock_r2;

wire adc_init_rst_i;
reg adc_init_rst_r1;
reg adc_init_rst_r2;
wire al_start_i;  
reg al_start_r1;  
wire por_i;  
reg por_r1;  
wire run_i;  
reg run_r1;
wire restart_all;
wire strt_dly_done;
reg [19:0] startup_cnt;


 IBUF IBUF_QP_ERROR (.O(QPLL_ERROR),.I(QP_ERROR));
 IBUF IBUF_QP_LOCKED (.O(QPLL_LOCK),.I(QP_LOCKED));
 

assign restart_all = (JTAG_SYS_RST || CSP_SYS_RST);
assign DSR_RST    = ~ADC_RDY || SYS_RST;
assign qpll_lock_disable = 1'b1;
assign strt_dly_done = (startup_cnt == Strt_dly);
assign por_done = por_cnt && (timer == POR_tmo);
assign ADC_INIT_RST = adc_init_rst_r2;

SRL16E #(
	.INIT(16'HFFFF)
) SysMonRst_i (
	.Q(SYS_MON_RST),
	.A0(1'b1),
	.A1(1'b1),
	.A2(1'b1),
	.A3(1'b1),
	.CE(1'b1),
	.CLK(STUP_CLK),
	.D(1'b0)
);
	
// Synchronize inputs to startup clock for POR state machine

always @(posedge STUP_CLK) begin
	adc_rdy_r1       <= ADC_RDY;
	al_done_r1       <= AL_DONE;
	bpi_seq_idle_r1  <= BPI_SEQ_IDLE;
	daq_mmcm_lock_r1 <= DAQ_MMCM_LOCK;
	qpll_lock_r1     <= QPLL_LOCK;
	
	adc_rdy_r2       <= adc_rdy_r1;
	al_done_r2       <= al_done_r1;
	bpi_seq_idle_r2  <= bpi_seq_idle_r1;
	daq_mmcm_lock_r2 <= daq_mmcm_lock_r1;
	qpll_lock_r2     <= qpll_lock_r1;
end


always @(posedge STUP_CLK or negedge EOS) begin
   if(!EOS)
	   startup_cnt <= 20'h00000;
	else
	   if(!strt_dly_done)
		   startup_cnt <= startup_cnt +1;
		else
		   startup_cnt <= startup_cnt;
end

always @(posedge STUP_CLK)
begin
  if(por_cnt)
	  if(por_done)
		  timer <= timer;
	  else
		  timer <= timer + 1;
  else
	  timer <= 4'h0;
end

Pow_on_Rst_FSM
POW_on_Reset_FSM_i (
	 // Outputs
	.ADC_INIT_RST(adc_init_rst_i),
	.AL_START(al_start_i),
	.MMCM_RST(MMCM_RST),
	.POR(por_i),
	.POR_CNT(por_cnt),
	.RUN(run_i),
	.POR_STATE(POR_STATE),
	// Inputs
   .ADC_RDY(adc_rdy_r2),
	.AL_DONE(al_done_r2),
	.BPI_SEQ_IDLE(bpi_seq_idle_r2),
	.CLK(STUP_CLK),
	.EOS(EOS),
	.MMCM_LOCK(daq_mmcm_lock_r2),
	.POR_DONE(por_done),
	.QPLL_LOCK(qpll_lock_r2),
	.RESTART_ALL(restart_all),
	.STRT_DLY_DONE(strt_dly_done)
);

// Synchronize outputs to 40MHz clock 

always @(posedge CLK or negedge EOS) begin
	if(!EOS) begin
		adc_init_rst_r1  <= 1'b1;
		al_start_r1      <= 1'b0;
		por_r1           <= 1'b1;
		run_r1           <= 1'b0;
		adc_init_rst_r2  <= 1'b1;
		AL_START         <= 1'b0;
		SYS_RST          <= 1'b1;
		RUN              <= 1'b0;
	end
	else begin
		adc_init_rst_r1  <= adc_init_rst_i;
		al_start_r1      <= al_start_i;
		por_r1           <= por_i;
		run_r1           <= run_i;
		
		adc_init_rst_r2  <= adc_init_rst_r1;
		AL_START         <= al_start_r1;
		SYS_RST          <= por_r1;
		RUN              <= run_r1;
	end
end

												 
Trg_Clock_Strt_FSM
Trg_Clock_Strt_FSM_i (
	 // Outputs
	.GTX_RST(TRG_GTXTXRESET),
	.TRG_RST(TRG_RST),
	// Inputs
	.CLK(COMP_CLK),
	.CLK_PHS_CHNG(CMP_PHS_CHANGE),
	.MMCM_LOCK(TRG_MMCM_LOCK),
	.RST(SYS_RST),
	.SYNC_DONE(TRG_SYNC_DONE)
);

ADC_Init_FSM  #(.TIME_OUT(ADC_Init_tmo)) // 10ms  
ADC_Init_FSM_i (
	 // Outputs
	.ADC_INIT(ADC_INIT),
	.ADC_RST(ADC_RST),
	.CRST(awrst),
	.INC(ainc),
	.RUN(ADC_RDY),
	// Inputs
	.CLK(CLK),
	.CNT(awcnt),
	.INIT_DONE(ADC_INIT_DONE),
	.RST(adc_init_rst_r2),
	.SLOW_CNT(dsr_tmr)
);

always @(posedge CLK or posedge awrst) begin
   if(awrst)
	   awcnt <= 5'h00;
	else
	   if(ainc)
		   awcnt <= awcnt +1;
		else
		   awcnt <= awcnt;
end

always @(posedge CLK100KHZ or posedge ADC_RST) begin
   if(ADC_RST)
	   dsr_tmr <= 12'h000;
	else
	   if(ainc || ADC_INIT)
		   dsr_tmr <= dsr_tmr +1;
		else
		   dsr_tmr <= dsr_tmr;
end

endmodule

