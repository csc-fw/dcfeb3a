
// Created by fizzim_tmr.pl version $Revision: 4.44 on 2014:06:18 at 11:34:45 (www.fizzim.com)

module DSR_align_FSM (
  output reg ALIGNED,
  output reg BIT_SLIP_EVN,
  output reg BIT_SLIP_ODD,
  output reg DSR_RST,
  output reg STRT_PIPE,
  input CLK,
  input RST 
);

  // Inserted from attribute insert_at_top_of_module:
  reg [2:0] wcnt;
  reg [3:0] slip_cnt;
  

  // state bits
  parameter 
  Start       = 4'b0000, 
  Aligned     = 4'b0001, 
  BS_even_odd = 4'b0010, 
  BS_odd      = 4'b0011, 
  BSlip_Wait  = 4'b0100, 
  BSodd_Wait  = 4'b0101, 
  DSR_rst     = 4'b0110, 
  ReStartPipe = 4'b0111, 
  Wait1       = 4'b1000, 
  Wrst        = 4'b1001; 

  reg [3:0] state;

  reg [3:0] nextstate;

  reg winc;

  // comb always block
  always @* begin
    nextstate = 4'bxxxx; // default to x because default_state_is_x is set
    case (state)
      Start      :                                           nextstate = DSR_rst;
      Aligned    :                                           nextstate = Aligned;
      BS_even_odd:                                           nextstate = BSlip_Wait;
      BS_odd     :                                           nextstate = BSodd_Wait;
      BSlip_Wait : if      ((wcnt == 4) && (slip_cnt == 4))  nextstate = BS_odd;
                   else if ((wcnt == 4))                     nextstate = BS_even_odd;
                   else                                      nextstate = BSlip_Wait;
      BSodd_Wait : if      ((wcnt == 4))                     nextstate = ReStartPipe;
                   else                                      nextstate = BSodd_Wait;
      DSR_rst    : if      ((wcnt == 5))                     nextstate = Wrst;
                   else                                      nextstate = DSR_rst;
      ReStartPipe:                                           nextstate = Aligned;
      Wait1      : if      (wcnt == 5)                       nextstate = BS_even_odd;
                   else                                      nextstate = Wait1;
      Wrst       :                                           nextstate = Wait1;
    endcase
  end

  // Assign reg'd outputs to state bits

  // sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST)
      state <= Start;
    else
      state <= nextstate;
  end

  // datapath sequential always block
  always @(posedge CLK or posedge RST) begin
    if (RST) begin
      ALIGNED <= 0;
      BIT_SLIP_EVN <= 0;
      BIT_SLIP_ODD <= 0;
      DSR_RST <= 0;
      STRT_PIPE <= 0;
      winc <= 0;
    end
    else begin
      ALIGNED <= 0; // default
      BIT_SLIP_EVN <= 0; // default
      BIT_SLIP_ODD <= 0; // default
      DSR_RST <= 0; // default
      STRT_PIPE <= 0; // default
      winc <= 0; // default
      case (nextstate)
        Aligned    :        ALIGNED <= 1;
        BS_even_odd: begin
                            BIT_SLIP_EVN <= 1;
                            BIT_SLIP_ODD <= 1;
        end
        BS_odd     :        BIT_SLIP_ODD <= 1;
        BSlip_Wait :        winc <= 1;
        BSodd_Wait :        winc <= 1;
        DSR_rst    : begin
                            DSR_RST <= 1;
                            winc <= 1;
        end
        ReStartPipe:        STRT_PIPE <= 1;
        Wait1      :        winc <= 1;
      endcase
    end
  end

  // This code allows you to see state names in simulation
  `ifndef SYNTHESIS
  reg [87:0] statename;
  always @* begin
    case (state)
      Start      : statename = "Start";
      Aligned    : statename = "Aligned";
      BS_even_odd: statename = "BS_even_odd";
      BS_odd     : statename = "BS_odd";
      BSlip_Wait : statename = "BSlip_Wait";
      BSodd_Wait : statename = "BSodd_Wait";
      DSR_rst    : statename = "DSR_rst";
      ReStartPipe: statename = "ReStartPipe";
      Wait1      : statename = "Wait1";
      Wrst       : statename = "Wrst";
      default    : statename = "XXXXXXXXXXX";
    endcase
  end
  `endif

  // Inserted from attribute insert_at_bottom_of_module:
  always @(posedge CLK) begin
  	   if(winc)
  			wcnt <= wcnt +1;
   	else
  			wcnt <= 3'h0;
   end
   
   always @(posedge CLK or posedge RST) begin
      if(RST)
   	   slip_cnt <= 4'h0;
   	else
   	   if(BIT_SLIP_EVN || BIT_SLIP_ODD)
   		   slip_cnt <= slip_cnt +1;
   		else
   		   slip_cnt <= slip_cnt;
   end
   
  

endmodule

