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
	 input ADC_INIT_DONE,
	 output ADC_INIT,
    output QP_RST_B,
    output TRG_GTXTXRESET,
    output MMCM_RST,
    output SYS_MON_RST,
    output ADC_RST,
    output TRG_RST,
	 output DSR_RST,
    output SYS_RST,
	 output POR,
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
  
 IBUF IBUF_QP_ERROR (.O(QPLL_ERROR),.I(QP_ERROR));
 IBUF IBUF_QP_LOCKED (.O(QPLL_LOCK),.I(QP_LOCKED));
 OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_QP_RST (.O(QP_RST_B),.I(~rst_qpll));
 

assign SYS_RST    = (JTAG_SYS_RST || CSP_SYS_RST || POR);
assign DSR_RST    = ~adc_rdy || SYS_RST;
assign SYS_MON_RST = 1'b0;
assign qpll_lock_disable = 1'b1;

//Pow_on_Rst #(.POR_tmo(4'hC)) POW_on_Reset_FSM   (.MMCM_RST(MMCM_RST),.POR(POR),.RST_QPLL(rst_qpll),.POR_STATE(POR_STATE), // outputs
//                                     .CLK(STUP_CLK),.EOS(EOS),.MMCM_LOCK(DAQ_MMCM_LOCK),.QPLL_LOCK(QPLL_LOCK)); // inputs
Pow_on_Rst #(.POR_tmo(4'hC)) POW_on_Reset_FSM   (.MMCM_RST(MMCM_RST),.POR(POR),.RST_QPLL(rst_qpll),.POR_STATE(POR_STATE), // outputs
                                     .CLK(STUP_CLK),.EOS(EOS),.MMCM_LOCK(DAQ_MMCM_LOCK),.QPLL_LOCK(qpll_lock_disable)); // inputs
												 
Trg_Clock_Strt   Trg_Clock_Strt_FSM (.GTX_RST(TRG_GTXTXRESET),.TRG_RST(TRG_RST), // outputs
                                     .CLK(COMP_CLK),.MMCM_LOCK(TRG_MMCM_LOCK),.RST(SYS_RST),.SYNC_DONE(TRG_SYNC_DONE),.CLK_PHS_CHNG(CMP_CLK_PHS_CHNG)); // inputs

ADC_Init  #(.TIME_OUT(12'd1000)) // 10ms  
         ADC_Init_FSM       (.ADC_INIT(ADC_INIT),.ADC_RST(ADC_RST),.CRST(awrst),.INC(ainc),.RUN(adc_rdy),
                                     .CLK(CLK),.CNT(awcnt),.INIT_DONE(ADC_INIT_DONE),.RST(SYS_RST),.SLOW_CNT(dsr_tmr));

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

