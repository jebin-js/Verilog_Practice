module decoder_3to8 (

input a,
input b,
input c,
output reg y0,
output reg y1,
output reg y2,
output reg y3,
output reg y4,
output reg y5,
output reg y6,
output reg y7

);

always@ (*) begin 

y0 = 0;
y1 = 0;
y2 = 0;
y3 = 0;
y4 = 0;
y5 = 0;
y6 = 0;
y7 = 0;

if ({!a, !b, !c})
y0 = 1;

if ({!a, !b, c})
y1 = 1;

if ({!a, b, !c })
y2 = 1;

if ({!a, b, c})
y3 = 1;

if ({a, !b , !c})
y4 = 1;

if ({a, !b, c})
y5 = 1;

if ({a, b, !c})
y6 = 1;

if ({a, b, c})
y7 = 1;

end 

endmodule





