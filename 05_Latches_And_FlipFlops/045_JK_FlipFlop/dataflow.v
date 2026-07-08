module jk_flipflop (

input j,
input k,
input clk,

output q,
output q_bar

);

//JK latch

/*
wire j_bar, k_bar;

assign j_bar = ~(j & clk & q_bar);
assign k_bar = ~(k & clk & q);

assign q = ~(j_bar & q_bar);
assign q_bar = ~(k_bar & q);*/

wire d;

assign d = ~(j & q_bar ) | ~(k & q);

assign q = clk ? d : q;
assign q_bar = ~q;



endmodule
