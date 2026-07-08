module tb_pipo_reg_4bit;

reg [3:0] d;
reg clk;
reg rst;

wire [3:0] q;

integer i;

pipo_reg_4bit UUT (.d(d), .clk(clk), .rst(rst), .q(q));

initial clk = 0;
always #5 clk = ~clk;

always #5 rst = ~rst;

always @(posedge clk or negedge clk) begin

if (clk)
$display (" Time = %0t: Rising Edge", $time);
else
$display ("Time = %0t: Falling Edge", $time);

end

initial begin 

$dumpfile ("pipo_reg_4bit.vcd");
$dumpvars (0, tb_pipo_reg_4bit);

#5
$monitor ("Time = %0t | clk = %b | rst = %b | d = %b | q = %b", $time, clk, rst, d, q);

rst = 1;
d = 0;

rst = 0;

for ( i = 0; i < 16; i = i +1) begin

d = i;
#10;
end

$finish;

end

endmodule
