module full_subtractor (

input a, b, cin, 
output reg D, B0

);

always@ (*) begin

D = a ^ b ^ cin;
B0 = ((!a & b) | (!(a^b) & cin));

end 

endmodule
