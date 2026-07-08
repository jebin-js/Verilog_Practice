module procedural_assignment (

input a,
input b,

output reg y

);

always @(*) begin
    y = a & b;
end

endmodule
