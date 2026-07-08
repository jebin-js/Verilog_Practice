module tb_asynchronous_counter;

reg clk;
reg rst;

wire [3:0] count;

asynchronous_counter DUT(.clk(clk), .rst(rst), .count(count));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin

    if(clk)
        $display("\nTime = %0t : Rising Edge",$time);
    else
        $display("Time = %0t : Falling Edge",$time);

end

initial begin

    $dumpfile("asynchronous_counter.vcd");
    $dumpvars(0, tb_asynchronous_counter);

    $monitor("Time = %0t | clk = %b | rst = %b | count = %0d (%b)",
              $time,clk,rst,count,count);

    rst = 1;

    #10;
    rst = 0;

    #180;

    $finish;

end

endmodule
