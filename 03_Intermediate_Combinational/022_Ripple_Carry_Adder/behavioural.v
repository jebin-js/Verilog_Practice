module ripple_carry_adder (

input [3:0] a,
input [3:0] b,
input cin,

output reg [3:0] sum,
output reg carry

);

reg c1, c2, c3;

always@ (*) begin 

{c1, sum[0]} = a[0] + b[0] +cin;
{c2, sum[1]} = a[1] + b[1] + c1;
{c3, sum[2]} = a[2] + b[2] + c2;
{carry, sum[3]} = a[3] + b[3] + c3;

end

endmodule
