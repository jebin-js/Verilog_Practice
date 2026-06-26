module decoder_2to4 (

input a,
input b,
output w,
output x,
output y,
output z

);

wire w1, w2;


not g_1 (w1, a);
not g_2 (w2, b);

and g_3 (w, w1, w2);
and g_4 (x, w1, b);
and g_5 (y, a, w2);
and g_6 (z, a, b);

endmodule
