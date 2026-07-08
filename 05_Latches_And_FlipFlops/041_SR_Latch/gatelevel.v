module sr_latch (

input s,
input r,

output q,
output q_bar

);

nor (q, r, q_bar);
nor (q_bar, s, q);

endmodule
