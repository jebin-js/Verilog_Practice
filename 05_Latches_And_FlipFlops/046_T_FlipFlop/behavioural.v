module t_flipflop (

input t,
input clk,

output reg q,
output reg q_bar

);

initial begin
q <= 0;
q_bar <= 1;
end

always@ (posedge clk) begin

if (t) begin

q <= ~q;

end

else begin

q <= q;

end

end

endmodule
