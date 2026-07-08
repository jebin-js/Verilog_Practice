module parity_checker (

input [3:0] a,
input parity,

output even_error,
output odd_error

);


assign even_error = a[0] ^ a[1] ^ a[2] ^ a[3] ^ parity;
assign odd_error = ~ (a[0] ^ a[1] ^ a[2] ^ a[3] ^ parity);

//using reduction operator

/* assign even_error = ^a ^ parity;
   assign odd_error = !( ^a ^parity);*/

endmodule
