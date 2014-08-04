`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:27:42 01/14/2014 
// Design Name: 
// Module Name:    al_buckeye_load 
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
module al_buckeye_load(
    input CLK40,
    input CLK1MHZ,
    input RST,
    input CLR_AL_DONE,
    input CAPTURE,
    input [15:0] BPI_AL_REG,
    output AL_BKY_ENA,
    output SHCK_ENA,
    output SDATA,
    output reg DONE
    );
	 
	 
	reg load_bky;
	wire set_done;
	reg [15:0] bky_shft;

// FIFO signals
	wire bky_amt;
	wire bky_afl;
	wire bky_mt;
	wire bky_full;
	wire bky_rderr;
	wire bky_wrterr;
	wire bky_rdena;
	wire [9:0] bky_rdcnt;
	wire [9:0] bky_wrtcnt;
	wire [15:0] bky_data;
	
	assign AL_BKY_ENA = load_bky;
	assign SDATA = bky_shft[0];
  
always @(posedge CLK40 or posedge RST) begin
	if(RST)
		load_bky <= 1'b0;
	else
		if(DONE)
			load_bky <= 1'b0;
		else if(CAPTURE)
			load_bky <= 1'b1;
		else
			load_bky <= load_bky;
end

always @(negedge CLK1MHZ or posedge RST) begin
	if(RST)
		bky_shft <= 16'h0000;
	else
		if(bky_rdena)
			bky_shft <= bky_data;
		else if(SHCK_ENA)
			bky_shft <= {1'b0,bky_shft[15:1]};
		else
			bky_shft <= bky_shft;
end


bky_load_FSM         //States change on negative edge of clock
bky_load_FSM_i(
  .RDENA(bky_rdena),
  .SET_DONE(set_done),
  .SHFT_ENA(SHCK_ENA),
  .CLK(CLK1MHZ),
  .MT(bky_mt),
  .RST(RST),
  .START(load_bky) 
);

always @(posedge CLK40 or posedge RST) begin
	if(RST)
		DONE <= 1'b0;
	else
		if(CLR_AL_DONE)
			DONE <= 1'b0;
		else if(set_done)
			DONE <= 1'b1;
		else
			DONE <= DONE;
end
	
   /////////////////////////////////////////////////////////////////
   // DATA_WIDTH | FIFO_SIZE | FIFO Depth | RDCOUNT/WRCOUNT Width //
   // ===========|===========|============|=======================//
   //   37-72    |  "36Kb"   |     512    |         9-bit         //
   //   19-36    |  "36Kb"   |    1024    |        10-bit         //
   //   19-36    |  "18Kb"   |     512    |         9-bit         //
   //   10-18    |  "36Kb"   |    2048    |        11-bit         //
   //   10-18    |  "18Kb"   |    1024    |        10-bit         //
   //    5-9     |  "36Kb"   |    4096    |        12-bit         //
   //    5-9     |  "18Kb"   |    2048    |        11-bit         //
   //    1-4     |  "36Kb"   |    8192    |        13-bit         //
   //    1-4     |  "18Kb"   |    4096    |        12-bit         //
   /////////////////////////////////////////////////////////////////

   FIFO_DUALCLOCK_MACRO  #(
      .ALMOST_EMPTY_OFFSET(10'h040), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h080),  // Sets almost full threshold
      .DATA_WIDTH(16),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) al_Buckeye_load_FIFO_i (
      .ALMOSTEMPTY(bky_amt), // 1-bit output almost empty
      .ALMOSTFULL(bky_afl),   // 1-bit output almost full
      .DO(bky_data),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(bky_mt),             // 1-bit output empty
      .FULL(bky_full),               // 1-bit output full
      .RDCOUNT(bky_rdcnt),         // Output read count, width determined by FIFO depth
      .RDERR(bky_rderr),             // 1-bit output read error
      .WRCOUNT(bky_wrtcnt),         // Output write count, width determined by FIFO depth
      .WRERR(bky_wrterr),             // 1-bit output write error
      .DI(BPI_AL_REG),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(~CLK1MHZ),             // 1-bit input read clock
      .RDEN(bky_rdena),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(CLK40),             // 1-bit input write clock
      .WREN(CAPTURE)                // 1-bit input write enable
   );
	
endmodule
