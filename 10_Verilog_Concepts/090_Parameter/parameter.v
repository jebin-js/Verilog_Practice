module and_gate #(

parameter width = 8

)(

input [width-1:0] a,
input [width-1:0] b,

output [width-1:0] y

);

assign y = a & b;

endmodule


