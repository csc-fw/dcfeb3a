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

wire inc_tmr;
wire qpll_lock_disable;
reg [11:0] dsr_tmr;

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


 IBUF IBUF_QP_ERROR (.O(QPLL_ERROR),.I(QP_ERROR));
 IBUF IBUF_QP_LOCKED (.O(QPLL_LOCK),.I(QP_LOCKED));
 

assign restart_all = (JTAG_SYS_RST || CSP_SYS_RST);
assign DSR_RST    = ~ADC_RDY || SYS_RST;
assign qpll_lock_disable = 1'b1;
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

Pow_on_Rst_FSM #(
		.Strt_dly(Strt_dly),
		.POR_tmo(POR_tmo)
)
POW_on_Reset_FSM_i (
	 // Outputs
	.ADC_INIT_RST(adc_init_rst_i),
	.AL_START(al_start_i),
	.MMCM_RST(MMCM_RST),
	.POR(por_i),
	.RUN(run_i),
	.POR_STATE(POR_STATE),
	// Inputs
   .ADC_RDY(adc_rdy_r2),
	.AL_DONE(al_done_r2),
	.BPI_SEQ_IDLE(bpi_seq_idle_r2),
	.CLK(STUP_CLK),
	.EOS(EOS),
	.MMCM_LOCK(daq_mmcm_lock_r2),
	.QPLL_LOCK(qpll_lock_r2),
	.RESTART_ALL(restart_all)
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
	.INC_TMR(inc_tmr),
	.RUN(ADC_RDY),
	// Inputs
	.CLK(CLK),
	.INIT_DONE(ADC_INIT_DONE),
	.RST(adc_init_rst_r2),
	.SLOW_CNT(dsr_tmr)
);


always @(posedge CLK100KHZ or posedge SYS_RST) begin
   if(SYS_RST)
	   dsr_tmr <= 12'h000;
	else
	   if(inc_tmr)
		   dsr_tmr <= dsr_tmr +1;
		else
		   dsr_tmr <= dsr_tmr;
end

endmodule

