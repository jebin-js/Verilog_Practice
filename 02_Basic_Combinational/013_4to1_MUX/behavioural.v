module mux_4to1 (

input a,
input b,
input c,
input d,
input s1,
input s2,

output reg y

);

always@ (*) begin

if ({s1 & s2 == 2'b11})

y = d;

else if ({s1 & s2 == 2'b10})

y = c;

else if ({s1 & s2 == 2'b01})

y = b;

else if ({s1 & s2 == 2'b11})

y = a;


end 

endmodule
