
// Created by fizzim.pl version 4.41 on 2014:01:20 at 13:28:20 (www.fizzim.com)

module auto_load_FSM (
  output reg ABORTED,
  output reg AL_ENA,
  output reg CLR_AL_DONE,
  output reg COMPLETED,
  output reg EXECUTE,
  output reg INC,
  output reg RST_ADDR,
  input wire [5:0] ADDR,
  input AL_DONE,
  input BUSY,
  input CLK,
  input RST,
  input START 
);
  
  // Inserted from attribute insert_at_top_of_module:
  localparam  MAX_ADDR     = 6'd33; 
  
  
  // state bits
  parameter 
  Idle       = 4'b0000, 
  AL_Ena     = 4'b0001, 
  Chk_Abort  = 4'b0010, 
  Inc_Addr1  = 4'b0011, 
  Inc_Addr2  = 4'b0100, 
  Read_First = 4'b0101, 
  Read_One   = 4'b0110, 
  Wait2      = 4'b0111, 
  Wait3      = 4'b1000, 
  Wait4      = 4'b1001, 
  Wait5      = 4'b1010, 
  Wait6      = 4'b1011; 
  
  reg [3:0] state;
  reg [3:0] nextstate;
  
  // comb always block
  always @* begin
    nextstate = 4'bxxxx; // default to x because default_state_is_x is set
    case (state)
      Idle      : if (START)           nextstate = AL_Ena;
                  else                 nextstate = Idle;
      AL_Ena    :                      nextstate = Read_First;
      Chk_Abort : if (AL_DONE)         nextstate = Wait5;
                  else                 nextstate = Inc_Addr1;
      Inc_Addr1 :                      nextstate = Read_One;
      Inc_Addr2 : if (ADDR==MAX_ADDR)  nextstate = Wait4;
                  else                 nextstate = Wait3;
      Read_First:                      nextstate = Wait2;
      Read_One  :                      nextstate = Inc_Addr2;
      Wait2     : if (!BUSY)           nextstate = Chk_Abort;
                  else                 nextstate = Wait2;
      Wait3     : if (!BUSY)           nextstate = Read_One;
                  else                 nextstate = Wait3;
      Wait4     : if (AL_DONE)         nextstate = Wait6;
                  else                 nextstate = Wait4;
      Wait5     : if (!START)          nextstate = Idle;
                  else                 nextstate = Wait5;
      Wait6     : if (!START)          nextstate = Idle;
                  else                 nextstate = Wait6;
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
      ABORTED <= 0;
      AL_ENA <= 0;
      CLR_AL_DONE <= 0;
      COMPLETED <= 0;
      EXECUTE <= 0;
      INC <= 0;
      RST_ADDR <= 0;
    end
    else begin
      ABORTED <= 0; // default
      AL_ENA <= 1; // default
      CLR_AL_DONE <= 0; // default
      COMPLETED <= 0; // default
      EXECUTE <= 0; // default
      INC <= 0; // default
      RST_ADDR <= 0; // default
      case (nextstate)
        Idle      :        AL_ENA <= 0;
        AL_Ena    : begin
                           CLR_AL_DONE <= 1;
                           RST_ADDR <= 1;
        end
        Inc_Addr1 :        INC <= 1;
        Inc_Addr2 :        INC <= 1;
        Read_First:        EXECUTE <= 1;
        Read_One  :        EXECUTE <= 1;
        Wait4     :        COMPLETED <= 1;
        Wait5     :        ABORTED <= 1;
      endcase
    end
  end
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [79:0] statename;
  always @* begin
    case (state)
      Idle      : statename = "Idle";
      AL_Ena    : statename = "AL_Ena";
      Chk_Abort : statename = "Chk_Abort";
      Inc_Addr1 : statename = "Inc_Addr1";
      Inc_Addr2 : statename = "Inc_Addr2";
      Read_First: statename = "Read_First";
      Read_One  : statename = "Read_One";
      Wait2     : statename = "Wait2";
      Wait3     : statename = "Wait3";
      Wait4     : statename = "Wait4";
      Wait5     : statename = "Wait5";
      Wait6     : statename = "Wait6";
      default   : statename = "XXXXXXXXXX";
    endcase
  end
  `endif

endmodule

