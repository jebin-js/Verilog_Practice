module d_latch(

input d,
input En,
output q,
output q_bar

);

assign q = En ? d : q;
assign q_bar = ~q;

endmodule
