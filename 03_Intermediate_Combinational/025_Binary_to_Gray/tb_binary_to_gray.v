module tb_binary_to_gray;

reg [3:0] bin;
wire [3:0] gray;

integer i;

binary_to_gray DUT (.bin(bin), .gray(gray));

initial begin

	$dumpfile ("binary_to_gray.vcd");
	$dumpvars (0, tb_binary_to_gray);

	$monitor (" Time = %0t | bin = %b | gray = %b", $time, bin, gray);

	for (i = 0; i < 16; i = i + 1) begin
		bin = i;

		#10;

	end

	$finish;
	
end


endmodule
