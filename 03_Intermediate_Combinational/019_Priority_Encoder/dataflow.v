module priority_encoder (

input d0,
input d1,
input d2,
input d3,

output y0,
output y1

);

assign y0 = (d3 | (!d2 & d1));
assign y1 = d3 | d2;  

endmodule
