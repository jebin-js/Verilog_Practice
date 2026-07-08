module tb_register_4bit;

reg [3:0] d;
reg clk;
reg rst;

wire [3:0] q;

integer i;

register_4bit UUT(.d(d), .clk(clk), .rst(rst), .q(q));


initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin

if(clk)
$display ("Time = %0t: Rising Time", $time);
else
$display ("Time = %0t: Falling Time", $time);

end

initial begin

$dumpfile ("register_4bit.vcd");
$dumpvars (0, tb_register_4bit);

#5;
$monitor("Time = %0t | clk = %b | rst = %b | d = %b | q = %b", $time, clk, rst, d, q);

rst = 1;
d = 0;

rst =0;

for (i = 0; i < 16; i = i +1) begin

d = i;
#10;

end

$finish;

end

endmodule

 




