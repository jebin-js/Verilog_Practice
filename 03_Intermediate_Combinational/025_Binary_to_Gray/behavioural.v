module binary_to_gray (

input [3:0] bin,
output reg [3:0] gray

);

always@ (*) begin

gray = bin ^ (bin >> 1);

end

endmodule
