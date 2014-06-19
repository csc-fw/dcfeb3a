`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:02:03 06/02/2011 
// Design Name: 
// Module Name:    xfer2fifo 
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
module xfer2ringbuf #(
	parameter USE_CHIPSCOPE = 1
	)(
	 inout [35:0] LA_CNTRL,
    input CLK,
    input RST,
    input JTAG_MODE,
    input J_RD_FIFO,
    input [191:0] DIN_16CH,
    input RDY,
    input [15:0] F16_MT,
	 input TRIG_IN,
	 output TRIG_OUT,
    output reg [15:0] RD_ENA,
	 output L1A_RD_EN,
	 output reg WREN,
	 output reg [11:0] DMUX
    );

// signals for FIFO1 (16 channel FIFO)
	wire re;
	reg re_1;
	reg [3:0]rd_sel;
	reg [3:0]rd_sel_1;
	reg [2:0] chip;
	reg [1:0] cnt;
	wire [2:0] xstate;
	wire inc_chip;
	wire inc_chan;
	wire inc_cnt;
	wire rst_chip;
	wire rst_chan;
	wire rst_cnt;
	wire xfer_done;
	
generate
if(USE_CHIPSCOPE==1) 
begin : chipscope_xfer2ring
//
// Logic analyzer for readout FIFO
wire [121:0] xfer2ring_la_data;
wire [11:0] xfer2ring_la_trig;

xfer2ring_la xfer2ring_la_i (
    .CONTROL(LA_CNTRL),
    .CLK(CLK),
    .DATA(xfer2ring_la_data),  // IN BUS [121:0]
    .TRIG0(xfer2ring_la_trig),  // IN BUS [11:0]
    .TRIG_OUT(TRIG_OUT) // OUT
);
		

// LA Data [121:0]
	assign xfer2ring_la_data[11:0]   = DIN_16CH[11:0];    //channel 0 data
	assign xfer2ring_la_data[23:12]  = DIN_16CH[23:12];   //channel 1 data
	assign xfer2ring_la_data[35:24]  = DIN_16CH[107:96];  //channel 8 data
	assign xfer2ring_la_data[47:36]  = DIN_16CH[119:108]; //channel 9 data
	assign xfer2ring_la_data[63:48]  = F16_MT;
	assign xfer2ring_la_data[79:64]  = RD_ENA;
	assign xfer2ring_la_data[91:80]  = DMUX;
	assign xfer2ring_la_data[95:92]  = rd_sel;
	assign xfer2ring_la_data[98:96]  = chip;
	assign xfer2ring_la_data[100:99] = cnt;
	assign xfer2ring_la_data[103:101]= xstate;
	assign xfer2ring_la_data[104]    = RDY;
	assign xfer2ring_la_data[105]    = L1A_RD_EN;
	assign xfer2ring_la_data[106]    = WREN;
	assign xfer2ring_la_data[107]    = re;
	assign xfer2ring_la_data[108]    = inc_chip;
	assign xfer2ring_la_data[109]    = inc_chan;
	assign xfer2ring_la_data[110]    = inc_cnt;
	assign xfer2ring_la_data[111]    = rst_chip;
	assign xfer2ring_la_data[112]    = rst_chan;
	assign xfer2ring_la_data[113]    = rst_cnt;
	assign xfer2ring_la_data[114]    = xfer_done;
	assign xfer2ring_la_data[115]    = TRIG_IN;
	assign xfer2ring_la_data[116]    = TRIG_OUT;
	assign xfer2ring_la_data[117]    = re_1;
	assign xfer2ring_la_data[121:118]= rd_sel_1;

// LA Trigger [11:0]
	assign xfer2ring_la_trig[2:0]    = xstate;
	assign xfer2ring_la_trig[3]      = F16_MT[0];
	assign xfer2ring_la_trig[4]      = F16_MT[1];
	assign xfer2ring_la_trig[5]      = F16_MT[8];
	assign xfer2ring_la_trig[6]      = F16_MT[9];
	assign xfer2ring_la_trig[7]      = RDY;
	assign xfer2ring_la_trig[8]      = L1A_RD_EN;
	assign xfer2ring_la_trig[9]      = re;
	assign xfer2ring_la_trig[10]     = xfer_done;
	assign xfer2ring_la_trig[11]     = TRIG_IN;
	
end
else
begin
	assign TRIG_OUT = 0;
end
endgenerate


	always @(posedge CLK) begin
		re_1 <= re;
		WREN <= re_1;
		rd_sel_1 <= rd_sel;
	end

	always @(posedge CLK) begin
	   if(JTAG_MODE)
		   RD_ENA <= {{16{J_RD_FIFO}}};
		else
			case (rd_sel)
				4'h0: RD_ENA <= {15'h0000,re};
				4'h1: RD_ENA <= {14'h0000,re,1'h0};
				4'h2: RD_ENA <= {13'h0000,re,2'h0};
				4'h3: RD_ENA <= {12'h000,re,3'h0};
				4'h4: RD_ENA <= {11'h000,re,4'h0};
				4'h5: RD_ENA <= {10'h000,re,5'h00};
				4'h6: RD_ENA <= {9'h000,re,6'h00};
				4'h7: RD_ENA <= {8'h00,re,7'h00};
				4'h8: RD_ENA <= {7'h00,re,8'h00};
				4'h9: RD_ENA <= {6'h00,re,9'h000};
				4'hA: RD_ENA <= {5'h00,re,10'h000};
				4'hB: RD_ENA <= {4'h0,re,11'h000};
				4'hC: RD_ENA <= {3'h0,re,12'h000};
				4'hD: RD_ENA <= {2'h0,re,13'h0000};
				4'hE: RD_ENA <= {1'h0,re,14'h0000};
				4'hF: RD_ENA <= {re,15'h0000};
				default: RD_ENA <= 0;
			endcase
	end
	
	always @(posedge CLK) begin
		case (rd_sel_1)
			4'h0: DMUX <= DIN_16CH[11:0];
			4'h1: DMUX <= DIN_16CH[23:12];
			4'h2: DMUX <= DIN_16CH[35:24];
			4'h3: DMUX <= DIN_16CH[47:36];
			4'h4: DMUX <= DIN_16CH[59:48];
			4'h5: DMUX <= DIN_16CH[71:60];
			4'h6: DMUX <= DIN_16CH[83:72];
			4'h7: DMUX <= DIN_16CH[95:84];
			4'h8: DMUX <= DIN_16CH[107:96];
			4'h9: DMUX <= DIN_16CH[119:108];
			4'hA: DMUX <= DIN_16CH[131:120];
			4'hB: DMUX <= DIN_16CH[143:132];
			4'hC: DMUX <= DIN_16CH[155:144];
			4'hD: DMUX <= DIN_16CH[167:156];
			4'hE: DMUX <= DIN_16CH[179:168];
			4'hF: DMUX <= DIN_16CH[191:180];
			default: DMUX <= 0;
		endcase
	end
	
	always @(posedge CLK or posedge RST) begin
	   if(RST)
			cnt <= 2'b00;
		else
			if(rst_cnt)
				cnt <= 2'b00;
			else if(inc_cnt)
			   cnt <= cnt +1;
			else
			   cnt <= cnt;
	end
	
	always @(posedge CLK or posedge RST) begin
	   if(RST)
			chip <= 3'h0;
		else
			if(chip == 3'h5 || rst_chip)
				chip <= 3'h0;
			else if(inc_chip)
			   chip <= chip +1;
			else
			   chip <= chip;
	end

	always @(posedge CLK or posedge RST) begin
	   if(RST)
			rd_sel <= 4'h0;
		else
			if(rst_chan)
				rd_sel <= 3'h0;
			else if(inc_chan)
			   rd_sel <= rd_sel +1;
			else
			   rd_sel <= rd_sel;
	end

transfer_samples_FSM 
transfer_samples_FSM_i(
  .DONE(xfer_done),
  .INC_CHAN(inc_chan),
  .INC_CHIP(inc_chip),
  .INC_CNT(inc_cnt),
  .L1A_RD_EN(L1A_RD_EN),
  .RDENA(re),
  .RST_CHAN(rst_chan),
  .RST_CHIP(rst_chip),
  .RST_CNT(rst_cnt),
  .XSTATE(xstate),
  .CLK(CLK),
  .JTAG_MODE(JTAG_MODE),
  .RDY(RDY),
  .RST(RST),
  .CNT(cnt),
  .CHIP(chip),
  .CHAN(rd_sel)
);
  

endmodule
