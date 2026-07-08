module tb_sr_flipflop;

reg s;
reg r;
reg clk;

wire q;
wire q_bar;

sr_flipflop UUT (.s(s), .r(r), .clk(clk), .q(q), .q_bar(q_bar));


integer i;
always #5 clk = ~clk;

reg [1:0] sr_vec [0:3];

initial begin

	clk = 0;
	s = 0;
	r = 0;

$dumpfile ("sr_flipflop.vcd");
$dumpvars (0, tb_sr_flipflop);

$monitor (" Time = %0t | s = %b | r = %b | q = %b | q_bar = %b", $time, s, r, q, q_bar);

sr_vec [0] = 2'b00;
sr_vec [1] = 2'b01;
sr_vec [2] = 2'b10;
sr_vec [3] = 2'b11;

for (i = 0; i < 4; i = i+1) begin

{s, r} = sr_vec [i];

#10;

end 

$finish;

end

endmodule
