module synchronous_fifo #(

parameter data_width = 8,
parameter depth = 8,
parameter address_width = 2

)(

input clk,
input rst,
input wr_en,
input rd_en,
input [data_width-1:0] data_in,

output reg [data_width-1:0] data_out,
output full,
output empty

);

reg [data_width-1:0] memory[0:depth-1];

