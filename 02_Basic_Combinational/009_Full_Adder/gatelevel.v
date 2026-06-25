module full_adder (

input a, b, cin,
output sum, carry

);

wire w1, w2, w3;

xor gate_1 (w1, a, b);
xor gate_2 (sum, w1, cin);

and gate_3 (w2, a, b);
and gate_4 (w3, w1, cin);

or gate_5 (carry, w2, w3);

endmodule


