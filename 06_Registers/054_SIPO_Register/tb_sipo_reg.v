module tb_sipo_reg_4bit;

reg clk;
reg rst;
reg serial_in;

wire [3:0] q;

integer i;

sipo_reg_4bit UUT (.clk(clk), .rst(rst), .serial_in(serial_in), .q(q));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or posedge rst) begin

if (clk)
$display ("Time = %0t: Rising Edge", $time);
else
$display ("Time = %0t: Falling Edge", $time);

end

initial begin

$dumpfile ("sipo_reg.vcd");
$dumpvars (0, tb_sipo_reg_4bit);


$monitor (" Time = %0t | clk = %b | rst = %b | serial_in = %b | q = %b|", $time, clk, rst, serial_in, q);

#5 rst = 1;
   serial_in = 0;

   #10 
   rst =0;

for (i = 0; i < 8; i = i + 1) begin

serial_in = i;
#10;

end

$finish;

end

endmodule
