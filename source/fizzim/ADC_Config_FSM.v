
// Created by fizzim.pl version 4.41 on 2013:06:28 at 13:13:01 (www.fizzim.com)

module ADC_Config_FSM 
  #(
    parameter Last_Addr = 5'h10
  )(
  output reg ADDR_RST,
  output reg CNTR_RST,
  output reg DONE,
  output reg INCR,
  output reg LOAD,
  output reg SCKEN,
  output reg SHEN,
  input wire [4:0] ADR,
  input CLK,
  input INIT,
  input RST,
  input wire [5:0] SCNTR 
);
  
  // state bits
  parameter 
  Idle         = 3'b000, 
  Done         = 3'b001, 
  End_Seq      = 3'b010, 
  Incr_Addr    = 3'b011, 
  Load         = 3'b100, 
  Shift_Enable = 3'b101, 
  Start_Seq    = 3'b110; 
  
  reg [2:0] state;
  reg [2:0] nextstate;
  
  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    ADDR_RST = 0; // default
    CNTR_RST = 0; // default
    INCR = 0; // default
    LOAD = 0; // default
    SCKEN = 0; // default
    SHEN = 0; // default
    case (state)
      Idle        : begin
                                                          ADDR_RST = 1;
                                                          CNTR_RST = 1;
        if      (INIT)                                    nextstate = Start_Seq;
        else                                              nextstate = Idle;
      end
      Done        : begin
                                                          ADDR_RST = 1;
                                                          CNTR_RST = 1;
        if      (~INIT)                                   nextstate = Idle;
      end
      End_Seq     : begin
                                                          CNTR_RST = 1;
                                                          SCKEN = 1;
                                                          nextstate = Done;
      end
      Incr_Addr   : begin
                                                          CNTR_RST = 1;
                                                          INCR = 1;
                                                          SCKEN = 1;
                                                          SHEN = 1;
                                                          nextstate = Load;
      end
      Load        : begin
                                                          LOAD = 1;
                                                          SCKEN = 1;
                                                          SHEN = 1;
                                                          nextstate = Shift_Enable;
      end
      Shift_Enable: begin
                                                          SCKEN = 1;
                                                          SHEN = 1;
        if      ((SCNTR == 6'd46) && (ADR == Last_Addr))  nextstate = End_Seq;
        else if ((SCNTR == 6'd46) && (ADR < Last_Addr))   nextstate = Incr_Addr;
        else                                              nextstate = Shift_Enable;
      end
      Start_Seq   : begin
                                                          LOAD = 1;
                                                          SCKEN = 1;
                                                          nextstate = Shift_Enable;
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
    if (RST)     DONE <= 0;
    else begin
      DONE <= 0; // default
      case (nextstate)
        Done        : DONE <= 1;
      endcase
    end
  end
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [95:0] statename;
  always @* begin
    case (state)
      Idle        : statename = "Idle";
      Done        : statename = "Done";
      End_Seq     : statename = "End_Seq";
      Incr_Addr   : statename = "Incr_Addr";
      Load        : statename = "Load";
      Shift_Enable: statename = "Shift_Enable";
      Start_Seq   : statename = "Start_Seq";
      default     : statename = "XXXXXXXXXXXX";
    endcase
  end
  `endif

endmodule

