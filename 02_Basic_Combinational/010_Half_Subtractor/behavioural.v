module half_subtractor (

input a, b,
output reg D, B0

);

always@ (*) begin

D = a ^ b;
B0 = !a & b;

end 

endmodule
