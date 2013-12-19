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
	 
    input CLK40,               // Free running 40 MHz Clock after mmcm lock.
    input ICAP_CLK,            // Clock Enabled 40MHz clock
    input RST,                 // Reset for state machines and FIFO
	 input JTAG_TK_CTRL,        // Sets csp_jtag_b signal
	 input JTAG_DED_RST,        // Reset the double error detected flag
	 input JTAG_RST_SEM_CNTRS,  // Reset the error counters
	 input JTAG_SEND_CMD,       // single pulse to execute command in JTAG_CMD_DATA
	 input [7:0] JTAG_CMD_DATA, //Data for SEM commands
	 output [49:0] SEM_STATUS   //Status state, errors and FAR address
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
	wire fecc_crcerr;
	wire fecc_eccerr;
	wire fecc_eccerrsingle;
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
	wire icap_unused;
	wire icap_grant;

	wire [7:0] ff_data_out;
	wire ff_data_present;
	wire ff_read;
	wire csp_read;
	wire [7:0] csp_cmd_data;
	wire [7:0] cmd_data;
	wire cmd_ready;
	wire csp_send_cmd;
	wire send_cmd;
	wire csp_tk_ctrl;
	reg  csp_jtag_b;
	wire rxempty_n;
	wire fifo_unused;
	wire [1:0] sem_state;
	reg [7:0] sngl_bit_err_cnt;
	reg [7:0] multi_bit_err_cnt;
	reg [23:0] cap_far;
	reg dbl_err_det;
	wire le_eccerr;
	wire inc_dbl_cnt;
	wire inc_sngl_cnt;
	reg fecc_eccerr_r1;
	reg dbl_err_det_r1;

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
	assign sem_la0_data[131]        = fecc_crcerr;
	assign sem_la0_data[132]        = fecc_eccerr;
	assign sem_la0_data[133]        = fecc_eccerrsingle;
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
//	assign sem_la0_data[151]        = cmd_ready;
	assign sem_la0_data[151]        = 1'b0;
	assign sem_la0_data[159:152]    = ff_data_out;
	assign sem_la0_data[160]        = csp_send_cmd;
	assign sem_la0_data[161]        = RST;
//	assign sem_la0_data[163:162]    = sem_state;
	assign sem_la0_data[163:162]    = 2'b00;
	
	

// LA Trigger [15:0]
	assign sem_la0_trig[0]       = status_heartbeat;
	assign sem_la0_trig[1]       = status_initialization;
	assign sem_la0_trig[2]       = status_observation;
	assign sem_la0_trig[3]       = status_correction;
	assign sem_la0_trig[4]       = status_injection;
	assign sem_la0_trig[5]       = fecc_crcerr;
	assign sem_la0_trig[6]       = fecc_eccerr;
	assign sem_la0_trig[7]       = fecc_eccerrsingle;
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
wire [23:0] sem_vio0_sync_in;
	
sem_vio sem_vio_0 (
    .CONTROL(CSP_VIO0_CNTRL), // INOUT BUS [35:0]
    .CLK(CLK40),
    .SYNC_IN(sem_vio0_sync_in), // IN BUS [23:0]
    .SYNC_OUT(sem_vio0_sync_out) // OUT BUS [47:0]
);


// VIO Sync In Data [7:0]
	assign sem_vio0_sync_in[0]  = status_initialization;
	assign sem_vio0_sync_in[1]  = status_observation;
	assign sem_vio0_sync_in[2]  = status_correction;
	assign sem_vio0_sync_in[3]  = status_classification;
	assign sem_vio0_sync_in[4]  = status_injection;
	assign sem_vio0_sync_in[5]  = fecc_crcerr;
	assign sem_vio0_sync_in[6]  = fecc_eccerr;
	assign sem_vio0_sync_in[7]  = fecc_eccerrsingle;
	assign sem_vio0_sync_in[15:8] = sngl_bit_err_cnt;
	assign sem_vio0_sync_in[23:16] = multi_bit_err_cnt;


// VIO Sync Out Data [47:0]
	assign inject_address = sem_vio0_sync_out[35:0];
	assign inject_strobe  = sem_vio0_sync_out[36];
	assign csp_send_cmd   = sem_vio0_sync_out[37];
	assign csp_read       = sem_vio0_sync_out[38];
	assign csp_cmd_data   = sem_vio0_sync_out[46:39];
	assign csp_tk_ctrl    = sem_vio0_sync_out[47];


