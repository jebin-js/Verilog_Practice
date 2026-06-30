module comparator_4bit (

input [3:0] a,
input [3:0] b,

output a_equal_b,
output a_less_b,
output a_greater_b

);

// wire for not gates

wire w0, w1, w2, w3;
wire w4, w5, w6, w7;

// not of input a

not g_1 (w0, a[0]);
not g_2 (w1, a[1]);
not g_3 (w2, a[2]);
not g_4 (w3, a[3]);

// not of input b

not g_5 (w4, b[0]);
not g_6 (w5, b[1]);
not g_7 (w6, b[2]);
not g_8 (w7, b[3]);

// wire for xor gates

wire wi0, wi1, wi2, wi3;

xnor (wi0, a[0], b[0]);
xnor (wi1, a[1], b[1]);
xnor (wi2, a[2], b[2]);
xnor (wi3, a[3], b[3]);

// a_equal_b 

and (a_equal_b, wi0, wi1, wi2, wi3);

// a_less_b

wire x1, x2, x3, x4;

and (x1, w1, b[0]);
and (x2, wi0, w1, b[1]);
and (x3, wi0, wi1, w2, b[2]);
and (x4, wi0, wi1, wi2, w3, b[3]);

or (a_less_b, x1, x2, x3, x4);

// a_greater_b

wire y1, y2, y3, y4;

and (y1, a[0], w4);
and (y2, wi0, a[1], w5);
and (y3, wi0, wi1, a[2], w6);
and (y4, wi0, wi1, wi2, a[3], w7);

or (a_greater_b, y1, y2, y3, y4);



endmodule
