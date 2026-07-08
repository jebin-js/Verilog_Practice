module synchronous_counter #( parameter width = 16)
(

input clk,
input rst,

output reg [width-1:0] count

);

always @(posedge clk or posedge rst) begin

if (rst)

count = {width-1{1'b0}};

else 

count = count + 1'b1;

end

endmodule 


