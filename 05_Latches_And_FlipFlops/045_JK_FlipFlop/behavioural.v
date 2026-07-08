module jk_flipflop (

input j,
input k,
input clk,

output reg q,
output reg q_bar

);

always@ (posedge clk) begin

if (j == 0 & k == 0) begin

q <= q;
q_bar <= q_bar;

end

else if (j == 0 & k == 1) begin

q <= 0;
q_bar <= 1;

end

else if (j == 1 & k == 0) begin

q <= 1;
q_bar <= 0;

end

else begin

q <= ~q;
q_bar <= ~q_bar;

end

end

endmodule 

