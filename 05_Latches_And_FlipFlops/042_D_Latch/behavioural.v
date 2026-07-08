module d_latch (

input d,
input En,

output reg q,
output reg q_bar

);

always@ (*) begin

	if (En) begin
		q = d;

	end

	q_bar = ~q;

end

endmodule
