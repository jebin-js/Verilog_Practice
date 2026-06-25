module mux_2to1(

input a,
input b,
input s,
output y

);

wire w1, w2, w3;

not gate_1(w1, s);

and gate_2(w2, w1, a);

and gate_3(w3, w1, b);

or gate_4(y, w2, w3);

endmodule




