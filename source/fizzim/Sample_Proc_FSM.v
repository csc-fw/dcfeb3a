
// Created by fizzim.pl version 4.41 on 2013:06:11 at 19:41:48 (www.fizzim.com)

module Sample_Proc_FSM (
  output reg CE,
  output reg CLR_CRC,
  output reg INC_SEQ,
  output reg INC_SMP,
  output reg LAST_WRD,
  output reg LD_L1A_H,
  output reg LD_L1A_L,
  output reg RD,
  output reg RST_SEQ,
  output reg RST_SMP,
  output reg VALID,
  output wire [3:0] SMP_STATE,
  input CLK,
  input FAMT,
  input L1A_BUF_MT,
  input L1A_HEAD,
  input RST,
  input wire [6:0] SAMP_MAX,
  input wire [6:0] SEQ,
  input wire [6:0] SMP,
  input TXACK 
);
  
  // state bits
  parameter 
  Idle        = 4'b0000, 
  Inc_Samp    = 4'b0001, 
  Last_Word   = 4'b0010, 
  Ld_L1A_High = 4'b0011, 
  Ld_L1A_Low  = 4'b0100, 
  Read        = 4'b0101, 
  St_Data     = 4'b0110, 
  Tail        = 4'b0111, 
  W4Data      = 4'b1000, 
  W4TXACK     = 4'b1001; 
  
  reg [3:0] state;
  assign SMP_STATE = state;
  reg [3:0] nextstate;
  
  // comb always block
  always @* begin
    nextstate = 4'bxxxx; // default to x because default_state_is_x is set
    CE = 1; // default
    CLR_CRC = 0; // default
    INC_SEQ = 0; // default
    INC_SMP = 0; // default
    LAST_WRD = 0; // default
    LD_L1A_H = 0; // default
    LD_L1A_L = 0; // default
    RD = 0; // default
    RST_SEQ = 0; // default
    RST_SMP = 0; // default
    VALID = 0; // default
    case (state)
      Idle       : begin
                                              RST_SEQ = 1;
                                              RST_SMP = 1;
        if      (!L1A_BUF_MT)                 nextstate = W4Data;
        else                                  nextstate = Idle;
      end
      Inc_Samp   : begin
                                              CLR_CRC = 1;
                                              INC_SMP = 1;
                                              RST_SEQ = 1;
                                              VALID = 1;
        if      (SMP == SAMP_MAX)             nextstate = Last_Word;
        else                                  nextstate = Read;
      end
      Last_Word  : begin
                                              LAST_WRD = 1;
                                              nextstate = Idle;
      end
      Ld_L1A_High: begin
                                              CLR_CRC = 1;
                                              LD_L1A_H = 1;
                                              nextstate = Ld_L1A_Low;
      end
      Ld_L1A_Low : begin
                                              CLR_CRC = 1;
                                              LD_L1A_L = 1;
                                              nextstate = St_Data;
      end
      Read       : begin
                                              INC_SEQ = 1;
                                              RD = 1;
                                              VALID = 1;
        if      (SEQ == 7'd95)                nextstate = Tail;
        else                                  nextstate = Read;
      end
      St_Data    : begin
                                              INC_SEQ = 1;
                                              RD = 1;
                                              VALID = 1;
        if      (L1A_HEAD)                    nextstate = W4TXACK;
        else if (!L1A_HEAD && (SEQ == 7'd2))  nextstate = W4TXACK;
        else                                  nextstate = St_Data;
      end
      Tail       : begin
                                              INC_SEQ = 1;
                                              VALID = 1;
        if      (SEQ == 7'd98)                nextstate = Inc_Samp;
        else                                  nextstate = Tail;
      end
      W4Data     : begin
                                              CLR_CRC = 1;
        if      (!FAMT && L1A_HEAD)           nextstate = Ld_L1A_High;
        else if (!FAMT && !L1A_HEAD)          nextstate = St_Data;
        else                                  nextstate = W4Data;
      end
      W4TXACK    : begin
                                              CE = TXACK;
                                              INC_SEQ = TXACK;
                                              RD = TXACK;
                                              VALID = 1;
        if      (TXACK)                       nextstate = Read;
        else                                  nextstate = W4TXACK;
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
  reg [87:0] statename;
  always @* begin
    case (state)
      Idle       : statename = "Idle";
      Inc_Samp   : statename = "Inc_Samp";
      Last_Word  : statename = "Last_Word";
      Ld_L1A_High: statename = "Ld_L1A_High";
      Ld_L1A_Low : statename = "Ld_L1A_Low";
      Read       : statename = "Read";
      St_Data    : statename = "St_Data";
      Tail       : statename = "Tail";
      W4Data     : statename = "W4Data";
      W4TXACK    : statename = "W4TXACK";
      default    : statename = "XXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

