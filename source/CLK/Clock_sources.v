`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:07:31 03/10/2011 
// Design Name: 
// Module Name:    Clock_sources 
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
module Clock_sources(
    input CMS_CLK_N,
    input CMS_CLK_P,
    input CMS80_N,
    input CMS80_P,
    input QPLL_CLK_AC_N,
    input QPLL_CLK_AC_P,
    input XO_CLK_AC_N,
    input XO_CLK_AC_P,
    input FEM_CLK320_N,
    input FEM_CLK320_P,
    input GC0N,
    input GC0P,
    input GC1N,
    input GC1P,
	 input  [3:0] CMP_CLK_PHASE,
	 input  [2:0] SAMP_CLK_PHASE,
	 input SAMP_CLK_PHS_CHNG,
    output TP_B35_0N,
    output TP_B35_0P,
	   // Internal inputs
	 input RST,
	 input RESYNC,
	   // Internal outputs
    output CMS80,
    output DAQ_TX_125_REFCLK,
    output DAQ_TX_125_REFCLK_DV2,
    output TRG_TX_160_REFCLK,
    output COMP_CLK,
    output COMP_CLK80,
    output COMP_CLK160,
    output TRG_MMCM_LOCK,
    output CLK160,
    output CLK120,
    output CLK40,
    output CLK20,
    output CLK1MHZ,
    output FEM_CLK320,
    output ADC_CLK,
    output DSR_RESYNC,
    input DAQ_MMCM_RST,
    output DAQ_MMCM_LOCK,
    output STRTUP_CLK,
    output EOS,
	output reg resync_d1,
	output lead_edg_resync,
	output reg lead_edg_resync_d1,
	output reg cap_phase,
	output reg [7:0] rst_mmcm_pipe
    );

     //---------------------Dedicated GTX Reference Clock Inputs ---------------
    // Each dedicated refclk you are using in your design will need its own IBUFDS_GTXE1 instance
    
  wire trg_tx_160_refclk_dv2;
  
  wire cms_clk;
  
  wire gc0,gc1;
  wire tp_b35_0;
  wire dmy_cclk, dmy_din, dmy_tck, preq;
wire samp_ma, samp_mb;
wire cmp_ca, cmp_cb;
wire cmp_fa, cmp_fb;
wire samp_m0,samp_m45,samp_m90,samp_m135;
wire cmp_c0,cmp_c90,cmp_c180,cmp_c270;
wire cmp_f0,cmp_f22p5,cmp_f45,cmp_f67p5;
wire sampfbin_med, sampfbout_med;
wire cmpfbin_coarse, cmpfbout_coarse;
wire cmpfbin_fine, cmpfbout_fine;
wire samp_med_lock;
wire cmp_coarse_lock;
wire cmp_fine_lock;
wire samp_in_sel;
wire pre_clk20, pre_clk20_b;
//reg cap_phase;
wire clk20_nophase;
wire clk20_nophase_b;
reg rst_d1, rst_d2;
wire trl_edg_rst;
//reg resync_d1;
//wire lead_edg_resync;
//reg lead_edg_resync_d1;
reg clk20_phase;
reg c20_phase_sel;
//reg [7:0] rst_mmcm_pipe;
reg dsr_ho;
reg [7:0] dsr_ho_tmr;
wire clr_dsr_ho;
wire rst_samp_mmcm;
  
  assign tp_b35_0 = 1'b0;
  assign trl_edg_rst = (~RST & rst_d2); //two clocks wide
  assign lead_edg_resync = RESYNC & ~resync_d1 ; //one clocks wide
//  assign ADC_CLK = CLK20;
  assign rst_samp_mmcm = |rst_mmcm_pipe;
  assign DSR_RESYNC = dsr_ho;
  assign clr_dsr_ho = (dsr_ho_tmr == 8'd100); //100uS
  assign samp_in_sel = SAMP_CLK_PHASE[2] ^ c20_phase_sel;
  
	IBUFGDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFGDS_CMS_CLK (.O(cms_clk),.I(CMS_CLK_P),.IB(CMS_CLK_N));
	IBUFGDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFGDS_CMS80 (.O(CMS80),.I(CMS80_P),.IB(CMS80_N));
	IBUFDS_GTXE1 q3_clk0_refclk_ibufds_i (.O(DAQ_TX_125_REFCLK),.ODIV2(DAQ_TX_125_REFCLK_DV2),.CEB(1'b0),.I(XO_CLK_AC_P),.IB(XO_CLK_AC_N));
	IBUFDS_GTXE1 q3_clk1_refclk_ibufds_i (.O(TRG_TX_160_REFCLK),.ODIV2(trg_tx_160_refclk_dv2),.CEB(1'b0),.I(QPLL_CLK_AC_P),.IB(QPLL_CLK_AC_N));
	IBUFGDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFGDS_FEM_CLK320 (.O(FEM_CLK320),.I(FEM_CLK320_P),.IB(FEM_CLK320_N));
	IBUFGDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFGDS_GC0 (.O(gc0),.I(GC0P),.IB(GC0N));
	IBUFGDS #(.DIFF_TERM("TRUE"),.IOSTANDARD("DEFAULT")) IBUFGDS_GC1 (.O(gc1),.I(GC1P),.IB(GC1N));
	OBUFDS #(.IOSTANDARD("DEFAULT")) OBUFDS_TP_B35_0 (.O(TP_B35_0P),.OB(TP_B35_0N),.I(tp_b35_0));




always @(posedge CLK40)
begin
	rst_d1 <= RST;
	rst_d2 <= rst_d1;
	resync_d1 <= RESYNC;
	lead_edg_resync_d1 <= lead_edg_resync;
	cap_phase <= lead_edg_resync | lead_edg_resync_d1  | trl_edg_rst | SAMP_CLK_PHS_CHNG;
	rst_mmcm_pipe <= {rst_mmcm_pipe[6:0],cap_phase};
end

always @(posedge CLK40 or posedge RST)
begin
	if(RST)
		clk20_phase <= 1'b0;
	else
		if(lead_edg_resync)
			clk20_phase <= 1'b0;
		else
			clk20_phase <= ~clk20_phase;	
end

always @(posedge clk20_nophase or posedge RST)
begin
	if(RST)
		c20_phase_sel <= 1'b0;
	else
		if(cap_phase)
			c20_phase_sel <= clk20_phase;
		else
			c20_phase_sel <= c20_phase_sel;
end
		
always @(posedge CLK40 or posedge RST)
begin
	if(RST)
		dsr_ho <= 1'b0;
	else
		if(cap_phase)
			dsr_ho <= 1'b1;
		else if(clr_dsr_ho)
			dsr_ho <= 1'b0;
		else
			dsr_ho <= dsr_ho;	
end
always @(posedge CLK1MHZ or posedge RST)
begin
	if(RST)
		dsr_ho_tmr <= 8'h00;
	else
		if(dsr_ho)
			dsr_ho_tmr <= dsr_ho_tmr+1;
		else
			dsr_ho_tmr <= 8'h00;	
end

// daq_mmcm_custom
//----------------------------------------------------------------------------
// Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
// Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// CLK_OUT1    40.000      0.000      50.0      247.096    196.976
// CLK_OUT2   160.000      0.000      50.0      169.112    196.976
// CLK_OUT3   120.000      0.000      50.0      180.794    196.976
// CLK_OUT4    20.000      0.000      50.0      298.160    196.976
// CLK_OUT5     1.000      0.000      50.0      357.000    196.976
//
//----------------------------------------------------------------------------
// Input Clock   Input Freq (MHz)   Input Jitter (UI)
//----------------------------------------------------------------------------
// primary          40.000            0.010

daq_mmcm_custom daq_mmc1(.CLK_IN1(cms_clk),
	.CLK_OUT1(CLK40),.CLK_OUT2(CLK160),.CLK_OUT3(CLK120),
	.CLK_OUT4_RAW(pre_clk20),.CLK_OUT4_B_RAW(pre_clk20_b),
	.CLK_OUT5(CLK1MHZ),
	.RESET(DAQ_MMCM_RST),
	.LOCKED(DAQ_MMCM_LOCK));

   BUFH	clk20_nophase_i (.O(clk20_nophase),  .I(pre_clk20));
   BUFH	clk20_nophase_b_i (.O(clk20_nophase_b),  .I(pre_clk20_b));

   BUFGMUX 
   BUFGMUX_clk20_phase (
      .O(CLK20),
      .I0(pre_clk20),
      .I1(pre_clk20_b),
      .S(c20_phase_sel)
   );


//clkadj_med
// 6.25ns shifts in phase with a -2ns offset
// also with output jitter minimized
//
//----------------------------------------------------------------------------
// Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
// Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// CLK_OUT1    20.000    345.000      50.0      263.808    309.209
// CLK_OUT2    20.000     30.000      50.0      263.808    309.209
// CLK_OUT3    20.000     75.000      50.0      263.808    309.209
// CLK_OUT4    20.000    120.000      50.0      263.808    309.209
//
//----------------------------------------------------------------------------
// Input Clock   Input Freq (MHz)   Input Jitter (UI)
//----------------------------------------------------------------------------
// primary          20.000            0.010
// secondary        20.000            0.010


 clkadj_med samp_clk_med_i(
	.CLK_IN1(clk20_nophase), .CLK_IN2(clk20_nophase_b), .CLK_IN_SEL(~samp_in_sel), .CLKFB_IN(sampfbout_med),
	.CLK_OUT1(samp_m0), .CLK_OUT2(samp_m45), .CLK_OUT3(samp_m90), .CLK_OUT4(samp_m135),
	.CLKFB_OUT(sampfbout_med),
	.RESET(rst_samp_mmcm),
   .LOCKED(samp_med_lock));
	
//   BUFG samp_fb_med_i (.O(sampfbin_med),  .I(sampfbout_med));
	
   BUFGMUX 
   BUFGMUX_samp_ma (
      .O(samp_ma),
      .I0(samp_m0),
      .I1(samp_m45),
      .S(SAMP_CLK_PHASE[0])
   );
   BUFGMUX 
   BUFGMUX_samp_mb (
      .O(samp_mb),
      .I0(samp_m90),
      .I1(samp_m135),
      .S(SAMP_CLK_PHASE[0])
   );
   BUFGMUX 
   BUFGMUX_samp_mc (
      .O(ADC_CLK),
      .I0(samp_ma),
      .I1(samp_mb),
      .S(SAMP_CLK_PHASE[1])
   );
  

//
// configuration clock for Power On state machines
//  
   STARTUP_VIRTEX6 #(
      .PROG_USR("FALSE")  // Activate program event security feature
   )
   strt_up_v6 (
      .CFGCLK(dmy_cclk),       // 1-bit output Configuration main clock output
      .CFGMCLK(STRTUP_CLK),     // 1-bit output Configuration internal oscillator clock output
      .DINSPI(dmy_din),       // 1-bit output DIN SPI PROM access output
      .EOS(EOS),             // 1-bit output Active high output signal indicating the End Of Configuration.
      .PREQ(preq),           // 1-bit output PROGRAM request to fabric output
      .TCKSPI(dmy_tck),       // 1-bit output TCK configuration pin access output
      .CLK(1'b0),             // 1-bit input User start-up clock input
      .GSR(1'b0),             // 1-bit input Global Set/Reset input (GSR cannot be used for the port name)
      .GTS(1'b0),             // 1-bit input Global 3-state input (GTS cannot be used for the port name)
      .KEYCLEARB(1'b0), // 1-bit input Clear AES Decrypter Key input from Battery-Backed RAM (BBRAM)
      .PACK(1'b0),           // 1-bit input PROGRAM acknowledge input
      .USRCCLKO(CLK40),   // 1-bit input User CCLK input
      .USRCCLKTS(1'b1), // 1-bit input User CCLK 3-state enable input
      .USRDONEO(1'b1),   // 1-bit input User DONE pin output control
      .USRDONETS(1'b0)  // 1-bit input User DONE 3-state enable output
   );
	

//----------------------------------------------------------------------------
// Comparator clock phase adjustments
//----------------------------------------------------------------------------
// None
//
//----------------------------------------------------------------------------
// Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
// Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// CLK_OUT1    40.000      0.000      50.0      232.099    191.950
// CLK_OUT2    40.000     90.000      50.0      232.099    191.950
// CLK_OUT3    40.000    180.000      50.0      232.099    191.950
// CLK_OUT4    40.000    270.000      50.0      232.099    191.950
//
//----------------------------------------------------------------------------
// Input Clock   Input Freq (MHz)   Input Jitter (UI)
//----------------------------------------------------------------------------
// primary          40.000            0.010


//
// Version without BUFGs, the BUFG for clock feedback must be added here
//
clkadj_coarse cmp_clk_coarse_i (
	.CLK_IN1(cms_clk), .CLKFB_IN(cmpfbin_coarse),
	.CLK_OUT1(cmp_c0), .CLK_OUT2(cmp_c90), .CLK_OUT3(cmp_c180), .CLK_OUT4(cmp_c270), .CLKFB_OUT(cmpfbout_coarse),
	.LOCKED(cmp_coarse_lock)); 
  
   BUFG cmp_fb_coarse_i (.O(cmpfbin_coarse),  .I(cmpfbout_coarse));

//
// Version with BUFGs, which should not be needed because the clocks should be routed directly to the BUFGMUX.
// ISE 12.4 complains when no buffer is used even though the BUFGMUXs are there. 
//
//----------------------------------------------------------------------------
// Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
// Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// CLK_OUT1    40.000      0.000      50.0      232.099    191.950
// CLK_OUT2    40.000     90.000      50.0      232.099    191.950
// CLK_OUT3    40.000    180.000      50.0      232.099    191.950
// CLK_OUT4    40.000    270.000      50.0      232.099    191.950
//
//----------------------------------------------------------------------------
// Input Clock   Input Freq (MHz)   Input Jitter (UI)
//----------------------------------------------------------------------------
// primary          40.000            0.010

//clkadj_coarse cmp_clk_coarse_i (
//	.CLK_IN1(cms_clk),
//	.CLK_OUT1(cmp_c0), .CLK_OUT2(cmp_c90), .CLK_OUT3(cmp_c180), .CLK_OUT4(cmp_c270),
//	.LOCKED(cmp_coarse_lock)); 

   BUFGMUX 
   BUFGMUX_cmp_ca (
      .O(cmp_ca),
      .I0(cmp_c0),
      .I1(cmp_c90),
      .S(CMP_CLK_PHASE[2])
   );
   BUFGMUX 
   BUFGMUX_cmp_cb (
      .O(cmp_cb),
      .I0(cmp_c180),
      .I1(cmp_c270),
      .S(CMP_CLK_PHASE[2])
   );
  
//----------------------------------------------------------------------------
// Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
// Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// CLK_OUT1    40.000      0.000      50.0      247.096    196.976
// CLK_OUT2    40.000     22.500      50.0      247.096    196.976
// CLK_OUT3    40.000     45.000      50.0      247.096    196.976
// CLK_OUT4    40.000     67.500      50.0      247.096    196.976
//
//----------------------------------------------------------------------------
// Input Clock   Input Freq (MHz)   Input Jitter (UI)
//----------------------------------------------------------------------------
// primary          40.000            0.010


//
// Version without BUFGs, the BUFG for clock feedback must be added here
//
 clkadj_fine cmp_clk_fine_i(
	.CLK_IN1(cmp_ca), .CLK_IN2(cmp_cb), .CLK_IN_SEL(~CMP_CLK_PHASE[3]), .CLKFB_IN(cmpfbin_fine),
	.CLK_OUT1(cmp_f0), .CLK_OUT2(cmp_f22p5), .CLK_OUT3(cmp_f45), .CLK_OUT4(cmp_f67p5), .CLKFB_OUT(cmpfbout_fine),
	.RESET(~cmp_coarse_lock),
   .LOCKED(cmp_fine_lock));

   BUFG cmp_fb_fine_i (.O(cmpfbin_fine),  .I(cmpfbout_fine));

//
// Version with BUFGs, which should not be needed because the clocks should be routed directly to the BUFGMUX.
// ISE 12.4 complains when no buffer is used even though the BUFGMUXs are there. 
//
// clkadj_fine cmp_clk_fine_i(
//	.CLK_IN1(cmp_ca), .CLK_IN2(cmp_cb), .CLK_IN_SEL(~CMP_CLK_PHASE[3]),
//	.CLK_OUT1(cmp_f0), .CLK_OUT2(cmp_f22p5), .CLK_OUT3(cmp_f45), .CLK_OUT4(cmp_f67p5),
//	.RESET(~cmp_coarse_lock),
//   .LOCKED(cmp_fine_lock));

   BUFGMUX 
   BUFGMUX_cmp_fa (
      .O(cmp_fa),
      .I0(cmp_f0),
      .I1(cmp_f22p5),
      .S(CMP_CLK_PHASE[0])
   );
   BUFGMUX 
   BUFGMUX_cmp_fb (
      .O(cmp_fb),
      .I0(cmp_f45),
      .I1(cmp_f67p5),
      .S(CMP_CLK_PHASE[0])
   );
	
//----------------------------------------------------------------------------
// Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
// Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// CLK_OUT1    40.000      0.000      50.0      247.096    196.976
// CLK_OUT2    80.000      0.000      50.0      200.412    196.976
// CLK_OUT3   160.000      0.000      50.0      169.112    196.976
//
//----------------------------------------------------------------------------
// Input Clock   Input Freq (MHz)   Input Jitter (UI)
//----------------------------------------------------------------------------
// primary          40.000            0.010
// secondary        40.000            0.010

  cmp_mmcm cmp_mmcm1(
    .CLK_IN1(cmp_fa), .CLK_IN2(cmp_fb), .CLK_IN_SEL(~CMP_CLK_PHASE[1]),
    .CLK_OUT1(COMP_CLK),.CLK_OUT2(COMP_CLK80),.CLK_OUT3(COMP_CLK160),
	 .RESET(~cmp_fine_lock),
    .LOCKED(TRG_MMCM_LOCK));




//----------------------------------------------------------------------------
// Output     Output      Phase    Duty Cycle   Pk-to-Pk     Phase
// Clock     Freq (MHz)  (degrees)    (%)     Jitter (ps)  Error (ps)
//----------------------------------------------------------------------------
// CLK_OUT1   160.000    270.000      50.0      116.326     95.014
// CLK_OUT2    80.000    315.000      50.0      132.221     95.014
// CLK_OUT3    40.000      0.000      50.0      153.625     95.014
//
//----------------------------------------------------------------------------
// Input Clock   Input Freq (MHz)   Input Jitter (UI)
//----------------------------------------------------------------------------
// primary          80.000            0.010

//  trg_mmcm trg_mmcm1(.CLK_IN1(TRG_TXOUTCLK),.CLK_OUT1(TRG_TXUSRCLK),.CLK_OUT2(trg_clk80),.CLK_OUT3(trg_clk40),.RESET(!TRG_TX_PLL_LOCK),.LOCKED(TRG_MMCM_LOCK));


endmodule
