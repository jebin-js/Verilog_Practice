module tb_register_8bit;

reg clk;
reg rst;
reg [7:0] d;

wire [7:0] q;

integer i;

register_8bit UUT(.clk(clk), .rst(rst), .d(d), .q(q));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin

if(clk)
$display ("Time = %0t: Rising Edge", $time);
else
$display ("Time = %0t: Falling Edge", $time);

end

initial begin

$dumpfile ("register_8bit.vcd");
$dumpvars (0, tb_register_8bit);

$monitor (" Time = %0t | cl = %b | rst = %b | d = %b | q = %b", $time, clk, rst, d, q);

#5;

rst =1;
d = 0;

rst = 0;

for (i = 0; i < 256; i = i + 1) begin

d = i;

#10;
end

$finish;

end

endmodule
