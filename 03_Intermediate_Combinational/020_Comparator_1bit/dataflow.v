module comparator_1bit (

input a0,
input b0,

output a_equal_b,
output a_less_b,
output a_greater_b

);

assign a_equal_b = !(a0 ^ b0);
assign a_less_b = ((!a0) & b0);
assign a_greater_b = (a0 & (!b0));

endmodule
