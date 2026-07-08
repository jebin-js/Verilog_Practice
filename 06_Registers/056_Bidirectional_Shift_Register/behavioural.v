module bidir_shift_reg (

input clk,
input rst,
input dir,
input serial_in,

output reg [3:0] q

);

always @(posedge clk or posedge rst) begin

if (rst) 

q <= 4'b0000;

else begin

if (dir == 1'b0)

q <= {q[2:0], serial_in};

else if (dir == 1'b1)

q <= {serial_in, q[3:1]};

end

end


endmodule

