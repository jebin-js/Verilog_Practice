module decoder_2to4 (

input a,
input b,
output reg w,
output reg x, 
output reg y,
output reg z

);

always@ (*) begin

w = 0;
x = 0;
y = 0;
z = 0;

if ({!a,!b})

w = 1;

if ({!a , b})

x = 1;

if ({a, !b })
y = 1;

if ({a, b})

z = 1

end 

endmodule
