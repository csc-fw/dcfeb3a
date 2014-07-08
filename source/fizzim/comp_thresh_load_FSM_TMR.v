
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:07:08 at 14:39:58 (www.fizzim.com)

module comp_thresh_load_FSM (
  output CLR_CNT,
  output SET_DONE,
  output SHFT_ENA,
  input CLK,
  input wire [3:0] CNT,
  input RST,
  input START 
);

  // state bits
  parameter 
  Idle     = 2'b00, 
  Pload    = 2'b01, 
  Set_Done = 2'b10, 
  Shift    = 2'b11; 

  (* syn_preserve = "true" *) reg [1:0] state_1;
  (* syn_preserve = "true" *) reg [1:0] state_2;
  (* syn_preserve = "true" *) reg [1:0] state_3;

  (* syn_keep = "true" *) wire [1:0] voted_state_1;
  (* syn_keep = "true" *) wire [1:0] voted_state_2;
  (* syn_keep = "true" *) wire [1:0] voted_state_3;

  assign voted_state_1 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic
  assign voted_state_2 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic
  assign voted_state_3 = (state_1    & state_2   ) | (state_2    & state_3   ) | (state_1    & state_3   ); // Majority logic

  (* syn_keep = "true" *) reg [1:0] nextstate_1;
  (* syn_keep = "true" *) reg [1:0] nextstate_2;
  (* syn_keep = "true" *) reg [1:0] nextstate_3;

  (* syn_preserve = "true" *)  reg CLR_CNT_1;
  (* syn_preserve = "true" *)  reg CLR_CNT_2;
  (* syn_preserve = "true" *)  reg CLR_CNT_3;
  (* syn_preserve = "true" *)  reg SET_DONE_1;
  (* syn_preserve = "true" *)  reg SET_DONE_2;
  (* syn_preserve = "true" *)  reg SET_DONE_3;
  (* syn_preserve = "true" *)  reg SHFT_ENA_1;
  (* syn_preserve = "true" *)  reg SHFT_ENA_2;
  (* syn_preserve = "true" *)  reg SHFT_ENA_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign CLR_CNT    = (CLR_CNT_1  & CLR_CNT_2 ) | (CLR_CNT_2  & CLR_CNT_3 ) | (CLR_CNT_1  & CLR_CNT_3 ); // Majority logic
  assign SET_DONE   = (SET_DONE_1 & SET_DONE_2) | (SET_DONE_2 & SET_DONE_3) | (SET_DONE_1 & SET_DONE_3); // Majority logic
  assign SHFT_ENA   = (SHFT_ENA_1 & SHFT_ENA_2) | (SHFT_ENA_2 & SHFT_ENA_3) | (SHFT_ENA_1 & SHFT_ENA_3); // Majority logic


  // comb always block
  always @* begin
    nextstate_1 = 2'bxx; // default to x because default_state_is_x is set
    nextstate_2 = 2'bxx; // default to x because default_state_is_x is set
    nextstate_3 = 2'bxx; // default to x because default_state_is_x is set
    case (voted_state_1)
      Idle    : if (START)        nextstate_1 = Pload;
                else              nextstate_1 = Idle;
      Pload   :                   nextstate_1 = Shift;
      Set_Done: if (!START)       nextstate_1 = Idle;
                else              nextstate_1 = Set_Done;
      Shift   : if (CNT == 4'hF)  nextstate_1 = Set_Done;
                else              nextstate_1 = Shift;
    endcase
    case (voted_state_2)
      Idle    : if (START)        nextstate_2 = Pload;
                else              nextstate_2 = Idle;
      Pload   :                   nextstate_2 = Shift;
      Set_Done: if (!START)       nextstate_2 = Idle;
                else              nextstate_2 = Set_Done;
      Shift   : if (CNT == 4'hF)  nextstate_2 = Set_Done;
                else              nextstate_2 = Shift;
    endcase
    case (voted_state_3)
      Idle    : if (START)        nextstate_3 = Pload;
                else              nextstate_3 = Idle;
      Pload   :                   nextstate_3 = Shift;
      Set_Done: if (!START)       nextstate_3 = Idle;
                else              nextstate_3 = Set_Done;
      Shift   : if (CNT == 4'hF)  nextstate_3 = Set_Done;
                else              nextstate_3 = Shift;
    endcase
  end

  // Assign reg'd outputs to state bits

  // sequential always block
  always @(negedge CLK or posedge RST) begin
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
  always @(negedge CLK or posedge RST) begin
    if (RST) begin
      CLR_CNT_1 <= 0;
      CLR_CNT_2 <= 0;
      CLR_CNT_3 <= 0;
      SET_DONE_1 <= 0;
      SET_DONE_2 <= 0;
      SET_DONE_3 <= 0;
      SHFT_ENA_1 <= 0;
      SHFT_ENA_2 <= 0;
      SHFT_ENA_3 <= 0;
    end
    else begin
      CLR_CNT_1 <= 0; // default
      CLR_CNT_2 <= 0; // default
      CLR_CNT_3 <= 0; // default
      SET_DONE_1 <= 0; // default
      SET_DONE_2 <= 0; // default
      SET_DONE_3 <= 0; // default
      SHFT_ENA_1 <= 0; // default
      SHFT_ENA_2 <= 0; // default
      SHFT_ENA_3 <= 0; // default
      case (nextstate_1)
        Pload   : CLR_CNT_1 <= 1;
        Set_Done: SET_DONE_1 <= 1;
        Shift   : SHFT_ENA_1 <= 1;
      endcase
      case (nextstate_2)
        Pload   : CLR_CNT_2 <= 1;
        Set_Done: SET_DONE_2 <= 1;
        Shift   : SHFT_ENA_2 <= 1;
      endcase
      case (nextstate_3)
        Pload   : CLR_CNT_3 <= 1;
        Set_Done: SET_DONE_3 <= 1;
        Shift   : SHFT_ENA_3 <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [63:0] statename;
  always @* begin
    case (state_1)
      Idle    : statename = "Idle";
      Pload   : statename = "Pload";
      Set_Done: statename = "Set_Done";
      Shift   : statename = "Shift";
      default : statename = "XXXXXXXX";
    endcase
  end
  `endif

endmodule

