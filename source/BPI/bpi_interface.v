`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:10:16 03/09/2011 
// Design Name: 
// Module Name:    bpi_interface 
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
module bpi_interface(
    input CLK,
	 input CLK1MHZ,
	 input RST,
    input [22:0] ADDR,         //Bank/Array Address 
    input [15:0] CMD_DATA_OUT, //Command or Data being written to FLASH device
	 input [1:0]  OP,           //Operation: 00-standby, 01-write, 10-read, 11-not allowed(standby)
	 input EXECUTE,
    output [15:0] DATA_IN,      //Data read from FLASH device
    output LOAD_DATA,           //Clock enable signal for capturing Data read from FLASH device
	 output BUSY,                //Operation in progress signal (not ready)
	// signals for LED'S after programing
	 input BPI_ACTIVE,
	 input [15:0] DCFEB_STATUS,
	 // external connections
    inout [22:0] BPI_AD,
    inout [15:0] CFG_DAT,
    output RS0,
    output RS1,
    output FCS_B,
    output FOE_B,
    output FWE_B,
    output FLATCH_B,
	 output [2:0] TMROUT,
	 output CLK100KHZ
    );

  wire [22:0] bpi_ad_in;
  reg  [22:0] bpi_ad_out_r;
  wire [22:0] bpi_dir;
  wire [15:0] data_dir;
  reg  [15:0] data_out_r;
  wire [15:0] data_out_i;
  wire rs0_out;
  wire rs1_out;
  wire fcs,foe,fwe,flatch_addr;
  reg read;
  reg write;
  wire capture;
  wire [15:0] leds_out;
  wire clk100k;
  wire q15;
 
reg [63:0] ram0 [31:0];
wire [63:0] duty_cycle;
wire [3:0] dc [15:0];
reg [7:0] cycle_pat [15:0];
reg [7:0] cycle [15:0];
reg [4:0] raddr;
reg [15:0] tmr;
reg [3:0] passes;
wire display;
wire load_pat;
wire stop;

assign CLK100KHZ = clk100k;
assign TMROUT = tmr[2:0];

initial begin
	$readmemh ("LED_ram_contents", ram0, 0, 31);
end
  

  IOBUF #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) IOBUF_BPI_AD[22:0] (.O(bpi_ad_in),.IO(BPI_AD),.I(bpi_ad_out_r),.T(bpi_dir));
  IOBUF #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) IOBUF_CFG_DAT[15:0] (.O(DATA_IN),.IO(CFG_DAT),.I(data_out_i),.T(data_dir));
  OBUFT  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_RS0 (.O(RS0),.I(rs0_out),.T(1'b1)); //always tri-state for after programming finishes
  OBUFT  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_RS1 (.O(RS1),.I(rs1_out),.T(1'b1)); //always tri-state for after programming finishes
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_FCS_B (.O(FCS_B),.I(~fcs));
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_FOE_B (.O(FOE_B),.I(~foe));
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_FWE_B (.O(FWE_B),.I(~fwe));
  OBUF  #(.DRIVE(12),.IOSTANDARD("DEFAULT"),.SLEW("SLOW")) OBUF_FLATCH (.O(FLATCH_B),.I(~flatch_addr));

assign bpi_dir    = 23'h000000;  // always output the address lines
assign data_dir   = {16{foe}};   //Tristat fpga data outputs when the flash is output enable (foe)
assign rs0_out    = 1'b0;
assign rs1_out    = 1'b0;
assign leds_out   = display ? {cycle[15][0],cycle[14][0],cycle[13][0],cycle[12][0],cycle[11][0],cycle[10][0],cycle[9][0],cycle[8][0],cycle[7][0],cycle[6][0],cycle[5][0],cycle[4][0],cycle[3][0],cycle[2][0],cycle[1][0],cycle[0][0]} : DCFEB_STATUS;  // can be assigned to user defined signals after programming
assign duty_cycle = ram0[raddr];
assign {dc[15],dc[14],dc[13],dc[12],dc[11],dc[10],dc[9],dc[8],dc[7],dc[6],dc[5],dc[4],dc[3],dc[2],dc[1],dc[0]} = duty_cycle;
assign stop       = (passes == 4'h3);
assign data_out_i = (fcs | BPI_ACTIVE) ? data_out_r : leds_out;

always @(posedge CLK)
begin
	if(capture) begin
		bpi_ad_out_r   <= ADDR[22:0];
		data_out_r     <= CMD_DATA_OUT;
		write          <= OP[0];
		read           <= OP[1];
	end
end
  
BPI_intrf_FSM 
BPI_intrf_FSM1(
	.BUSY(BUSY),
	.CAP(capture),
	.E(fcs),
	.G(foe),
	.L(flatch_addr),
	.LOAD(LOAD_DATA),
	.W(fwe),
	.CLK(CLK),
	.EXECUTE(EXECUTE),
	.READ(read),
	.RST(RST),
	.WRITE(write)
);

genvar ch;
generate
	for(ch=0;ch<16;ch=ch+1) begin : decode_duty_cycle
		always @* begin
			case(dc[ch])
				4'h0: cycle_pat[ch] <= 8'b00000000;
				4'h1: cycle_pat[ch] <= 8'b00000001;
				4'h2: cycle_pat[ch] <= 8'b00000011;
				4'h3: cycle_pat[ch] <= 8'b00000111;
				4'h4: cycle_pat[ch] <= 8'b00001111;
				4'h5: cycle_pat[ch] <= 8'b00011111;
				4'h6: cycle_pat[ch] <= 8'b00111111;
				4'h7: cycle_pat[ch] <= 8'b01111111;
				default: cycle_pat[ch] <= 8'b11111111;
			endcase
		end
		always @(posedge CLK) begin
			if(load_pat)
				cycle[ch] <= cycle_pat[ch];
			else
				cycle[ch] <= {cycle[ch][6:0],cycle[ch][7]};
		end
	end
endgenerate

   SRLC16E #(.INIT(16'hFFFF)) // 1MHz clock divided by 10, 100KHz clock 10. uSec period.
	SRLC16E_clk100k_inst (
      .Q(clk100k),     // SRL data output
      .Q15(q15), // SRL cascade output pin
      .A0(1'b0),     // Select[0] input (output at 5 clocks)
      .A1(1'b0),     // Select[1] input
      .A2(1'b1),     // Select[2] input
      .A3(1'b0),     // Select[3] input
      .CE(1'b1),   // Clock enable input
      .CLK(CLK1MHZ), // Clock input
      .D(~clk100k)      // SRL data input
   );


always @(posedge clk100k or posedge rst_tmr) begin
	if(rst_tmr)
		tmr <= 16'h0000;
	else
		tmr <= tmr + 1;
end
always @(posedge CLK or posedge RST) begin
	if(RST)
		raddr <= 5'h00;
	else
		if(clear)
			raddr <= 5'h00;
		else if(nxt_adr)
			raddr <= raddr + 1;
		else
			raddr <= raddr;
end
always @(posedge CLK or posedge RST) begin
	if(RST)
		passes <= 4'h0;
	else
		if(load_pat && (raddr == 5'h1F))
			passes <= passes + 1;
		else
			passes <= passes;
end

Startup_Display 
Startup_Display_FSM(
  .CLEAR(clear),
  .DISP(display),
  .LOAD_PAT(load_pat),
  .NXT_ADR(nxt_adr),
  .RST_TMR(rst_tmr),
  .CLK(CLK),
  .DONE(stop),
  .RST(RST),
  .TMR(tmr)
);
endmodule
