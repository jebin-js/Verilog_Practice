module tb_d_flipflop;

reg d;
reg clk;

wire q;
wire q_bar;

integer i;

initial begin
 clk =0;
 d = 0;
end
         
always #5 clk = ~clk;


d_flipflop UUT (.d(d), .clk(clk), .q(q), .q_bar(q_bar));

initial begin

$dumpfile ("d_flipflop.vcd");
$dumpvars (0, tb_d_flipflop);

$monitor (" Time = %0t | d = %b | q = %b | q_bar = %b", $time , d, q, q_bar);

for (i = 0; i < 4; i = i + 1) begin

d = i;

#10;

end

$finish;

end

endmodule
