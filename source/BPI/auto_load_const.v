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
module auto_load_const #(
	parameter TMR = 0,
	parameter TMR_Err_Det = 0
)
(
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
    output wire [5:0] AL_CNT,
    output [2:0] AL_STATUS
    );

localparam Read_Array_Cmd = 16'h00FF;

wire [22:0] base_addr;
wire al_aborted;
wire al_completed;

assign base_addr = 23'h7FC000; //Last parameter block 0x7FC000
assign AL_ADDR = {base_addr[22:6],AL_CNT};
assign AL_CMD_DATA_OUT = Read_Array_Cmd;
assign AL_OP = 2'b10;



generate
if(TMR==1) 
begin : BPI_intrf_FSM_TMR

	(* syn_preserve = "true" *) reg [2:0] al_status_r_1;
	(* syn_preserve = "true" *) reg [2:0] al_status_r_2;
	(* syn_preserve = "true" *) reg [2:0] al_status_r_3;
	
	(* syn_keep = "true" *) wire [2:0] vt_al_status_r_1;
	(* syn_keep = "true" *) wire [2:0] vt_al_status_r_2;
	(* syn_keep = "true" *) wire [2:0] vt_al_status_r_3;
	
	assign vt_al_status_r_1 = (al_status_r_1 & al_status_r_2) | (al_status_r_2 & al_status_r_3) | (al_status_r_1 & al_status_r_3); // Majority logic
	assign vt_al_status_r_2 = (al_status_r_1 & al_status_r_2) | (al_status_r_2 & al_status_r_3) | (al_status_r_1 & al_status_r_3); // Majority logic
	assign vt_al_status_r_3 = (al_status_r_1 & al_status_r_2) | (al_status_r_2 & al_status_r_3) | (al_status_r_1 & al_status_r_3); // Majority logic
	
	always @(posedge CLK or posedge RST) begin
		if(RST) begin
			al_status_r_1 <= 3'b000;
			al_status_r_2 <= 3'b000;
			al_status_r_3 <= 3'b000;
		end
		else 
			if(CLR_AL_DONE) begin
				al_status_r_1 <= {vt_al_status_r_1[2:1],1'b1};
				al_status_r_2 <= {vt_al_status_r_2[2:1],1'b1};
				al_status_r_3 <= {vt_al_status_r_3[2:1],1'b1};
			end
			else if(AL_DONE) begin
				al_status_r_1 <= {1'b1,vt_al_status_r_1[1:0]};
				al_status_r_2 <= {1'b1,vt_al_status_r_2[1:0]};
				al_status_r_3 <= {1'b1,vt_al_status_r_3[1:0]};
			end
			else if(al_completed) begin
				al_status_r_1 <= {vt_al_status_r_1[2],1'b1,vt_al_status_r_1[0]};
				al_status_r_2 <= {vt_al_status_r_2[2],1'b1,vt_al_status_r_2[0]};
				al_status_r_3 <= {vt_al_status_r_3[2],1'b1,vt_al_status_r_3[0]};
			end
			else if(al_aborted) begin
				al_status_r_1 <= 3'b100;
				al_status_r_2 <= 3'b100;
				al_status_r_3 <= 3'b100;
			end
			else begin
				al_status_r_1 <= vt_al_status_r_1;
				al_status_r_2 <= vt_al_status_r_2;
				al_status_r_3 <= vt_al_status_r_3;
			end
	end
	
	auto_load_FSM_TMR #(.MAX_ADDR(6'd33))
	auto_load_FSM_i(
	  .AL_CNT(AL_CNT),
	  .ABORTED(al_aborted),
	  .AL_ENA(AUTO_LOAD_ENA),
	  .CLR_AL_DONE(CLR_AL_DONE),
	  .COMPLETED(al_completed),
	  .EXECUTE(AL_EXECUTE),
	  .AL_DONE(AL_DONE),
	  .BUSY(BUSY),
	  .CLK(CLK),
	  .RST(RST),
	  .START(AL_START)
	);
	
	assign AL_STATUS = vt_al_status_r_1;
	
end
else 
begin : BPI_intrf_FSM

	reg [2:0] al_status_r;
	
	always @(posedge CLK or posedge RST) begin
		if(RST)
			al_status_r <= 3'b000;
		else
			if(CLR_AL_DONE)
				al_status_r <= {al_status_r[2:1],1'b1};
			else if(AL_DONE)
				al_status_r <= {1'b1,al_status_r[1:0]};
			else if(al_completed)
				al_status_r <= {al_status_r[2],1'b1,al_status_r[0]};
			else if(al_aborted)
				al_status_r <= 3'b100;
			else
				al_status_r <= al_status_r;
	end
	
	auto_load_FSM #(.MAX_ADDR(6'd33))
	auto_load_FSM_i(
	  .AL_CNT(AL_CNT),
	  .ABORTED(al_aborted),
	  .AL_ENA(AUTO_LOAD_ENA),
	  .CLR_AL_DONE(CLR_AL_DONE),
	  .COMPLETED(al_completed),
	  .EXECUTE(AL_EXECUTE),
	  .AL_DONE(AL_DONE),
	  .BUSY(BUSY),
	  .CLK(CLK),
	  .RST(RST),
	  .START(AL_START)
	);
	
	assign AL_STATUS = al_status_r;
	
end
endgenerate

endmodule
