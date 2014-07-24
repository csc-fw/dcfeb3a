
// Created by fizzim.pl version 4.41 on 2013:06:28 at 12:59:48 (www.fizzim.com)

module ADC_Init 
  #(
    parameter TIME_OUT = 12'd1000
  )(
  output reg ADC_INIT,
  output reg ADC_RST,
  output reg CRST,
  output reg INC,
  output reg RUN,
  input CLK,
  input wire [4:0] CNT,
  input INIT_DONE,
  input RST,
  input wire [11:0] SLOW_CNT 
);
  
  // state bits
  parameter 
  Reset     = 3'b000, 
  ADC_Reset = 3'b001, 
  Init      = 3'b010, 
  Run       = 3'b011, 
  Wait      = 3'b100, 
  Wait2     = 3'b101; 
  
  reg [2:0] state;
  reg [2:0] nextstate;
  
  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    case (state)
      Reset    :                                 nextstate = Wait;
      ADC_Reset: if      (CNT == 12)             nextstate = Wait;
                 else                            nextstate = ADC_Reset;
      Init     : if      (INIT_DONE)             nextstate = Wait2;
                 else                            nextstate = Init;
      Run      :                                 nextstate = Run;
      Wait     : if      (CNT == 17)             nextstate = Init;
                 else if (CNT == 5)              nextstate = ADC_Reset;
                 else                            nextstate = Wait;
      Wait2    : if      (SLOW_CNT == TIME_OUT)  nextstate = Run;
                 else                            nextstate = Wait2;
    endcase
  end
  
  // Assign reg'd outputs to state bits
  
  // sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST)
      state <= Reset;
    else
      state <= nextstate;
  end
  
  // datapath sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      ADC_INIT <= 0;
      ADC_RST <= 0;
      CRST <= 1;
      INC <= 0;
      RUN <= 0;
    end
    else begin
      ADC_INIT <= 0; // default
      ADC_RST <= 0; // default
      CRST <= 0; // default
      INC <= 0; // default
      RUN <= 0; // default
      case (nextstate)
        Reset    :        CRST <= 1;
        ADC_Reset: begin
                          ADC_RST <= 1;
                          INC <= 1;
        end
        Init     : begin
                          ADC_INIT <= 1;
                          CRST <= 1;
        end
        Run      : begin
                          CRST <= 1;
                          RUN <= 1;
        end
        Wait     :        INC <= 1;
        Wait2    :        INC <= 1;
      endcase
    end
  end
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [71:0] statename;
  always @* begin
    case (state)
      Reset    : statename = "Reset";
      ADC_Reset: statename = "ADC_Reset";
      Init     : statename = "Init";
      Run      : statename = "Run";
      Wait     : statename = "Wait";
      Wait2    : statename = "Wait2";
      default  : statename = "XXXXXXXXX";
    endcase
  end
  `endif

endmodule

