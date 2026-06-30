module parity_generator (

input [3:0] a,
output reg odd_parity,
output reg even_parity

);

always@ (*) begin

if (^a) begin

odd_parity = 0;
even_parity = 1;

end

else begin

even_parity = 0;
odd_parity = 1;

end

end

endmodule
