module half_adder(

input a,
input b,
output reg sum,
output reg carry

);

integer i;

always @(*) begin 
 for(i = 0; i < 1; i = i + 1)
begin 

sum = a ^ b;
carry = a & b;

end

end 

endmodule
