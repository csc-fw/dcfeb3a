
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:06:17 at 16:09:24 (www.fizzim.com)

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
    case (state)
      Idle    : if (START)                                        nextstate = Transfer;
                else                                              nextstate = Idle;
      Transfer: if (SAMPLE == SAMP_MAX && SEL == 3'd5 && !START)  nextstate = Idle;
                else                                              nextstate = Transfer;
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
      SINC <= 0;
      SRST <= 0;
    end
    else begin
      SINC <= 0; // default
      SRST <= 0; // default
      case (nextstate)
        Idle    : SRST <= 1;
        Transfer: SINC <= 1;
      endcase
    end
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

