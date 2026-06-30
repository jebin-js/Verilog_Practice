module gray_to_binary (

input [3:0] gray,
output reg [3:0] bin

);

integer i;

always@ (*) begin

bin [3] = gray [3];

for (i = 2; i >= 0; i = i -1) begin

bin[i] = bin [i + 1] ^ gray [i];


end

end

endmodule


