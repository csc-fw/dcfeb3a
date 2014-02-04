
// Created by fizzim.pl version 4.41 on 2014:02:03 at 16:24:31 (www.fizzim.com)

module FIFO_Load_FSM (
  output reg SINC,
  output reg SRST,
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
  
  reg state;
  reg nextstate;
  
  // comb always block
  always @* begin
    nextstate = 1'bx; // default to x because default_state_is_x is set
    SINC = 0; // default
    SRST = 0; // default
    case (state)
      Idle    : begin
                                                          SRST = 1;
        if (START)                                        nextstate = Transfer;
        else                                              nextstate = Idle;
      end
      Transfer: begin
                                                          SINC = 1;
        if (SAMPLE == SAMP_MAX && SEL == 3'd5 && !START)  nextstate = Idle;
        else                                              nextstate = Transfer;
      end
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
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [63:0] statename;
  always @* begin
    case (state)
      Idle    : statename = "Idle";
      Transfer: statename = "Transfer";
      default : statename = "XXXXXXXX";
    endcase
  end
  `endif

endmodule

