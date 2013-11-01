`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:31 02/24/2011 
// Design Name: 
// Module Name:    jtag_access 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
//    JTAG functionality, instantiate shift registers for capture and settings,
//    also contains serial interfaces to off chip devices
//
// Function  Description
// ---------------------------------------
//   0     | No Op 
//   1     | JTAG System Reset (JTAG_SYS_RST), Equivalent to power on reset without reprogramming. Instruction only, (Auto reset)
//   2     | DCFEB status reg (32 bits) shift only for reading back without updating
//   3     | DCFEB status reg (32 bits) capture and shift for updated information.
//   4     | Program Comparator DAC -- same as in old CFEB
//   5     | Set Extra L1a Delay (2 bits) -- not used on DCFEB, exist for compatability with old DMB
//   6     | Read FIFO 1 -- ADC data (16 channels x 12 bits = 192 bits) wide X (6 chips x 8 sample)/event deep
//   7     | Set F5, F8, and F9 in one serial loop (daisy chained) for compatability with old DMB
//   8     | Set Pre Block End (4 bits) (not needed in DCFEB) -- not used on DCFEB, exist for compatability with old DMB
//   9     | Set Comparator Mode and Timing (5 bits) same format as old CFEB
//  10     | Set Buckeye Mask for shifting (6 bits) (default 6'b111111) same format as old CFEB, one bit for each chip
//  11     | Shift data to/from Buckeye chips (48 bits/chip)
//  12     | Set ADC configuration MASK (12 bits)
//  13     | Command to initialize ADC -- Instruction only, (Auto reset)
//  14     | Shift data and write to ADC configuration memory (26 bits)
//  15     | Command to restart pipeline -- Instruction only, (Auto reset)
//  16     | Set pipeline depth (9 bits)
//  17     | Set TTC source (2 bits) Selects 0:FF_EMU_mode, 1:FF_EEM_mode, or 2:Skew_Clr_mode
//  18     | Set calibration mode to external. (only for optical modes) -- Instruction only
//  19     | Set calibration mode to internal. (only for optical modes) -- Instruction only
//  20     | Set number of samples to readout (7 bits).
//  21     | Write word to BPI interface write FIFO (16 bits).
//  22     | Read word from BPI readback FIFO (16 bits).
//  23     | Read status word from BPI interface (16 bits).
//  24     | Read BPI timer (32 bits).
//  25     | Reset BPI interface. -- Instruction only, (Auto reset)
//  26     | Disable BPI processing. -- Instruction only, persisting
//  27     | Enable BPI processing. -- Instruction only, persisting
//  28     | Comparator Clock phase register (4-bits, 0-15).
//  29     | TMB transmit mode (2-bits, 0: comparator data, 1: fixed patterns, 2: counters, 3: randoms, 4: comparator data, 5: half strip patterns).
//  30     | TMB half strips for injecting patterns into the optical serial data stream for transmit mode 5. (30-bits, 5 per layer) {ly6,...ly1}
//  31     | TMB layer mask to indicat the active layers for half strip patterns in transmit mode 5. (6-bits, 1 per layer)
//  32     | Set DAQ rate to 1 GbE (1.25Gbps line rate) -- Instruction only
//  33     | Set DAQ rate to 2.56 GbE (3.2Gbps line rate) -- Instruction only
//  34     | Program Calibration DAC -- same style as Comparator DAC
//  35     | Send Control Byte to the MAX 1271 ADC (and conversion clocks)
//  36     | Read back the MAX 1271 ADC conversion stored in the SPI return register.
//  37     | Read the FRAME Address Register for the address of the frame with the bit errors that caused the CRC error (24 bits).
//  38     | Reset the configuration ECC error counters. -- Instruction only, (Auto reset)
//  39     | Read the ECC error counters (16-bits total, {8-bits for multi-bit error count, 8-bits for single-bit error counts})
//  40     | Set L1A_MATCH source to use only matched L1A's (skw_rw_l1a_match). Clear the USE_ANY_L1A flag. -- Instruction only
//  41     | Set L1A_MATCH source to use any L1A to send data (skw_rw_l1a). Set the USE_ANY_L1A flag. -- Instruction only
//  42     | Disable l1anum use in data to ODMB. Clear the L1A_HEAD flag. -- Instruction only
//  43     | Enable l1anum use in data to ODMB. Set the L1A_HEAD flag.  This is the default -- Instruction only
//  44     | Sampling Clock phase register (3-bits, 0-7).
//  45     | PRBS test mode for DAQ optical path (3-bits, 0-7).
//  46     | Inject error into PRBS test for DAQ optical path.
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module jtag_access #(
	parameter USE_CHIPSCOPE = 1
	)(
    inout [35:0] CSP_LA0_CNTRL,
    inout [35:0] CSP_VIO0_CNTRL,
	 
    input CLK20,             // 20 MHz Clock
    input CLK40,             // 40 MHz Clock
    input CLK120,            // 120 MHz Clock
    input FSTCLK,            // Fast Clock
    input RST,               // Reset default state
    input [6:1] BKY_RTN,     // Serial data returned from amplifiers
    input [15:0] DCFEB_STATUS, // Status word
    input [191:0] ADCDATA,   // Data out of pipeline
    input [15:0] BPI_RBK_FIFO, // Data read back from BPI PROM
    input [15:0] BPI_STATUS, // STATUS word for BPI interface
    input [31:0] BPI_TIMER,  // Timer for BPI commands
	 output JTAG_SYS_RST,      // JTAG initiated system reset 
    output reg RDFIFO,       // Advance fifo to next word
	 output JTAG_RD_MODE,     // JTAG read out mode for FIFO1 
	 output CRC_ERROR,        // CRC error detected in configuration memory (two or more bit errors in one Frame)
    output [1:0] XL1DLYSET,  // Extra L1A delay setting [1:0]
    output [3:0] LOADPBLK,   // Pre-blockend bits [3:0] not used in DCFEB
    output [1:0] COMP_MODE,  // comparator mode bits [1:0]
    output [2:0] COMP_TIME,  // comparator timing bits [2:0]
	 output CDAC_ENB,         // Comparator DAC enable
	 output CALDAC_ENB,       // Calibration DAC enable
	 output CALADC_ENB,       // Calibration ADC enable
	 output SPI_CK,           // SPI clock
	 output SPI_DAT,          // SPI data
	 input  SPI_RTN,          // Return data from SPI devices
	 output reg CAL_MODE,     // Calibration mode (0: external pulsing, 1: internal pulsing)
    output [6:1] TO_BKY,     // Serial data sent to amplifiers
    output [6:1] BKY_CLK,    // Shift clock for amplifiers
    output reg ADC_WE,       // Write enable for ADC configuration memory
    output [25:0] ADC_MEM,   // Data word for ADC configuration memory
    output [11:0] ADC_MASK,  // Mask for ADCs to configure
    output ADC_INIT,         // ADC initialization signal
    output JC_ADC_CNFG,      // JTAG Controll of ADC configuration memory
	 output RSTRT_PIPE,       // Restart pipeline on JTAG command
    output [8:0] PDEPTH,     // Pipeline Depth register (9 bits)
    output [1:0] TTC_SRC,    // TTC source register (2 bits)
    output [15:0] BPI_WRT_FIFO,   // Data word for ADC configuration memory
    output reg BPI_WE,       // Write enable for BPI Write FIFO
    output reg BPI_RDENA,    // Read enable for BPI Readback FIFO
    output BPI_RESET,        // Reset signal for BPI interface (does not reset the PROM)
    output BPI_DISABLE,      // Disable BPI processing
    output BPI_ENABLE,       // Enable BPI processing
	 output [6:0] SAMP_MAX,   // Number of samples to readout minus 1
	 output [3:0] CMP_CLK_PHASE,  // Comparator Clock Phase register value (0-15).
	 output [2:0] SAMP_CLK_PHASE, // Sampling Clock Phase register value (0-7).
	 output CMP_CLK_PHS_CHNG,     // Comp Clock Phase Change in progress; Reset TMB path transceiver.
	 output SAMP_CLK_PHS_CHNG,    // Sampling Clock Phase Change in progress; Reset deserializers.
	 output [2:0] TMB_TX_MODE,    // TMB transmit mode (2-bits, 0: comparator data, 1: fixed patterns, 2: counters, 3: randoms).
	 output [29:0] LAY1_TO_6_HALF_STRIP, // TMB half strips for injecting patterns into the optical serial data stream
	 output [5:0] LAYER_MASK, // layer mask to indicate which layers to use for active half strips.
	 output reg JDAQ_RATE,    //DAQ Rate selection: 0 = 1GbE (1.25Gbps line rate), 1 = 2.56GbE (3.2Gbps line rate).
	output [2:0]JDAQ_PRBS_TST,   // PRBS test mode from JTAG interface
	output JDAQ_INJ_ERR,         // Error injection requested from JTAG interface
	output reg USE_ANY_L1A,   //L1A_MATCH source: 0 -> L1A_MATCH = skw_rw_l1a_match, 1 -> L1A_MATCH = skw_rw_l1a.
	output reg L1A_HEAD      //L1A_HEAD flag: 0 -> l1anum is NOT used as header in data stream, 1 -> l1anum IS used as header in data stream.
	 );

   reg dshift;
   reg we,pre_we,pre_rd;
   reg we21,pre_we21,pre_rd22;
	
//
// BSCAN signals
//
   wire capture1;
   wire drck1;
   wire jreset1;
   wire runtest1;
   wire jsel1;
   wire jshift1;
   wire tck1;
   wire tdi1;
   wire tms1;
   wire update1;
   wire tdo1;
   wire capture2;
   wire drck2;
   wire jreset2;
   wire runtest2;
   wire jsel2;
   wire jshift2;
   wire tck2;
   wire tdi2;
   wire tms2;
   wire update2;
   wire tdo2;
	wire clrf;
	wire p_in;
	wire tclk2_raw;
	
//
// SEM signals
//
	wire status_heartbeat;
	wire status_initialization;
	wire status_observation;
	wire status_correction;
	wire status_classification;
	wire status_injection;
	wire status_essential;
	wire status_uncorrectable;
	wire [7:0] monitor_txdata;
	wire monitor_txwrite;
	wire monitor_txfull;
	wire [7:0] monitor_rxdata; 
	wire monitor_rxread;
	wire monitor_rxempty;
	wire inject_strobe;
	wire [35:0] inject_address; 

//
// FRAME_ECC_VIRTEX6 signals
//
	wire fecc_crcerror;
	wire fecc_eccerror;
	wire fecc_eccerrorsingle;
	wire [23:0] fecc_far;
//	reg  [23:0] cap_far;
	wire [4:0] fecc_synbit;
	wire [12:0] fecc_syndrome;
	wire fecc_syndromevalid;
	wire [6:0] fecc_synword;
//
// ICAP_VIRTEX6 signals
//
	wire icap_busy;
	wire [31:0] icap_o;
	wire icap_csb;
	wire [31:0] icap_i;
	wire icap_rdwrb;

	wire [7:0] ff_data_out;
	wire ff_data_present;
	wire ff_read;
	wire csp_read;
	wire cmd_ready;
	wire sem_cmd_rst;
	wire tr0,tr1,tr2;
	wire csp_send_cmd;
	wire [1:0] sem_state;

	
// wire inc_sngl_bit_err_cntr;
//	wire inc_multi_bit_err_cntr;
//	wire rst_cntrs;
//	wire cntr_rst;
//	reg [7:0] sngl_bit_err_cnt;
//	reg [7:0] multi_bit_err_cnt;
//	reg eccerror_r;
//	reg eccerrorsingle_r;

	

	wire [63:0] f; //JTAG functions (one hot);
	wire f11;
	wire lxdlyout,prbout,dsy7,dmy2,dmy3,dmy4,dmy5,dmy6,dmy7,dmy8,dmy9,dmy10,dmy11,dmy12,dmy13,dmy14;
	wire tdof2a3,tdof5,tdof6,tdof8,tdof9,tdofa,tdofc,tdofe,tdof10,tdof11,tdof14,tdof15,tdof16,tdof17,tdof18,tdof1c,tdof1d,tdof1e,tdof1f,tdof24,tdof25,tdof27,tdof2c,tdof2d;
	wire [31:16] status_h;
   wire [6:1] bky_mask;
	wire [6:0] nsamp;
	reg [11:0] clr_pip;
	reg f18dly, f19dly;
	reg f32dly, f33dly;
	reg clr_cal_mode, set_cal_mode;
	reg f40dly, f41dly;
	reg clr_use_any_l1a, set_use_any_l1a;
	reg f42dly, f43dly;
	reg clr_l1a_head, set_l1a_head;
	reg set_rate_1_25, set_rate_3_2;
	reg [15:0] spi_rtn_reg;


generate
if(USE_CHIPSCOPE==1) 
begin : chipscope_sem
//
// Logic analyzer for pipeline
wire [163:0] sem_la0_data;
wire [15:0] sem_la0_trig;

sem_la sem_la0 (
    .CONTROL(CSP_LA0_CNTRL),
    .CLK(CLK40),
    .DATA(sem_la0_data),  // IN BUS [163:0]
    .TRIG0(sem_la0_trig)  // IN BUS [15:0]
);


// LA Data [163:0]
	assign sem_la0_data[7:0]        = monitor_txdata;
	assign sem_la0_data[31:8]       = fecc_far;
	assign sem_la0_data[43:32]      = fecc_syndrome;
	assign sem_la0_data[48:44]      = fecc_synbit;
	assign sem_la0_data[55:49]      = fecc_synword;
	assign sem_la0_data[87:56]      = icap_o;
	assign sem_la0_data[119:88]     = icap_i;
	assign sem_la0_data[120]        = status_heartbeat;
	assign sem_la0_data[121]        = status_initialization;
	assign sem_la0_data[122]        = status_observation;
	assign sem_la0_data[123]        = status_correction;
	assign sem_la0_data[124]        = status_classification;
	assign sem_la0_data[125]        = status_injection;
	assign sem_la0_data[126]        = status_essential;
	assign sem_la0_data[127]        = status_uncorrectable;
	assign sem_la0_data[128]        = monitor_txwrite;
	assign sem_la0_data[129]        = monitor_rxread;
	assign sem_la0_data[130]        = inject_strobe;
	assign sem_la0_data[131]        = fecc_crcerror;
	assign sem_la0_data[132]        = fecc_eccerror;
	assign sem_la0_data[133]        = fecc_eccerrorsingle;
	assign sem_la0_data[134]        = fecc_syndromevalid;
	assign sem_la0_data[135]        = icap_busy;
	assign sem_la0_data[136]        = icap_csb;
	assign sem_la0_data[137]        = icap_rdwrb;
	assign sem_la0_data[138]        = monitor_txfull;
	assign sem_la0_data[139]        = monitor_rxempty;
	assign sem_la0_data[147:140]    = monitor_rxdata;
	assign sem_la0_data[148]        = csp_read;
	assign sem_la0_data[149]        = ff_read;
	assign sem_la0_data[150]        = ff_data_present;
	assign sem_la0_data[151]        = cmd_ready;
	assign sem_la0_data[159:152]    = ff_data_out;
	assign sem_la0_data[160]        = csp_send_cmd;
	assign sem_la0_data[161]        = RST;
	assign sem_la0_data[163:162]    = sem_state;
	
	

// LA Trigger [15:0]
	assign sem_la0_trig[0]       = status_heartbeat;
	assign sem_la0_trig[1]       = status_initialization;
	assign sem_la0_trig[2]       = status_observation;
	assign sem_la0_trig[3]       = status_correction;
	assign sem_la0_trig[4]       = status_injection;
	assign sem_la0_trig[5]       = fecc_crcerror;
	assign sem_la0_trig[6]       = fecc_eccerror;
	assign sem_la0_trig[7]       = fecc_eccerrorsingle;
	assign sem_la0_trig[8]       = icap_csb;
	assign sem_la0_trig[9]       = icap_rdwrb;
	assign sem_la0_trig[10]      = icap_busy;
	assign sem_la0_trig[11]      = monitor_txwrite;
	assign sem_la0_trig[12]      = inject_strobe;
	assign sem_la0_trig[13]      = csp_read;
	assign sem_la0_trig[14]      = csp_send_cmd;
	assign sem_la0_trig[15]      = monitor_rxread;
	
// Virtual I/O for SEM

wire [46:0] sem_vio0_sync_out;
wire [7:0] sem_vio0_sync_in;
	
sem_vio sem_vio_0 (
    .CONTROL(CSP_VIO0_CNTRL), // INOUT BUS [35:0]
    .CLK(CLK40),
    .SYNC_IN(sem_vio0_sync_in), // IN BUS [7:0]
    .SYNC_OUT(sem_vio0_sync_out) // OUT BUS [46:0]
);


// VIO Sync In Data [7:0]
	assign sem_vio0_sync_in[0]  = status_initialization;
	assign sem_vio0_sync_in[1]  = status_observation;
	assign sem_vio0_sync_in[2]  = status_correction;
	assign sem_vio0_sync_in[3]  = status_classification;
	assign sem_vio0_sync_in[4]  = status_injection;
	assign sem_vio0_sync_in[5]  = fecc_crcerror;
	assign sem_vio0_sync_in[6]  = fecc_eccerror;
	assign sem_vio0_sync_in[7]  = fecc_eccerrorsingle;


// VIO Sync Out Data [46:0]
	assign inject_address = sem_vio0_sync_out[35:0];
	assign inject_strobe  = sem_vio0_sync_out[36];
	assign csp_send_cmd   = sem_vio0_sync_out[37];
	assign csp_read       = sem_vio0_sync_out[38];
	assign monitor_rxdata = sem_vio0_sync_out[46:39];

	
end

else
begin
	assign inject_address   = 36'h000000000;
	assign inject_strobe = 1'b0;
	assign csp_send_cmd   = 1'b0;
	assign csp_read       = 1'b1;
	assign monitor_rxdata = 8'h00;
end
endgenerate


	assign SAMP_MAX = nsamp-1;
	assign JC_ADC_CNFG = f[14];
//	assign inc_sngl_bit_err_cntr = fecc_eccerror & ~eccerror_r & fecc_eccerrorsingle & ~eccerrorsingle_r;
//	assign inc_multi_bit_err_cntr = ~fecc_crcerror & fecc_eccerror & ~eccerror_r & ~(fecc_eccerrorsingle & ~eccerrorsingle_r);
	assign CRC_ERROR = fecc_crcerror;
//	assign rst_cntrs = RST | cntr_rst;
	
	
	assign tdo2 = (tdof2a3 | tdof5 |  tdof6 | dsy7 | tdof8 | tdof9 | tdofa | tdofb | tdofc | tdofe | tdof10 | tdof11 | tdof14 | tdof15 | tdof16 | tdof17 | tdof18 | tdof1c | tdof1d | tdof1e | tdof1f | tdof24 | tdof25 | tdof27 | tdof2c | tdof2d);
	assign status_h[31:16] = {5'b10110,XL1DLYSET,LOADPBLK,COMP_TIME,COMP_MODE};
	
	assign JTAG_SYS_RST  = f[1];  // System Reset JTAG command (like power on reset without reprogramming)
	assign ADC_INIT = f[13];      // ADC init JTAG command
	assign RSTRT_PIPE = f[15];    // Restart pipeline JTAG command
	assign BPI_RESET  = f[25];    // Reset BPI interface JTAG command
	assign BPI_DISABLE = f[26];   // Disable BPI processing
	assign BPI_ENABLE  = f[27];   // Enable BPI processing
	assign CMP_CLK_PHS_CHNG = f[28];  // Hold TMB transceiver in reset while the clock phase is changing.  Handled in reset manager state machine
	assign SAMP_CLK_PHS_CHNG = f[44] & update2;  // Initiate a deserializer reset at end of changing sampling clock phase change.
	assign cntr_rst  = f[38];     // reset ECC error counters
	assign p_in = f[1] | f[13] | f[15] | f[25] | f[38];  // JTAG_SYS_RST, ADC_Init, Restart pipeline, BPI_Reset, and Err_Cnt_Rst JTAG commands are to be auto reset;
	assign clrf = clr_pip[10] & p_in; // auto reset functions last 11 25ns clocks then clear
	
	assign JTAG_RD_MODE = f[6];    // JTAG readout mode when reading ADC data
	assign JDAQ_INJ_ERR = f[46];   // JTAG request for error injection in PRBS test
//
//
// JTAG to SPI interface for Comparator DAC, Calibration DAC and MAX 1271 ADC
//
	assign CDAC_ENB = (dshift & jsel2 & f[4]);
	assign CALDAC_ENB = (dshift & jsel2 & f[34]);
	assign CALADC_ENB = (dshift & jsel2 & f[35]);
	assign SPI_CK = tck2 & (CDAC_ENB | CALDAC_ENB | CALADC_ENB);
	assign SPI_DAT = tdi2 & (CDAC_ENB | CALDAC_ENB | CALADC_ENB);
	
	
 
 /////////////////////////////////////////////////////////////////////////////
 //                                                                         //
 //  JTAG Access Ports for user function in the fabric (up to 4 interfaces) //
 //                                                                         //
 /////////////////////////////////////////////////////////////////////////////
 
 
   BSCAN_VIRTEX6 #(.DISABLE_JTAG("FALSE"),.JTAG_CHAIN(1))  // User 1 for instruction decodes
   BSCAN_user1 (
      .CAPTURE(capture1), // 1-bit output CAPTURE output from TAP controller
      .DRCK(drck1),       // 1-bit output Data register output for USER functions
      .RESET(jreset1),    // 1-bit output Reset output for TAP controller
      .RUNTEST(runtest1), // 1-bit output State output asserted when TAP controller is in Run Test Idle state.
      .SEL(jsel1),        // 1-bit output USER active output
      .SHIFT(jshift1),    // 1-bit output SHIFT output from TAP controller
      .TCK(tck1),         // 1-bit output Scan Clock output. Fabric connection to TAP Clock pin.
      .TDI(tdi1),         // 1-bit output TDI output from TAP controller
      .TMS(tms1),         // 1-bit output Test Mode Select input. Fabric connection to TAP.
      .UPDATE(update1),   // 1-bit output UPDATE output from TAP controller
      .TDO(tdo1)          // 1-bit input Data input for USER function
   );
  
   BSCAN_VIRTEX6 #(.DISABLE_JTAG("FALSE"),.JTAG_CHAIN(2))  // User 2 for data I/O
   BSCAN_user2 (
      .CAPTURE(capture2), // 1-bit output CAPTURE output from TAP controller
      .DRCK(drck2),       // 1-bit output Data register output for USER functions
      .RESET(jreset2),    // 1-bit output Reset output for TAP controller
      .RUNTEST(runtest2), // 1-bit output State output asserted when TAP controller is in Run Test Idle state.
      .SEL(jsel2),        // 1-bit output USER active output
      .SHIFT(jshift2),    // 1-bit output SHIFT output from TAP controller
      .TCK(tck2_raw),     // 1-bit output Scan Clock output. Fabric connection to TAP Clock pin.
      .TDI(tdi2),         // 1-bit output TDI output from TAP controller
      .TMS(tms2),         // 1-bit output Test Mode Select input. Fabric connection to TAP.
      .UPDATE(update2),   // 1-bit output UPDATE output from TAP controller
      .TDO(tdo2)          // 1-bit input Data input for USER function
   );

  BUFG tclk2_buf
   (.O   (tck2),.I   (tck2_raw));


sem_core sem_core1 (
	.status_heartbeat(status_heartbeat),
	.status_initialization(status_initialization),
	.status_observation(status_observation),
	.status_correction(status_correction),
	.status_classification(status_classification),
	.status_injection(status_injection),
	.status_essential(status_essential),
	.status_uncorrectable(status_uncorrectable),
	.monitor_txdata(monitor_txdata), // Bus [7 : 0] 
	.monitor_txwrite(monitor_txwrite),
	.monitor_txfull(monitor_txfull),
	.monitor_rxdata(monitor_rxdata), // Bus [7 : 0] 
	.monitor_rxread(monitor_rxread),
	.monitor_rxempty(monitor_rxempty),
	.inject_strobe(inject_strobe),
	.inject_address(inject_address), // Bus [35 : 0] 
	.icap_busy(icap_busy),
	.icap_o(icap_o), // Bus [31 : 0] 
	.icap_csb(icap_csb),
	.icap_rdwrb(icap_rdwrb),
	.icap_i(icap_i), // Bus [31 : 0] 
	.icap_clk(CLK40),
	.icap_request(icap_request), 
	.icap_grant(1'b1),
	.fecc_crcerr(fecc_crcerror),
	.fecc_eccerr(fecc_eccerror),
	.fecc_eccerrsingle(fecc_eccerrsingle),
	.fecc_syndromevalid(fecc_syndromevalid),
	.fecc_syndrome(fecc_syndrome), // Bus [12 : 0] 
	.fecc_far(fecc_far), // Bus [23 : 0] 
	.fecc_synbit(fecc_synbit), // Bus [4 : 0] 
	.fecc_synword(fecc_synword)); // Bus [6 : 0] 

   ICAP_VIRTEX6 #(
      .DEVICE_ID(32'h0424a093),     // Specifies the pre-programmed Device ID value
      .ICAP_WIDTH("X32"),          // Specifies the input and output data width to be used with the
                                  // ICAP_VIRTEX6.
      .SIM_CFG_FILE_NAME("NONE")  // Specifies the Raw Bitstream (RBT) file to be parsed by the simulation
                                  // model
   )
   ICAP_VIRTEX6_inst (
      .BUSY(icap_busy),   // 1-bit output Busy/Ready output
      .O(icap_o),         // 32-bit output Configuration data output bus
      .CLK(CLK40),        // 1-bit input Clock Input
      .CSB(icap_csb),     // 1-bit input Active-Low ICAP input Enable
      .I(icap_i),         // 32-bit input Configuration data input bus
      .RDWRB(icap_rdwrb)  // 1-bit input Read/Write Select input
   );
	
   FRAME_ECC_VIRTEX6 #(
      .FARSRC("EFAR"),                // Determines if the output of FAR[23:0] configuration register points to
                                      // the FAR or EFAR. Sets configuration option register bit CTL0[7].
      .FRAME_RBT_IN_FILENAME("NONE")  // This file is output by the ICAP_VIRTEX6 model and it contains Frame
                                      // Data information for the Raw Bitstream (RBT) file. The FRAME_ECC model
                                      // will parse this file, calculate ECC and output any error conditions.
   )
   FRAME_ECC_VIRTEX6_inst (
      .CRCERROR(fecc_crcerror),             // 1-bit output Output indicating a CRC error
      .ECCERROR(fecc_eccerror),             // 1-bit output Output indicating an ECC error
      .ECCERRORSINGLE(fecc_eccerrorsingle), // 1-bit output Output Indicating single-bit Frame ECC error detected.
      .FAR(fecc_far),                       // 24-bit output Frame Address Register Value output
      .SYNBIT(fecc_synbit),                 // 5-bit output Output bit address of error
      .SYNDROME(fecc_syndrome),             // 13-bit output Output location of erroneous bit
      .SYNDROMEVALID(fecc_syndromevalid),   // 1-bit output Frame ECC output indicating the SYNDROME output is valid.
      .SYNWORD(fecc_synword)                // 7-bit output Word output in the frame where an ECC error has been detected
   );

//assign ff_read = csp_read & ff_data_present;
assign ff_read = ff_data_present;

	sem_mon_fifo_bgb monitor_fifo1(
  .icap_clk(CLK40),
  .data_in(monitor_txdata),
  .data_out(ff_data_out),
  .write(monitor_txwrite),
  .read(ff_read),
  .full(monitor_txfull),
  .data_present(ff_data_present)
  );

assign monitor_rxempty = !cmd_ready;

sem_cmds sem_cmds_FSM(
  .READY(cmd_ready),
  .SEM_STATE(sem_state),
  .ACK(monitor_rxread),
  .CLK(CLK40),
  .RST(RST),
  .SEND(csp_send_cmd) 
);
  


//   always @(posedge CLK40) begin
//		eccerror_r <= fecc_eccerror;
//		eccerrorsingle_r <= fecc_eccerrorsingle;
//	end
//
//	always @(posedge CLK40  or posedge rst_cntrs) begin
//		if(rst_cntrs)
//			sngl_bit_err_cnt <= 8'h00;
//		else
//			if(inc_sngl_bit_err_cntr)
//				sngl_bit_err_cnt <= sngl_bit_err_cnt+1;
//			else
//				sngl_bit_err_cnt <= sngl_bit_err_cnt;			
//	end
//	
//	always @(posedge CLK40  or posedge rst_cntrs) begin
//		if(rst_cntrs)
//			multi_bit_err_cnt <= 8'h00;
//		else
//			if(inc_multi_bit_err_cntr)
//				multi_bit_err_cnt <= multi_bit_err_cnt+1;
//			else
//				multi_bit_err_cnt <= multi_bit_err_cnt;			
//	end
//	
//	// capture the Frame Address where the error is
//	always @(posedge CLK40 or posedge RST) begin
//		if(RST)
//			cap_far <= 24'h000000;
//		else
//			if(fecc_eccerror & ~fecc_eccerrorsingle)
//				cap_far <= fecc_far;
//			else
//				cap_far <= cap_far;
//	end
//	
	
	always @(posedge FSTCLK) dshift <= jshift2;  // Shift state delayed by 6.25ns
//
// JTAG Instruction decode Uses User 1 BSCAN signals
//
   instr_dcd
	instr_dcd1(
	   .TCK(tck1),         // TCK for update register
      .DRCK(drck1),       // Data Reg Clock
      .SEL(jsel1),        // User 1 mode active
      .TDI(tdi1),         // Serial Test Data In
      .UPDATE(update1),   // Update state
      .SHIFT(jshift1),    // Shift state
      .RST(RST),          // Reset default state
      .CLR(clrf),          // Clear the current function
      .F(f),              // Function decode output (one hot)
      .TDO(tdo1));        // Serial Test Data Out
		
		
//
// pipline to set length of auto reset signals
//
   always @(posedge CLK40) begin
	    clr_pip <= {clr_pip[10:0],p_in};
	end
  
//
// JTAG User Functions  Uses User 2 BSCAN signals
//
//
// JTAG Extra L1A Delay Register
//		for compatibility with old DMBs only
   user_wr_reg #(.width(2), .def_value(2'b01))
   load_xl1dly(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[5]),        // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(tdi2),       // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(f[7]),   // Daisy chain mode
      .PO(XL1DLYSET),     // Parallel output
      .TDO(tdof5),        // Serial Test Data Out
      .DSY_OUT(lxdlyout));// Daisy chained serial data out

//
// JTAG Pre block end register  (Not needed in DCFEB -- should remove but it is part of daisy chain for F7)
//		for compatibility with old DMBs only
  user_wr_reg #(.width(4), .def_value(4'h9))
   load_preblk(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[8]),        // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),         // Serial Test Data In
      .DSY_IN(lxdlyout),  // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(f[7]),   // Daisy chain mode
      .PO(LOADPBLK),      // Parallel output
      .TDO(tdof8),        // Serial Test Data Out
      .DSY_OUT(prbout));  // Daisy chained serial data out

//
// JTAG Comparator Mode and Timing bits Register
//
   user_wr_reg #(.width(5), .def_value(5'b01010))
   comparator(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[9]),        // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),         // Serial Test Data In
      .DSY_IN(prbout),    // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(f[7]),   // Daisy chain mode
      .PO({COMP_TIME,COMP_MODE}), // Parallel output
      .TDO(tdof9),        // Serial Test Data Out
      .DSY_OUT(dsy7));    // Daisy chained serial data out
		
//
// Calibration mode
//
   always @(posedge CLK40) begin
		 f18dly <= f[18];
		 f19dly <= f[19];
		 clr_cal_mode <= f[18] & ~f18dly;  // leading edge of function being set (after update1)
		 set_cal_mode <= f[19] & ~f19dly;  // leading edge of function being set (after update1)
		 if(clr_cal_mode || RST)
			CAL_MODE <= 1'b0;
		 else if(set_cal_mode)
			CAL_MODE <= 1'b1;
		 else
			CAL_MODE <= CAL_MODE;
	end
		
//
// L1A_MATCH source flag
//
   always @(posedge CLK40) begin
		 f40dly <= f[40];
		 f41dly <= f[41];
		 clr_use_any_l1a <= f[40] & ~f40dly;  // leading edge of function being set (after update1)
		 set_use_any_l1a <= f[41] & ~f41dly;  // leading edge of function being set (after update1)
		 if(clr_use_any_l1a || RST)
			USE_ANY_L1A <= 1'b0;
		 else if(set_use_any_l1a)
			USE_ANY_L1A <= 1'b1;
		 else
			USE_ANY_L1A <= USE_ANY_L1A;
	end
		
//
// L1A_HEAD flag; controls use of l1anum as the header in the data stream
//
   always @(posedge CLK40) begin
		 f42dly <= f[42];
		 f43dly <= f[43];
		 clr_l1a_head <= f[42] & ~f42dly;  // leading edge of function being set (after update1)
		 set_l1a_head <= f[43] & ~f43dly;  // leading edge of function being set (after update1)
		 if(set_l1a_head || RST)
			L1A_HEAD <= 1'b1;
		 else if(clr_l1a_head)
			L1A_HEAD <= 1'b0;
		 else
			L1A_HEAD <= L1A_HEAD;
	end
	
//
// JTAG Buckeye mask register for which amplifiers are in the shift loop.
//
	
   user_wr_reg #(.width(6), .def_value(6'b111111))
   buckeye_mask(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[10]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),         // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(bky_mask),      // Parallel output
      .TDO(tdofa),        // Serial Test Data Out
      .DSY_OUT(dmy2));    // Daisy chained serial data out

//
// JTAG Buckeye shift clocks data mutiplexers
//
   bky_shift 
	bky_shift1 (
		.DRCK(tck2),        // Data Reg Clock
		.SEL(jsel2),         // User 2 mode active
		.F(f[11]),          // Function select
		.TDI(tdi2),         // Serial Test Data In
		.MASK(bky_mask),    // Mask of which amplifiers to include in shift loop
		.SHIFT(dshift),     // Shift state
		.DRTN(BKY_RTN),     // Serial data returned from amplifiers
		.DSND(TO_BKY),      // Serial data sent to amplifiers
		.BCLK(BKY_CLK),     // Shift clock for amplifiers
		.TDO(tdofb)        // Test data out of the complete loop
		);
	
//
// Status capture and shift
//
   user_cap_reg #(.width(32))
   status1(
      .DRCK(tck2),        // Data Reg Clock
      .FSH(f[2]),         // Shift Function
      .FCAP(f[3]),        // Capture Function
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .SHIFT(jshift2),      // Shift state
      .CAPTURE(capture2),  // Capture state
      .RST(RST),          // Reset default state
		.BUS({status_h,DCFEB_STATUS}), // Bus to capture
      .TDO(tdof2a3));      // Serial Test Data Out

//
// ADC Mask register
//
   user_wr_reg #(.width(12), .def_value(12'hFFF))
   adc_mask1(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[12]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(ADC_MASK),      // Parallel output
      .TDO(tdofc),        // Serial Test Data Out
      .DSY_OUT(dmy3));    // Daisy chained serial data out

//
// ADC Memory word register (data to write to ADC configuration memory)
//
   user_wr_reg #(.width(26), .def_value(26'h0000000))
   adc_mem1(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[14]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(ADC_MEM),       // Parallel output
      .TDO(tdofe),        // Serial Test Data Out
      .DSY_OUT(dmy4));    // Daisy chained serial data out
		
//
// Pipeline Depth register
//
   user_wr_reg #(.width(9), .def_value(9'd100))
   pipe_depth1(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[16]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(PDEPTH),        // Parallel output
      .TDO(tdof10),        // Serial Test Data Out
      .DSY_OUT(dmy5));    // Daisy chained serial data out
		
		
//
// TTC source register
//
//  FF_EMU_mode    = 2'b00, 
//  FF_EEM_mode    = 2'b01, 
//  Skew_Clr_mode  = 2'b10;

   user_wr_reg #(.width(2), .def_value(2'b10)) // default is Skewclear mode
   ttc_src1(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[17]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(TTC_SRC),        // Parallel output
      .TDO(tdof11),        // Serial Test Data Out
      .DSY_OUT(dmy6));    // Daisy chained serial data out
		
		
		
//
// ADC Write enable for configuration memory
//
   always @(posedge CLK20) begin
		 pre_we <= f[14] & jsel2 & update2;              // only at update2
		 we     <= ~(f[14] & jsel2 & update2) & pre_we;  // generate trailing edge pulse one clock long
		 ADC_WE <= we;                                 // delay write enable one clock cycle
	end

//
// ADC Data readback  capture and shift
//
   user_cap_reg #(.width(192))
   ADCread1(
      .DRCK(tck2),        // Data Reg Clock
      .FSH(1'b0),         // Shift Function
      .FCAP(f[6]),        // Capture Function
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .SHIFT(jshift2),      // Shift state
      .CAPTURE(capture2),  // Capture state
      .RST(RST),          // Reset default state
		.BUS(ADCDATA), // Bus to capture
      .TDO(tdof6));      // Serial Test Data Out
	
//
// Read enable for ADC data FIFO -- advance on each JTAG read.
//
   always @(posedge CLK120) begin
		 pre_rd <= f[6] & jsel2 & update2;              // only at update2
		 RDFIFO <= (f[6] & jsel2 & update2) & ~pre_rd;  // generate leading edge pulse one clock long
	end
	
//
// Number of samples to read register
//
   user_wr_reg #(.width(7), .def_value(7'd8))
   nsamples1(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[20]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(nsamp),        // Parallel output
      .TDO(tdof14),        // Serial Test Data Out
      .DSY_OUT(dmy7));    // Daisy chained serial data out

//
// BPI interface FIFO word (16 bit word to be writting into the FIFO)
// The write enable for the FIFO is generated automatically
//
   user_wr_reg #(.width(16), .def_value(16'h0000))
   BPI_wrt_FIFO_Jreg(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[21]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(BPI_WRT_FIFO),       // Parallel output
      .TDO(tdof15),        // Serial Test Data Out
      .DSY_OUT(dmy8));    // Daisy chained serial data out
		
//
// BPI  Write enable for BPI write FIFO
//
   always @(posedge CLK40) begin
		 pre_we21 <= f[21] & jsel2 & update2;              // only at update2
		 we21     <= ~(f[21] & jsel2 & update2) & pre_we21;  // generate tailing edge pulse one clock long
		 BPI_WE <= we21;                                 // delay write enable one clock cycle
	end

//
// BPI Data readback  capture and shift from BPI_RBK_FIFO
//
   user_cap_reg #(.width(16))
   BPI_rbk_FIFO_Jreg(
      .DRCK(tck2),        // Data Reg Clock
      .FSH(1'b0),         // Shift Function
      .FCAP(f[22]),        // Capture Function
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .SHIFT(jshift2),      // Shift state
      .CAPTURE(capture2),  // Capture state
      .RST(RST),          // Reset default state
		.BUS(BPI_RBK_FIFO), // Bus to capture
      .TDO(tdof16));      // Serial Test Data Out
	
//
// Read enable for BPI data FIFO -- advance on each JTAG read.
//
   always @(posedge CLK40) begin
		 pre_rd22 <= f[22] & jsel2 & update2;              // only at update2
		 BPI_RDENA <= (f[22] & jsel2 & update2) & ~pre_rd22;  // generate leading edge pulse one clock long
	end
		
//
// BPI status register capture and shift
//
   user_cap_reg #(.width(16))
   BPI_status_Jreg(
      .DRCK(tck2),        // Data Reg Clock
      .FSH(1'b0),         // Shift Function
      .FCAP(f[23]),        // Capture Function
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .SHIFT(jshift2),      // Shift state
      .CAPTURE(capture2),  // Capture state
      .RST(RST),          // Reset default state
		.BUS(BPI_STATUS), // Bus to capture
      .TDO(tdof17));      // Serial Test Data Out
		
		
//
// BPI timer register capture and shift
//
   user_cap_reg #(.width(32))
   BPI_timer_Jreg(
      .DRCK(tck2),        // Data Reg Clock
      .FSH(1'b0),         // Shift Function
      .FCAP(f[24]),        // Capture Function
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .SHIFT(jshift2),      // Shift state
      .CAPTURE(capture2),  // Capture state
      .RST(RST),          // Reset default state
		.BUS(BPI_TIMER), // Bus to capture
      .TDO(tdof18));      // Serial Test Data Out

//
// Comparator Clock phase register
//

   user_wr_reg #(.width(4), .def_value(4'h0)) // default is no phase shift
   cmp_clock_phase(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[28]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(CMP_CLK_PHASE),        // Parallel output
      .TDO(tdof1c),        // Serial Test Data Out
      .DSY_OUT(dmy9));    // Daisy chained serial data out
//
// Sampling Clock phase register
//

   user_wr_reg #(.width(3), .def_value(3'h0)) // default is no phase shift
   samp_clock_phase(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[44]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(SAMP_CLK_PHASE),  // Parallel output
      .TDO(tdof2c),        // Serial Test Data Out
      .DSY_OUT(dmy13));    // Daisy chained serial data out
		

//
// TMB optical path transmit mode register
// mode: function
// -----------------
// 0: comapator data
// 1: fixed patterns
// 2: counters
// 3: randoms
// 4: comapator data
// 5: half strips
//

   user_wr_reg #(.width(3), .def_value(3'b000)) // default is comparator data
   tmb_tx_mode(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[29]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(TMB_TX_MODE),    // Parallel output
      .TDO(tdof1d),        // Serial Test Data Out
      .DSY_OUT(dmy10));    // Daisy chained serial data out
		
//
// TMB half strip settings for injecting patterns into serial data stream
// 

   user_wr_reg #(.width(30), .def_value(30'h00000000)) // default is no half strips
   tmb_half_strip(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[30]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(LAY1_TO_6_HALF_STRIP),    // Parallel output
      .TDO(tdof1e),        // Serial Test Data Out
      .DSY_OUT(dmy11));    // Daisy chained serial data out
		
		
//
// TMB layer mask for indicating active layers for injecting patterns into serial data stream
// 

   user_wr_reg #(.width(6), .def_value(6'b111111)) // default is all layers active
   tmb_layer_mask(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[31]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(LAYER_MASK),    // Parallel output
      .TDO(tdof1f),        // Serial Test Data Out
      .DSY_OUT(dmy12));    // Daisy chained serial data out
		
//
// DAQ rate selection
//
   always @(posedge CLK40) begin
		 f32dly <= f[32];
		 f33dly <= f[33];
		 set_rate_1_25 <= f[32] & ~f32dly;  // leading edge of function being set (after update1)
		 set_rate_3_2  <= f[33] & ~f33dly;  // leading edge of function being set (after update1)
		 if(set_rate_1_25)
			JDAQ_RATE <= 1'b0;
		 else if(set_rate_3_2 || RST)
			JDAQ_RATE <= 1'b1;
		 else
			JDAQ_RATE <= JDAQ_RATE;
	end
	
//
// SPI Return data register
//
  
  always @(posedge tck2 or posedge RST) begin // intermediate shift register
    if(RST)
	   spi_rtn_reg <= 16'h0000;           // default
    else
	   if(dshift & jsel2 & f[35])
	     spi_rtn_reg <= {spi_rtn_reg[14:0],SPI_RTN}; // Shift left
		else
		  spi_rtn_reg <= spi_rtn_reg;                  // Hold
  end
//
// SPI Return data register capture and shift
//
   user_cap_reg #(.width(16))
   SPI_Rtn_Reg(
      .DRCK(tck2),        // Data Reg Clock
      .FSH(1'b0),         // Shift Function
      .FCAP(f[36]),        // Capture Function
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .SHIFT(jshift2),      // Shift state
      .CAPTURE(capture2),  // Capture state
      .RST(RST),          // Reset default state
		.BUS(spi_rtn_reg), // Bus to capture
      .TDO(tdof24));      // Serial Test Data Out

//
// Configuration Frame Address Register (FAR) capture and shift
//
//   user_cap_reg #(.width(24))
//   Frame_ECC_Reg(
//      .DRCK(tck2),        // Data Reg Clock
//      .FSH(1'b0),         // Shift Function
//      .FCAP(f[37]),        // Capture Function
//      .SEL(jsel2),        // User 2 mode active
//      .TDI(tdi2),          // Serial Test Data In
//      .SHIFT(jshift2),      // Shift state
//      .CAPTURE(capture2),  // Capture state
//      .RST(RST),          // Reset default state
//		.BUS(cap_far), // Bus to capture
//      .TDO(tdof25));      // Serial Test Data Out

//
// ECC Error counters capture and shift
//
//   user_cap_reg #(.width(16))
//   ECC_Error_Counts(
//      .DRCK(tck2),        // Data Reg Clock
//      .FSH(1'b0),         // Shift Function
//      .FCAP(f[39]),        // Capture Function
//      .SEL(jsel2),        // User 2 mode active
//      .TDI(tdi2),          // Serial Test Data In
//      .SHIFT(jshift2),      // Shift state
//      .CAPTURE(capture2),  // Capture state
//      .RST(RST),          // Reset default state
//		.BUS({multi_bit_err_cnt,sngl_bit_err_cnt}), // Bus to capture
//      .TDO(tdof27));      // Serial Test Data Out
		
//
// PRBS testing mode for DAQ optical path
//      Modes are 
//      000: Standard operation
//      001: PRBS-7
//      010: PRBS-15
//      011: PRBS-23
//      100: PRBS-31
//      101: PCI Express pattern
//      110: Square wave with 2 UI
//      111: Square wave with 16 UI (or 20 UI)

   user_wr_reg #(.width(3), .def_value(3'b000)) // default is normal mode, no PRBS testing
   PRBS_tst_mode(
	   .TCK(tck2),         // TCK for update register
      .DRCK(tck2),        // Data Reg Clock
      .FSEL(f[45]),       // Function select
      .SEL(jsel2),        // User 2 mode active
      .TDI(tdi2),          // Serial Test Data In
      .DSY_IN(1'b0),      // Serial Daisy chained data in
      .SHIFT(jshift2),      // Shift state
      .UPDATE(update2),    // Update state
      .RST(RST),          // Reset default state
      .DSY_CHAIN(1'b0),   // Daisy chain mode
      .PO(JDAQ_PRBS_TST),    // Parallel output
      .TDO(tdof2d),        // Serial Test Data Out
      .DSY_OUT(dmy14));    // Daisy chained serial data out
		

endmodule
