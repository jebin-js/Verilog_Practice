module odd_even_detector (

input [3:0] a,

output reg odd,
output reg even

);

always@ (*) begin

if ( a[0] ) begin

odd = 1;
even = 0;

end

else  begin

odd = 0;
even = 1;

end

end

endmodule
