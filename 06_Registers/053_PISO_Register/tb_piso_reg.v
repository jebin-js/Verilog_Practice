module tb_piso_reg_4bit;

reg clk;
reg rst;
reg [3:0] d;
reg load;

wire q;

integer i;

piso_reg_4bit UUT (.clk(clk), .rst(rst), .d(d), .load(load), .q(q));

initial clk = 0;
always #5 clk = ~ clk;

always @(posedge clk or negedge clk) begin

if (clk)
$display ("Time = %0t: Rising edge", $time);
else
$display ("Time = %0t: Falling edge", $time);

end

initial begin

$dumpfile ("piso_reg_4bit.vcd");
$dumpvars (0, tb_piso_reg_4bit);

#5

$monitor (" Time = %0t | clk = %b | rst = %b|load = %b | d = %b | q = %b |", $time, clk, rst, load, d, q);

rst = 1;
load = 0;
d = 4'b0000;

#10;
rst = 0;

for (i = 0; i < 16; i = i + 1) begin

d = i;
load = 1;
#10;

load = 0;
#40;

end 

$finish;

end

endmodule

