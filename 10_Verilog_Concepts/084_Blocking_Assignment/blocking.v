module blocking_assignment (

input  a,
input  b,

output reg x,
output reg y

);

always @(*) begin

    x = a;  
    y = x;   

end

endmodule
