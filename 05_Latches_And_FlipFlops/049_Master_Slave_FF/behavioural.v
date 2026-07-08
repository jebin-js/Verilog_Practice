module master_slave_dff (

input d,
input clk,
input rst,

output reg q,
output reg q_bar

);

reg master;

always @(*) begin

if (rst)
master <= 1'b0;
else if (clk)
	master <= d;

end

always @(*) begin

	if (rst) begin
		q <= 1'b0;
		q_bar <= 1'b1;
	end
	else if (!clk) begin
		
q <= master;
q_bar <= ~master;

end

end

endmodule


