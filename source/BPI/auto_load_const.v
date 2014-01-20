`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:41:25 12/30/2013 
// Design Name: 
// Module Name:    auto_load_const 
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
module auto_load_const(
    input CLK,
    input RST,
    input BUSY,
    input AL_START,
    input AL_DONE,
    output [22:0] AL_ADDR,
    output [15:0] AL_CMD_DATA_OUT,
    output [1:0] AL_OP,
    output AL_EXECUTE,
    output AUTO_LOAD_ENA,
    output CLR_AL_DONE,
    output reg [5:0] AL_CNT,
    output reg [2:0] AL_STATUS
    );

localparam Read_Array_Cmd = 16'h00FF;

wire rst_addr;
wire addr_rst;
wire inc_addr;
wire [22:0] base_addr;
reg [5:0] addr_offset;
wire al_aborted;
wire al_completed;

assign addr_rst = rst_addr || RST;
assign base_addr = 23'h7FC000; //Last parameter block 0x7FC000
assign AL_ADDR = {base_addr[22:6],addr_offset};
assign AL_CMD_DATA_OUT = Read_Array_Cmd;
assign AL_OP = 2'b10;

always @(posedge CLK or posedge addr_rst) begin
	if(addr_rst)
		addr_offset <= 6'h00;
	else
		if(inc_addr)
			addr_offset <= addr_offset + 1;
		else
			addr_offset <= addr_offset;
end

always @(posedge CLK or posedge addr_rst) begin
	if(addr_rst)
		AL_CNT <= 6'h00;
	else
		if(inc_addr)
			AL_CNT <= addr_offset;
		else
			AL_CNT <= AL_CNT;
end

always @(posedge CLK or posedge RST) begin
	if(RST)
		AL_STATUS <= 3'b000;
	else
		if(CLR_AL_DONE)
			AL_STATUS <= {AL_STATUS[2:1],1'b1};
		else if(al_completed)
			AL_STATUS <= {AL_STATUS[2],1'b1,AL_STATUS[0]};
		else if(al_aborted)
			AL_STATUS <= {1'b1,AL_STATUS[1:0]};
		else
			AL_STATUS <= AL_STATUS;
end


	auto_load_FSM 
	auto_load_FSM_i(
  .ABORTED(al_aborted),
  .AL_ENA(AUTO_LOAD_ENA),
  .CLR_AL_DONE(CLR_AL_DONE),
  .COMPLETED(al_completed),
  .EXECUTE(AL_EXECUTE),
  .INC(inc_addr),
  .RST_ADDR(rst_addr),
  .ADDR(addr_offset),
  .AL_DONE(AL_DONE),
  .BUSY(BUSY),
  .CLK(CLK),
  .RST(RST),
  .START(AL_START)
);
  

endmodule
