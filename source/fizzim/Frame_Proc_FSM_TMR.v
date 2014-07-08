
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:07:08 at 14:44:54 (www.fizzim.com)

module Frame_Proc_FSM (
  output CLR_CRC,
  output CRC_DV,
  output INC_ROM,
  output RST_ROM,
  output TX_ACK,
  output wire [3:0] FRM_STATE,
  input CLK,
  input wire [2:0] ROM_ADDR,
  input RST,
  input VALID 
);

  // state bits
  parameter 
  Idle       = 4'b0000, 
  CRC_EOP    = 4'b0001, 
  Data       = 4'b0010, 
  Inc_Rom    = 4'b0011, 
  Preamble_1 = 4'b0100, 
  Preamble_2 = 4'b0101, 
  Preamble_3 = 4'b0110, 
  Rst_ROM    = 4'b0111, 
  SOF_TX_Ack = 4'b1000, 
  SOP        = 4'b1001; 

  (* syn_preserve = "true" *) reg [3:0] state_1;
  (* syn_preserve = "true" *) reg [3:0] state_2;
  (* syn_preserve = "true" *) reg [3:0] state_3;

  (* syn_keep = "true" *) wire [3:0] voted_state_1;
  (* syn_keep = "true" *) wire [3:0] voted_state_2;
  (* syn_keep = "true" *) wire [3:0] voted_state_3;

  assign voted_state_1 = (state_1   & state_2  ) | (state_2   & state_3  ) | (state_1   & state_3  ); // Majority logic
  assign voted_state_2 = (state_1   & state_2  ) | (state_2   & state_3  ) | (state_1   & state_3  ); // Majority logic
  assign voted_state_3 = (state_1   & state_2  ) | (state_2   & state_3  ) | (state_1   & state_3  ); // Majority logic

  assign FRM_STATE = voted_state_1;

  (* syn_keep = "true" *) reg [3:0] nextstate_1;
  (* syn_keep = "true" *) reg [3:0] nextstate_2;
  (* syn_keep = "true" *) reg [3:0] nextstate_3;

  (* syn_preserve = "true" *)  reg CLR_CRC_1;
  (* syn_preserve = "true" *)  reg CLR_CRC_2;
  (* syn_preserve = "true" *)  reg CLR_CRC_3;
  (* syn_preserve = "true" *)  reg CRC_DV_1;
  (* syn_preserve = "true" *)  reg CRC_DV_2;
  (* syn_preserve = "true" *)  reg CRC_DV_3;
  (* syn_preserve = "true" *)  reg INC_ROM_1;
  (* syn_preserve = "true" *)  reg INC_ROM_2;
  (* syn_preserve = "true" *)  reg INC_ROM_3;
  (* syn_preserve = "true" *)  reg RST_ROM_1;
  (* syn_preserve = "true" *)  reg RST_ROM_2;
  (* syn_preserve = "true" *)  reg RST_ROM_3;
  (* syn_preserve = "true" *)  reg TX_ACK_1;
  (* syn_preserve = "true" *)  reg TX_ACK_2;
  (* syn_preserve = "true" *)  reg TX_ACK_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign CLR_CRC   = (CLR_CRC_1 & CLR_CRC_2) | (CLR_CRC_2 & CLR_CRC_3) | (CLR_CRC_1 & CLR_CRC_3); // Majority logic
  assign CRC_DV    = (CRC_DV_1  & CRC_DV_2 ) | (CRC_DV_2  & CRC_DV_3 ) | (CRC_DV_1  & CRC_DV_3 ); // Majority logic
  assign INC_ROM   = (INC_ROM_1 & INC_ROM_2) | (INC_ROM_2 & INC_ROM_3) | (INC_ROM_1 & INC_ROM_3); // Majority logic
  assign RST_ROM   = (RST_ROM_1 & RST_ROM_2) | (RST_ROM_2 & RST_ROM_3) | (RST_ROM_1 & RST_ROM_3); // Majority logic
  assign TX_ACK    = (TX_ACK_1  & TX_ACK_2 ) | (TX_ACK_2  & TX_ACK_3 ) | (TX_ACK_1  & TX_ACK_3 ); // Majority logic


  // comb always block
  always @* begin
    nextstate_1 = 4'bxxxx; // default to x because default_state_is_x is set
    nextstate_2 = 4'bxxxx; // default to x because default_state_is_x is set
    nextstate_3 = 4'bxxxx; // default to x because default_state_is_x is set
    case (voted_state_1)
      Idle      : if (VALID)             nextstate_1 = Inc_Rom;
                  else                   nextstate_1 = Idle;
      CRC_EOP   : if (ROM_ADDR == 3'd6)  nextstate_1 = Rst_ROM;
                  else                   nextstate_1 = CRC_EOP;
      Data      : if (!VALID)            nextstate_1 = CRC_EOP;
                  else                   nextstate_1 = Data;
      Inc_Rom   :                        nextstate_1 = SOP;
      Preamble_1:                        nextstate_1 = Preamble_2;
      Preamble_2:                        nextstate_1 = Preamble_3;
      Preamble_3:                        nextstate_1 = SOF_TX_Ack;
      Rst_ROM   :                        nextstate_1 = Idle;
      SOF_TX_Ack:                        nextstate_1 = Data;
      SOP       :                        nextstate_1 = Preamble_1;
    endcase
    case (voted_state_2)
      Idle      : if (VALID)             nextstate_2 = Inc_Rom;
                  else                   nextstate_2 = Idle;
      CRC_EOP   : if (ROM_ADDR == 3'd6)  nextstate_2 = Rst_ROM;
                  else                   nextstate_2 = CRC_EOP;
      Data      : if (!VALID)            nextstate_2 = CRC_EOP;
                  else                   nextstate_2 = Data;
      Inc_Rom   :                        nextstate_2 = SOP;
      Preamble_1:                        nextstate_2 = Preamble_2;
      Preamble_2:                        nextstate_2 = Preamble_3;
      Preamble_3:                        nextstate_2 = SOF_TX_Ack;
      Rst_ROM   :                        nextstate_2 = Idle;
      SOF_TX_Ack:                        nextstate_2 = Data;
      SOP       :                        nextstate_2 = Preamble_1;
    endcase
    case (voted_state_3)
      Idle      : if (VALID)             nextstate_3 = Inc_Rom;
                  else                   nextstate_3 = Idle;
      CRC_EOP   : if (ROM_ADDR == 3'd6)  nextstate_3 = Rst_ROM;
                  else                   nextstate_3 = CRC_EOP;
      Data      : if (!VALID)            nextstate_3 = CRC_EOP;
                  else                   nextstate_3 = Data;
      Inc_Rom   :                        nextstate_3 = SOP;
      Preamble_1:                        nextstate_3 = Preamble_2;
      Preamble_2:                        nextstate_3 = Preamble_3;
      Preamble_3:                        nextstate_3 = SOF_TX_Ack;
      Rst_ROM   :                        nextstate_3 = Idle;
      SOF_TX_Ack:                        nextstate_3 = Data;
      SOP       :                        nextstate_3 = Preamble_1;
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
      CRC_DV_1 <= 0;
      CRC_DV_2 <= 0;
      CRC_DV_3 <= 0;
      INC_ROM_1 <= 0;
      INC_ROM_2 <= 0;
      INC_ROM_3 <= 0;
      RST_ROM_1 <= 0;
      RST_ROM_2 <= 0;
      RST_ROM_3 <= 0;
      TX_ACK_1 <= 0;
      TX_ACK_2 <= 0;
      TX_ACK_3 <= 0;
    end
    else begin
      CLR_CRC_1 <= 0; // default
      CLR_CRC_2 <= 0; // default
      CLR_CRC_3 <= 0; // default
      CRC_DV_1 <= 0; // default
      CRC_DV_2 <= 0; // default
      CRC_DV_3 <= 0; // default
      INC_ROM_1 <= 0; // default
      INC_ROM_2 <= 0; // default
      INC_ROM_3 <= 0; // default
      RST_ROM_1 <= 0; // default
      RST_ROM_2 <= 0; // default
      RST_ROM_3 <= 0; // default
      TX_ACK_1 <= 0; // default
      TX_ACK_2 <= 0; // default
      TX_ACK_3 <= 0; // default
      case (nextstate_1)
        CRC_EOP   :        INC_ROM_1 <= 1;
        Data      :        CRC_DV_1 <= 1;
        Inc_Rom   :        INC_ROM_1 <= 1;
        Preamble_1:        CLR_CRC_1 <= 1;
        Preamble_2:        CLR_CRC_1 <= 1;
        Preamble_3: begin
                           CLR_CRC_1 <= 1;
                           INC_ROM_1 <= 1;
        end
        Rst_ROM   :        RST_ROM_1 <= 1;
        SOF_TX_Ack: begin
                           CLR_CRC_1 <= 1;
                           INC_ROM_1 <= 1;
                           TX_ACK_1 <= 1;
        end
        SOP       : begin
                           CLR_CRC_1 <= 1;
                           INC_ROM_1 <= 1;
        end
      endcase
      case (nextstate_2)
        CRC_EOP   :        INC_ROM_2 <= 1;
        Data      :        CRC_DV_2 <= 1;
        Inc_Rom   :        INC_ROM_2 <= 1;
        Preamble_1:        CLR_CRC_2 <= 1;
        Preamble_2:        CLR_CRC_2 <= 1;
        Preamble_3: begin
                           CLR_CRC_2 <= 1;
                           INC_ROM_2 <= 1;
        end
        Rst_ROM   :        RST_ROM_2 <= 1;
        SOF_TX_Ack: begin
                           CLR_CRC_2 <= 1;
                           INC_ROM_2 <= 1;
                           TX_ACK_2 <= 1;
        end
        SOP       : begin
                           CLR_CRC_2 <= 1;
                           INC_ROM_2 <= 1;
        end
      endcase
      case (nextstate_3)
        CRC_EOP   :        INC_ROM_3 <= 1;
        Data      :        CRC_DV_3 <= 1;
        Inc_Rom   :        INC_ROM_3 <= 1;
        Preamble_1:        CLR_CRC_3 <= 1;
        Preamble_2:        CLR_CRC_3 <= 1;
        Preamble_3: begin
                           CLR_CRC_3 <= 1;
                           INC_ROM_3 <= 1;
        end
        Rst_ROM   :        RST_ROM_3 <= 1;
        SOF_TX_Ack: begin
                           CLR_CRC_3 <= 1;
                           INC_ROM_3 <= 1;
                           TX_ACK_3 <= 1;
        end
        SOP       : begin
                           CLR_CRC_3 <= 1;
                           INC_ROM_3 <= 1;
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
      CRC_EOP   : statename = "CRC_EOP";
      Data      : statename = "Data";
      Inc_Rom   : statename = "Inc_Rom";
      Preamble_1: statename = "Preamble_1";
      Preamble_2: statename = "Preamble_2";
      Preamble_3: statename = "Preamble_3";
      Rst_ROM   : statename = "Rst_ROM";
      SOF_TX_Ack: statename = "SOF_TX_Ack";
      SOP       : statename = "SOP";
      default   : statename = "XXXXXXXXXX";
    endcase
  end
  `endif

endmodule

