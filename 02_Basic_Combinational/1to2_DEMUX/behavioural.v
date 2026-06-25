module demux_1to2 (

input a,
input s,
output reg x,
output reg y

);

always@ (*) begin

if (s == 1'b1)


y = a;

else 

x = a;

end 

endmodule


