`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:16:54 02/25/2011 
// Design Name: 
// Module Name:    adc_config 
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
module adc_config(
    input CLK,         // Clock
    input RST,         // Reset
    input INIT,        // Command to initialize the ADC's (on power up or on command)
	 input JCTRL,       // Selects JWE and JDATA as source for writing memory
    input JWE,          // JTAG Write enable for the memory
    input [25:0] JDATA,// Parallel data to be written to memory from JTAG
	 input [3:0] CSP_WE, // Write enables from chip scope pro control
	 input [23:0] CSP_WR_DATA, // Data to be written to memory from chip scope pro
	 input [4:0] CSP_WR_ADDR, // Address to write to memory from chip scope pro
	 input CSP_RD_CTRL,       // Selects CSP_RD_ADDR as source of address
	 output reg [23:0] CSP_RD_DATA, // Data to be written to memory from chip scope pro
	 input [4:0] CSP_RD_ADDR, // Address to write to memory from chip scope pro
	 input [1:0] CSP_MSEL, // memory select from chip scope pro
	 input [11:0] MASK, // Mask for which ADC to talk to
    output [11:0] CS,  // Chip selects for all 12 ADC's
    output reg SCLK,       // Serial clock to ADC's
    output SDATA,      // Serial data to ADC's
    output DONE,        // Done signal when initialization is complete
	 output [1:0] la_msel,
	 output [23:0] la_mem_out,
	 output [4:0] la_rd_addr,
	 output [4:0] la_wr_addr
    );


	reg [23:0] ram0 [31:0];
	reg [23:0] shreg;
	reg [23:0] mem_in;
	reg we;
	wire [23:0] mem_out;
	wire [23:0] mem_out0;
   reg [4:0] jaddr;
   reg [4:0] waddr;


	wire load;
	wire scken;
	wire shen;
	wire csel;
	reg  dscken;
	wire [11:0] cs_mask;
	reg [4:0] raddr;
	wire [4:0] addr;

	initial begin
	   $readmemh ("ADC_ram_contents", ram0, 0, 31);
	end

	assign la_msel = 4'h0;
	assign la_mem_out = mem_out;
	assign la_rd_addr = raddr;
	assign la_wr_addr = waddr;
	

   assign mem_out0 = ram0[raddr];
	assign SDATA = shreg[23];
	assign csel = scken | dscken; // stretch the clock enable by 1 clock
	assign CS = {12{csel}} & cs_mask;
	assign cs_mask = MASK;
	assign mem_out = mem_out0;
	
	always @(posedge CLK)  dscken <= scken;
	
	
//
// Decode address and write enable to write from JTAG data
//
	always @(JDATA) begin
		case(JDATA[23:16])
			8'h00: jaddr = 5'h00;
			8'h01: jaddr = 5'h01;
			8'h0f: jaddr = 5'h02;
			8'h11: jaddr = 5'h03;
			8'h12: jaddr = 5'h04;
			8'h14: jaddr = 5'h05;
			8'h24: jaddr = 5'h06;
			8'h25: jaddr = 5'h07;
			8'h26: jaddr = 5'h08;
			8'h27: jaddr = 5'h09;
			8'h2a: jaddr = 5'h0a;
			8'h2b: jaddr = 5'h0b;
			8'h42: jaddr = 5'h0c;
			8'h45: jaddr = 5'h0d;
			8'h46: jaddr = 5'h0e;
			8'he2: jaddr = 5'h0f;
			8'he3: jaddr = 5'h10;
			default: jaddr = 5'h1f;
		endcase
	end
	
//
// Data/addr/we source multiplexer for memory writes
//
   always @* begin
	   if(JCTRL)
		   begin
				we = JWE;
				mem_in = JDATA[23:0];
				waddr = jaddr;
			end
		else
			begin
				we = CSP_WE[0];
				mem_in = CSP_WR_DATA;
				waddr = CSP_WR_ADDR;
			end
	end
	
//
// source multiplexer for memory reads
//
   always @* begin
	   if(CSP_RD_CTRL)
		   begin
				raddr = CSP_RD_ADDR;
				CSP_RD_DATA = mem_out0;
			end
		else
			begin
				raddr = addr;
				CSP_RD_DATA = mem_out;
			end
	end
	
	
//
// Infer distributed RAM for storing ADC configuration memory
//
   always @(posedge CLK) begin
	   if(we)
		   ram0[waddr] <= mem_in;
	end
	
//
// Shift register for serial data to ADCs 
//
	always @(posedge CLK) begin
	  if (load)
	     shreg <= mem_out;              // load with value from memory
	  else
	    if(shen & SCLK)
		    shreg <= {shreg[22:0],1'b0}; // shift left
		 else
		    shreg <= shreg;
	end
	
//
// SCLK generator (lives high)
//
	always @(posedge CLK) begin
	   if(!scken)
		   SCLK <= 1'b1;  // When not enabled the clock lives high
	   else
		   SCLK <= ~SCLK; // The serial clock is half the frequency of CLK
	end
	
//
//  Finite State Machine for controlling the ADC configuration
//

  
   ADC_Config_FSM #(.Last_Addr(5'h10)) // Use address 0-16
   ADC_Config_FSM_i	(
  .ADR(addr),            // output  -- memory address
  .DONE(DONE),           // output -- Conifguration Done signal
  .LOAD(load),           // output -- Load shift register
  .SCKEN(scken),         // output -- Enable the serial clock generation and ADC chip select signals (CS)
  .SHEN(shen),           // output -- Shift Enable
  .CLK(CLK),             // input  -- clock
  .INIT(INIT),           // input  -- Signal to initiate the configuration
  .RST(RST)              // input  -- Reset 
	);
endmodule

