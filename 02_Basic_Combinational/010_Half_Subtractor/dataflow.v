module half_subtractor (

input a, b,
output D, B0

);

assign D = a ^ b;
assign B0 = !a & b;

endmodule
