module d_flipflop (

input d,
input clk,

output q,
output q_bar

);

wire d_bar;

assign d_bar = ~d;

wire s, r;

assign s = d & clk;
assign r = d_bar & clk;

assign q = ~(r | q_bar);
assign q_bar = ~(s | q);

endmodule
