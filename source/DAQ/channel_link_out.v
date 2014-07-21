`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:48:38 03/10/2011 
// Design Name: 
// Module Name:    channel_link_out 
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
module channel_link_out(
    output [15:0] DATAOUT,
    output CHAN_LNK_CLK,
    output MB_FIFO_PUSH_B,
    output MOVLP,
    output OVLPMUX,
    output DATAAVAIL,
    output ENDWORD,
	 input CLK,
	 input L1A_MATCH,
	 input LAST_WRD,
	 input DVALID,
	 input MLT_OVLP,
    input [15:0] FRAME_DATA
    );

  wire [15:0]chan_dat_out;
  wire clnk_clk;
  wire mb_fifo_push;
  wire ovlp_mux;
  wire end_word;
  reg dav;

  assign chan_dat_out = FRAME_DATA;
  assign clnk_clk = CLK;
  assign mb_fifo_push = DVALID;
  assign ovlp_mux = FRAME_DATA[14];
  assign end_word = LAST_WRD;
  
	always @(posedge CLK) begin
		dav <= L1A_MATCH;
	end



  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_DATAOUT[15:0] (.O(DATAOUT),.I(chan_dat_out));
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_CHAN_LNK_CLK (.O(CHAN_LNK_CLK),.I(clnk_clk));
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_MB_FIFO_PUSH (.O(MB_FIFO_PUSH_B),.I(~mb_fifo_push));
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_MOVLP (.O(MOVLP),.I(MLT_OVLP));
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_OVLPMUX (.O(OVLPMUX),.I(~ovlp_mux));
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_DAV (.O(DATAAVAIL),.I(dav));
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_ENDWORD (.O(ENDWORD),.I(end_word));
 

endmodule
