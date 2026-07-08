module dual_port_ram(

input clk_a,
input we_a,
input [2:0] address_a,
input [3:0] data_in_a,
output reg [3:0] data_out_a,


input clk_b,
input we_b,
input [2:0] address_b,
input [3:0] data_in_b,
output reg [3:0] data_out_b

);

reg [3:0] memory [0:7];

always @(posedge clk_a) begin

if(we_a)
memory[address_a] <= data_in_a;
else
data_out_a <= memory [address_a];

end

always @(posedge clk_b) begin

if(we_b)
memory[address_b] <= data_in_b;
else
data_out_b <= memory [address_b];

end

endmodule
