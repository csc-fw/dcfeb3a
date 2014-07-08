
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:07:08 at 14:33:43 (www.fizzim.com)

module ADC_Config_FSM 
  #(
    parameter Last_Addr = 5'h10
  )(
  output ADDR_RST,
  output CNTR_RST,
  output DONE,
  output INCR,
  output LOAD,
  output SCKEN,
  output SHEN,
  input wire [4:0] ADR,
  input CLK,
  input INIT,
  input RST,
  input wire [5:0] SCNTR 
);

  // state bits
  parameter 
  Idle         = 3'b000, 
  Done         = 3'b001, 
  End_Seq      = 3'b010, 
  Incr_Addr    = 3'b011, 
  Load         = 3'b100, 
  Shift_Enable = 3'b101, 
  Start_Seq    = 3'b110; 

  (* syn_preserve = "true" *) reg [2:0] state_1;
  (* syn_preserve = "true" *) reg [2:0] state_2;
  (* syn_preserve = "true" *) reg [2:0] state_3;

  (* syn_keep = "true" *) wire [2:0] voted_state_1;
  (* syn_keep = "true" *) wire [2:0] voted_state_2;
  (* syn_keep = "true" *) wire [2:0] voted_state_3;

  assign voted_state_1 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic
  assign voted_state_2 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic
  assign voted_state_3 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic

  (* syn_keep = "true" *) reg [2:0] nextstate_1;
  (* syn_keep = "true" *) reg [2:0] nextstate_2;
  (* syn_keep = "true" *) reg [2:0] nextstate_3;

  (* syn_preserve = "true" *)  reg ADDR_RST_1;
  (* syn_preserve = "true" *)  reg ADDR_RST_2;
  (* syn_preserve = "true" *)  reg ADDR_RST_3;
  (* syn_preserve = "true" *)  reg CNTR_RST_1;
  (* syn_preserve = "true" *)  reg CNTR_RST_2;
  (* syn_preserve = "true" *)  reg CNTR_RST_3;
  (* syn_preserve = "true" *)  reg DONE_1;
  (* syn_preserve = "true" *)  reg DONE_2;
  (* syn_preserve = "true" *)  reg DONE_3;
  (* syn_preserve = "true" *)  reg INCR_1;
  (* syn_preserve = "true" *)  reg INCR_2;
  (* syn_preserve = "true" *)  reg INCR_3;
  (* syn_preserve = "true" *)  reg LOAD_1;
  (* syn_preserve = "true" *)  reg LOAD_2;
  (* syn_preserve = "true" *)  reg LOAD_3;
  (* syn_preserve = "true" *)  reg SCKEN_1;
  (* syn_preserve = "true" *)  reg SCKEN_2;
  (* syn_preserve = "true" *)  reg SCKEN_3;
  (* syn_preserve = "true" *)  reg SHEN_1;
  (* syn_preserve = "true" *)  reg SHEN_2;
  (* syn_preserve = "true" *)  reg SHEN_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign ADDR_RST   = (ADDR_RST_1 & ADDR_RST_2) | (ADDR_RST_2 & ADDR_RST_3) | (ADDR_RST_1 & ADDR_RST_3); // Majority logic
  assign CNTR_RST   = (CNTR_RST_1 & CNTR_RST_2) | (CNTR_RST_2 & CNTR_RST_3) | (CNTR_RST_1 & CNTR_RST_3); // Majority logic
  assign DONE       = (DONE_1     & DONE_2    ) | (DONE_2     & DONE_3    ) | (DONE_1     & DONE_3    ); // Majority logic
  assign INCR       = (INCR_1     & INCR_2    ) | (INCR_2     & INCR_3    ) | (INCR_1     & INCR_3    ); // Majority logic
  assign LOAD       = (LOAD_1     & LOAD_2    ) | (LOAD_2     & LOAD_3    ) | (LOAD_1     & LOAD_3    ); // Majority logic
  assign SCKEN      = (SCKEN_1    & SCKEN_2   ) | (SCKEN_2    & SCKEN_3   ) | (SCKEN_1    & SCKEN_3   ); // Majority logic
  assign SHEN       = (SHEN_1     & SHEN_2    ) | (SHEN_2     & SHEN_3    ) | (SHEN_1     & SHEN_3    ); // Majority logic


  // comb always block
  always @* begin
    nextstate_1 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_2 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_3 = 3'bxxx; // default to x because default_state_is_x is set
    case (voted_state_1)
      Idle        : if      (INIT)                                    nextstate_1 = Start_Seq;
                    else                                              nextstate_1 = Idle;
      Done        : if      (~INIT)                                   nextstate_1 = Idle;
      End_Seq     :                                                   nextstate_1 = Done;
      Incr_Addr   :                                                   nextstate_1 = Load;
      Load        :                                                   nextstate_1 = Shift_Enable;
      Shift_Enable: if      ((SCNTR == 6'd46) && (ADR == Last_Addr))  nextstate_1 = End_Seq;
                    else if ((SCNTR == 6'd46) && (ADR < Last_Addr))   nextstate_1 = Incr_Addr;
                    else                                              nextstate_1 = Shift_Enable;
      Start_Seq   :                                                   nextstate_1 = Shift_Enable;
    endcase
    case (voted_state_2)
      Idle        : if      (INIT)                                    nextstate_2 = Start_Seq;
                    else                                              nextstate_2 = Idle;
      Done        : if      (~INIT)                                   nextstate_2 = Idle;
      End_Seq     :                                                   nextstate_2 = Done;
      Incr_Addr   :                                                   nextstate_2 = Load;
      Load        :                                                   nextstate_2 = Shift_Enable;
      Shift_Enable: if      ((SCNTR == 6'd46) && (ADR == Last_Addr))  nextstate_2 = End_Seq;
                    else if ((SCNTR == 6'd46) && (ADR < Last_Addr))   nextstate_2 = Incr_Addr;
                    else                                              nextstate_2 = Shift_Enable;
      Start_Seq   :                                                   nextstate_2 = Shift_Enable;
    endcase
    case (voted_state_3)
      Idle        : if      (INIT)                                    nextstate_3 = Start_Seq;
                    else                                              nextstate_3 = Idle;
      Done        : if      (~INIT)                                   nextstate_3 = Idle;
      End_Seq     :                                                   nextstate_3 = Done;
      Incr_Addr   :                                                   nextstate_3 = Load;
      Load        :                                                   nextstate_3 = Shift_Enable;
      Shift_Enable: if      ((SCNTR == 6'd46) && (ADR == Last_Addr))  nextstate_3 = End_Seq;
                    else if ((SCNTR == 6'd46) && (ADR < Last_Addr))   nextstate_3 = Incr_Addr;
                    else                                              nextstate_3 = Shift_Enable;
      Start_Seq   :                                                   nextstate_3 = Shift_Enable;
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
      ADDR_RST_1 <= 0;
      ADDR_RST_2 <= 0;
      ADDR_RST_3 <= 0;
      CNTR_RST_1 <= 0;
      CNTR_RST_2 <= 0;
      CNTR_RST_3 <= 0;
      DONE_1 <= 0;
      DONE_2 <= 0;
      DONE_3 <= 0;
      INCR_1 <= 0;
      INCR_2 <= 0;
      INCR_3 <= 0;
      LOAD_1 <= 0;
      LOAD_2 <= 0;
      LOAD_3 <= 0;
      SCKEN_1 <= 0;
      SCKEN_2 <= 0;
      SCKEN_3 <= 0;
      SHEN_1 <= 0;
      SHEN_2 <= 0;
      SHEN_3 <= 0;
    end
    else begin
      ADDR_RST_1 <= 0; // default
      ADDR_RST_2 <= 0; // default
      ADDR_RST_3 <= 0; // default
      CNTR_RST_1 <= 0; // default
      CNTR_RST_2 <= 0; // default
      CNTR_RST_3 <= 0; // default
      DONE_1 <= 0; // default
      DONE_2 <= 0; // default
      DONE_3 <= 0; // default
      INCR_1 <= 0; // default
      INCR_2 <= 0; // default
      INCR_3 <= 0; // default
      LOAD_1 <= 0; // default
      LOAD_2 <= 0; // default
      LOAD_3 <= 0; // default
      SCKEN_1 <= 0; // default
      SCKEN_2 <= 0; // default
      SCKEN_3 <= 0; // default
      SHEN_1 <= 0; // default
      SHEN_2 <= 0; // default
      SHEN_3 <= 0; // default
      case (nextstate_1)
        Idle        : begin
                             ADDR_RST_1 <= 1;
                             CNTR_RST_1 <= 1;
        end
        Done        : begin
                             ADDR_RST_1 <= 1;
                             CNTR_RST_1 <= 1;
                             DONE_1 <= 1;
        end
        End_Seq     : begin
                             CNTR_RST_1 <= 1;
                             SCKEN_1 <= 1;
        end
        Incr_Addr   : begin
                             CNTR_RST_1 <= 1;
                             INCR_1 <= 1;
                             SCKEN_1 <= 1;
                             SHEN_1 <= 1;
        end
        Load        : begin
                             LOAD_1 <= 1;
                             SCKEN_1 <= 1;
                             SHEN_1 <= 1;
        end
        Shift_Enable: begin
                             SCKEN_1 <= 1;
                             SHEN_1 <= 1;
        end
        Start_Seq   : begin
                             LOAD_1 <= 1;
                             SCKEN_1 <= 1;
        end
      endcase
      case (nextstate_2)
        Idle        : begin
                             ADDR_RST_2 <= 1;
                             CNTR_RST_2 <= 1;
        end
        Done        : begin
                             ADDR_RST_2 <= 1;
                             CNTR_RST_2 <= 1;
                             DONE_2 <= 1;
        end
        End_Seq     : begin
                             CNTR_RST_2 <= 1;
                             SCKEN_2 <= 1;
        end
        Incr_Addr   : begin
                             CNTR_RST_2 <= 1;
                             INCR_2 <= 1;
                             SCKEN_2 <= 1;
                             SHEN_2 <= 1;
        end
        Load        : begin
                             LOAD_2 <= 1;
                             SCKEN_2 <= 1;
                             SHEN_2 <= 1;
        end
        Shift_Enable: begin
                             SCKEN_2 <= 1;
                             SHEN_2 <= 1;
        end
        Start_Seq   : begin
                             LOAD_2 <= 1;
                             SCKEN_2 <= 1;
        end
      endcase
      case (nextstate_3)
        Idle        : begin
                             ADDR_RST_3 <= 1;
                             CNTR_RST_3 <= 1;
        end
        Done        : begin
                             ADDR_RST_3 <= 1;
                             CNTR_RST_3 <= 1;
                             DONE_3 <= 1;
        end
        End_Seq     : begin
                             CNTR_RST_3 <= 1;
                             SCKEN_3 <= 1;
        end
        Incr_Addr   : begin
                             CNTR_RST_3 <= 1;
                             INCR_3 <= 1;
                             SCKEN_3 <= 1;
                             SHEN_3 <= 1;
        end
        Load        : begin
                             LOAD_3 <= 1;
                             SCKEN_3 <= 1;
                             SHEN_3 <= 1;
        end
        Shift_Enable: begin
                             SCKEN_3 <= 1;
                             SHEN_3 <= 1;
        end
        Start_Seq   : begin
                             LOAD_3 <= 1;
                             SCKEN_3 <= 1;
        end
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [95:0] statename;
  always @* begin
    case (state_1)
      Idle        : statename = "Idle";
      Done        : statename = "Done";
      End_Seq     : statename = "End_Seq";
      Incr_Addr   : statename = "Incr_Addr";
      Load        : statename = "Load";
      Shift_Enable: statename = "Shift_Enable";
      Start_Seq   : statename = "Start_Seq";
      default     : statename = "XXXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

