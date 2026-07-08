module parity_checker (

input [3:0] a,
input parity,

output reg odd_error,
output reg even_error

);

always@ (*) begin

	if (^a ^ parity) begin

odd_error = 1;
even_error = 0;

end

else begin

odd_error = 0;
even_error = 1;

end

end

endmodule
