
// Created by fizzim.pl version 4.41 on 2013:03:22 at 15:43:28 (www.fizzim.com)

module Pow_on_Rst 
  #(
    parameter POR_tmo = 4'hC
  )(
  output reg MMCM_RST,
  output reg POR,
  output reg RST_QPLL,
  output wire [2:0] POR_STATE,
  input CLK,
  input EOS,
  input MMCM_LOCK,
  input QPLL_LOCK 
);
  
  // Inserted from attribute insert_at_top_of_module:
  reg [3:0] timer;
  wire por_done;
  
  // state bits
  parameter 
  Qpll_rst   = 3'b000, 
  Pow_on_Rst = 3'b001, 
  Run_State  = 3'b010, 
  W4Qpll     = 3'b011, 
  W4SysClk   = 3'b100; 
  
  reg [2:0] state;
  assign POR_STATE = state;
  reg [2:0] nextstate;
  reg por_cnt;
  
  // comb always block
  always @* begin
    nextstate = 3'bxxx; // default to x because default_state_is_x is set
    case (state)
      Qpll_rst  :                       nextstate = W4Qpll;
      Pow_on_Rst: if      (!MMCM_LOCK)  nextstate = W4Qpll;
                  else if (por_done)    nextstate = Run_State;
                  else                  nextstate = Pow_on_Rst;
      Run_State :                       nextstate = Run_State;
      W4Qpll    : if      (QPLL_LOCK)   nextstate = W4SysClk;
                  else                  nextstate = W4Qpll;
      W4SysClk  : if      (MMCM_LOCK)   nextstate = Pow_on_Rst;
                  else                  nextstate = W4SysClk;
    endcase
  end
  
  // Assign reg'd outputs to state bits
  
  // sequential always block
  always @(posedge CLK or negedge EOS) begin
    if (!EOS)
      state <= Qpll_rst;
    else
      state <= nextstate;
  end
  
  // datapath sequential always block
  always @(posedge CLK or negedge EOS) begin
    if (!EOS) begin
      MMCM_RST <= 1;
      POR <= 1;
      RST_QPLL <= 1;
      por_cnt <= 0;
    end
    else begin
      MMCM_RST <= 0; // default
      POR <= 1; // default
      RST_QPLL <= 0; // default
      por_cnt <= 0; // default
      case (nextstate)
        Qpll_rst  : begin
                           MMCM_RST <= 1;
                           RST_QPLL <= 1;
        end
        Pow_on_Rst:        por_cnt <= 1;
        Run_State :        POR <= 0;
        W4Qpll    :        MMCM_RST <= 1;
      endcase
    end
  end
  
  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [79:0] statename;
  always @* begin
    case (state)
      Qpll_rst  : statename = "Qpll_rst";
      Pow_on_Rst: statename = "Pow_on_Rst";
      Run_State : statename = "Run_State";
      W4Qpll    : statename = "W4Qpll";
      W4SysClk  : statename = "W4SysClk";
      default   : statename = "XXXXXXXXXX";
    endcase
  end
  `endif

  // Inserted from attribute insert_at_bottom_of_module:
  assign por_done = por_cnt && (timer == POR_tmo);
  
  always @(posedge CLK)
  begin
     if(por_cnt)
        if(por_done)
           timer <= timer;
        else
           timer <= timer + 1;
     else
        timer <= 4'h0;
  end
  
endmodule

