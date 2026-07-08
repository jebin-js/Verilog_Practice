module sr_flipflop (

input s,
input r,
input clk,
output q,
output q_bar

);

wire s_bar, r_bar;
wire q_1, q_bar_1;

and (s_bar, s, clk);
and (r_bar, r, clk);

nor (q_1, r_bar, q_bar_1);
nor (q_bar_1, s_bar, q_1);

assign q = q_1;
assign q_bar = q_bar_1;

endmodule
