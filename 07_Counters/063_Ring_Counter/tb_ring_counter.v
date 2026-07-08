module tb_ring_counter;

reg clk;
reg rst;

wire [3:0] count;

ring_counter DUT (
    .clk(clk),
    .rst(rst),
    .count(count)
);

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin

    if (clk)
        $display("\nTime = %0t : Rising Edge", $time);
    else
        $display("\nTime = %0t : Falling Edge", $time);

end

initial begin

    $dumpfile("ring_counter.vcd");
    $dumpvars(0, tb_ring_counter);

    $monitor("Time = %0t | clk = %b | rst = %b | count = %b",
              $time, clk, rst, count);

    rst = 1;

    #10;
    rst = 0;

    #200;

$finish;

end

endmodule
