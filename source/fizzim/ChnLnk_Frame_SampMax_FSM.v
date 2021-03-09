
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2021:03:08 at 16:51:24 (www.fizzim.com)

module ChnLnk_Frame_SampMax_FSM (
  output reg CLR_CRC,
  output reg LAST_WRD,
  output reg RD,
  output reg [6:0] SEQ,
  output reg VALID,
  output wire [2:0] FRM_STATE,
  input CLK,
  input F_MT,
  input L1A_BUF_MT,
  input RST,
  input wire [6:0] SAMP_MAX 
);

  // state bits
  parameter 
  Idle        = 3'b000, 
  Inc_Samp    = 3'b001, 
  Last_Word   = 3'b010, 
  Read        = 3'b011, 
  Strt_Sample = 3'b100, 
  Tail        = 3'b101, 
  Tail_End    = 3'b110, 
  W4Data      = 3'b111; 

  reg [2:0] state;

  assign FRM_STATE = state;

  reg [2:0] nextstate;


  reg [6:0] seqn;
  reg [6:0] smp;

  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    SEQ = seqn; // default
    case (state)
      Idle       : if (!L1A_BUF_MT)      nextstate = W4Data;
                   else                  nextstate = Idle;
      Inc_Samp   :                       nextstate = W4Data;
      Last_Word  :                       nextstate = Idle;
      Read       : if (seqn == 7'd95)    nextstate = Tail;
                   else                  nextstate = Read;
      Strt_Sample:                       nextstate = Read;
      Tail       : if (seqn == 7'd98)    nextstate = Tail_End;
                   else                  nextstate = Tail;
      Tail_End   : if (smp == SAMP_MAX)  nextstate = Last_Word;
                   else                  nextstate = Inc_Samp;
      W4Data     : if (!F_MT)            nextstate = Strt_Sample;
                   else                  nextstate = W4Data;
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

  // datapath sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      CLR_CRC <= 0;
      LAST_WRD <= 0;
      RD <= 0;
      VALID <= 0;
      seqn <= 7'h00;
      smp <= 7'h00;
    end
    else begin
      CLR_CRC <= 0; // default
      LAST_WRD <= 0; // default
      RD <= 0; // default
      VALID <= 0; // default
      seqn <= 7'h00; // default
      smp <= smp; // default
      case (nextstate)
        Idle       :        smp <= 7'h00;
        Inc_Samp   :        smp <= smp + 1;
        Last_Word  :        LAST_WRD <= 1;
        Read       : begin
                            RD <= 1;
                            VALID <= 1;
                            seqn <= seqn + 1;
        end
        Strt_Sample: begin
                            RD <= 1;
                            VALID <= 1;
        end
        Tail       : begin
                            VALID <= 1;
                            seqn <= seqn + 1;
        end
        Tail_End   : begin
                            VALID <= 1;
                            seqn <= seqn + 1;
        end
        W4Data     :        CLR_CRC <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [87:0] statename;
  always @* begin
    case (state)
      Idle       : statename = "Idle";
      Inc_Samp   : statename = "Inc_Samp";
      Last_Word  : statename = "Last_Word";
      Read       : statename = "Read";
      Strt_Sample: statename = "Strt_Sample";
      Tail       : statename = "Tail";
      Tail_End   : statename = "Tail_End";
      W4Data     : statename = "W4Data";
      default    : statename = "XXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

