`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:08:11 03/30/2011 
// Design Name: 
// Module Name:    fifo16ch_wide 
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
module fifo16ch_wide(
    input CLK40,
    input RDCLK,
	 input SMPCLK,
    input WRCLK,
    input RST,
    input L1A_MATCH,
    input [191:0] G1IN,
    input [191:0] G2IN,
    input [191:0] G3IN,
    input [191:0] G4IN,
    input [191:0] G5IN,
    input [191:0] G6IN,
    input [15:0] RD_ENA,
	 input [6:0] SAMP_MAX,
	 output RDY,
	 output reg L1A_PHASE,
    output [191:0] DOUT_16CH
    );
	 
	 wire wren;
	 wire famt0,famt1,famt2,famt3,famt4,famt5,famt6,famt7,famt8,famt9,famt10,famt11,famt12,famt13,famt14,famt15;
	 wire fafl0,fafl1,fafl2,fafl3,fafl4,fafl5,fafl6,fafl7,fafl8,fafl9,fafl10,fafl11,fafl12,fafl13,fafl14,fafl15;
	 wire fmt0,fmt1,fmt2,fmt3,fmt4,fmt5,fmt6,fmt7,fmt8,fmt9,fmt10,fmt11,fmt12,fmt13,fmt14,fmt15;
	 wire ffl0,ffl1,ffl2,ffl3,ffl4,ffl5,ffl6,ffl7,ffl8,ffl9,ffl10,ffl11,ffl12,ffl13,ffl14,ffl15;
	 wire [9:0] rdcount0,rdcount1,rdcount2,rdcount3,rdcount4,rdcount5,rdcount6,rdcount7,rdcount8,rdcount9,rdcount10,rdcount11,rdcount12,rdcount13,rdcount14,rdcount15;
	 wire rderr0,rderr1,rderr2,rderr3,rderr4,rderr5,rderr6,rderr7,rderr8,rderr9,rderr10,rderr11,rderr12,rderr13,rderr14,rderr15;
	 wire [9:0] wrcount0,wrcount1,wrcount2,wrcount3,wrcount4,wrcount5,wrcount6,wrcount7,wrcount8,wrcount9,wrcount10,wrcount11,wrcount12,wrcount13,wrcount14,wrcount15;
	 wire wrerr0,wrerr1,wrerr2,wrerr3,wrerr4,wrerr5,wrerr6,wrerr7,wrerr8,wrerr9,wrerr10,wrerr11,wrerr12,wrerr13,wrerr14,wrerr15;
	 reg [191:0] muxout;
	 wire [11:0] fout0,fout1,fout2,fout3,fout4,fout5,fout6,fout7,fout8,fout9,fout10,fout11,fout12,fout13,fout14,fout15;
	 wire start;
	 wire phase_align;
	 wire stretch_l1a;
	 wire srst;
	 wire sinc;
	 
	 reg l1a_d1;
	 reg smpclk_dp5,smpclk_d1,smpclk_d2;
	 reg [2:0] sel;
	 reg [6:0] sample;

	 
	assign DOUT_16CH = {fout15,fout14,fout13,fout12,fout11,fout10,fout9,fout8,fout7,fout6,fout5,fout4,fout3,fout2,fout1,fout0};
	assign stretch_l1a = L1A_MATCH | l1a_d1;
	assign phase_align = ~SMPCLK & ~smpclk_d2;
	assign start = stretch_l1a & phase_align;
	assign wren = sinc;
	assign RDY = ~famt0;
	 
	always @(posedge CLK40) l1a_d1 <= L1A_MATCH;
		
	always @(negedge WRCLK) begin
	   if(SMPCLK)
		   smpclk_dp5 <= 1'b1;
		else
		   smpclk_dp5 <= 1'b0;
	end
	always @(posedge WRCLK) begin
		smpclk_d1 <= smpclk_dp5;
		smpclk_d2 <= smpclk_d1;
	end
	always @(posedge CLK40) begin
		if(L1A_MATCH)
			L1A_PHASE <= L1A_MATCH & ~SMPCLK;
		else
			L1A_PHASE <= L1A_PHASE;
	end
	 
	always @* begin
		case (sel)
			3'h0: muxout = G1IN;
			3'h1: muxout = G2IN;
			3'h2: muxout = G3IN;
			3'h3: muxout = G4IN;
			3'h4: muxout = G5IN;
			3'h5: muxout = G6IN;
			default: muxout = 0;
		endcase
	end

	always @(posedge WRCLK or posedge srst) begin  // counter for mux selection
		if(srst)
			sel <= 0;
		else
			if(sel == 3'd5)
				sel <= 0;
			else if(sinc) 
				sel <= sel + 1;
			else
			   sel <= sel;
	end

	always @(posedge WRCLK or posedge srst) begin  // counter for samples
		if(srst)
			sample <= 0;
		else
			if(sinc && (sel == 3'd5))
				sample <= sample + 1;
			else
			   sample <= sample;
	end

	FIFO_Load_FSM 
	FIFO_Load_FSM1(
     .SINC(sinc),
     .SRST(srst),
     .CLK(WRCLK),
     .RST(RST),
	  .SAMPLE(sample),
	  .SAMP_MAX(SAMP_MAX),
     .SEL(sel),
     .START(start) 
);
  


   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_0 (
      .ALMOSTEMPTY(famt0), // 1-bit output almost empty
      .ALMOSTFULL(fafl0),   // 1-bit output almost full
      .DO(fout0),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt0),             // 1-bit output empty
      .FULL(ffl0),               // 1-bit output full
      .RDCOUNT(rdcount0),         // Output read count, width determined by FIFO depth
      .RDERR(rderr0),             // 1-bit output read error
      .WRCOUNT(wrcount0),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr0),             // 1-bit output write error
      .DI(muxout[11:0]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[0]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_1 (
      .ALMOSTEMPTY(famt1), // 1-bit output almost empty
      .ALMOSTFULL(fafl1),   // 1-bit output almost full
      .DO(fout1),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt1),             // 1-bit output empty
      .FULL(ffl1),               // 1-bit output full
      .RDCOUNT(rdcount1),         // Output read count, width determined by FIFO depth
      .RDERR(rderr1),             // 1-bit output read error
      .WRCOUNT(wrcount1),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr1),             // 1-bit output write error
      .DI(muxout[23:12]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[1]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_2 (
      .ALMOSTEMPTY(famt2), // 1-bit output almost empty
      .ALMOSTFULL(fafl2),   // 1-bit output almost full
      .DO(fout2),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt2),             // 1-bit output empty
      .FULL(ffl2),               // 1-bit output full
      .RDCOUNT(rdcount2),         // Output read count, width determined by FIFO depth
      .RDERR(rderr2),             // 1-bit output read error
      .WRCOUNT(wrcount2),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr2),             // 1-bit output write error
      .DI(muxout[35:24]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[2]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_3 (
      .ALMOSTEMPTY(famt3), // 1-bit output almost empty
      .ALMOSTFULL(fafl3),   // 1-bit output almost full
      .DO(fout3),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt3),             // 1-bit output empty
      .FULL(ffl3),               // 1-bit output full
      .RDCOUNT(rdcount3),         // Output read count, width determined by FIFO depth
      .RDERR(rderr3),             // 1-bit output read error
      .WRCOUNT(wrcount3),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr3),             // 1-bit output write error
      .DI(muxout[47:36]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[3]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_4 (
      .ALMOSTEMPTY(famt4), // 1-bit output almost empty
      .ALMOSTFULL(fafl4),   // 1-bit output almost full
      .DO(fout4),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt4),             // 1-bit output empty
      .FULL(ffl4),               // 1-bit output full
      .RDCOUNT(rdcount4),         // Output read count, width determined by FIFO depth
      .RDERR(rderr4),             // 1-bit output read error
      .WRCOUNT(wrcount4),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr4),             // 1-bit output write error
      .DI(muxout[59:48]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[4]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_5 (
      .ALMOSTEMPTY(famt5), // 1-bit output almost empty
      .ALMOSTFULL(fafl5),   // 1-bit output almost full
      .DO(fout5),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt5),             // 1-bit output empty
      .FULL(ffl5),               // 1-bit output full
      .RDCOUNT(rdcount5),         // Output read count, width determined by FIFO depth
      .RDERR(rderr5),             // 1-bit output read error
      .WRCOUNT(wrcount5),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr5),             // 1-bit output write error
      .DI(muxout[71:60]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[5]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_6 (
      .ALMOSTEMPTY(famt6), // 1-bit output almost empty
      .ALMOSTFULL(fafl6),   // 1-bit output almost full
      .DO(fout6),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt6),             // 1-bit output empty
      .FULL(ffl6),               // 1-bit output full
      .RDCOUNT(rdcount6),         // Output read count, width determined by FIFO depth
      .RDERR(rderr6),             // 1-bit output read error
      .WRCOUNT(wrcount6),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr6),             // 1-bit output write error
      .DI(muxout[83:72]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[6]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_7 (
      .ALMOSTEMPTY(famt7), // 1-bit output almost empty
      .ALMOSTFULL(fafl7),   // 1-bit output almost full
      .DO(fout7),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt7),             // 1-bit output empty
      .FULL(ffl7),               // 1-bit output full
      .RDCOUNT(rdcount7),         // Output read count, width determined by FIFO depth
      .RDERR(rderr7),             // 1-bit output read error
      .WRCOUNT(wrcount7),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr7),             // 1-bit output write error
      .DI(muxout[95:84]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[7]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_8 (
      .ALMOSTEMPTY(famt8), // 1-bit output almost empty
      .ALMOSTFULL(fafl8),   // 1-bit output almost full
      .DO(fout8),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt8),             // 1-bit output empty
      .FULL(ffl8),               // 1-bit output full
      .RDCOUNT(rdcount8),         // Output read count, width determined by FIFO depth
      .RDERR(rderr8),             // 1-bit output read error
      .WRCOUNT(wrcount8),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr8),             // 1-bit output write error
      .DI(muxout[107:96]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[8]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_9 (
      .ALMOSTEMPTY(famt9), // 1-bit output almost empty
      .ALMOSTFULL(fafl9),   // 1-bit output almost full
      .DO(fout9),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt9),             // 1-bit output empty
      .FULL(ffl9),               // 1-bit output full
      .RDCOUNT(rdcount9),         // Output read count, width determined by FIFO depth
      .RDERR(rderr9),             // 1-bit output read error
      .WRCOUNT(wrcount9),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr9),             // 1-bit output write error
      .DI(muxout[119:108]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[9]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_10 (
      .ALMOSTEMPTY(famt10), // 1-bit output almost empty
      .ALMOSTFULL(fafl10),   // 1-bit output almost full
      .DO(fout10),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt10),             // 1-bit output empty
      .FULL(ffl10),               // 1-bit output full
      .RDCOUNT(rdcount10),         // Output read count, width determined by FIFO depth
      .RDERR(rderr10),             // 1-bit output read error
      .WRCOUNT(wrcount10),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr10),             // 1-bit output write error
      .DI(muxout[131:120]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[10]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_11 (
      .ALMOSTEMPTY(famt11), // 1-bit output almost empty
      .ALMOSTFULL(fafl11),   // 1-bit output almost full
      .DO(fout11),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt11),             // 1-bit output empty
      .FULL(ffl11),               // 1-bit output full
      .RDCOUNT(rdcount11),         // Output read count, width determined by FIFO depth
      .RDERR(rderr11),             // 1-bit output read error
      .WRCOUNT(wrcount11),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr11),             // 1-bit output write error
      .DI(muxout[143:132]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[11]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_12 (
      .ALMOSTEMPTY(famt12), // 1-bit output almost empty
      .ALMOSTFULL(fafl12),   // 1-bit output almost full
      .DO(fout12),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt12),             // 1-bit output empty
      .FULL(ffl12),               // 1-bit output full
      .RDCOUNT(rdcount12),         // Output read count, width determined by FIFO depth
      .RDERR(rderr12),             // 1-bit output read error
      .WRCOUNT(wrcount12),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr12),             // 1-bit output write error
      .DI(muxout[155:144]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[12]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_13 (
      .ALMOSTEMPTY(famt13), // 1-bit output almost empty
      .ALMOSTFULL(fafl13),   // 1-bit output almost full
      .DO(fout13),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt13),             // 1-bit output empty
      .FULL(ffl13),               // 1-bit output full
      .RDCOUNT(rdcount13),         // Output read count, width determined by FIFO depth
      .RDERR(rderr13),             // 1-bit output read error
      .WRCOUNT(wrcount13),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr13),             // 1-bit output write error
      .DI(muxout[167:156]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[13]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_14 (
      .ALMOSTEMPTY(famt14), // 1-bit output almost empty
      .ALMOSTFULL(fafl14),   // 1-bit output almost full
      .DO(fout14),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt14),             // 1-bit output empty
      .FULL(ffl14),               // 1-bit output full
      .RDCOUNT(rdcount14),         // Output read count, width determined by FIFO depth
      .RDERR(rderr14),             // 1-bit output read error
      .WRCOUNT(wrcount14),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr14),             // 1-bit output write error
      .DI(muxout[179:168]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[14]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

   FIFO_DUALCLOCK_MACRO  #(
      .DEVICE("VIRTEX6"),  // Target device: "VIRTEX5", "VIRTEX6" 
      .ALMOST_EMPTY_OFFSET(10'h007), // Sets the almost empty threshold
      .ALMOST_FULL_OFFSET(10'h040),  // Sets almost full threshold
      .DATA_WIDTH(12),   // Valid values are 1-72 (37-72 only valid when FIFO_SIZE="36Kb")
      .FIFO_SIZE ("18Kb"), // Target BRAM: "18Kb" or "36Kb" 
      .FIRST_WORD_FALL_THROUGH ("TRUE") // Sets the FIFO FWFT to "TRUE" or "FALSE" 
   ) FIFO_CH_15 (
      .ALMOSTEMPTY(famt15), // 1-bit output almost empty
      .ALMOSTFULL(fafl15),   // 1-bit output almost full
      .DO(fout15),                   // Output data, width defined by DATA_WIDTH parameter
      .EMPTY(fmt15),             // 1-bit output empty
      .FULL(ffl15),               // 1-bit output full
      .RDCOUNT(rdcount15),         // Output read count, width determined by FIFO depth
      .RDERR(rderr15),             // 1-bit output read error
      .WRCOUNT(wrcount15),         // Output write count, width determined by FIFO depth
      .WRERR(wrerr15),             // 1-bit output write error
      .DI(muxout[191:180]),                   // Input data, width defined by DATA_WIDTH parameter
      .RDCLK(RDCLK),             // 1-bit input read clock
      .RDEN(RD_ENA[15]),               // 1-bit input read enable
      .RST(RST),                 // 1-bit input reset
      .WRCLK(WRCLK),             // 1-bit input write clock
      .WREN(wren)                // 1-bit input write enable
   );

	
endmodule
