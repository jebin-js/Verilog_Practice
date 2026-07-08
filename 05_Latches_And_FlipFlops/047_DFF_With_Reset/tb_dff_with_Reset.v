module tb_d_flipflop;

reg d;
reg clk;
reg rst;

wire q;
wire q_bar;

integer i;


d_flipflop UUT (.d(d), .clk(clk), .rst(rst), .q(q), .q_bar(q_bar));


initial

clk = 0;

always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin
if (clk)

$display ("Time = %0t: Rising Time", $time);

else 
$display ("Time = %0t: Falling Time", $time);

end

initial begin

	rst = 1;
	#10 rst = 0;

$dumpfile ("d_flipflop.vcd");
$dumpvars (0, tb_d_flipflop);

$monitor (" Time = %0t | clk = %b | rst = %b | d = %b | q = %b | q_bar = %b", $time, clk, rst, d, q, q_bar);

for (i = 0; i < 4; i = i+1) begin

d = i;
#10;

end

$finish;

end

endmodule


