module tb_master_slave_dff;

reg d;
reg clk;
reg rst;

wire q;
wire q_bar;

integer i;


initial clk = 0;

always #5 clk = ~clk;

master_slave_dff UUT (.d(d), .clk(clk), .q(q), .q_bar(q_bar));

initial begin

$dumpfile ("master_slave_dff.vcd");
$dumpvars (0, tb_master_slave_dff);

$monitor(" Time = %0t | clk= %b | rst = %b | d = %b | q = %b | q_bar = %b", $time, clk, rst, d, q, q_bar);

#5;
rst = 1;
d = 1'b0; 
#10;	

rst = 0;

for (i = 0; i < 8;  i = i + 1) begin
d = i;

#10;

end

$finish;

end

endmodule