assign icap_grant = 1'b1;

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
	.icap_clk(ICAP_CLK),
	.icap_request(icap_unused), 
	.icap_grant(icap_grant),
	.fecc_crcerr(fecc_crcerr),
	.fecc_eccerr(fecc_eccerr),
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
      .CLK(ICAP_CLK),        // 1-bit input Clock Input
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
      .CRCERROR(fecc_crcerr),             // 1-bit output Output indicating a CRC error
      .ECCERROR(fecc_eccerr),             // 1-bit output Output indicating an ECC error
      .ECCERRORSINGLE(fecc_eccerrsingle), // 1-bit output Output Indicating single-bit Frame ECC error detected.
      .FAR(fecc_far),                       // 24-bit output Frame Address Register Value output
      .SYNBIT(fecc_synbit),                 // 5-bit output Output bit address of error
      .SYNDROME(fecc_syndrome),             // 13-bit output Output location of erroneous bit
      .SYNDROMEVALID(fecc_syndromevalid),   // 1-bit output Frame ECC output indicating the SYNDROME output is valid.
      .SYNWORD(fecc_synword)                // 7-bit output Word output in the frame where an ECC error has been detected
   );

assign ff_data_present = !fmt;
assign ff_read = csp_read & !fmt;

   FIFO_SYNC_MACRO  #(
      .DEVICE("VIRTEX6"), // Target Device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(9'h080), // Sets the almost empty threshold
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
	
//assign monitor_rxempty = !cmd_ready;
//
//sem_cmds sem_cmds_FSM(
//  .READY(cmd_ready),
//  .SEM_STATE(sem_state),
//  .ACK(monitor_rxread),
//  .CLK(CLK40),
//  .RST(RST),
//  .SEND(csp_send_cmd) 
//);

  sem_core_sem_mon_fifo example_mon_fifo_rx (
    .data_in(cmd_data),
    .data_out(monitor_rxdata),
    .write(send_cmd),
    .read(monitor_rxread),
    .full(fifo_unused),
    .data_present(rxempty_n),
    .icap_clk(CLK40)
    );

assign monitor_rxempty = !rxempty_n;

assign cmd_data = csp_jtag_b ? csp_cmd_data : JTAG_CMD_DATA;
assign send_cmd = csp_jtag_b ? csp_send_cmd : JTAG_SEND_CMD;

always @(posedge CLK40 or posedge RST) begin
	if(RST)
		csp_jtag_b <= 1'b0;
	else
		if(csp_tk_ctrl)
			csp_jtag_b <= 1'b1;
		else if (JTAG_TK_CTRL)
			csp_jtag_b <= 1'b0;
		else
			csp_jtag_b <= csp_jtag_b;
end

	always @(posedge CLK40  or posedge JTAG_RST_SEM_CNTRS) begin
		if(JTAG_RST_SEM_CNTRS)
			sngl_bit_err_cnt <= 8'h00;
		else
			if(inc_sngl_cnt)
				sngl_bit_err_cnt <= sngl_bit_err_cnt+1;
			else
				sngl_bit_err_cnt <= sngl_bit_err_cnt;			
	end
	
	always @(posedge CLK40  or posedge JTAG_RST_SEM_CNTRS) begin
		if(JTAG_RST_SEM_CNTRS)
			multi_bit_err_cnt <= 8'h00;
		else
			if(inc_dbl_cnt)
				multi_bit_err_cnt <= multi_bit_err_cnt+1;
			else
				multi_bit_err_cnt <= multi_bit_err_cnt;			
	end
	
	// capture the Frame Address where the error is
	always @(posedge CLK40 or posedge RST) begin
		if(RST)
			cap_far <= 24'h000000;
		else
			if(inc_dbl_cnt)
				cap_far <= fecc_far;
			else
				cap_far <= cap_far;
	end
	
	
	
	always @(posedge CLK40) begin
		fecc_eccerr_r1 <= fecc_eccerr;
		dbl_err_det_r1 <= dbl_err_det;
	end


assign le_eccerr = fecc_eccerr & ~fecc_eccerr_r1;
assign inc_dbl_cnt = dbl_err_det & ~dbl_err_det_r1;
assign inc_sngl_cnt = le_eccerr & fecc_eccerrsingle & status_correction;

	always @(posedge CLK40 or posedge RST) begin
		if(RST)
			dbl_err_det <= 1'b0;
		else
			if(JTAG_DED_RST)
				dbl_err_det <= 1'b0;
			else if(le_eccerr && ~fecc_eccerrsingle)
				dbl_err_det <= 1'b1;
			else
				dbl_err_det <= dbl_err_det;
	end
	
// output for JTAG registers status	
	assign SEM_STATUS[0] = status_initialization;
	assign SEM_STATUS[1] = status_observation;
	assign SEM_STATUS[2] = status_correction;
	assign SEM_STATUS[3] = status_classification;
	assign SEM_STATUS[4] = status_injection;
	assign SEM_STATUS[5] = status_essential;
	assign SEM_STATUS[6] = status_uncorrectable;
	assign SEM_STATUS[7] = 1'b0;
	assign SEM_STATUS[8] = fecc_crcerr;
	assign SEM_STATUS[9] = dbl_err_det;
	assign SEM_STATUS[33:10] = cap_far;
	assign SEM_STATUS[41:34] = sngl_bit_err_cnt;
	assign SEM_STATUS[49:42] = multi_bit_err_cnt;


endmodule
