module tb_d_latch;

reg d;
reg En;

wire q;
wire q_bar;

integer i;

d_latch DUT (.d(d), .En(En), .q(q), .q_bar(q_bar));

initial begin

	$dumpfile ("d_latch.vcd");
	$dumpvars (0, tb_d_latch);

	$monitor (" Time = %0t | d = %b | En = %b | q = %b | q_bar = %b", $time, d, En, q, q_bar);

	for (i = 0; i < 4; i = i +1)
	begin
		{En, d} = i;
		#10;

	end

	$finish;

end

endmodule
