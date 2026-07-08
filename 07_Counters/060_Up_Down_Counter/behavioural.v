module up_down_counter (

input clk,
input rst,
input up_down,

output reg [3:0] up_down_count

);

always @(posedge clk or posedge rst) begin

if (rst)

up_down_count <= 4'b0000;

else begin

if (up_down)

up_down_count <= up_down_count + 1;

else

up_down_count <= up_down_count - 1;

end

end

endmodule 
