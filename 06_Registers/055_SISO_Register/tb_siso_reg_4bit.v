module tb_siso_register;

reg clk;
reg rst;
reg serial_in;
wire serial_out;

integer i;

siso_reg_4bit UUT (.clk(clk), .rst(rst), .serial_in(serial_in), .serial_out(serial_out));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin

	if (clk)
		$display ("Time = %0t: Rising Edge", $time);
	else
		$display ("Time = %0t: Falling Edge", $time);

end

initial begin

	$dumpfile ("siso_reg_4bit.vcd");
	$dumpvars (0, tb_siso_register);

	$monitor ("Time = %0t | clk = %b | rst = %b | serial_in = %b | serial_out = %b |", $time, clk, rst, serial_in, serial_out);

	#5;
	rst = 1;
	serial_in = 0;

	#5;
	rst = 0;

	for (i = 0; i < 8; i = i +1) begin

		serial_in = i;
		#10;

	end

	$finish;

end

endmodule


