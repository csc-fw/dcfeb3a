
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:07:08 at 14:45:40 (www.fizzim.com)

module Pipe_Start_FSM (
  output INC_H,
  output PIP_RST,
  output RE,
  output WE,
  input CLK,
  input wire [3:0] HOLD,
  input wire [8:0] PDEPTH,
  input RESTART,
  input RST,
  input wire [8:0] WCNT 
);

  // state bits
  parameter 
  Idle       = 3'b000, 
  Clear      = 3'b001, 
  Pause      = 3'b010, 
  Reset_Pipe = 3'b011, 
  Run        = 3'b100, 
  Start_Pipe = 3'b101; 

  (* syn_preserve = "true" *) reg [2:0] state_1;
  (* syn_preserve = "true" *) reg [2:0] state_2;
  (* syn_preserve = "true" *) reg [2:0] state_3;

  (* syn_keep = "true" *) wire [2:0] voted_state_1;
  (* syn_keep = "true" *) wire [2:0] voted_state_2;
  (* syn_keep = "true" *) wire [2:0] voted_state_3;

  assign voted_state_1 = (state_1   & state_2  ) | (state_2   & state_3  ) | (state_1   & state_3  ); // Majority logic
  assign voted_state_2 = (state_1   & state_2  ) | (state_2   & state_3  ) | (state_1   & state_3  ); // Majority logic
  assign voted_state_3 = (state_1   & state_2  ) | (state_2   & state_3  ) | (state_1   & state_3  ); // Majority logic

  (* syn_keep = "true" *) reg [2:0] nextstate_1;
  (* syn_keep = "true" *) reg [2:0] nextstate_2;
  (* syn_keep = "true" *) reg [2:0] nextstate_3;

  (* syn_preserve = "true" *)  reg INC_H_1;
  (* syn_preserve = "true" *)  reg INC_H_2;
  (* syn_preserve = "true" *)  reg INC_H_3;
  (* syn_preserve = "true" *)  reg PIP_RST_1;
  (* syn_preserve = "true" *)  reg PIP_RST_2;
  (* syn_preserve = "true" *)  reg PIP_RST_3;
  (* syn_preserve = "true" *)  reg RE_1;
  (* syn_preserve = "true" *)  reg RE_2;
  (* syn_preserve = "true" *)  reg RE_3;
  (* syn_preserve = "true" *)  reg WE_1;
  (* syn_preserve = "true" *)  reg WE_2;
  (* syn_preserve = "true" *)  reg WE_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign INC_H     = (INC_H_1   & INC_H_2  ) | (INC_H_2   & INC_H_3  ) | (INC_H_1   & INC_H_3  ); // Majority logic
  assign PIP_RST   = (PIP_RST_1 & PIP_RST_2) | (PIP_RST_2 & PIP_RST_3) | (PIP_RST_1 & PIP_RST_3); // Majority logic
  assign RE        = (RE_1      & RE_2     ) | (RE_2      & RE_3     ) | (RE_1      & RE_3     ); // Majority logic
  assign WE        = (WE_1      & WE_2     ) | (WE_2      & WE_3     ) | (WE_1      & WE_3     ); // Majority logic


  // comb always block
  always @* begin
    nextstate_1 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_2 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_3 = 3'bxxx; // default to x because default_state_is_x is set
    case (voted_state_1)
      Idle      :                      nextstate_1 = Clear;
      Clear     : if (HOLD == 4'd5)    nextstate_1 = Reset_Pipe;
                  else                 nextstate_1 = Clear;
      Pause     : if (HOLD == 4'd15)   nextstate_1 = Start_Pipe;
                  else                 nextstate_1 = Pause;
      Reset_Pipe: if (HOLD == 4'd10)   nextstate_1 = Pause;
                  else                 nextstate_1 = Reset_Pipe;
      Run       : if (RESTART)         nextstate_1 = Idle;
                  else                 nextstate_1 = Run;
      Start_Pipe: if (WCNT == PDEPTH)  nextstate_1 = Run;
                  else                 nextstate_1 = Start_Pipe;
    endcase
    case (voted_state_2)
      Idle      :                      nextstate_2 = Clear;
      Clear     : if (HOLD == 4'd5)    nextstate_2 = Reset_Pipe;
                  else                 nextstate_2 = Clear;
      Pause     : if (HOLD == 4'd15)   nextstate_2 = Start_Pipe;
                  else                 nextstate_2 = Pause;
      Reset_Pipe: if (HOLD == 4'd10)   nextstate_2 = Pause;
                  else                 nextstate_2 = Reset_Pipe;
      Run       : if (RESTART)         nextstate_2 = Idle;
                  else                 nextstate_2 = Run;
      Start_Pipe: if (WCNT == PDEPTH)  nextstate_2 = Run;
                  else                 nextstate_2 = Start_Pipe;
    endcase
    case (voted_state_3)
      Idle      :                      nextstate_3 = Clear;
      Clear     : if (HOLD == 4'd5)    nextstate_3 = Reset_Pipe;
                  else                 nextstate_3 = Clear;
      Pause     : if (HOLD == 4'd15)   nextstate_3 = Start_Pipe;
                  else                 nextstate_3 = Pause;
      Reset_Pipe: if (HOLD == 4'd10)   nextstate_3 = Pause;
                  else                 nextstate_3 = Reset_Pipe;
      Run       : if (RESTART)         nextstate_3 = Idle;
                  else                 nextstate_3 = Run;
      Start_Pipe: if (WCNT == PDEPTH)  nextstate_3 = Run;
                  else                 nextstate_3 = Start_Pipe;
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
      INC_H_1 <= 0;
      INC_H_2 <= 0;
      INC_H_3 <= 0;
      PIP_RST_1 <= 0;
      PIP_RST_2 <= 0;
      PIP_RST_3 <= 0;
      RE_1 <= 0;
      RE_2 <= 0;
      RE_3 <= 0;
      WE_1 <= 0;
      WE_2 <= 0;
      WE_3 <= 0;
    end
    else begin
      INC_H_1 <= 0; // default
      INC_H_2 <= 0; // default
      INC_H_3 <= 0; // default
      PIP_RST_1 <= 0; // default
      PIP_RST_2 <= 0; // default
      PIP_RST_3 <= 0; // default
      RE_1 <= 0; // default
      RE_2 <= 0; // default
      RE_3 <= 0; // default
      WE_1 <= 0; // default
      WE_2 <= 0; // default
      WE_3 <= 0; // default
      case (nextstate_1)
        Clear     :        INC_H_1 <= 1;
        Pause     :        INC_H_1 <= 1;
        Reset_Pipe: begin
                           INC_H_1 <= 1;
                           PIP_RST_1 <= 1;
        end
        Run       : begin
                           RE_1 <= 1;
                           WE_1 <= 1;
        end
        Start_Pipe:        WE_1 <= 1;
      endcase
      case (nextstate_2)
        Clear     :        INC_H_2 <= 1;
        Pause     :        INC_H_2 <= 1;
        Reset_Pipe: begin
                           INC_H_2 <= 1;
                           PIP_RST_2 <= 1;
        end
        Run       : begin
                           RE_2 <= 1;
                           WE_2 <= 1;
        end
        Start_Pipe:        WE_2 <= 1;
      endcase
      case (nextstate_3)
        Clear     :        INC_H_3 <= 1;
        Pause     :        INC_H_3 <= 1;
        Reset_Pipe: begin
                           INC_H_3 <= 1;
                           PIP_RST_3 <= 1;
        end
        Run       : begin
                           RE_3 <= 1;
                           WE_3 <= 1;
        end
        Start_Pipe:        WE_3 <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [79:0] statename;
  always @* begin
    case (state_1)
      Idle      : statename = "Idle";
      Clear     : statename = "Clear";
      Pause     : statename = "Pause";
      Reset_Pipe: statename = "Reset_Pipe";
      Run       : statename = "Run";
      Start_Pipe: statename = "Start_Pipe";
      default   : statename = "XXXXXXXXXX";
    endcase
  end
  `endif

endmodule

