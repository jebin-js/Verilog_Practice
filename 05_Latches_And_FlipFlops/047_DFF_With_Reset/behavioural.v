module d_flipflop (

input d,
input clk,
input rst,

output reg q,
output reg q_bar

);

always @(posedge clk or posedge rst) begin

if (rst) begin

q <= 1'b0;
q_bar <= 1'b1;

end


else begin 
q <= d;
q_bar <= ~d;

end

end


endmodule
