module comparator_4bit (

input [3:0] a,
input [3:0] b,

output reg a_equal_b,
output reg a_less_b,
output reg a_greater_b

);

//integer i;

//reg [7:0] a1, b1;

always@ (*) begin

	//a = b1;
        //b = b1;

	a_equal_b = 0;
	a_less_b = 0;
	a_greater_b = 0;

	//for (i = 0; i < 256; i = i + 1) begin

if (a == b) 
a_equal_b = 1;

else if (a < b) 
a_less_b = 1;

else if (a > b)
a_greater_b = 1;

#10;

end 

endmodule





