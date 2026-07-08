module asynchronous_counter (

input clk,
input rst,

output [3:0] count

);

reg q0, q1, q2, q3;

always @(posedge clk or posedge rst) begin

if (rst)
q0 = 1'b0;
else 
q0 = ~q0;

end

always @(posedge q0 or posedge rst) begin

if(rst)
q1 = 1'b0;
else
q1 = ~q1;

end

always @(posedge q1 or posedge rst) begin

if(rst)
q2 = 1'b0;
else
q2 = ~q2;

end

always @(posedge q2 or posedge rst) begin

if (rst)
q3 = 1'b0;
else
q3 = ~q3;

end

assign count = {q0, q1, q2, q3};

endmodule
