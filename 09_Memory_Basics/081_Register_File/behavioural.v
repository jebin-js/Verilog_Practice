module register_file(

input clk,
input we,

input [2:0] write_address,
input [2:0] read_address1,
input [2:0] read_address2,

input [7:0] write_data,

output [7:0] read_data1,
output [7:0] read_data2

);

reg [7:0] register_file [0:7];

always @(posedge clk) begin

if(we) begin

register_file [write_address] <= write_data;

end

end


assign read_data1 = register_file [read_address1];
assign read_data2 = register_file [read_address2];

endmodule




 
