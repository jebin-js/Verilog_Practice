module d_flipflop (

input d,
input clk,
output reg q,
output reg q_bar

);

always@ (posedge clk) begin

if(d) begin
q <= 1'b1;
end

else begin
	q <= 1'b0;

end

q_bar = ~q;

end

endmodule
