module odd_even_detector(

input [3:0] a,

output odd,
output even

);

assign odd = a[0];
assign even =~(a[0]);

endmodule


