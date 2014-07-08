
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:07:08 at 14:46:30 (www.fizzim.com)

module Ring_Trans_FSM (
  output INC_SEQ,
  output INC_SMP,
  output LD_ADDR,
  output NXT_L1A,
  output RD,
  output RST_SEQ,
  output RST_SMP,
  output wire [2:0] EVT_STATE,
  input CLK,
  input EVT_BUF_AFL,
  input EVT_BUF_AMT,
  input L1A_BUF_MT,
  input RING_AMT,
  input RST,
  input wire [6:0] SAMP_MAX,
  input wire [6:0] SEQ,
  input wire [6:0] SMP 
);

  // state bits
  parameter 
  Idle       = 3'b000, 
  Inc_Samp   = 3'b001, 
  Load_Addr  = 3'b010, 
  Next_L1a   = 3'b011, 
  Read       = 3'b100, 
  W4Data     = 3'b101, 
  W4_EVT_AMT = 3'b110; 

  (* syn_preserve = "true" *) reg [2:0] state_1;
  (* syn_preserve = "true" *) reg [2:0] state_2;
  (* syn_preserve = "true" *) reg [2:0] state_3;

  (* syn_keep = "true" *) wire [2:0] voted_state_1;
  (* syn_keep = "true" *) wire [2:0] voted_state_2;
  (* syn_keep = "true" *) wire [2:0] voted_state_3;

  assign voted_state_1 = (state_1   & state_2  ) | (state_2   & state_3  ) | (state_1   & state_3  ); // Majority logic
  assign voted_state_2 = (state_1   & state_2  ) | (state_2   & state_3  ) | (state_1   & state_3  ); // Majority logic
  assign voted_state_3 = (state_1   & state_2  ) | (state_2   & state_3  ) | (state_1   & state_3  ); // Majority logic

  assign EVT_STATE = voted_state_1;

  (* syn_keep = "true" *) reg [2:0] nextstate_1;
  (* syn_keep = "true" *) reg [2:0] nextstate_2;
  (* syn_keep = "true" *) reg [2:0] nextstate_3;

  (* syn_preserve = "true" *)  reg INC_SEQ_1;
  (* syn_preserve = "true" *)  reg INC_SEQ_2;
  (* syn_preserve = "true" *)  reg INC_SEQ_3;
  (* syn_preserve = "true" *)  reg INC_SMP_1;
  (* syn_preserve = "true" *)  reg INC_SMP_2;
  (* syn_preserve = "true" *)  reg INC_SMP_3;
  (* syn_preserve = "true" *)  reg LD_ADDR_1;
  (* syn_preserve = "true" *)  reg LD_ADDR_2;
  (* syn_preserve = "true" *)  reg LD_ADDR_3;
  (* syn_preserve = "true" *)  reg NXT_L1A_1;
  (* syn_preserve = "true" *)  reg NXT_L1A_2;
  (* syn_preserve = "true" *)  reg NXT_L1A_3;
  (* syn_preserve = "true" *)  reg RD_1;
  (* syn_preserve = "true" *)  reg RD_2;
  (* syn_preserve = "true" *)  reg RD_3;
  (* syn_preserve = "true" *)  reg RST_SEQ_1;
  (* syn_preserve = "true" *)  reg RST_SEQ_2;
  (* syn_preserve = "true" *)  reg RST_SEQ_3;
  (* syn_preserve = "true" *)  reg RST_SMP_1;
  (* syn_preserve = "true" *)  reg RST_SMP_2;
  (* syn_preserve = "true" *)  reg RST_SMP_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign INC_SEQ   = (INC_SEQ_1 & INC_SEQ_2) | (INC_SEQ_2 & INC_SEQ_3) | (INC_SEQ_1 & INC_SEQ_3); // Majority logic
  assign INC_SMP   = (INC_SMP_1 & INC_SMP_2) | (INC_SMP_2 & INC_SMP_3) | (INC_SMP_1 & INC_SMP_3); // Majority logic
  assign LD_ADDR   = (LD_ADDR_1 & LD_ADDR_2) | (LD_ADDR_2 & LD_ADDR_3) | (LD_ADDR_1 & LD_ADDR_3); // Majority logic
  assign NXT_L1A   = (NXT_L1A_1 & NXT_L1A_2) | (NXT_L1A_2 & NXT_L1A_3) | (NXT_L1A_1 & NXT_L1A_3); // Majority logic
  assign RD        = (RD_1      & RD_2     ) | (RD_2      & RD_3     ) | (RD_1      & RD_3     ); // Majority logic
  assign RST_SEQ   = (RST_SEQ_1 & RST_SEQ_2) | (RST_SEQ_2 & RST_SEQ_3) | (RST_SEQ_1 & RST_SEQ_3); // Majority logic
  assign RST_SMP   = (RST_SMP_1 & RST_SMP_2) | (RST_SMP_2 & RST_SMP_3) | (RST_SMP_1 & RST_SMP_3); // Majority logic


  // comb always block
  always @* begin
    nextstate_1 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_2 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_3 = 3'bxxx; // default to x because default_state_is_x is set
    case (voted_state_1)
      Idle      : if      (!L1A_BUF_MT)                nextstate_1 = Load_Addr;
                  else                                 nextstate_1 = Idle;
      Inc_Samp  : if      (SMP == SAMP_MAX)            nextstate_1 = Next_L1a;
                  else if (EVT_BUF_AFL)                nextstate_1 = W4_EVT_AMT;
                  else if (RING_AMT)                   nextstate_1 = W4Data;
                  else                                 nextstate_1 = Read;
      Load_Addr :                                      nextstate_1 = W4Data;
      Next_L1a  :                                      nextstate_1 = Idle;
      Read      : if      (SEQ == 7'd94)               nextstate_1 = Inc_Samp;
                  else                                 nextstate_1 = Read;
      W4Data    : if      (!RING_AMT && EVT_BUF_AFL)   nextstate_1 = W4_EVT_AMT;
                  else if (!RING_AMT && !EVT_BUF_AFL)  nextstate_1 = Read;
                  else                                 nextstate_1 = W4Data;
      W4_EVT_AMT: if      (EVT_BUF_AMT)                nextstate_1 = Read;
                  else                                 nextstate_1 = W4_EVT_AMT;
    endcase
    case (voted_state_2)
      Idle      : if      (!L1A_BUF_MT)                nextstate_2 = Load_Addr;
                  else                                 nextstate_2 = Idle;
      Inc_Samp  : if      (SMP == SAMP_MAX)            nextstate_2 = Next_L1a;
                  else if (EVT_BUF_AFL)                nextstate_2 = W4_EVT_AMT;
                  else if (RING_AMT)                   nextstate_2 = W4Data;
                  else                                 nextstate_2 = Read;
      Load_Addr :                                      nextstate_2 = W4Data;
      Next_L1a  :                                      nextstate_2 = Idle;
      Read      : if      (SEQ == 7'd94)               nextstate_2 = Inc_Samp;
                  else                                 nextstate_2 = Read;
      W4Data    : if      (!RING_AMT && EVT_BUF_AFL)   nextstate_2 = W4_EVT_AMT;
                  else if (!RING_AMT && !EVT_BUF_AFL)  nextstate_2 = Read;
                  else                                 nextstate_2 = W4Data;
      W4_EVT_AMT: if      (EVT_BUF_AMT)                nextstate_2 = Read;
                  else                                 nextstate_2 = W4_EVT_AMT;
    endcase
    case (voted_state_3)
      Idle      : if      (!L1A_BUF_MT)                nextstate_3 = Load_Addr;
                  else                                 nextstate_3 = Idle;
      Inc_Samp  : if      (SMP == SAMP_MAX)            nextstate_3 = Next_L1a;
                  else if (EVT_BUF_AFL)                nextstate_3 = W4_EVT_AMT;
                  else if (RING_AMT)                   nextstate_3 = W4Data;
                  else                                 nextstate_3 = Read;
      Load_Addr :                                      nextstate_3 = W4Data;
      Next_L1a  :                                      nextstate_3 = Idle;
      Read      : if      (SEQ == 7'd94)               nextstate_3 = Inc_Samp;
                  else                                 nextstate_3 = Read;
      W4Data    : if      (!RING_AMT && EVT_BUF_AFL)   nextstate_3 = W4_EVT_AMT;
                  else if (!RING_AMT && !EVT_BUF_AFL)  nextstate_3 = Read;
                  else                                 nextstate_3 = W4Data;
      W4_EVT_AMT: if      (EVT_BUF_AMT)                nextstate_3 = Read;
                  else                                 nextstate_3 = W4_EVT_AMT;
    endcase
  end

  // Assign reg'd outputs to state bits

  // sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      state_1 <= Idle;
      state_2 <= Idle;
      state_3 <= Idle;
    end
    else begin
      state_1 <= nextstate_1;
      state_2 <= nextstate_2;
      state_3 <= nextstate_3;
    end
  end

  // datapath sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      INC_SEQ_1 <= 0;
      INC_SEQ_2 <= 0;
      INC_SEQ_3 <= 0;
      INC_SMP_1 <= 0;
      INC_SMP_2 <= 0;
      INC_SMP_3 <= 0;
      LD_ADDR_1 <= 0;
      LD_ADDR_2 <= 0;
      LD_ADDR_3 <= 0;
      NXT_L1A_1 <= 0;
      NXT_L1A_2 <= 0;
      NXT_L1A_3 <= 0;
      RD_1 <= 0;
      RD_2 <= 0;
      RD_3 <= 0;
      RST_SEQ_1 <= 0;
      RST_SEQ_2 <= 0;
      RST_SEQ_3 <= 0;
      RST_SMP_1 <= 0;
      RST_SMP_2 <= 0;
      RST_SMP_3 <= 0;
    end
    else begin
      INC_SEQ_1 <= 0; // default
      INC_SEQ_2 <= 0; // default
      INC_SEQ_3 <= 0; // default
      INC_SMP_1 <= 0; // default
      INC_SMP_2 <= 0; // default
      INC_SMP_3 <= 0; // default
      LD_ADDR_1 <= 0; // default
      LD_ADDR_2 <= 0; // default
      LD_ADDR_3 <= 0; // default
      NXT_L1A_1 <= 0; // default
      NXT_L1A_2 <= 0; // default
      NXT_L1A_3 <= 0; // default
      RD_1 <= 0; // default
      RD_2 <= 0; // default
      RD_3 <= 0; // default
      RST_SEQ_1 <= 0; // default
      RST_SEQ_2 <= 0; // default
      RST_SEQ_3 <= 0; // default
      RST_SMP_1 <= 0; // default
      RST_SMP_2 <= 0; // default
      RST_SMP_3 <= 0; // default
      case (nextstate_1)
        Idle      : begin
                           RST_SEQ_1 <= 1;
                           RST_SMP_1 <= 1;
        end
        Inc_Samp  : begin
                           INC_SMP_1 <= 1;
                           RD_1 <= 1;
                           RST_SEQ_1 <= 1;
        end
        Load_Addr :        LD_ADDR_1 <= 1;
        Next_L1a  :        NXT_L1A_1 <= 1;
        Read      : begin
                           INC_SEQ_1 <= 1;
                           RD_1 <= 1;
        end
      endcase
      case (nextstate_2)
        Idle      : begin
                           RST_SEQ_2 <= 1;
                           RST_SMP_2 <= 1;
        end
        Inc_Samp  : begin
                           INC_SMP_2 <= 1;
                           RD_2 <= 1;
                           RST_SEQ_2 <= 1;
        end
        Load_Addr :        LD_ADDR_2 <= 1;
        Next_L1a  :        NXT_L1A_2 <= 1;
        Read      : begin
                           INC_SEQ_2 <= 1;
                           RD_2 <= 1;
        end
      endcase
      case (nextstate_3)
        Idle      : begin
                           RST_SEQ_3 <= 1;
                           RST_SMP_3 <= 1;
        end
        Inc_Samp  : begin
                           INC_SMP_3 <= 1;
                           RD_3 <= 1;
                           RST_SEQ_3 <= 1;
        end
        Load_Addr :        LD_ADDR_3 <= 1;
        Next_L1a  :        NXT_L1A_3 <= 1;
        Read      : begin
                           INC_SEQ_3 <= 1;
                           RD_3 <= 1;
        end
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [79:0] statename;
  always @* begin
    case (state_1)
      Idle      : statename = "Idle";
      Inc_Samp  : statename = "Inc_Samp";
      Load_Addr : statename = "Load_Addr";
      Next_L1a  : statename = "Next_L1a";
      Read      : statename = "Read";
      W4Data    : statename = "W4Data";
      W4_EVT_AMT: statename = "W4_EVT_AMT";
      default   : statename = "XXXXXXXXXX";
    endcase
  end
  `endif

endmodule

