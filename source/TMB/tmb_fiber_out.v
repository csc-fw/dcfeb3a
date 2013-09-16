`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:50 08/05/2011 
// Design Name: 
// Module Name:    tmb_fiber_out 
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
module tmb_fiber_out #(
	parameter SIM_SPEEDUP = 0
)
(
	input RST,
	input TRG_SIGDET,
	input TRG_RX_N,
	input TRG_RX_P,
	output TRG_TDIS,
	output TRG_TX_N,
	output TRG_TX_P,
	input [7:0] G1C,
	input [7:0] G2C,
	input [7:0] G3C,
	input [7:0] G4C,
	input [7:0] G5C,
	input [7:0] G6C,
	input TRG_TX_REFCLK,
	input TRG_TXUSRCLK,
	input TRG_CLK80,
	input TRG_GTXTXRST,
	input TRG_TX_PLLRST,
	input TRG_RST,
	input ENA_TEST_PAT,
	input [2:0] TMB_TX_MODE,
	input [29:0] LAY1_TO_6_HALF_STRIP,
	input [5:0] LAYER_MASK,
	input TRG_PULSE,
	input INJ_ERR,
	output TRG_TX_PLL_LOCK,
	output TRG_TXRESETDONE,
	output TX_SYNC_DONE,
	output STRT_LTNCY,
	output reg LTNCY_TRIG,
	output MON_TX_SEL,
	output [3:0] MON_TRG_TX_ISK,
	output [31:0] MON_TRG_TX_DATA
	);
	

wire trg_tx_dis;
wire trg_sd;

//Inputs to TRG GTX transmitter
wire [3:0] trg_tx_isk;
wire [31:0] trg_tx_data;
wire tx_dlyaligndisable;
wire tx_dlyalignreset;
wire tx_enpmaphasealign;
wire tx_pmasetphase;
reg trg_txresetdone_r;
reg trg_txresetdone_r2;
wire [7:0] tx_dly_align_mon;
wire tx_dly_align_mon_ena;
reg [15:0] frm_sep;
reg [7:0] trgcnt;
reg lt_trg;
reg rst_tx;
// Dummy outputs
wire trg_txoutclk;


//PRBS signals
wire [47:0] prbs;
wire [47:0] comp_data;
wire [47:0] out_data;
reg [47:0] tx_mode_data;
reg [47:0] fixed_pats;
reg [7:0] txmode_cntr;
reg [7:0] ly1ds,ly2ds,ly3ds,ly4ds,ly5ds,ly6ds;
reg [2:0] ly1hs,ly2hs,ly3hs,ly4hs,ly5hs,ly6hs;
wire [4:0] lay1_half_strip, lay2_half_strip, lay3_half_strip, lay4_half_strip, lay5_half_strip, lay6_half_strip;
wire inject_i;
reg trig_1,trig_2,trig_3;
reg  tx_sel;
reg  tx_sel_bar;
wire prbs_rst;
reg p_rst1,p_rst2,p_rst3,p_rst4;
reg p_rst5,p_rst6,p_rst7,p_rst8;

assign MON_TX_SEL      = tx_sel;
assign MON_TRG_TX_ISK  = trg_tx_isk;
assign MON_TRG_TX_DATA = trg_tx_data;
assign trg_tx_dis =1'b0;
assign tx_dly_align_mon_ena = 1'b0;
assign lay1_half_strip = LAY1_TO_6_HALF_STRIP[4:0];
assign lay2_half_strip = LAY1_TO_6_HALF_STRIP[9:5];
assign lay3_half_strip = LAY1_TO_6_HALF_STRIP[14:10];
assign lay4_half_strip = LAY1_TO_6_HALF_STRIP[19:15];
assign lay5_half_strip = LAY1_TO_6_HALF_STRIP[24:20];
assign lay6_half_strip = LAY1_TO_6_HALF_STRIP[29:25];

IBUF IBUF_TRG_SIGDET (.O(trg_sd),.I(TRG_SIGDET));
OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_TRG_TDIS (.O(TRG_TDIS),.I(trg_tx_dis));


	 (* LOC = "GTXE1_X0Y13" *)
	 TRG_TX_BUF_BYPASS #
	 (
		  .WRAPPER_SIM_GTXRESET_SPEEDUP   (SIM_SPEEDUP)      // Set this to 1 for simulation
	 )
	 trg_tx_buf_bypass_i
	 (
		  //_____________________________________________________________________
		  //_____________________________________________________________________
		  //GTX0  (X0Y13)

		  //----- Receive Ports - RX Driver,OOB signalling,Coupling and Eq.,CDR ------
		  .GTX0_RXN_IN                    (TRG_RX_N),
		  .GTX0_RXP_IN                    (TRG_RX_P),
		  //-------------- Transmit Ports - 8b10b Encoder Control Ports --------------
		  .GTX0_TXCHARISK_IN              (trg_tx_isk),
		  //---------------- Transmit Ports - TX Data Path interface -----------------
		  .GTX0_TXDATA_IN                 (trg_tx_data),
		  .GTX0_TXOUTCLK_OUT              (trg_txoutclk),
		  .GTX0_TXUSRCLK_IN               (TRG_TXUSRCLK),
		  .GTX0_TXUSRCLK2_IN              (TRG_CLK80),
		  //-------------- Transmit Ports - TX Driver and OOB signaling --------------
		  .GTX0_TXN_OUT                   (TRG_TX_N),
		  .GTX0_TXP_OUT                   (TRG_TX_P),
		  //------ Transmit Ports - TX Elastic Buffer and Phase Alignment Ports ------
		  .GTX0_TXDLYALIGNDISABLE_IN      (tx_dlyaligndisable),
		  .GTX0_TXDLYALIGNMONENB_IN       (tx_dly_align_mon_ena),
		  .GTX0_TXDLYALIGNMONITOR_OUT     (tx_dly_align_mon),
		  .GTX0_TXDLYALIGNRESET_IN        (tx_dlyalignreset),
		  .GTX0_TXENPMAPHASEALIGN_IN      (tx_enpmaphasealign),
		  .GTX0_TXPMASETPHASE_IN          (tx_pmasetphase),
		  //--------------------- Transmit Ports - TX PLL Ports ----------------------
		  .GTX0_GTXTXRESET_IN             (TRG_GTXTXRST),
		  .GTX0_MGTREFCLKTX_IN            (TRG_TX_REFCLK),
		  .GTX0_PLLTXRESET_IN             (TRG_TX_PLLRST),
		  .GTX0_TXPLLLKDET_OUT            (TRG_TX_PLL_LOCK),
		  .GTX0_TXRESETDONE_OUT           (TRG_TXRESETDONE)
	 );

	 //---------------------------- TXSYNC module ------------------------------
	 // Since you are bypassing the TX Buffer in your wrapper, you will need to drive
	 // the phase alignment ports to align the phase of the TX Datapath. Include
	 // this module in your design to have phase alignment performed automatically as
	 // it is done in the example design.


	always @(posedge TRG_CLK80 or negedge TRG_TXRESETDONE) begin
		if(!TRG_TXRESETDONE) begin
			trg_txresetdone_r  <= 1'b0;
			trg_txresetdone_r2 <= 1'b0;
		end
		else begin
			trg_txresetdone_r  <= TRG_TXRESETDONE;
			trg_txresetdone_r2 <= trg_txresetdone_r;
		end
	end
		  
	 TX_SYNC #(
		  .SIM_TXPMASETPHASE_SPEEDUP   (SIM_SPEEDUP)
	 )
	 gtx0_txsync_i (
		  .TXENPMAPHASEALIGN  (tx_enpmaphasealign),      
		  .TXPMASETPHASE      (tx_pmasetphase),
		  .TXDLYALIGNDISABLE  (tx_dlyaligndisable),
		  .TXDLYALIGNRESET    (tx_dlyalignreset),
		  .SYNC_DONE          (TX_SYNC_DONE),
		  .USER_CLK           (TRG_CLK80),
		  .RESET              (!trg_txresetdone_r2)
	 );

//
// Transmit data
//  

	assign comp_data = {G6C,G5C,G4C,G3C,G2C,G1C};
   assign out_data = ENA_TEST_PAT ? prbs : tx_mode_data;
	assign trg_tx_data = rst_tx ? 32'h50BC50BC : (tx_sel ? out_data[47:16] : {out_data[15:0],frm_sep});
	assign trg_tx_isk  = rst_tx ?  4'b0101 :     (tx_sel ?               4'b0000     :  4'b0001);

	always @* begin
		case(TMB_TX_MODE)
			3'd0: tx_mode_data = comp_data;
			3'd1: tx_mode_data = fixed_pats;
			3'd2: tx_mode_data = {6{txmode_cntr}};
			3'd3: tx_mode_data = prbs;
			3'd5: tx_mode_data = {ly2ds,ly4ds,ly6ds,ly5ds,ly1ds,ly3ds};
			default: tx_mode_data = comp_data;
		endcase
	end
	always @(posedge TRG_CLK80) begin
		rst_tx <= TRG_RST;
		LTNCY_TRIG <= lt_trg;
	end
	always @(posedge TRG_CLK80 or posedge TRG_RST) begin
		if(TRG_RST) begin
			tx_sel <= 1'b1;
			tx_sel_bar <= 1'b1;
		end
		else begin
			tx_sel <= ~tx_sel;
			tx_sel_bar <= tx_sel;
		end
	end
	always @(posedge TRG_CLK80 or posedge rst_tx) begin
		if(rst_tx) begin
			trgcnt <= 8'h00;
		end
		else begin
			trgcnt <= trgcnt + 1;
		end
	end
	always @* begin
		if(!rst_tx && (trgcnt==8'h00)) begin
			frm_sep = 16'h50FC;
			lt_trg = 1'b1;
		end
		else begin
			frm_sep = 16'h50BC;
			lt_trg = 1'b0;
		end
	end
	

//
// Test pattern reset
//  
	assign prbs_rst    = TRG_RST | p_rst1 | p_rst2 | p_rst3 | p_rst4 | p_rst5 | p_rst6 | p_rst7 | p_rst8;
	always @(posedge TRG_CLK80) begin
		if(tx_sel_bar) begin
			p_rst1 <= TRG_RST;
			p_rst2 <= p_rst1;
			p_rst3 <= p_rst2;
			p_rst4 <= p_rst3;
			p_rst5 <= p_rst4;
			p_rst6 <= p_rst5;
			p_rst7 <= p_rst6;
			p_rst8 <= p_rst7;
		end
	end

//
// TMB transmit mode counter
//
	always @(posedge TRG_CLK80 or posedge rst_tx) begin
		if(rst_tx)
			txmode_cntr <= 8'h00;
		else
			if(tx_sel_bar)
				txmode_cntr <= txmode_cntr + 1;
	end
//
// TMB transmit mode fixed patterns
//
	always @(posedge TRG_CLK80) begin
		if(tx_sel_bar)
			case(txmode_cntr[1:0])
				2'd0: fixed_pats <= 48'h000000000000;
				2'd1: fixed_pats <= 48'hAAAAAAAAAAAA;
				2'd2: fixed_pats <= 48'hFFFFFFFFFFFF;
				2'd3: fixed_pats <= 48'h555555555555;
				default: fixed_pats <= 48'h000000000000;
			endcase
	end
//
// Pseudo Random Bit Stream
//

	PRBS_tx #(.start_pattern(48'hFFFFFF000000))
	tx1 (
		.OUT_CLK_ENA(tx_sel), 
		.GEN_CLK(TRG_CLK80), 
		.RST(prbs_rst),
		.INJ_ERR(INJ_ERR),
		.PRBS(prbs),
		.STRT_LTNCY(STRT_LTNCY)
	);

//
// Synchronize pulse trigger
//
	always @(posedge TRG_CLK80) begin
		if(tx_sel_bar) begin
			trig_1 <= TRG_PULSE;
			trig_2 <= trig_1;
			trig_3 <= trig_2;
		end
	end
	assign inject_i = trig_2 & ~trig_3;

	always @(posedge TRG_CLK80) begin
		case(lay1_half_strip[4:2])
			3'd0: ly1ds <= {7'b0000000,ly1hs[2]}; 
			3'd1: ly1ds <= {6'b000000,ly1hs[2],1'b0}; 
			3'd2: ly1ds <= {5'b00000,ly1hs[2],2'b00}; 
			3'd3: ly1ds <= {4'b0000,ly1hs[2],3'b000}; 
			3'd4: ly1ds <= {3'b000,ly1hs[2],4'b0000}; 
			3'd5: ly1ds <= {2'b00,ly1hs[2],5'b00000}; 
			3'd6: ly1ds <= {1'b0,ly1hs[2],6'b000000}; 
			3'd7: ly1ds <= {ly1hs[2],7'b0000000}; 
			default: ly1ds <=8'h00;
		endcase
		case(lay2_half_strip[4:2])
			3'd0: ly2ds <= {7'b0000000,ly2hs[2]}; 
			3'd1: ly2ds <= {6'b000000,ly2hs[2],1'b0}; 
			3'd2: ly2ds <= {5'b00000,ly2hs[2],2'b00}; 
			3'd3: ly2ds <= {4'b0000,ly2hs[2],3'b000}; 
			3'd4: ly2ds <= {3'b000,ly2hs[2],4'b0000}; 
			3'd5: ly2ds <= {2'b00,ly2hs[2],5'b00000}; 
			3'd6: ly2ds <= {1'b0,ly2hs[2],6'b000000}; 
			3'd7: ly2ds <= {ly2hs[2],7'b0000000}; 
			default: ly2ds <=8'h00;
		endcase
		case(lay3_half_strip[4:2])
			3'd0: ly3ds <= {7'b0000000,ly3hs[2]}; 
			3'd1: ly3ds <= {6'b000000,ly3hs[2],1'b0}; 
			3'd2: ly3ds <= {5'b00000,ly3hs[2],2'b00}; 
			3'd3: ly3ds <= {4'b0000,ly3hs[2],3'b000}; 
			3'd4: ly3ds <= {3'b000,ly3hs[2],4'b0000}; 
			3'd5: ly3ds <= {2'b00,ly3hs[2],5'b00000}; 
			3'd6: ly3ds <= {1'b0,ly3hs[2],6'b000000}; 
			3'd7: ly3ds <= {ly3hs[2],7'b0000000}; 
			default: ly3ds <=8'h00;
		endcase
		case(lay4_half_strip[4:2])
			3'd0: ly4ds <= {7'b0000000,ly4hs[2]}; 
			3'd1: ly4ds <= {6'b000000,ly4hs[2],1'b0}; 
			3'd2: ly4ds <= {5'b00000,ly4hs[2],2'b00}; 
			3'd3: ly4ds <= {4'b0000,ly4hs[2],3'b000}; 
			3'd4: ly4ds <= {3'b000,ly4hs[2],4'b0000}; 
			3'd5: ly4ds <= {2'b00,ly4hs[2],5'b00000}; 
			3'd6: ly4ds <= {1'b0,ly4hs[2],6'b000000}; 
			3'd7: ly4ds <= {ly4hs[2],7'b0000000}; 
			default: ly4ds <=8'h00;
		endcase
		case(lay5_half_strip[4:2])
			3'd0: ly5ds <= {7'b0000000,ly5hs[2]}; 
			3'd1: ly5ds <= {6'b000000,ly5hs[2],1'b0}; 
			3'd2: ly5ds <= {5'b00000,ly5hs[2],2'b00}; 
			3'd3: ly5ds <= {4'b0000,ly5hs[2],3'b000}; 
			3'd4: ly5ds <= {3'b000,ly5hs[2],4'b0000}; 
			3'd5: ly5ds <= {2'b00,ly5hs[2],5'b00000}; 
			3'd6: ly5ds <= {1'b0,ly5hs[2],6'b000000}; 
			3'd7: ly5ds <= {ly5hs[2],7'b0000000}; 
			default: ly5ds <=8'h00;
		endcase
		case(lay6_half_strip[4:2])
			3'd0: ly6ds <= {7'b0000000,ly6hs[2]}; 
			3'd1: ly6ds <= {6'b000000,ly6hs[2],1'b0}; 
			3'd2: ly6ds <= {5'b00000,ly6hs[2],2'b00}; 
			3'd3: ly6ds <= {4'b0000,ly6hs[2],3'b000}; 
			3'd4: ly6ds <= {3'b000,ly6hs[2],4'b0000}; 
			3'd5: ly6ds <= {2'b00,ly6hs[2],5'b00000}; 
			3'd6: ly6ds <= {1'b0,ly6hs[2],6'b000000}; 
			3'd7: ly6ds <= {ly6hs[2],7'b0000000}; 
			default: ly6ds <=8'h00;
		endcase
	end
//
// TMB transmit mode half strip patterns
//
	always @(posedge TRG_CLK80) begin
		if(tx_sel_bar)
			if(inject_i)
				begin
					if(LAYER_MASK[0])
						case(lay1_half_strip[1:0])
							2'd0: ly1hs <= 3'b100;
							2'd1: ly1hs <= 3'b101;
							2'd2: ly1hs <= 3'b110;
							2'd3: ly1hs <= 3'b111;
							default: ly1hs <= 3'b000;
						endcase
					else
						ly1hs <= 3'b000;
					if(LAYER_MASK[1])
						case(lay2_half_strip[1:0])
							2'd0: ly2hs <= 3'b100;
							2'd1: ly2hs <= 3'b101;
							2'd2: ly2hs <= 3'b110;
							2'd3: ly2hs <= 3'b111;
							default: ly2hs <= 3'b000;
						endcase
					else
						ly2hs <= 3'b000;
					if(LAYER_MASK[2])
						case(lay3_half_strip[1:0])
							2'd0: ly3hs <= 3'b100;
							2'd1: ly3hs <= 3'b101;
							2'd2: ly3hs <= 3'b110;
							2'd3: ly3hs <= 3'b111;
							default: ly3hs <= 3'b000;
						endcase
					else
						ly3hs <= 3'b000;
					if(LAYER_MASK[3])
						case(lay4_half_strip[1:0])
							2'd0: ly4hs <= 3'b100;
							2'd1: ly4hs <= 3'b101;
							2'd2: ly4hs <= 3'b110;
							2'd3: ly4hs <= 3'b111;
							default: ly4hs <= 3'b000;
						endcase
					else
						ly4hs <= 3'b000;
					if(LAYER_MASK[4])
						case(lay5_half_strip[1:0])
							2'd0: ly5hs <= 3'b100;
							2'd1: ly5hs <= 3'b101;
							2'd2: ly5hs <= 3'b110;
							2'd3: ly5hs <= 3'b111;
							default: ly5hs <= 3'b000;
						endcase
					else
						ly5hs <= 3'b000;
					if(LAYER_MASK[5])
						case(lay6_half_strip[1:0])
							2'd0: ly6hs <= 3'b100;
							2'd1: ly6hs <= 3'b101;
							2'd2: ly6hs <= 3'b110;
							2'd3: ly6hs <= 3'b111;
							default: ly6hs <= 3'b000;
						endcase
					else
						ly6hs <= 3'b000;
				end
			else
				begin
					ly1hs <= {ly1hs[1:0],1'b0};
					ly2hs <= {ly2hs[1:0],1'b0};
					ly3hs <= {ly3hs[1:0],1'b0};
					ly4hs <= {ly4hs[1:0],1'b0};
					ly5hs <= {ly5hs[1:0],1'b0};
					ly6hs <= {ly6hs[1:0],1'b0};
				end
	end
endmodule
