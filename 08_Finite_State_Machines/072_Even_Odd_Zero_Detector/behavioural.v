module even_odd_zero_detector (

input clk,
input rst,
input x,

output reg y

);

parameter ODD  = 1'b0,
          EVEN = 1'b1;

reg present_state, next_state;

always @(posedge clk or posedge rst) begin

if(rst)
present_state <= ODD;
else
present_state <= next_state;

end

always @(*) begin

case (present_state)

ODD: begin

if (x == 0)

next_state = EVEN;

else

next_state = ODD;

end

EVEN: begin

if (x == 0)

next_state = ODD;

else

next_state = EVEN;

end

default: next_state = ODD;

endcase

end

always @(*)

case(present_state)

ODD: y = 0;
EVEN: y = 1;

default: y = 0;

endcase

endmodule


