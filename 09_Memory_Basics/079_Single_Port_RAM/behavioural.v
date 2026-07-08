module single_port_ram (

input clk,
input we,
input [2:0] address,
input [3:0] data_in,

output reg [3:0] data_out

);


reg [3:0] memory [0:7];

always @(posedge clk) begin

if(we) begin

memory[address] <= data_in;

end

else begin

data_out <= memory[address] ;

end


end

endmodule
