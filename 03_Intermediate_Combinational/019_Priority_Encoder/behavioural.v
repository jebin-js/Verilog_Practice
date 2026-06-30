module priority_encoder (

input d0,
input d1,
input d2,
input d3,

output reg y0,
output reg y1

);

reg [3:0] d;
integer i;


always@ (*) begin :Priority

d = {d3, d2, d1, d0};

y1 = 1'b0;
y0 = 1'b0;

for (i = 3; i >= 0; i = i - 1) begin

if (d[i]) begin

{y1, y0} = i;
disable Priority;

end 

end 

end

endmodule



