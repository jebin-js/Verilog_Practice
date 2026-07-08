module ROM(

input [2:0] address,
output [3:0] data

);

reg [3:0] memory[0:7];

initial begin

        memory[0] = 4'b0001;
	memory[1] = 4'b0010;
	memory[2] = 4'b0011;
	memory[3] = 4'b0100;
	memory[4] = 4'b0101;
	memory[5] = 4'b0110;
	memory[6] = 4'b0111;
	memory[7] = 4'b1000;


end

assign data = memory[address];

endmodule
