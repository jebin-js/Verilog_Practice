module demux_1to4 (

input a,
input s1,
input s2,
output w,
output x,
output y,
output z

);

wire w1, w2;

not g_1 (w1, s1);
not g_2 (w2, s2);

and g_3 (w, a, w1, w2);
and g_4 (x, a, w1, s2);
and g_5 (y, a, s1, w2);
and g_6 (z, a, s1, s2);

endmodule


