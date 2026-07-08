module tb_synchronous_counter;

parameter width = 16;
reg clk;
reg rst;

wire [width-1:0] count;

synchronous_counter #(.width(width)) DUT (.clk(clk), .rst(rst), .count(count));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin
    if (clk)
        $display("\nTime = %0t: Rising Edge", $time);
    else
        $display("Time = %0t: Falling Edge", $time);
end

initial begin

    $dumpfile("synchronous_counter.vcd");
    $dumpvars(0, tb_synchronous_counter);

    $monitor("Time = %0t | clk = %b | rst = %b | count = %0d | binary = %b",
             $time, clk, rst, count, count);

   
    rst = 1;
    #10;

    rst = 0;

 
    #500000;

    $finish;

end

endmodule
