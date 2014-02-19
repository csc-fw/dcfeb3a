
// Created by fizzim.pl version 4.41 on 2014:02:11 at 12:10:13 (www.fizzim.com)

module transfer_samples (
  output reg INC_CHAN,
  output reg INC_CHIP,
  output reg INC_CNT,
  output reg L1A_RD_EN,
  output reg RDENA,
  output reg RST_CHAN,
  output reg RST_CHIP,
  output reg RST_CNT,
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
  
  reg [2:0] state;
  reg [2:0] nextstate;
  
  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    case (state)
      Idle          : if      (RDY && !JTAG_MODE)           nextstate = Wait;
                      else                                  nextstate = Idle;
      Inc_Chan_state:                                       nextstate = Rd_Ena;
      L1A_Rd_two    : if      (CNT ==  1)                   nextstate = Rd_Ena;
                      else                                  nextstate = L1A_Rd_two;
      Last          : if      (RDY)                         nextstate = Wait;
                      else                                  nextstate = Idle;
      Rd_Ena        : if      ((CHIP == 4) && (CHAN ==15))  nextstate = Last;
                      else if ((CHIP == 4))                 nextstate = Inc_Chan_state;
                      else                                  nextstate = Rd_Ena;
      Wait          : if      (CNT == 3)                    nextstate = L1A_Rd_two;
                      else                                  nextstate = Wait;
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
      INC_CHAN <= 0;
      INC_CHIP <= 0;
      INC_CNT <= 0;
      L1A_RD_EN <= 0;
      RDENA <= 0;
      RST_CHAN <= 0;
      RST_CHIP <= 0;
      RST_CNT <= 0;
    end
    else begin
      INC_CHAN <= 0; // default
      INC_CHIP <= 0; // default
      INC_CNT <= 0; // default
      L1A_RD_EN <= 0; // default
      RDENA <= 0; // default
      RST_CHAN <= 0; // default
      RST_CHIP <= 0; // default
      RST_CNT <= 0; // default
      case (nextstate)
        Idle          : begin
                               RST_CHAN <= 1;
                               RST_CHIP <= 1;
                               RST_CNT <= 1;
        end
        Inc_Chan_state: begin
                               INC_CHAN <= 1;
                               INC_CHIP <= 1;
                               RDENA <= 1;
        end
        L1A_Rd_two    : begin
                               INC_CNT <= 1;
                               L1A_RD_EN <= 1;
                               RST_CHAN <= 1;
                               RST_CHIP <= 1;
        end
        Last          : begin
                               INC_CHAN <= 1;
                               INC_CHIP <= 1;
                               RDENA <= 1;
                               RST_CNT <= 1;
        end
        Rd_Ena        : begin
                               INC_CHIP <= 1;
                               RDENA <= 1;
        end
        Wait          :        INC_CNT <= 1;
      endcase
    end
  end
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [111:0] statename;
  always @* begin
    case (state)
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

