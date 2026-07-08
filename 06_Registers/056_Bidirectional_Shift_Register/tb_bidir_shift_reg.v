module tb_bidir_shift_reg;

reg clk;
reg rst;
reg serial_in;
reg dir;
wire [3:0] q;

reg [3:0] data;
integer i;

bidir_shift_reg UUT (.clk(clk), .rst(rst), .serial_in(serial_in), .dir(dir), .q(q));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin

if (clk)
$display ("\nTime = %0t: Rising Edge", $time);
else
$display ("Time = %0t: Falling Edge", $time);

end

initial begin

$dumpfile ("bidir_shift_reg.vcd");
$dumpvars (0, tb_bidir_shift_reg);

$monitor ("Time = %0t | clk = %b | rst = %b | dir = %b| serial_in = %b | q = %b|", $time, clk, rst, dir, serial_in, q);

 rst = 1;
 serial_in = 0;
 dir = 0;

#5 rst = 0; 

$display ("\n============left shift=========");

dir = 0;
data = 4'b1011;

for (i = 0; i < 4; i = i +1) begin

serial_in = data[i];
#10;

end

 $display("\n========== RIGHT SHIFT ==========");

    dir = 1;
    data = 4'b1011;

for (i = 0; i < 4; i = i +1) begin

serial_in = data[i];
#10;
end

$finish;

end

endmodule
