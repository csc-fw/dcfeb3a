`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:02:31 02/24/2011 
// Design Name: 
// Module Name:    SEM_module 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
//
//////////////////////////////////////////////////////////////////////////////////
module SEM_module (
    inout [35:0] CSP_LA0_CNTRL,
    inout [35:0] CSP_VIO0_CNTRL,
	 
    input CLK40,            // 40 MHz Clock
    input RST,              // Reset default state
	 output [15:0] LED_OUT   // status to LEDs
	 );

	
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

   wire crc_error;
	reg eccerror;
	reg eccerrorsingle;
	reg [23:0] far;
	reg [4:0] synbit;
	reg [12:0] syndrome;
	reg [6:0] synword;
	wire [7:0] ff_data_out;
	wire ff_data_present;
	wire ff_read;
	wire csp_read;
	wire csp_disable_crc;
	wire cmd_ready;
	wire sem_cmd_rst;
	wire tr0,tr1,tr2;
	wire csp_send_cmd;
	wire [1:0] sem_state;

// FIFO signals
   wire famt;
   wire faf;
   wire fmt;
   wire [10:0] rdcount;
   wire [10:0] wrcount;
   wire rderr;
   wire wrerr;


//
// Logic analyzer 
//
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
	assign sem_la0_data[31:8]       = far;
	assign sem_la0_data[43:32]      = syndrome;
	assign sem_la0_data[48:44]      = synbit;
	assign sem_la0_data[55:49]      = synword;
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
	assign sem_la0_data[131]        = crc_error;
	assign sem_la0_data[132]        = eccerror;
	assign sem_la0_data[133]        = eccerrorsingle;
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
	assign sem_la0_trig[5]       = crc_error;
	assign sem_la0_trig[6]       = eccerror;
	assign sem_la0_trig[7]       = eccerrorsingle;
	assign sem_la0_trig[8]       = icap_csb;
	assign sem_la0_trig[9]       = icap_rdwrb;
	assign sem_la0_trig[10]      = icap_busy;
	assign sem_la0_trig[11]      = monitor_txwrite;
	assign sem_la0_trig[12]      = inject_strobe;
	assign sem_la0_trig[13]      = csp_read;
	assign sem_la0_trig[14]      = csp_send_cmd;
	assign sem_la0_trig[15]      = monitor_rxread;
	
// Virtual I/O for SEM

wire [47:0] sem_vio0_sync_out;
wire [7:0] sem_vio0_sync_in;
	
sem_vio sem_vio_0 (
    .CONTROL(CSP_VIO0_CNTRL), // INOUT BUS [35:0]
    .CLK(CLK40),
    .SYNC_IN(sem_vio0_sync_in), // IN BUS [7:0]
    .SYNC_OUT(sem_vio0_sync_out) // OUT BUS [47:0]
);


// VIO Sync In Data [7:0]
	assign sem_vio0_sync_in[0]  = status_initialization;
	assign sem_vio0_sync_in[1]  = status_observation;
	assign sem_vio0_sync_in[2]  = status_correction;
	assign sem_vio0_sync_in[3]  = status_classification;
	assign sem_vio0_sync_in[4]  = status_injection;
	assign sem_vio0_sync_in[5]  = crc_error;
	assign sem_vio0_sync_in[6]  = eccerror;
	assign sem_vio0_sync_in[7]  = eccerrorsingle;


// VIO Sync Out Data [47:0]
	assign inject_address = sem_vio0_sync_out[35:0];
	assign inject_strobe  = sem_vio0_sync_out[36];
	assign csp_send_cmd   = sem_vio0_sync_out[37];
	assign csp_read       = sem_vio0_sync_out[38];
	assign monitor_rxdata = sem_vio0_sync_out[46:39];
	assign csp_disable_crc = sem_vio0_sync_out[47];

// LED output for visual status	
   assign LED_OUT[0] = status_initialization;
	assign LED_OUT[1] = status_initialization;
	assign LED_OUT[2] = status_observation;
	assign LED_OUT[3] = status_correction;
	assign LED_OUT[4] = status_classification;
	assign LED_OUT[5] = status_injection;
	assign LED_OUT[6] = status_essential;
	assign LED_OUT[7] = status_uncorrectable;
	assign LED_OUT	[8] = inject_strobe;
	assign LED_OUT	[9] = crc_error;
	assign LED_OUT	[10] = eccerror;
	assign LED_OUT	[11] = eccerrorsingle;
	assign LED_OUT	[15:12] = fecc_synbit[3:0];

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
	.fecc_crcerr(crc_error),
	.fecc_eccerr(eccerror),
	.fecc_eccerrsingle(eccerrsingle),
	.fecc_syndromevalid(fecc_syndromevalid),
	.fecc_syndrome(syndrome), // Bus [12 : 0] 
	.fecc_far(far), // Bus [23 : 0] 
	.fecc_synbit(synbit), // Bus [4 : 0] 
	.fecc_synword(synword)); // Bus [6 : 0] 

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

//assign crc_error = fecc_crcerror & !csp_disable_crc;
assign crc_error = fecc_crcerror;

always @*
begin
	syndrome = fecc_syndrome;
	far      = fecc_far;
	synbit   = fecc_synbit;
	synword  = fecc_synword;
end

always @(posedge CLK40)
begin
	if(csp_disable_crc)
		if(status_classification)
		   begin
				eccerror <= fecc_eccerror;
				eccerrorsingle <= fecc_eccerrorsingle;
			end
		else if(status_correction)
		   begin
				eccerror <= eccerror & crc_error;
				eccerrorsingle <= eccerrorsingle & crc_error;
			end
		else
		   begin
				if(fecc_eccerror) 
					eccerror <= 1'b1;
				else
					eccerror <= eccerror;
				if(fecc_eccerrorsingle)
					eccerrorsingle <= 1'b1;
				else
					eccerrorsingle <= eccerrorsingle;
			end
	else
		begin
			eccerror <= fecc_eccerror;
			eccerrorsingle <= fecc_eccerrorsingle;
		end
end

//always @*
//begin
//	if(csp_disable_crc)
//		if(status_observation || status_correction || status_classification)
//			begin
//				syndrome = fecc_syndrome;
//				far      = fecc_far;
//				synbit   = fecc_synbit;
//				synword  = fecc_synword;
//				eccerror = fecc_eccerror;
//				eccerrorsingle = fecc_eccerrorsingle;
//			end
//		else
//			begin
//				syndrome = 13'h0000;
//				far      = 24'h000000;
//				synbit   = 5'h00;
//				synword  = 7'h00;
//				eccerror = 1'b0;
//				eccerrorsingle = 1'b0;
//			end
//	else
//		begin
//			syndrome = fecc_syndrome;
//			far      = fecc_far;
//			synbit   = fecc_synbit;
//			synword  = fecc_synword;
//			eccerror = fecc_eccerror;
//			eccerrorsingle = fecc_eccerrorsingle;
//		end
//end

//assign ff_read = ff_data_present;
//
//	sem_mon_fifo_bgb monitor_fifo1(
//  .icap_clk(CLK40),
//  .data_in(monitor_txdata),
//  .data_out(ff_data_out),
//  .write(monitor_txwrite),
//  .read(ff_read),
//  .full(monitor_txfull),
//  .data_present(ff_data_present)
//  );

assign ff_data_present = !fmt;
assign ff_read = csp_read & !fmt;

   FIFO_SYNC_MACRO  #(
      .DEVICE("VIRTEX6"), // Target Device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(9'h008), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(9'h080),  // Sets almost full threshold
      .DATA_WIDTH(8), // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .DO_REG(0),     // Optional output register (0 or 1)
      .FIFO_SIZE ("18Kb") // Target BRAM: "18Kb" or "36Kb" 
   ) monitor_fifo2 (
      .ALMOSTEMPTY(famt), // 1-bit output almost empty
      .ALMOSTFULL(faf),   // 1-bit output almost full
      .DO(ff_data_out),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt),             // 1-bit output empty
      .FULL(monitor_txfull),               // 1-bit output full
      .RDCOUNT(rdcount),         // Output read count, width determined by FIFO depth
      .RDERR(rderr),             // 1-bit output read error
      .WRCOUNT(wrcount),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr),             // 1-bit output write error
      .CLK(CLK40),                 // 1-bit input clock
      .DI(monitor_txdata),                   // Input data, width defined by DATA_WIDTH parameter
      .RDEN(ff_read),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WREN(monitor_txwrite)                // 1-bit input write enable
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


endmodule
