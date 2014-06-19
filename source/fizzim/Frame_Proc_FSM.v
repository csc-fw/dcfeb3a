
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:06:17 at 14:47:55 (www.fizzim.com)

module Frame_Proc_FSM (
  output reg CLR_CRC,
  output reg CRC_CALC,
  output reg INC_ROM,
  output reg RST_ROM,
  output reg TX_ACK,
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

  reg [3:0] state;

  assign FRM_STATE = state;

  reg [3:0] nextstate;


  // comb always block
  always @* begin
    nextstate = 4'bxxxx; // default to x because default_state_is_x is set
    case (state)
      Idle      : if (VALID)             nextstate = Inc_Rom;
                  else                   nextstate = Idle;
      CRC_EOP   : if (ROM_ADDR == 3'd6)  nextstate = Rst_ROM;
                  else                   nextstate = CRC_EOP;
      Data      : if (!VALID)            nextstate = CRC_EOP;
                  else                   nextstate = Data;
      Inc_Rom   :                        nextstate = SOP;
      Preamble_1:                        nextstate = Preamble_2;
      Preamble_2:                        nextstate = Preamble_3;
      Preamble_3:                        nextstate = SOF_TX_Ack;
      Rst_ROM   :                        nextstate = Idle;
      SOF_TX_Ack:                        nextstate = Data;
      SOP       :                        nextstate = Preamble_1;
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
      CRC_CALC <= 0;
      INC_ROM <= 0;
      RST_ROM <= 0;
      TX_ACK <= 0;
    end
    else begin
      CLR_CRC <= 0; // default
      CRC_CALC <= 0; // default
      INC_ROM <= 0; // default
      RST_ROM <= 0; // default
      TX_ACK <= 0; // default
      case (nextstate)
        CRC_EOP   :        INC_ROM <= 1;
        Data      :        CRC_CALC <= VALID;
        Inc_Rom   :        INC_ROM <= 1;
        Preamble_1:        CLR_CRC <= 1;
        Preamble_2:        CLR_CRC <= 1;
        Preamble_3: begin
                           CLR_CRC <= 1;
                           INC_ROM <= 1;
        end
        Rst_ROM   :        RST_ROM <= 1;
        SOF_TX_Ack: begin
                           CLR_CRC <= 1;
                           INC_ROM <= 1;
                           TX_ACK <= 1;
        end
        SOP       : begin
                           CLR_CRC <= 1;
                           INC_ROM <= 1;
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

