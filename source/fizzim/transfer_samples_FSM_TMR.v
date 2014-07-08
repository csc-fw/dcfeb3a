
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:07:08 at 15:54:30 (www.fizzim.com)

module transfer_samples_FSM (
  output DONE,
  output INC_CHAN,
  output INC_CHIP,
  output INC_CNT,
  output L1A_RD_EN,
  output RDENA,
  output RST_CHAN,
  output RST_CHIP,
  output RST_CNT,
  output wire [2:0] XSTATE,
  input CLK,
  input JTAG_MODE,
  input RDY,
  input RST,
  input wire [1:0]CNT,
  input wire [2:0] CHIP,
  input wire [3:0] CHAN 
);

  // state bits
  parameter 
  Idle           = 3'b000, 
  Inc_Chan_state = 3'b001, 
  L1A_Rd_two     = 3'b010, 
  Last           = 3'b011, 
  Rd_Ena         = 3'b100, 
  Wait           = 3'b101; 

  (* syn_preserve = "true" *) reg [2:0] state_1;
  (* syn_preserve = "true" *) reg [2:0] state_2;
  (* syn_preserve = "true" *) reg [2:0] state_3;

  (* syn_keep = "true" *) wire [2:0] voted_state_1;
  (* syn_keep = "true" *) wire [2:0] voted_state_2;
  (* syn_keep = "true" *) wire [2:0] voted_state_3;

  assign voted_state_1 = (state_1     & state_2    ) | (state_2     & state_3    ) | (state_1     & state_3    ); // Majority logic
  assign voted_state_2 = (state_1     & state_2    ) | (state_2     & state_3    ) | (state_1     & state_3    ); // Majority logic
  assign voted_state_3 = (state_1     & state_2    ) | (state_2     & state_3    ) | (state_1     & state_3    ); // Majority logic

  assign XSTATE = voted_state_1;

  (* syn_keep = "true" *) reg [2:0] nextstate_1;
  (* syn_keep = "true" *) reg [2:0] nextstate_2;
  (* syn_keep = "true" *) reg [2:0] nextstate_3;

  (* syn_preserve = "true" *)  reg DONE_1;
  (* syn_preserve = "true" *)  reg DONE_2;
  (* syn_preserve = "true" *)  reg DONE_3;
  (* syn_keep = "true" *)      wire voted_DONE_1;
  (* syn_keep = "true" *)      wire voted_DONE_2;
  (* syn_keep = "true" *)      wire voted_DONE_3;
  (* syn_preserve = "true" *)  reg INC_CHAN_1;
  (* syn_preserve = "true" *)  reg INC_CHAN_2;
  (* syn_preserve = "true" *)  reg INC_CHAN_3;
  (* syn_preserve = "true" *)  reg INC_CHIP_1;
  (* syn_preserve = "true" *)  reg INC_CHIP_2;
  (* syn_preserve = "true" *)  reg INC_CHIP_3;
  (* syn_preserve = "true" *)  reg INC_CNT_1;
  (* syn_preserve = "true" *)  reg INC_CNT_2;
  (* syn_preserve = "true" *)  reg INC_CNT_3;
  (* syn_preserve = "true" *)  reg L1A_RD_EN_1;
  (* syn_preserve = "true" *)  reg L1A_RD_EN_2;
  (* syn_preserve = "true" *)  reg L1A_RD_EN_3;
  (* syn_preserve = "true" *)  reg RDENA_1;
  (* syn_preserve = "true" *)  reg RDENA_2;
  (* syn_preserve = "true" *)  reg RDENA_3;
  (* syn_preserve = "true" *)  reg RST_CHAN_1;
  (* syn_preserve = "true" *)  reg RST_CHAN_2;
  (* syn_preserve = "true" *)  reg RST_CHAN_3;
  (* syn_preserve = "true" *)  reg RST_CHIP_1;
  (* syn_preserve = "true" *)  reg RST_CHIP_2;
  (* syn_preserve = "true" *)  reg RST_CHIP_3;
  (* syn_preserve = "true" *)  reg RST_CNT_1;
  (* syn_preserve = "true" *)  reg RST_CNT_2;
  (* syn_preserve = "true" *)  reg RST_CNT_3;
  (* syn_keep = "true" *)      reg next_DONE_1;
  (* syn_keep = "true" *)      reg next_DONE_2;
  (* syn_keep = "true" *)      reg next_DONE_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign voted_DONE_1 = (DONE_1      & DONE_2     ) | (DONE_2      & DONE_3     ) | (DONE_1      & DONE_3     ); // Majority logic
  assign voted_DONE_2 = (DONE_1      & DONE_2     ) | (DONE_2      & DONE_3     ) | (DONE_1      & DONE_3     ); // Majority logic
  assign voted_DONE_3 = (DONE_1      & DONE_2     ) | (DONE_2      & DONE_3     ) | (DONE_1      & DONE_3     ); // Majority logic
  assign INC_CHAN     = (INC_CHAN_1  & INC_CHAN_2 ) | (INC_CHAN_2  & INC_CHAN_3 ) | (INC_CHAN_1  & INC_CHAN_3 ); // Majority logic
  assign INC_CHIP     = (INC_CHIP_1  & INC_CHIP_2 ) | (INC_CHIP_2  & INC_CHIP_3 ) | (INC_CHIP_1  & INC_CHIP_3 ); // Majority logic
  assign INC_CNT      = (INC_CNT_1   & INC_CNT_2  ) | (INC_CNT_2   & INC_CNT_3  ) | (INC_CNT_1   & INC_CNT_3  ); // Majority logic
  assign L1A_RD_EN    = (L1A_RD_EN_1 & L1A_RD_EN_2) | (L1A_RD_EN_2 & L1A_RD_EN_3) | (L1A_RD_EN_1 & L1A_RD_EN_3); // Majority logic
  assign RDENA        = (RDENA_1     & RDENA_2    ) | (RDENA_2     & RDENA_3    ) | (RDENA_1     & RDENA_3    ); // Majority logic
  assign RST_CHAN     = (RST_CHAN_1  & RST_CHAN_2 ) | (RST_CHAN_2  & RST_CHAN_3 ) | (RST_CHAN_1  & RST_CHAN_3 ); // Majority logic
  assign RST_CHIP     = (RST_CHIP_1  & RST_CHIP_2 ) | (RST_CHIP_2  & RST_CHIP_3 ) | (RST_CHIP_1  & RST_CHIP_3 ); // Majority logic
  assign RST_CNT      = (RST_CNT_1   & RST_CNT_2  ) | (RST_CNT_2   & RST_CNT_3  ) | (RST_CNT_1   & RST_CNT_3  ); // Majority logic


  // comb always block
  always @* begin
    nextstate_1 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_2 = 3'bxxx; // default to x because default_state_is_x is set
    nextstate_3 = 3'bxxx; // default to x because default_state_is_x is set
    next_DONE_1 = voted_DONE_1;
    next_DONE_2 = voted_DONE_2;
    next_DONE_3 = voted_DONE_3;
    case (voted_state_1)
      Idle          : begin
        if                    (RDY && !JTAG_MODE) begin
                                                            nextstate_1 = Wait;
                                                            next_DONE_1 = 0;
        end
        else                                                nextstate_1 = Idle;
      end
      Inc_Chan_state:                                       nextstate_1 = Rd_Ena;
      L1A_Rd_two    : if      (CNT ==  1)                   nextstate_1 = Rd_Ena;
                      else                                  nextstate_1 = L1A_Rd_two;
      Last          : begin
        if                    (RDY)                         nextstate_1 = Wait;
        else begin
                                                            nextstate_1 = Idle;
                                                            next_DONE_1 = 1;
        end
      end
      Rd_Ena        : if      ((CHIP == 4) && (CHAN ==15))  nextstate_1 = Last;
                      else if ((CHIP == 4))                 nextstate_1 = Inc_Chan_state;
                      else                                  nextstate_1 = Rd_Ena;
      Wait          : if      (CNT == 3)                    nextstate_1 = L1A_Rd_two;
                      else                                  nextstate_1 = Wait;
    endcase
    case (voted_state_2)
      Idle          : begin
        if                    (RDY && !JTAG_MODE) begin
                                                            nextstate_2 = Wait;
                                                            next_DONE_2 = 0;
        end
        else                                                nextstate_2 = Idle;
      end
      Inc_Chan_state:                                       nextstate_2 = Rd_Ena;
      L1A_Rd_two    : if      (CNT ==  1)                   nextstate_2 = Rd_Ena;
                      else                                  nextstate_2 = L1A_Rd_two;
      Last          : begin
        if                    (RDY)                         nextstate_2 = Wait;
        else begin
                                                            nextstate_2 = Idle;
                                                            next_DONE_2 = 1;
        end
      end
      Rd_Ena        : if      ((CHIP == 4) && (CHAN ==15))  nextstate_2 = Last;
                      else if ((CHIP == 4))                 nextstate_2 = Inc_Chan_state;
                      else                                  nextstate_2 = Rd_Ena;
      Wait          : if      (CNT == 3)                    nextstate_2 = L1A_Rd_two;
                      else                                  nextstate_2 = Wait;
    endcase
    case (voted_state_3)
      Idle          : begin
        if                    (RDY && !JTAG_MODE) begin
                                                            nextstate_3 = Wait;
                                                            next_DONE_3 = 0;
        end
        else                                                nextstate_3 = Idle;
      end
      Inc_Chan_state:                                       nextstate_3 = Rd_Ena;
      L1A_Rd_two    : if      (CNT ==  1)                   nextstate_3 = Rd_Ena;
                      else                                  nextstate_3 = L1A_Rd_two;
      Last          : begin
        if                    (RDY)                         nextstate_3 = Wait;
        else begin
                                                            nextstate_3 = Idle;
                                                            next_DONE_3 = 1;
        end
      end
      Rd_Ena        : if      ((CHIP == 4) && (CHAN ==15))  nextstate_3 = Last;
                      else if ((CHIP == 4))                 nextstate_3 = Inc_Chan_state;
                      else                                  nextstate_3 = Rd_Ena;
      Wait          : if      (CNT == 3)                    nextstate_3 = L1A_Rd_two;
                      else                                  nextstate_3 = Wait;
    endcase
  end

  // Assign reg'd outputs to state bits

  // sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      state_1 <= Idle;
      state_2 <= Idle;
      state_3 <= Idle;
      DONE_1 <= 0;
      DONE_2 <= 0;
      DONE_3 <= 0;
    end
    else begin
      state_1 <= nextstate_1;
      state_2 <= nextstate_2;
      state_3 <= nextstate_3;
      DONE_1 <= next_DONE_1;
      DONE_2 <= next_DONE_2;
      DONE_3 <= next_DONE_3;
    end
  end

  // datapath sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      INC_CHAN_1 <= 0;
      INC_CHAN_2 <= 0;
      INC_CHAN_3 <= 0;
      INC_CHIP_1 <= 0;
      INC_CHIP_2 <= 0;
      INC_CHIP_3 <= 0;
      INC_CNT_1 <= 0;
      INC_CNT_2 <= 0;
      INC_CNT_3 <= 0;
      L1A_RD_EN_1 <= 0;
      L1A_RD_EN_2 <= 0;
      L1A_RD_EN_3 <= 0;
      RDENA_1 <= 0;
      RDENA_2 <= 0;
      RDENA_3 <= 0;
      RST_CHAN_1 <= 0;
      RST_CHAN_2 <= 0;
      RST_CHAN_3 <= 0;
      RST_CHIP_1 <= 0;
      RST_CHIP_2 <= 0;
      RST_CHIP_3 <= 0;
      RST_CNT_1 <= 0;
      RST_CNT_2 <= 0;
      RST_CNT_3 <= 0;
    end
    else begin
      INC_CHAN_1 <= 0; // default
      INC_CHAN_2 <= 0; // default
      INC_CHAN_3 <= 0; // default
      INC_CHIP_1 <= 0; // default
      INC_CHIP_2 <= 0; // default
      INC_CHIP_3 <= 0; // default
      INC_CNT_1 <= 0; // default
      INC_CNT_2 <= 0; // default
      INC_CNT_3 <= 0; // default
      L1A_RD_EN_1 <= 0; // default
      L1A_RD_EN_2 <= 0; // default
      L1A_RD_EN_3 <= 0; // default
      RDENA_1 <= 0; // default
      RDENA_2 <= 0; // default
      RDENA_3 <= 0; // default
      RST_CHAN_1 <= 0; // default
      RST_CHAN_2 <= 0; // default
      RST_CHAN_3 <= 0; // default
      RST_CHIP_1 <= 0; // default
      RST_CHIP_2 <= 0; // default
      RST_CHIP_3 <= 0; // default
      RST_CNT_1 <= 0; // default
      RST_CNT_2 <= 0; // default
      RST_CNT_3 <= 0; // default
      case (nextstate_1)
        Idle          : begin
                               RST_CHAN_1 <= 1;
                               RST_CHIP_1 <= 1;
                               RST_CNT_1 <= 1;
        end
        Inc_Chan_state: begin
                               INC_CHAN_1 <= 1;
                               INC_CHIP_1 <= 1;
                               RDENA_1 <= 1;
        end
        L1A_Rd_two    : begin
                               INC_CNT_1 <= 1;
                               L1A_RD_EN_1 <= 1;
                               RST_CHAN_1 <= 1;
                               RST_CHIP_1 <= 1;
        end
        Last          : begin
                               INC_CHAN_1 <= 1;
                               INC_CHIP_1 <= 1;
                               RDENA_1 <= 1;
                               RST_CNT_1 <= 1;
        end
        Rd_Ena        : begin
                               INC_CHIP_1 <= 1;
                               RDENA_1 <= 1;
        end
        Wait          :        INC_CNT_1 <= 1;
      endcase
      case (nextstate_2)
        Idle          : begin
                               RST_CHAN_2 <= 1;
                               RST_CHIP_2 <= 1;
                               RST_CNT_2 <= 1;
        end
        Inc_Chan_state: begin
                               INC_CHAN_2 <= 1;
                               INC_CHIP_2 <= 1;
                               RDENA_2 <= 1;
        end
        L1A_Rd_two    : begin
                               INC_CNT_2 <= 1;
                               L1A_RD_EN_2 <= 1;
                               RST_CHAN_2 <= 1;
                               RST_CHIP_2 <= 1;
        end
        Last          : begin
                               INC_CHAN_2 <= 1;
                               INC_CHIP_2 <= 1;
                               RDENA_2 <= 1;
                               RST_CNT_2 <= 1;
        end
        Rd_Ena        : begin
                               INC_CHIP_2 <= 1;
                               RDENA_2 <= 1;
        end
        Wait          :        INC_CNT_2 <= 1;
      endcase
      case (nextstate_3)
        Idle          : begin
                               RST_CHAN_3 <= 1;
                               RST_CHIP_3 <= 1;
                               RST_CNT_3 <= 1;
        end
        Inc_Chan_state: begin
                               INC_CHAN_3 <= 1;
                               INC_CHIP_3 <= 1;
                               RDENA_3 <= 1;
        end
        L1A_Rd_two    : begin
                               INC_CNT_3 <= 1;
                               L1A_RD_EN_3 <= 1;
                               RST_CHAN_3 <= 1;
                               RST_CHIP_3 <= 1;
        end
        Last          : begin
                               INC_CHAN_3 <= 1;
                               INC_CHIP_3 <= 1;
                               RDENA_3 <= 1;
                               RST_CNT_3 <= 1;
        end
        Rd_Ena        : begin
                               INC_CHIP_3 <= 1;
                               RDENA_3 <= 1;
        end
        Wait          :        INC_CNT_3 <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [111:0] statename;
  always @* begin
    case (state_1)
      Idle          : statename = "Idle";
      Inc_Chan_state: statename = "Inc_Chan_state";
      L1A_Rd_two    : statename = "L1A_Rd_two";
      Last          : statename = "Last";
      Rd_Ena        : statename = "Rd_Ena";
      Wait          : statename = "Wait";
      default       : statename = "XXXXXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

