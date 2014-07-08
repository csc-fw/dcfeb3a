
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:07:08 at 14:45:15 (www.fizzim.com)

module Frame_Seq_FSM (
  output CLR_CRC,
  output INC_SEQ,
  output INC_SMP,
  output LAST_WRD,
  output RD,
  output RST_SEQ,
  output RST_SMP,
  output VALID,
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

  (* syn_preserve = "true" *) reg [2:0] state_1;
  (* syn_preserve = "true" *) reg [2:0] state_2;
  (* syn_preserve = "true" *) reg [2:0] state_3;

  (* syn_keep = "true" *) wire [2:0] voted_state_1;
  (* syn_keep = "true" *) wire [2:0] voted_state_2;
  (* syn_keep = "true" *) wire [2:0] voted_state_3;

  assign voted_state_1 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic
  assign voted_state_2 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic
  assign voted_state_3 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic

  assign FRM_STATE = voted_state_1;

  (* syn_keep = "true" *) reg [2:0] nextstate_1;
  (* syn_keep = "true" *) reg [2:0] nextstate_2;
  (* syn_keep = "true" *) reg [2:0] nextstate_3;

  (* syn_preserve = "true" *)  reg CLR_CRC_1;
  (* syn_preserve = "true" *)  reg CLR_CRC_2;
  (* syn_preserve = "true" *)  reg CLR_CRC_3;
  (* syn_preserve = "true" *)  reg INC_SEQ_1;
  (* syn_preserve = "true" *)  reg INC_SEQ_2;
  (* syn_preserve = "true" *)  reg INC_SEQ_3;
  (* syn_preserve = "true" *)  reg INC_SMP_1;
  (* syn_preserve = "true" *)  reg INC_SMP_2;
  (* syn_preserve = "true" *)  reg INC_SMP_3;
  (* syn_preserve = "true" *)  reg LAST_WRD_1;
  (* syn_preserve = "true" *)  reg LAST_WRD_2;
  (* syn_preserve = "true" *)  reg LAST_WRD_3;
  (* syn_preserve = "true" *)  reg RD_1;
  (* syn_preserve = "true" *)  reg RD_2;
  (* syn_preserve = "true" *)  reg RD_3;
  (* syn_preserve = "true" *)  reg RST_SEQ_1;
  (* syn_preserve = "true" *)  reg RST_SEQ_2;
  (* syn_preserve = "true" *)  reg RST_SEQ_3;
  (* syn_preserve = "true" *)  reg RST_SMP_1;
  (* syn_preserve = "true" *)  reg RST_SMP_2;
  (* syn_preserve = "true" *)  reg RST_SMP_3;
  (* syn_preserve = "true" *)  reg VALID_1;
  (* syn_preserve = "true" *)  reg VALID_2;
  (* syn_preserve = "true" *)  reg VALID_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign CLR_CRC    = (CLR_CRC_1  & CLR_CRC_2 ) | (CLR_CRC_2  & CLR_CRC_3 ) | (CLR_CRC_1  & CLR_CRC_3 ); // Majority logic
  assign INC_SEQ    = (INC_SEQ_1  & INC_SEQ_2 ) | (INC_SEQ_2  & INC_SEQ_3 ) | (INC_SEQ_1  & INC_SEQ_3 ); // Majority logic
  assign INC_SMP    = (INC_SMP_1  & INC_SMP_2 ) | (INC_SMP_2  & INC_SMP_3 ) | (INC_SMP_1  & INC_SMP_3 ); // Majority logic
  assign LAST_WRD   = (LAST_WRD_1 & LAST_WRD_2) | (LAST_WRD_2 & LAST_WRD_3) | (LAST_WRD_1 & LAST_WRD_3); // Majority logic
  assign RD         = (RD_1       & RD_2      ) | (RD_2       & RD_3      ) | (RD_1       & RD_3      ); // Majority logic
  assign RST_SEQ    = (RST_SEQ_1  & RST_SEQ_2 ) | (RST_SEQ_2  & RST_SEQ_3 ) | (RST_SEQ_1  & RST_SEQ_3 ); // Majority logic
  assign RST_SMP    = (RST_SMP_1  & RST_SMP_2 ) | (RST_SMP_2  & RST_SMP_3 ) | (RST_SMP_1  & RST_SMP_3 ); // Majority logic
  assign VALID      = (VALID_1    & VALID_2   ) | (VALID_2    & VALID_3   ) | (VALID_1    & VALID_3   ); // Majority logic


  // comb always block
  always @* begin
    nextstate_1 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_2 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_3 = 3'bxxx; // default to x because default_state_is_x is set
    case (voted_state_1)
      Idle     : if (!L1A_BUF_MT)      nextstate_1 = W4Data;
                 else                  nextstate_1 = Idle;
      Inc_Samp : if (SMP == SAMP_MAX)  nextstate_1 = Last_Word;
                 else                  nextstate_1 = Read;
      Last_Word:                       nextstate_1 = Idle;
      Read     : if (SEQ == 7'd95)     nextstate_1 = Tail;
                 else                  nextstate_1 = Read;
      Tail     : if (SEQ == 7'd99)     nextstate_1 = Inc_Samp;
                 else                  nextstate_1 = Tail;
      W4Data   : if (!FAMT)            nextstate_1 = Read;
                 else                  nextstate_1 = W4Data;
    endcase
    case (voted_state_2)
      Idle     : if (!L1A_BUF_MT)      nextstate_2 = W4Data;
                 else                  nextstate_2 = Idle;
      Inc_Samp : if (SMP == SAMP_MAX)  nextstate_2 = Last_Word;
                 else                  nextstate_2 = Read;
      Last_Word:                       nextstate_2 = Idle;
      Read     : if (SEQ == 7'd95)     nextstate_2 = Tail;
                 else                  nextstate_2 = Read;
      Tail     : if (SEQ == 7'd99)     nextstate_2 = Inc_Samp;
                 else                  nextstate_2 = Tail;
      W4Data   : if (!FAMT)            nextstate_2 = Read;
                 else                  nextstate_2 = W4Data;
    endcase
    case (voted_state_3)
      Idle     : if (!L1A_BUF_MT)      nextstate_3 = W4Data;
                 else                  nextstate_3 = Idle;
      Inc_Samp : if (SMP == SAMP_MAX)  nextstate_3 = Last_Word;
                 else                  nextstate_3 = Read;
      Last_Word:                       nextstate_3 = Idle;
      Read     : if (SEQ == 7'd95)     nextstate_3 = Tail;
                 else                  nextstate_3 = Read;
      Tail     : if (SEQ == 7'd99)     nextstate_3 = Inc_Samp;
                 else                  nextstate_3 = Tail;
      W4Data   : if (!FAMT)            nextstate_3 = Read;
                 else                  nextstate_3 = W4Data;
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
      CLR_CRC_1 <= 0;
      CLR_CRC_2 <= 0;
      CLR_CRC_3 <= 0;
      INC_SEQ_1 <= 0;
      INC_SEQ_2 <= 0;
      INC_SEQ_3 <= 0;
      INC_SMP_1 <= 0;
      INC_SMP_2 <= 0;
      INC_SMP_3 <= 0;
      LAST_WRD_1 <= 0;
      LAST_WRD_2 <= 0;
      LAST_WRD_3 <= 0;
      RD_1 <= 0;
      RD_2 <= 0;
      RD_3 <= 0;
      RST_SEQ_1 <= 0;
      RST_SEQ_2 <= 0;
      RST_SEQ_3 <= 0;
      RST_SMP_1 <= 0;
      RST_SMP_2 <= 0;
      RST_SMP_3 <= 0;
      VALID_1 <= 0;
      VALID_2 <= 0;
      VALID_3 <= 0;
    end
    else begin
      CLR_CRC_1 <= 0; // default
      CLR_CRC_2 <= 0; // default
      CLR_CRC_3 <= 0; // default
      INC_SEQ_1 <= 0; // default
      INC_SEQ_2 <= 0; // default
      INC_SEQ_3 <= 0; // default
      INC_SMP_1 <= 0; // default
      INC_SMP_2 <= 0; // default
      INC_SMP_3 <= 0; // default
      LAST_WRD_1 <= 0; // default
      LAST_WRD_2 <= 0; // default
      LAST_WRD_3 <= 0; // default
      RD_1 <= 0; // default
      RD_2 <= 0; // default
      RD_3 <= 0; // default
      RST_SEQ_1 <= 0; // default
      RST_SEQ_2 <= 0; // default
      RST_SEQ_3 <= 0; // default
      RST_SMP_1 <= 0; // default
      RST_SMP_2 <= 0; // default
      RST_SMP_3 <= 0; // default
      VALID_1 <= 0; // default
      VALID_2 <= 0; // default
      VALID_3 <= 0; // default
      case (nextstate_1)
        Idle     : begin
                          RST_SEQ_1 <= 1;
                          RST_SMP_1 <= 1;
        end
        Inc_Samp : begin
                          CLR_CRC_1 <= 1;
                          INC_SMP_1 <= 1;
                          RST_SEQ_1 <= 1;
        end
        Last_Word:        LAST_WRD_1 <= 1;
        Read     : begin
                          INC_SEQ_1 <= 1;
                          RD_1 <= 1;
                          VALID_1 <= 1;
        end
        Tail     : begin
                          INC_SEQ_1 <= 1;
                          VALID_1 <= 1;
        end
        W4Data   :        CLR_CRC_1 <= 1;
      endcase
      case (nextstate_2)
        Idle     : begin
                          RST_SEQ_2 <= 1;
                          RST_SMP_2 <= 1;
        end
        Inc_Samp : begin
                          CLR_CRC_2 <= 1;
                          INC_SMP_2 <= 1;
                          RST_SEQ_2 <= 1;
        end
        Last_Word:        LAST_WRD_2 <= 1;
        Read     : begin
                          INC_SEQ_2 <= 1;
                          RD_2 <= 1;
                          VALID_2 <= 1;
        end
        Tail     : begin
                          INC_SEQ_2 <= 1;
                          VALID_2 <= 1;
        end
        W4Data   :        CLR_CRC_2 <= 1;
      endcase
      case (nextstate_3)
        Idle     : begin
                          RST_SEQ_3 <= 1;
                          RST_SMP_3 <= 1;
        end
        Inc_Samp : begin
                          CLR_CRC_3 <= 1;
                          INC_SMP_3 <= 1;
                          RST_SEQ_3 <= 1;
        end
        Last_Word:        LAST_WRD_3 <= 1;
        Read     : begin
                          INC_SEQ_3 <= 1;
                          RD_3 <= 1;
                          VALID_3 <= 1;
        end
        Tail     : begin
                          INC_SEQ_3 <= 1;
                          VALID_3 <= 1;
        end
        W4Data   :        CLR_CRC_3 <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [71:0] statename;
  always @* begin
    case (state_1)
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

