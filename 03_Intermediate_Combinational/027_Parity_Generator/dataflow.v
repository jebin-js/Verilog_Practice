module parity_generator (

input [3:0] a,

output even_parity,
output odd_parity

);

assign even_parity = a[3] ^ a[2] ^ a[1] ^ a[0];
assign odd_parity = ~(even_parity);

endmodule
