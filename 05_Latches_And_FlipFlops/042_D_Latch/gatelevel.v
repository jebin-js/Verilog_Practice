module d_latch (

input d,
input En,
output q,
output q_bar

);

wire d_bar;

wire s, r;

not (d_bar, d);

and (s, d, En);
and (r, d_bar, En);

nand (q, s, q_bar);
nand (q_bar, r, q);

endmodule


