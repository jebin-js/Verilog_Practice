module demux_1to4 (

input a,
input s1,
input s2,
output w,
output x,
output y,
output z

);

assign w = (!s1 & !s2 & a);
assign x = (!s1 & s2 & a);
assign y = (s1 & !s2 & a);
assign z = (s1 & s2 & a);

endmodule 
