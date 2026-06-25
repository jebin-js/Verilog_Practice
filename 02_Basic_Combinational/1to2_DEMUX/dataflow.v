module demux_1to2 (

input a,
input s,
output x,
output y

);

assign x = (!s & a);
assign y = ( s & a);

endmodule
