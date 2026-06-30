module bcd_adder (

input [3:0] a,
input [3:0] b,
input cin,

output [3:0] sum,
output c_out

);

wire [4:0] temp_sum;
wire correction;
wire [4:0] corrected_sum;

assign temp_sum = a + b + cin;

assign correction = (temp_sum > 5'd9);

assign corrected_sum = correction ? (temp_sum + 5'd6) : temp_sum;

assign sum = corrected_sum[3:0];
assign c_out = corrected_sum[4];

endmodule
