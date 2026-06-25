module full_subtractor (

input a, b, cin,
output D, B0

);

assign D = a ^ b ^ cin;
assign B0 = ((!a & b) | ((a ^ b) & cin));

endmodule
