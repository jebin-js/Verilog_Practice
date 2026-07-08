module sr_flipflop (

input s,
input r,
input clk,

output q,
output q_bar

);

wire s_bar, r_bar;

assign s_bar = s & clk;
assign r_bar = r & clk;

assign q = ~(r_bar | q_bar);
assign q_bar = ~(s_bar | q);

endmodule
