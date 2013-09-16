
// Created by fizzim.pl version 4.41 on 2013:08:06 at 15:08:43 (www.fizzim.com)

module Pipe_Start_FSM (
  output reg INC_H,
  output reg PIP_RST,
  output reg RE,
  output reg WE,
  input CLK,
  input wire [1:0] HOLD,
  input wire [8:0] PDEPTH,
  input RESTART,
  input RST,
  input wire [8:0] WCNT 
);
  
  // state bits
  parameter 
  Idle       = 3'b000, 
  Clear      = 3'b001, 
  Reset_Pipe = 3'b010, 
  Run        = 3'b011, 
  Start_Pipe = 3'b100; 
  
  reg [2:0] state;
  reg [2:0] nextstate;
  
  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    INC_H = 0; // default
    PIP_RST = 0; // default
    WE = 0; // default
    case (state)
      Idle      :            nextstate = Clear;
      Clear     : begin
                             INC_H = 1;
        if (HOLD == 2'd3)    nextstate = Reset_Pipe;
        else                 nextstate = Clear;
      end
      Reset_Pipe: begin
                             INC_H = 1;
                             PIP_RST = 1;
        if (HOLD == 2'd3)    nextstate = Start_Pipe;
        else                 nextstate = Reset_Pipe;
      end
      Run       : begin
                             WE = 1;
        if (RESTART)         nextstate = Idle;
        else                 nextstate = Run;
      end
      Start_Pipe: begin
                             WE = 1;
        if (WCNT == PDEPTH)  nextstate = Run;
        else                 nextstate = Start_Pipe;
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
  
  // datapath sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST)     RE <= 0;
    else begin
      RE <= 0; // default
      case (nextstate)
        Run       : RE <= 1;
      endcase
    end
  end
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [79:0] statename;
  always @* begin
    case (state)
      Idle      : statename = "Idle";
      Clear     : statename = "Clear";
      Reset_Pipe: statename = "Reset_Pipe";
      Run       : statename = "Run";
      Start_Pipe: statename = "Start_Pipe";
      default   : statename = "XXXXXXXXXX";
    endcase
  end
  `endif

endmodule

