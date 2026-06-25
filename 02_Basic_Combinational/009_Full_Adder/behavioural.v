module full_adder(

input a, b, cin,
output reg sum, carry

);

integer i;

always@ (*) begin 

for(i = 0; i < 1; i = i + 1)

begin

sum = a ^ b ^ cin;
carry = (a & b) | ( b & cin ) | ( cin & a);

end 

end 

endmodule
