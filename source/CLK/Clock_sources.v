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
module Clock_sources #(
	parameter Simulation = 0,
	parameter TMR = 0,
	parameter TMR_Err_Det = 0
)(
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
	 input CMP_PHS_JTAG_RST,
	 input  [4:0] CMP_CLK_PHASE,  
	 input  [2:0] SAMP_CLK_PHASE,
	 input SAMP_CLK_PHS_CHNG,
    output TP_B35_0N,
    output TP_B35_0P,
	   // Internal inputs
	 input RST,
	 input RESYNC,
    input  ICAP_CLK_ENA,
    input DAQ_MMCM_RST,
	   // Internal outputs
    output CMS80,
    output DAQ_TX_125_REFCLK,
    output DAQ_TX_125_REFCLK_DV2,
    output TRG_TX_160_REFCLK,
    output COMP_CLK,
    output COMP_CLK80,
    output COMP_CLK160,
	 output reg CMP_PHS_CHANGE,
    output TRG_MMCM_LOCK,
    output CLK160,
    output CLK120,
    output CLK40,
    output CLK20,
    output CLK1MHZ,
    output ICAP_CLK,
    output FEM_CLK320,
    output ADC_CLK,
    output DSR_RESYNC,
    output DAQ_MMCM_LOCK,
    output STRTUP_CLK,
    output EOS,
	 output [15:0] CMP_PHS_ERRCNT,
	output reg resync_d1,
	output lead_edg_resync,
	output reg lead_edg_resync_d1,
	output reg cap_phase,
	output reg [7:0] rst_mmcm_pipe,
	output reg [10:0] cmp_phase,
	output cmp_phs_psen,
	output cmp_phs_psdone,
	output cmp_phs_busy,
	output cmp_phs_rst,
	output [2:0] cmp_phs_state

    );

     //---------------------Dedicated GTX Reference Clock Inputs ---------------
    // Each dedicated refclk you are using in your design will need its own IBUFDS_GTXE1 instance
    
  wire trg_tx_160_refclk_dv2;
  
  wire cms_clk;
  
  wire gc0,gc1;
  wire tp_b35_0;
  wire dmy_cclk, dmy_din, dmy_tck, preq;
  
wire samp_ma, samp_mb;
wire samp_m0,samp_m45,samp_m90,samp_m135;
//wire sampfbin_med;
wire sampfbout_med;
wire samp_med_lock;
wire samp_in_sel;
wire pre_clk40;
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
wire rst_mmcm_pipe_in;

  

// signals for comparator clock managment
	reg [10:0] cur_cmp_phase;
//	reg [10:0] cmp_phase;
	reg [10:0] cmp_rom [31:0];	
	reg cmp_phs_chg_m1;
	reg cmp_phs_inc;
//	wire cmp_phs_busy;
//	wire cmp_phs_psen;
//	wire cmp_phs_psdone;
//	wire cmp_phs_rst;


	assign cmp_phs_rst = RST || CMP_PHS_JTAG_RST;
  
  assign tp_b35_0 = 1'b0;
  assign trl_edg_rst = (~RST & rst_d2); //two clocks wide
  assign lead_edg_resync = RESYNC & ~resync_d1 ; //one clocks wide
  assign rst_mmcm_pipe_in = lead_edg_resync | trl_edg_rst | cap_phase | SAMP_CLK_PHS_CHNG;
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
	rst_mmcm_pipe <= {rst_mmcm_pipe[6:0],rst_mmcm_pipe_in};
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
	.CLK_OUT1_RAW(pre_clk40),
	.CLK_OUT2(CLK160),
	.CLK_OUT3(CLK120),
	.CLK_OUT4_RAW(pre_clk20),.CLK_OUT4_B_RAW(pre_clk20_b),
	.CLK_OUT5(CLK1MHZ),
	.RESET(DAQ_MMCM_RST),
	.LOCKED(DAQ_MMCM_LOCK));

  BUFG clk40_buf (
	.O   (CLK40),
	.I   (pre_clk40)
	);
	 
  BUFGCE icap_clk_bufg (
    .I(pre_clk40),
	 .CE(ICAP_CLK_ENA),
    .O(ICAP_CLK)
    );

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
generate
if(Simulation == 1)
begin : SimStartupCode
	reg sim_eos;
	assign STRTUP_CLK = cms_clk;
	assign EOS = sim_eos;
	initial begin
		sim_eos = 1'b0;
		#100
		sim_eos = 1'b1;
	end
end
else
begin : StartupCode
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
end
endgenerate

