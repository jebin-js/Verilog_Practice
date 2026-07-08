module alu_4bit (

input [3:0] a,
input [3:0] b,
input [1:0] s,

output [3:0] out,
output carry,
output borrow

);

parameter ADD = 00,
          SUB = 01,
          AND = 10,
          OR  = 11;


wire [4:0] add, sub;

assign add = a + b;
assign sub = a - b;

assign out = (s == ADD) ? add[3:0]: 
             (s == SUB) ? sub[3:0]: 
             (s == AND) ? (a & b) :
             (a | b);

assign carry = (s == ADD) ? add[4] : 1'b0;
assign borrow = ( s == SUB) ? sub[4] : 1'b0;

endmodule
