`timescale 1ns / 1ps


module reset_manager(
    input STUP_CLK,
    input CLK,
    input COMP_CLK,
    input CLK100KHZ,
    input EOS,
    input JTAG_SYS_RST,
	 input CSP_SYS_RST,
    input DAQ_MMCM_LOCK,
    input TRG_MMCM_LOCK,
    input CMP_CLK_PHS_CHNG,
    input TRG_SYNC_DONE,
    input QP_ERROR,
    input QP_LOCKED,
	 input AL_DONE,
	 input ADC_INIT_DONE,
	 input BPI_SEQ_IDLE,
	 output ADC_INIT,
	 output reg AL_START,
    output QP_RST_B,
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
	 output [2:0] POR_STATE
    );

//wire por;
wire adc_rdy;
wire ainc;
reg [4:0] awcnt;
wire awrst;
wire rst_qpll;
wire qpll_lock_disable;
//wire dsr_tmr_rst;
//wire tmr_inc;
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
 OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_QP_RST (.O(QP_RST_B),.I(~rst_qpll));
 

assign restart_all = (JTAG_SYS_RST || CSP_SYS_RST);
assign DSR_RST    = ~adc_rdy || SYS_RST;
assign SYS_MON_RST = 1'b0;
assign qpll_lock_disable = 1'b1;

// Synchronize inputs to startup clock for POR state machine

always @(posedge STUP_CLK) begin
	adc_rdy_r1       <= adc_rdy;
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

//Pow_on_Rst #(.POR_tmo(4'hC)) POW_on_Reset_FSM   (.MMCM_RST(MMCM_RST),.POR(POR),.RST_QPLL(rst_qpll),.POR_STATE(POR_STATE), // outputs
//                                     .CLK(STUP_CLK),.EOS(EOS),.MMCM_LOCK(DAQ_MMCM_LOCK),.QPLL_LOCK(QPLL_LOCK)); // inputs
Pow_on_Rst #(.POR_tmo(7'd120)) POW_on_Reset_FSM   (.ADC_INIT_RST(adc_init_rst_i),.AL_START(al_start_i),.MMCM_RST(MMCM_RST),.POR(por_i),
                                                 .RST_QPLL(rst_qpll),.RUN(run_i),.POR_STATE(POR_STATE), // outputs
                                     .ADC_RDY(adc_rdy_r2),.AL_DONE(al_done_r2),.BPI_SEQ_IDLE(bpi_seq_idle_r2), // inputs
												 .CLK(STUP_CLK),.EOS(EOS),.MMCM_LOCK(daq_mmcm_lock_r2),.QPLL_LOCK(qpll_lock_r2),.RESTART_ALL(restart_all)); // inputs

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

												 
Trg_Clock_Strt   Trg_Clock_Strt_FSM (.GTX_RST(TRG_GTXTXRESET),.TRG_RST(TRG_RST), // outputs
                                     .CLK(COMP_CLK),.MMCM_LOCK(TRG_MMCM_LOCK),.RST(SYS_RST),.SYNC_DONE(TRG_SYNC_DONE),.CLK_PHS_CHNG(CMP_CLK_PHS_CHNG)); // inputs

ADC_Init  #(.TIME_OUT(12'd1000)) // 10ms  
         ADC_Init_FSM       (.ADC_INIT(ADC_INIT),.ADC_RST(ADC_RST),.CRST(awrst),.INC(ainc),.RUN(adc_rdy),
                                     .CLK(CLK),.CNT(awcnt),.INIT_DONE(ADC_INIT_DONE),.RST(adc_init_rst_r2),.SLOW_CNT(dsr_tmr));

//DSR_ho #(.TIME_OUT(16'd5000)) // time out is 50ms
//	DSR_ho_FSM(.DSR_RST(DSR_RST),.INC(tmr_inc),.TMR_RST(dsr_tmr_rst),.CLK(CLK100KHZ),.CNT(dsr_tmr),.RST(SYS_RST));


always @(posedge CLK or posedge awrst) begin
   if(awrst)
	   awcnt <= 5'h00;
	else
	   if(ainc)
		   awcnt <= awcnt +1;
		else
		   awcnt <= awcnt;
end

//always @(posedge CLK100KHZ or posedge dsr_tmr_rst) begin
//   if(dsr_tmr_rst)
//	   dsr_tmr <= 16'h0000;
//	else
//	   if(tmr_inc)
//		   dsr_tmr <= dsr_tmr +1;
//		else
//		   dsr_tmr <= dsr_tmr;
//end

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

