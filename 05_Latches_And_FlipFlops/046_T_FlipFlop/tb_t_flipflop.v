module tb_t_flipflop;

reg t;
reg clk;

wire q;
wire q_bar;

integer i;

initial begin
clk = 0;
t = 0;
end

always #5 clk = ~clk;

t_flipflop UUT (.t(t), .clk(clk), .q(q), .q_bar(q_bar));

always @(posedge clk or negedge clk) begin

	if(clk)
		$display("Time = %0t : Rising Edge", $time);
	else 
		$display("Time = %0t : Falling Edge", $time);

end


initial begin

	$dumpfile ("t_flipflop.vcd");
	$dumpvars (0, tb_t_flipflop);

	$monitor (" Time = %0t | clk = %b | t = %b | q = %b | q_bar = %b", $time, clk, t, q, q_bar);

	for (i =0; i < 2; i = i + 1)
	begin
		t = i;
		#10;

	end

$finish;

end

endmodule

