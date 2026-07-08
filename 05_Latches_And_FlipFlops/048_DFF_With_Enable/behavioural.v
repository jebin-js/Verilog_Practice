module dff_with_en (

input d,
input clk,
input en,

output reg q,
output reg q_bar

);

always @(posedge clk) begin

if (en) begin

q <= d;
q_bar <= ~d;

end

else begin

q <= q;

end

end

endmodule

