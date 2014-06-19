
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:06:17 at 14:55:18 (www.fizzim.com)

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
    case (state)
      Idle     : if (!L1A_BUF_MT)      nextstate = W4Data;
                 else                  nextstate = Idle;
      Inc_Samp : if (SMP == SAMP_MAX)  nextstate = Last_Word;
                 else                  nextstate = Read;
      Last_Word:                       nextstate = Idle;
      Read     : if (SEQ == 7'd95)     nextstate = Tail;
                 else                  nextstate = Read;
      Tail     : if (SEQ == 7'd99)     nextstate = Inc_Samp;
                 else                  nextstate = Tail;
      W4Data   : if (!FAMT)            nextstate = Read;
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
      INC_SEQ <= 0;
      INC_SMP <= 0;
      LAST_WRD <= 0;
      RD <= 0;
      RST_SEQ <= 0;
      RST_SMP <= 0;
      VALID <= 0;
    end
    else begin
      CLR_CRC <= 0; // default
      INC_SEQ <= 0; // default
      INC_SMP <= 0; // default
      LAST_WRD <= 0; // default
      RD <= 0; // default
      RST_SEQ <= 0; // default
      RST_SMP <= 0; // default
      VALID <= 0; // default
      case (nextstate)
        Idle     : begin
                          RST_SEQ <= 1;
                          RST_SMP <= 1;
        end
        Inc_Samp : begin
                          CLR_CRC <= 1;
                          INC_SMP <= 1;
                          RST_SEQ <= 1;
        end
        Last_Word:        LAST_WRD <= 1;
        Read     : begin
                          INC_SEQ <= 1;
                          RD <= 1;
                          VALID <= 1;
        end
        Tail     : begin
                          INC_SEQ <= 1;
                          VALID <= 1;
        end
        W4Data   :        CLR_CRC <= 1;
      endcase
    end
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

