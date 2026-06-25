module mux_2to1 (

input a,
input b,
input s,
output reg y

);

always@ (*) begin

if(s)

y = b;

else 

y = a;

end

endmodule
