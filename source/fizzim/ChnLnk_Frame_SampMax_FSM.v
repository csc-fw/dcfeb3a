
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2023:08:23 at 13:25:08 (www.fizzim.com)

module ChnLnk_Frame_SampMax_FSM (
  output reg CLR_CRC,
  output reg HDR,
  output reg LAST_WRD,
  output reg RD,
  output reg [6:0] SEQ,
  output reg VALID,
  output wire [3:0] FRM_STATE,
  input CLK,
  input F_MT,
  input L1A_BUF_MT,
  input RST,
  input wire [6:0] SAMP_MAX 
);

  // state bits
  parameter 
  Idle        = 4'b0000, 
  Inc_Samp    = 4'b0001, 
  Last_Word   = 4'b0010, 
  Read        = 4'b0011, 
  Snd_Hdr     = 4'b0100, 
  Strt_Sample = 4'b0101, 
  Tail        = 4'b0110, 
  Tail_End    = 4'b0111, 
  W4Data      = 4'b1000; 

  reg [3:0] state;

  assign FRM_STATE = state;

  reg [3:0] nextstate;


  reg [6:0] seqn;
  reg [6:0] smp;

  // comb always block
  always @* begin
    nextstate = 4'bxxxx; // default to x because default_state_is_x is set
    SEQ = seqn; // default
    case (state)
      Idle       : if (!L1A_BUF_MT)      nextstate = Snd_Hdr;
                   else                  nextstate = Idle;
      Inc_Samp   :                       nextstate = W4Data;
      Last_Word  :                       nextstate = Idle;
      Read       : if (seqn == 7'd95)    nextstate = Tail;
                   else                  nextstate = Read;
      Snd_Hdr    : if (seqn == 7'd3)     nextstate = W4Data;
                   else                  nextstate = Snd_Hdr;
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
      HDR <= 0;
      LAST_WRD <= 0;
      RD <= 0;
      VALID <= 0;
      seqn <= 7'h7f;
      smp <= 7'h00;
    end
    else begin
      CLR_CRC <= 0; // default
      HDR <= 0; // default
      LAST_WRD <= 0; // default
      RD <= 0; // default
      VALID <= 0; // default
      seqn <= 7'h00; // default
      smp <= smp; // default
      case (nextstate)
        Idle       : begin
                            seqn <= 7'h7f;
                            smp <= 7'h00;
        end
        Inc_Samp   :        smp <= smp + 1;
        Last_Word  :        LAST_WRD <= 1;
        Read       : begin
                            RD <= 1;
                            VALID <= 1;
                            seqn <= seqn + 1;
        end
        Snd_Hdr    : begin
                            HDR <= 1;
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
      Snd_Hdr    : statename = "Snd_Hdr";
      Strt_Sample: statename = "Strt_Sample";
      Tail       : statename = "Tail";
      Tail_End   : statename = "Tail_End";
      W4Data     : statename = "W4Data";
      default    : statename = "XXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

