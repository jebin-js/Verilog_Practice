module decoder_3to8 (

input a,
input b,
input c,

output y0,
output y1,
output y2,
output y3,
output y4,
output y5,
output y6,
output y7

);

wire w1, w2, w3;

not g_1(w1, a);
not g_2(w2, b);
not g_3(w3, c);

and g_4(y0, w1, w2, w3);
and g_5(y1, w1, w2, c );
and g_6(y2, w1, b, w3 );
and g_7(y3, w1, b, c  );
and g_8(y4, a, w2, w3 );
and g_9(y5, a, w2, c  );
and g_10(y6, a, b, w3 );
and g_11(y7, a, b , c );

endmodule
