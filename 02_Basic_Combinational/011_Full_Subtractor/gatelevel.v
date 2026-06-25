module full_subtractor(

input a, b, cin, 
output D, B0

);

wire w1, w2, w3, w4 ;

xor gate_1 (w1, a, b);
xor gate_2 (D, w1, cin);

not (w2, a);

and gate_3 (w3, w2, b);
and gate_4 (w4, w1, cin);

or gate_5 (B0, w3, w4);

endmodule
