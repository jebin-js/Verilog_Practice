module comparator_1bit (

input a0,
input b0,
output a_equal_b,
output a_less_b,
output a_greater_b

);

wire w1, w2;

not g_1(w1, a0);
not g_2(w2, b0);

xnor (a_equal_b, a0, b0);

and (a_less_b, w1, b0);

and (a_greater_b, a0, w2);

endmodule



