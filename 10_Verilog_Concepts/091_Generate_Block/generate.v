module and_gate #(

parameter width = 4

)(

input [width-1:0] a,
input [width-1:0] b,
output [width-1:0] y

);

genvar i;

generate 

for( i = 0; i < width; i = i +1) begin

assign y[i] = a[i] & b[i];

end

endgenerate

endmodule
