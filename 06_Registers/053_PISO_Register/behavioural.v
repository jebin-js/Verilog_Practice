module piso_reg_4bit (

input rst,
input clk,
input load,
input [3:0] d,

output reg q

);

reg[3:0] shift_reg;

always @(posedge clk or posedge rst) begin

if(rst) begin

shift_reg <= 4'b0000;
q = 1'b0;

end

else if (load) begin

shift_reg <= d;

end

else begin

q = shift_reg [3];
shift_reg <= shift_reg << 1;

end

end

endmodule

