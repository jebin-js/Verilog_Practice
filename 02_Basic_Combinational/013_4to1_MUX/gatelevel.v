module mux_4to1 (

input a,
input b,
input c,
input d,
input s1,
input s2, 
output y

);

wire w1, w2, w3, w4, w5, w6;


not g_1 (w1, s1);
not g_2 (w2, s2);

and g_3 (w3, w1, w2, a);
and g_4 (w4, w1, s2, b);
and g_5 (w5, s1, w2, c);
and g_6 (w6, s1, s2, d);

or g_7 (y, w3, w4, w5, w6);

endmodule
