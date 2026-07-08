module tb_up_down_counter;

reg clk;
reg rst;
reg up_down;

wire [3:0] up_down_count;

up_down_counter DUT (.clk(clk), .rst(rst), .up_down(up_down), .up_down_count(up_down_count));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin

if (clk)
$display("\nTime = %0t: Rising Edge", $time);
else 
$display("\nTime = %0t: Falling Edge",$time);

end

initial begin

$dumpfile ("up_down.vcd");
$dumpvars (0, tb_up_down_counter);

$monitor ("Time = %0t | clk = %b | rst = %b | up_down = %b| up_down_count = %b|", $time, clk, rst,up_down, up_down_count);

rst = 1;
up_down = 1;

#10 rst = 0;

#100 up_down = 0;

#300

$finish;

end

endmodule 