//----------------------------------------------------------------------------
// "Output    Output      Phase     Duty      Pk-to-Pk        Phase"
// "Clock    Freq (MHz) (degrees) Cycle (%) Jitter (ps)  Error (ps)"
//----------------------------------------------------------------------------
// CLK_OUT1____40.000______0.000______50.0______247.096____196.976
// CLK_OUT2____80.000______0.000______50.0______200.412____196.976
// CLK_OUT3___160.000______0.000______50.0______169.112____196.976
//
//----------------------------------------------------------------------------
// "Input Clock   Freq (MHz)    Input Jitter (UI)"
//----------------------------------------------------------------------------
// __primary__________40.000____________0.010


  cmp_dyn_phs_mmcm cmp_dyn_phs_mmcm_i
   (// Clock in ports
    .CLK_IN1(cms_clk),      // IN
    // Clock out ports
    .CLK_OUT1(COMP_CLK),.CLK_OUT2(COMP_CLK80),.CLK_OUT3(COMP_CLK160),
    // Dynamic phase shift ports
    .PSCLK(CLK40),// IN
    .PSEN(cmp_phs_psen), // IN
    .PSINCDEC(cmp_phs_inc),     // IN
    .PSDONE(cmp_phs_psdone),       // OUT
    // Status and control signals
    .RESET(cmp_phs_rst),// IN
    .LOCKED(TRG_MMCM_LOCK));      // OUT
	
	
//------------------------------------------------------------------------------------------------------------------
// Create look lookup table for phase steps for comparator clock phase
// Translate 32 steps per cycle into 1344 steps per cycle  (resolution is 1/56th of VCO period which is 1/(24X40MHz)
// Steps in 25ns = 25ns X 56X24X40MHz = 1344
//------------------------------------------------------------------------------------------------------------------
	
//	integer iadr;
//
//	always @* begin	
//		for (iadr=0; iadr<32; iadr=iadr+1) begin
//			cmp_rom[iadr] = $rtoi((iadr*1344.0/31.0)+0.5);
//			$display ("adr=%d  data=%d",iadr,cmp_rom[iadr]);
//		end
//	end
initial begin
	$readmemh ("comp_phase", cmp_rom, 0, 31);
end
	
	always @(posedge CLK40) begin
		cmp_phs_inc   <= (cmp_phase >  cur_cmp_phase);
		cmp_phs_chg_m1 <= !(cmp_phase == cur_cmp_phase);
		CMP_PHS_CHANGE <= cmp_phs_chg_m1;                // delay signaling phase change to allow change to settle
		cmp_phase <= cmp_rom[CMP_CLK_PHASE];
	end

// Track current phase value presumed inside MMCM
	always @(posedge CLK40 or posedge cmp_phs_rst) begin
		if (cmp_phs_rst)
			cur_cmp_phase <= 11'h000;		// must match MMCM initial preset phase (normally 0)
		else
			if (cmp_phs_psen)
				if (cmp_phs_inc)
					cur_cmp_phase <= cur_cmp_phase+1;
				else
					cur_cmp_phase <= cur_cmp_phase-1;
			else
				cur_cmp_phase <= cur_cmp_phase;
			
	end

generate
if(TMR==1 && TMR_Err_Det==1) 
begin : Comp_Phase_FSM_TMR_Err_Det
   dyn_phase_shift_FSM_TMR_Err_Det
	Comp_Phase_FSM(
     .BUSY(cmp_phs_busy),
     .PSEN(cmp_phs_psen),
     .DYN_PHS_STATE(cmp_phs_state),
	  .TMR_ERR_COUNT(CMP_PHS_ERRCNT),
     .CLK(CLK40),
     .LOCKED(TRG_MMCM_LOCK),
     .PH_CHANGE(CMP_PHS_CHANGE),
     .PS_DONE(cmp_phs_psdone),
     .RST(cmp_phs_rst)
);
end
else if(TMR==1) 
begin : Comp_Phase_FSM_TMR
   dyn_phase_shift_FSM_TMR
	Comp_Phase_FSM(
     .BUSY(cmp_phs_busy),
     .PSEN(cmp_phs_psen),
     .DYN_PHS_STATE(cmp_phs_state),
     .CLK(CLK40),
     .LOCKED(TRG_MMCM_LOCK),
     .PH_CHANGE(CMP_PHS_CHANGE),
     .PS_DONE(cmp_phs_psdone),
     .RST(cmp_phs_rst)
);
assign CMP_PHS_ERRCNT = 0;
end
else 
begin : Comp_Phase_FSM
   dyn_phase_shift_FSM
	Comp_Phase_FSM(
     .BUSY(cmp_phs_busy),
     .PSEN(cmp_phs_psen),
     .DYN_PHS_STATE(cmp_phs_state),
     .CLK(CLK40),
     .LOCKED(TRG_MMCM_LOCK),
     .PH_CHANGE(CMP_PHS_CHANGE),
     .PS_DONE(cmp_phs_psdone),
     .RST(cmp_phs_rst)
);
assign CMP_PHS_ERRCNT = 0;
end
endgenerate

endmodule