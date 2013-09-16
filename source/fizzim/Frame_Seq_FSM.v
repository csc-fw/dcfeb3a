
// Created by fizzim.pl version 4.41 on 2012:11:07 at 12:14:03 (www.fizzim.com)

module Frame_Seq_FSM (
  output reg CLR_CRC,
  output reg INC_SEQ,
  output reg INC_SMP,
  output reg LAST_WRD,
  output reg RD,
  output reg RST_SEQ,
  output reg RST_SMP,
  output reg VALID,
  output wire [2:0] FRM_STATE,
  input CLK,
  input FAMT,
  input L1A_BUF_MT,
  input RST,
  input wire [6:0] SAMP_MAX,
  input wire [6:0] SEQ,
  input wire [6:0] SMP 
);
  
  // state bits
  parameter 
  Idle      = 3'b000, 
  Inc_Samp  = 3'b001, 
  Last_Word = 3'b010, 
  Read      = 3'b011, 
  Tail      = 3'b100, 
  W4Data    = 3'b101; 
  
  reg [2:0] state;
  assign FRM_STATE = state;
  reg [2:0] nextstate;
  
  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    CLR_CRC = 0; // default
    INC_SEQ = 0; // default
    INC_SMP = 0; // default
    LAST_WRD = 0; // default
    RD = 0; // default
    RST_SEQ = 0; // default
    RST_SMP = 0; // default
    VALID = 0; // default
    case (state)
      Idle     : begin
                              RST_SEQ = 1;
                              RST_SMP = 1;
        if (!L1A_BUF_MT)      nextstate = W4Data;
        else                  nextstate = Idle;
      end
      Inc_Samp : begin
                              CLR_CRC = 1;
                              INC_SMP = 1;
                              RST_SEQ = 1;
        if (SMP == SAMP_MAX)  nextstate = Last_Word;
        else                  nextstate = Read;
      end
      Last_Word: begin
                              LAST_WRD = 1;
                              nextstate = Idle;
      end
      Read     : begin
                              INC_SEQ = 1;
                              RD = 1;
                              VALID = 1;
        if (SEQ == 7'd95)     nextstate = Tail;
        else                  nextstate = Read;
      end
      Tail     : begin
                              INC_SEQ = 1;
                              VALID = 1;
        if (SEQ == 7'd99)     nextstate = Inc_Samp;
        else                  nextstate = Tail;
      end
      W4Data   : begin
                              CLR_CRC = 1;
        if (!FAMT)            nextstate = Read;
        else                  nextstate = W4Data;
      end
    endcase
  end
  
  // Assign reg'd outputs to state bits
  
  // sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST)
      state <= Idle;
    else
      state <= nextstate;
  end
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [71:0] statename;
  always @* begin
    case (state)
      Idle     : statename = "Idle";
      Inc_Samp : statename = "Inc_Samp";
      Last_Word: statename = "Last_Word";
      Read     : statename = "Read";
      Tail     : statename = "Tail";
      W4Data   : statename = "W4Data";
      default  : statename = "XXXXXXXXX";
    endcase
  end
  `endif

endmodule

