module comparator_1bit (

input a0,
input b0,

output reg a_equal_b,
output reg a_less_b,
output reg a_greater_b

);

integer i;

reg a, b;


always@ (*) begin

a = a0;
b = b0;


/*a_equal_b = 1;
a_less_b = 0;
a_greater_b = 0;*/


//for (i = 0; i < 1; i = i +1) begin 

if (a > b) begin

a_greater_b = 1;
a_less_b = 0;
a_equal_b = 0;

end 

else if (a < b) begin

a_greater_b = 0;
a_less_b = 1;
a_equal_b = 0;

end 

else if (a == b) begin
	a_greater_b = 0;
	a_less_b = 0;
	a_equal_b = 1;

end

end 

endmodule

