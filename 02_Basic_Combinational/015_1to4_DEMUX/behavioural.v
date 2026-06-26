module demux_1to4 ( 

input a,
input s1,
input s2,
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

if ({s1, s2} == 2'b00)
w = a;

else if ({s1, s2} == 2'b01)
x = a;

else if ({s1, s2} == 2'b10)
y = a;

else if ({s1, s2} == 2'b11)
z = a;

end 

endmodule

