
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:06:17 at 15:04:42 (www.fizzim.com)

module Ring_Trans_FSM (
  output reg INC_SEQ,
  output reg INC_SMP,
  output reg LD_ADDR,
  output reg NXT_L1A,
  output reg RD,
  output reg RST_SEQ,
  output reg RST_SMP,
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

  reg [2:0] state;

  assign EVT_STATE = state;

  reg [2:0] nextstate;


  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    case (state)
      Idle      : if      (!L1A_BUF_MT)                nextstate = Load_Addr;
                  else                                 nextstate = Idle;
      Inc_Samp  : if      (SMP == SAMP_MAX)            nextstate = Next_L1a;
                  else if (EVT_BUF_AFL)                nextstate = W4_EVT_AMT;
                  else if (RING_AMT)                   nextstate = W4Data;
                  else                                 nextstate = Read;
      Load_Addr :                                      nextstate = W4Data;
      Next_L1a  :                                      nextstate = Idle;
      Read      : if      (SEQ == 7'd94)               nextstate = Inc_Samp;
                  else                                 nextstate = Read;
      W4Data    : if      (!RING_AMT && EVT_BUF_AFL)   nextstate = W4_EVT_AMT;
                  else if (!RING_AMT && !EVT_BUF_AFL)  nextstate = Read;
                  else                                 nextstate = W4Data;
      W4_EVT_AMT: if      (EVT_BUF_AMT)                nextstate = Read;
                  else                                 nextstate = W4_EVT_AMT;
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
      INC_SEQ <= 0;
      INC_SMP <= 0;
      LD_ADDR <= 0;
      NXT_L1A <= 0;
      RD <= 0;
      RST_SEQ <= 0;
      RST_SMP <= 0;
    end
    else begin
      INC_SEQ <= 0; // default
      INC_SMP <= 0; // default
      LD_ADDR <= 0; // default
      NXT_L1A <= 0; // default
      RD <= 0; // default
      RST_SEQ <= 0; // default
      RST_SMP <= 0; // default
      case (nextstate)
        Idle      : begin
                           RST_SEQ <= 1;
                           RST_SMP <= 1;
        end
        Inc_Samp  : begin
                           INC_SMP <= 1;
                           RD <= 1;
                           RST_SEQ <= 1;
        end
        Load_Addr :        LD_ADDR <= 1;
        Next_L1a  :        NXT_L1A <= 1;
        Read      : begin
                           INC_SEQ <= 1;
                           RD <= 1;
        end
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [79:0] statename;
  always @* begin
    case (state)
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

