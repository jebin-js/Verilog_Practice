module non_blocking_assignment (

input a,
input clk,
output reg x,
output reg y

);

always @(posedge clk) begin

x <= a;
y <= x;

end

endmodule
