
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:08:25 at 17:05:58 (www.fizzim.com)

module auto_load_FSM_TMR 
  #(
    parameter MAX_ADDR = 6'd33
  )(
  output ABORTED,
  output wire [5:0] AL_CNT,
  output AL_ENA,
  output CLR_AL_DONE,
  output COMPLETED,
  output EXECUTE,
  input AL_DONE,
  input BUSY,
  input CLK,
  input RST,
  input START 
);

  // state bits
  parameter 
  Idle       = 4'b0000, 
  AL_Ena     = 4'b0001, 
  Chk_Abort  = 4'b0010, 
  Read_First = 4'b0011, 
  Read_One   = 4'b0100, 
  Wait2      = 4'b0101, 
  Wait3      = 4'b0110, 
  Wait4      = 4'b0111, 
  Wait5      = 4'b1000, 
  Wait6      = 4'b1001; 

  (* syn_preserve = "true" *) reg [3:0] state_1;
  (* syn_preserve = "true" *) reg [3:0] state_2;
  (* syn_preserve = "true" *) reg [3:0] state_3;

  (* syn_keep = "true" *) wire [3:0] voted_state_1;
  (* syn_keep = "true" *) wire [3:0] voted_state_2;
  (* syn_keep = "true" *) wire [3:0] voted_state_3;

  assign voted_state_1       = (state_1       & state_2      ) | (state_2       & state_3      ) | (state_1       & state_3      ); // Majority logic
  assign voted_state_2       = (state_1       & state_2      ) | (state_2       & state_3      ) | (state_1       & state_3      ); // Majority logic
  assign voted_state_3       = (state_1       & state_2      ) | (state_2       & state_3      ) | (state_1       & state_3      ); // Majority logic

  (* syn_keep = "true" *) reg [3:0] nextstate_1;
  (* syn_keep = "true" *) reg [3:0] nextstate_2;
  (* syn_keep = "true" *) reg [3:0] nextstate_3;

  (* syn_preserve = "true" *)  reg ABORTED_1;
  (* syn_preserve = "true" *)  reg ABORTED_2;
  (* syn_preserve = "true" *)  reg ABORTED_3;
  (* syn_preserve = "true" *)  reg [5:0] AL_CNT_1;
  (* syn_preserve = "true" *)  reg [5:0] AL_CNT_2;
  (* syn_preserve = "true" *)  reg [5:0] AL_CNT_3;
  (* syn_preserve = "true" *)  reg AL_ENA_1;
  (* syn_preserve = "true" *)  reg AL_ENA_2;
  (* syn_preserve = "true" *)  reg AL_ENA_3;
  (* syn_preserve = "true" *)  reg CLR_AL_DONE_1;
  (* syn_preserve = "true" *)  reg CLR_AL_DONE_2;
  (* syn_preserve = "true" *)  reg CLR_AL_DONE_3;
  (* syn_preserve = "true" *)  reg COMPLETED_1;
  (* syn_preserve = "true" *)  reg COMPLETED_2;
  (* syn_preserve = "true" *)  reg COMPLETED_3;
  (* syn_preserve = "true" *)  reg EXECUTE_1;
  (* syn_preserve = "true" *)  reg EXECUTE_2;
  (* syn_preserve = "true" *)  reg EXECUTE_3;
  (* syn_preserve = "true" *)  reg [6:0] cnt_1;
  (* syn_preserve = "true" *)  reg [6:0] cnt_2;
  (* syn_preserve = "true" *)  reg [6:0] cnt_3;
  (* syn_keep = "true" *)      wire [6:0] voted_cnt_1;
  (* syn_keep = "true" *)      wire [6:0] voted_cnt_2;
  (* syn_keep = "true" *)      wire [6:0] voted_cnt_3;

  // Assignment of outputs and flags to voted majority logic of replicated registers
  assign ABORTED     = (ABORTED_1     & ABORTED_2    ) | (ABORTED_2     & ABORTED_3    ) | (ABORTED_1     & ABORTED_3    ); // Majority logic
  assign AL_CNT      = (AL_CNT_1      & AL_CNT_2     ) | (AL_CNT_2      & AL_CNT_3     ) | (AL_CNT_1      & AL_CNT_3     ); // Majority logic
  assign AL_ENA      = (AL_ENA_1      & AL_ENA_2     ) | (AL_ENA_2      & AL_ENA_3     ) | (AL_ENA_1      & AL_ENA_3     ); // Majority logic
  assign CLR_AL_DONE = (CLR_AL_DONE_1 & CLR_AL_DONE_2) | (CLR_AL_DONE_2 & CLR_AL_DONE_3) | (CLR_AL_DONE_1 & CLR_AL_DONE_3); // Majority logic
  assign COMPLETED   = (COMPLETED_1   & COMPLETED_2  ) | (COMPLETED_2   & COMPLETED_3  ) | (COMPLETED_1   & COMPLETED_3  ); // Majority logic
  assign EXECUTE     = (EXECUTE_1     & EXECUTE_2    ) | (EXECUTE_2     & EXECUTE_3    ) | (EXECUTE_1     & EXECUTE_3    ); // Majority logic
  assign voted_cnt_1         = (cnt_1         & cnt_2        ) | (cnt_2         & cnt_3        ) | (cnt_1         & cnt_3        ); // Majority logic
  assign voted_cnt_2         = (cnt_1         & cnt_2        ) | (cnt_2         & cnt_3        ) | (cnt_1         & cnt_3        ); // Majority logic
  assign voted_cnt_3         = (cnt_1         & cnt_2        ) | (cnt_2         & cnt_3        ) | (cnt_1         & cnt_3        ); // Majority logic

  // Assignment of error detection logic to replicated signals

  // comb always block
  always @* begin
    nextstate_1 = 4'bxxxx; // default to x because default_state_is_x is set
    nextstate_2 = 4'bxxxx; // default to x because default_state_is_x is set
    nextstate_3 = 4'bxxxx; // default to x because default_state_is_x is set
    AL_CNT_1 = voted_cnt_1; // default
    AL_CNT_2 = voted_cnt_2; // default
    AL_CNT_3 = voted_cnt_3; // default
    case (voted_state_1)
      Idle      : if (START)                    nextstate_1 = AL_Ena;
                  else                          nextstate_1 = Idle;
      AL_Ena    :                               nextstate_1 = Read_First;
      Chk_Abort : if (AL_DONE)                  nextstate_1 = Wait5;
                  else                          nextstate_1 = Read_One;
      Read_First:                               nextstate_1 = Wait2;
      Read_One  : if (voted_cnt_1 == MAX_ADDR)  nextstate_1 = Wait4;
                  else                          nextstate_1 = Wait3;
      Wait2     : if (!BUSY)                    nextstate_1 = Chk_Abort;
                  else                          nextstate_1 = Wait2;
      Wait3     : if (!BUSY)                    nextstate_1 = Read_One;
                  else                          nextstate_1 = Wait3;
      Wait4     : if (AL_DONE)                  nextstate_1 = Wait6;
                  else                          nextstate_1 = Wait4;
      Wait5     : if (!START)                   nextstate_1 = Idle;
                  else                          nextstate_1 = Wait5;
      Wait6     : if (!START)                   nextstate_1 = Idle;
                  else                          nextstate_1 = Wait6;
    endcase
    case (voted_state_2)
      Idle      : if (START)                    nextstate_2 = AL_Ena;
                  else                          nextstate_2 = Idle;
      AL_Ena    :                               nextstate_2 = Read_First;
      Chk_Abort : if (AL_DONE)                  nextstate_2 = Wait5;
                  else                          nextstate_2 = Read_One;
      Read_First:                               nextstate_2 = Wait2;
      Read_One  : if (voted_cnt_2 == MAX_ADDR)  nextstate_2 = Wait4;
                  else                          nextstate_2 = Wait3;
      Wait2     : if (!BUSY)                    nextstate_2 = Chk_Abort;
                  else                          nextstate_2 = Wait2;
      Wait3     : if (!BUSY)                    nextstate_2 = Read_One;
                  else                          nextstate_2 = Wait3;
      Wait4     : if (AL_DONE)                  nextstate_2 = Wait6;
                  else                          nextstate_2 = Wait4;
      Wait5     : if (!START)                   nextstate_2 = Idle;
                  else                          nextstate_2 = Wait5;
      Wait6     : if (!START)                   nextstate_2 = Idle;
                  else                          nextstate_2 = Wait6;
    endcase
    case (voted_state_3)
      Idle      : if (START)                    nextstate_3 = AL_Ena;
                  else                          nextstate_3 = Idle;
      AL_Ena    :                               nextstate_3 = Read_First;
      Chk_Abort : if (AL_DONE)                  nextstate_3 = Wait5;
                  else                          nextstate_3 = Read_One;
      Read_First:                               nextstate_3 = Wait2;
      Read_One  : if (voted_cnt_3 == MAX_ADDR)  nextstate_3 = Wait4;
                  else                          nextstate_3 = Wait3;
      Wait2     : if (!BUSY)                    nextstate_3 = Chk_Abort;
                  else                          nextstate_3 = Wait2;
      Wait3     : if (!BUSY)                    nextstate_3 = Read_One;
                  else                          nextstate_3 = Wait3;
      Wait4     : if (AL_DONE)                  nextstate_3 = Wait6;
                  else                          nextstate_3 = Wait4;
      Wait5     : if (!START)                   nextstate_3 = Idle;
                  else                          nextstate_3 = Wait5;
      Wait6     : if (!START)                   nextstate_3 = Idle;
                  else                          nextstate_3 = Wait6;
    endcase
  end

  // Assign reg'd outputs to state bits

  // sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      state_1 <= Idle;
      state_2 <= Idle;
      state_3 <= Idle;
    end
    else begin
      state_1 <= nextstate_1;
      state_2 <= nextstate_2;
      state_3 <= nextstate_3;
    end
  end

  // datapath sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      ABORTED_1 <= 0;
      ABORTED_2 <= 0;
      ABORTED_3 <= 0;
      AL_ENA_1 <= 0;
      AL_ENA_2 <= 0;
      AL_ENA_3 <= 0;
      CLR_AL_DONE_1 <= 0;
      CLR_AL_DONE_2 <= 0;
      CLR_AL_DONE_3 <= 0;
      COMPLETED_1 <= 0;
      COMPLETED_2 <= 0;
      COMPLETED_3 <= 0;
      EXECUTE_1 <= 0;
      EXECUTE_2 <= 0;
      EXECUTE_3 <= 0;
      cnt_1 <= 6'h00;
      cnt_2 <= 6'h00;
      cnt_3 <= 6'h00;
    end
    else begin
      ABORTED_1 <= 0; // default
      ABORTED_2 <= 0; // default
      ABORTED_3 <= 0; // default
      AL_ENA_1 <= 1; // default
      AL_ENA_2 <= 1; // default
      AL_ENA_3 <= 1; // default
      CLR_AL_DONE_1 <= 0; // default
      CLR_AL_DONE_2 <= 0; // default
      CLR_AL_DONE_3 <= 0; // default
      COMPLETED_1 <= 0; // default
      COMPLETED_2 <= 0; // default
      COMPLETED_3 <= 0; // default
      EXECUTE_1 <= 0; // default
      EXECUTE_2 <= 0; // default
      EXECUTE_3 <= 0; // default
      cnt_1 <= voted_cnt_1; // default
      cnt_2 <= voted_cnt_2; // default
      cnt_3 <= voted_cnt_3; // default
      case (nextstate_1)
        Idle      :        AL_ENA_1 <= 0;
        AL_Ena    : begin
                           CLR_AL_DONE_1 <= 1;
                           cnt_1 <= 6'h00;
        end
        Read_First:        EXECUTE_1 <= 1;
        Read_One  : begin
                           EXECUTE_1 <= 1;
                           cnt_1 <= voted_cnt_1 + 1;
        end
        Wait4     :        COMPLETED_1 <= 1;
        Wait5     :        ABORTED_1 <= 1;
      endcase
      case (nextstate_2)
        Idle      :        AL_ENA_2 <= 0;
        AL_Ena    : begin
                           CLR_AL_DONE_2 <= 1;
                           cnt_2 <= 6'h00;
        end
        Read_First:        EXECUTE_2 <= 1;
        Read_One  : begin
                           EXECUTE_2 <= 1;
                           cnt_2 <= voted_cnt_2 + 1;
        end
        Wait4     :        COMPLETED_2 <= 1;
        Wait5     :        ABORTED_2 <= 1;
      endcase
      case (nextstate_3)
        Idle      :        AL_ENA_3 <= 0;
        AL_Ena    : begin
                           CLR_AL_DONE_3 <= 1;
                           cnt_3 <= 6'h00;
        end
        Read_First:        EXECUTE_3 <= 1;
        Read_One  : begin
                           EXECUTE_3 <= 1;
                           cnt_3 <= voted_cnt_3 + 1;
        end
        Wait4     :        COMPLETED_3 <= 1;
        Wait5     :        ABORTED_3 <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [79:0] statename;
  always @* begin
    case (state_1)
      Idle      : statename = "Idle";
      AL_Ena    : statename = "AL_Ena";
      Chk_Abort : statename = "Chk_Abort";
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

