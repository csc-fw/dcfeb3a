
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:07:08 at 14:44:30 (www.fizzim.com)

module FIFO_Load_FSM (
  output SINC,
  output SRST,
  input CLK,
  input RST,
  input wire [6:0] SAMPLE,
  input wire [6:0] SAMP_MAX,
  input wire [2:0] SEL,
  input START 
);

  // state bits
  parameter 
  Idle     = 1'b0, 
  Transfer = 1'b1; 

  (* syn_preserve = "true" *) reg state_1;
  (* syn_preserve = "true" *) reg state_2;
  (* syn_preserve = "true" *) reg state_3;

  (* syn_keep = "true" *) wire voted_state_1;
  (* syn_keep = "true" *) wire voted_state_2;
  (* syn_keep = "true" *) wire voted_state_3;

  assign voted_state_1 = (state_1 & state_2) | (state_2 & state_3) | (state_1 & state_3); // Majority logic
  assign voted_state_2 = (state_1 & state_2) | (state_2 & state_3) | (state_1 & state_3); // Majority logic
  assign voted_state_3 = (state_1 & state_2) | (state_2 & state_3) | (state_1 & state_3); // Majority logic

  (* syn_keep = "true" *) reg nextstate_1;
  (* syn_keep = "true" *) reg nextstate_2;
  (* syn_keep = "true" *) reg nextstate_3;

  (* syn_preserve = "true" *)  reg SINC_1;
  (* syn_preserve = "true" *)  reg SINC_2;
  (* syn_preserve = "true" *)  reg SINC_3;
  (* syn_preserve = "true" *)  reg SRST_1;
  (* syn_preserve = "true" *)  reg SRST_2;
  (* syn_preserve = "true" *)  reg SRST_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign SINC   = (SINC_1 & SINC_2) | (SINC_2 & SINC_3) | (SINC_1 & SINC_3); // Majority logic
  assign SRST   = (SRST_1 & SRST_2) | (SRST_2 & SRST_3) | (SRST_1 & SRST_3); // Majority logic


  // comb always block
  always @* begin
    nextstate_1 = 1'bx; // default to x because default_state_is_x is set
    nextstate_2 = 1'bx; // default to x because default_state_is_x is set
    nextstate_3 = 1'bx; // default to x because default_state_is_x is set
    case (voted_state_1)
      Idle    : if (START)                                        nextstate_1 = Transfer;
                else                                              nextstate_1 = Idle;
      Transfer: if (SAMPLE == SAMP_MAX && SEL == 3'd5 && !START)  nextstate_1 = Idle;
                else                                              nextstate_1 = Transfer;
    endcase
    case (voted_state_2)
      Idle    : if (START)                                        nextstate_2 = Transfer;
                else                                              nextstate_2 = Idle;
      Transfer: if (SAMPLE == SAMP_MAX && SEL == 3'd5 && !START)  nextstate_2 = Idle;
                else                                              nextstate_2 = Transfer;
    endcase
    case (voted_state_3)
      Idle    : if (START)                                        nextstate_3 = Transfer;
                else                                              nextstate_3 = Idle;
      Transfer: if (SAMPLE == SAMP_MAX && SEL == 3'd5 && !START)  nextstate_3 = Idle;
                else                                              nextstate_3 = Transfer;
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
      SINC_1 <= 0;
      SINC_2 <= 0;
      SINC_3 <= 0;
      SRST_1 <= 0;
      SRST_2 <= 0;
      SRST_3 <= 0;
    end
    else begin
      SINC_1 <= 0; // default
      SINC_2 <= 0; // default
      SINC_3 <= 0; // default
      SRST_1 <= 0; // default
      SRST_2 <= 0; // default
      SRST_3 <= 0; // default
      case (nextstate_1)
        Idle    : SRST_1 <= 1;
        Transfer: SINC_1 <= 1;
      endcase
      case (nextstate_2)
        Idle    : SRST_2 <= 1;
        Transfer: SINC_2 <= 1;
      endcase
      case (nextstate_3)
        Idle    : SRST_3 <= 1;
        Transfer: SINC_3 <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [63:0] statename;
  always @* begin
    case (state_1)
      Idle    : statename = "Idle";
      Transfer: statename = "Transfer";
      default : statename = "XXXXXXXX";
    endcase
  end
  `endif

endmodule

