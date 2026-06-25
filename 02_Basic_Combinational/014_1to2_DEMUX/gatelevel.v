module demux_1to2 (

input a,
input s,
output x,
output y

);

wire w1;

not (w1, s);
and (x, a, w1);
and (y, a, s);

endmodule
