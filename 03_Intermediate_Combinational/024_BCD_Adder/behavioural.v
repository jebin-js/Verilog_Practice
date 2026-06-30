module bcd_adder (

input [3:0] a,
input [3:0] b,
input cin,

output reg [3:0] sum,
output reg c_out

); 

reg [4:0] temp;

always @(*) begin

temp = a + b + cin;

if (temp > 9)

temp = temp + 6;

else

temp = temp;

sum = temp[3:0];
c_out = temp[4];

end

endmodule
