module mux_4to1 (

input a,
input b,
input c,
input d,
input s1,
input s2,
output y

);

assign y = ((!s1 & !s2 & a) | (!s1 & s2 & b) | (s1 & !s2 & c) | (s1 & s2 & d));

endmodule
