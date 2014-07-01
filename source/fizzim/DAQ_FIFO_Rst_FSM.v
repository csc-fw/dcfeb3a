
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:06:30 at 15:49:59 (www.fizzim.com)

module DAQ_FIFO_Rst_FSM (
  output reg DONE,
  output reg FIFO_RST,
  output reg INC_H,
  input CLK,
  input wire [3:0] HOLD,
  input RST 
);

  // state bits
  parameter 
  Idle        = 3'b000, 
  Clear       = 3'b001, 
  Pause       = 3'b010, 
  Reset_FIFOs = 3'b011, 
  Run         = 3'b100; 

  reg [2:0] state;

  reg [2:0] nextstate;


  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    case (state)
      Idle       :                     nextstate = Clear;
      Clear      : if (HOLD == 4'd5)   nextstate = Reset_FIFOs;
                   else                nextstate = Clear;
      Pause      : if (HOLD == 4'd15)  nextstate = Run;
                   else                nextstate = Pause;
      Reset_FIFOs: if (HOLD == 4'd10)  nextstate = Pause;
                   else                nextstate = Reset_FIFOs;
      Run        :                     nextstate = Run;
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
      DONE <= 0;
      FIFO_RST <= 1;
      INC_H <= 0;
    end
    else begin
      DONE <= 0; // default
      FIFO_RST <= 0; // default
      INC_H <= 0; // default
      case (nextstate)
        Idle       :        FIFO_RST <= 1;
        Clear      :        INC_H <= 1;
        Pause      :        INC_H <= 1;
        Reset_FIFOs: begin
                            FIFO_RST <= 1;
                            INC_H <= 1;
        end
        Run        :        DONE <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [87:0] statename;
  always @* begin
    case (state)
      Idle       : statename = "Idle";
      Clear      : statename = "Clear";
      Pause      : statename = "Pause";
      Reset_FIFOs: statename = "Reset_FIFOs";
      Run        : statename = "Run";
      default    : statename = "XXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

