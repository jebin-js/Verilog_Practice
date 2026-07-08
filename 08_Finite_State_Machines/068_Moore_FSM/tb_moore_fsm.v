module tb_moore_fsm;

reg clk;
reg rst;
reg x;

wire y;

integer i;

moore_fsm DUT (.clk(clk), .rst(rst), .x(x), .y(y));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk)
begin
    $display("\nTime = %0t : Rising Edge", $time);
end

initial begin

$dumpfile ("moore_fsm.vcd");
$dumpvars (0, tb_moore_fsm);

$monitor ("Time = %0t | clk = %b | rst = %b | x = %b |state = %b| y = %b|", $time , clk , rst, x, DUT.present_state, y);

rst = 1;
x = 0;

#10 rst = 0;

for (i = 0; i < 8; i = i+1) begin

x = i;
#10;

end

#200;
$finish;

end

endmodule
