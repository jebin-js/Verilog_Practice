module half_subtractor (

input a, b,
output D,B0

);

wire w1;

xor (D, a, b);

not (w1, a);

and (B0, w1, b);

endmodule

