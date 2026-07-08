module universal_shift_register(

input clk,
input rst,
input [2:1] s,
input shift_left_in,
input shift_right_in,
input [3:0] parallel_in,

output reg [3:0] q

);

parameter HOLD = 2'b00,
          SHIFT_RIGHT = 2'b01,
          SHIFT_LEFT = 2'b10,
          PARALLEL_LOAD = 2'b11;


always @(posedge clk or posedge rst) begin

if (rst)

q <= 4'b0000;

else begin

case({s[2], s[1]})

HOLD: q <= q;

SHIFT_RIGHT: q <= {shift_right_in, q[3:1]};

SHIFT_LEFT: q <= {q[2:0], shift_left_in};

PARALLEL_LOAD: q <= parallel_in;

endcase

end

end

endmodule






