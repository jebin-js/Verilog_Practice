module carry_lookahead_adder (

input [3:0] a,
input [3:0] b,
input cin,

output reg [3:0] sum,
output reg carry

);

integer i;
reg c;


always@ (*) begin

c = cin;

for (i = 0; i < 4; i = i + 1) begin

sum[i] = a[i] ^ b[i] ^ c;
c = (a[i] & b[i] | ((a[i] ^ b[i]) & c));

end 

carry = c;

end 

endmodule




