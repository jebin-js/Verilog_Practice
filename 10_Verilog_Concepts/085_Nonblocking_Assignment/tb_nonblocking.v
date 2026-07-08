module tb_non_blocking_assignment;

reg clk;
reg a;

wire x;
wire y;

non_blocking_assignment DUT (
    .clk(clk),
    .a(a),
    .x(x),
    .y(y)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("non_blocking_assignment.vcd");
    $dumpvars(0, tb_non_blocking_assignment);

    $monitor("Time=%0t | clk=%b | a=%b | x=%b | y=%b|",
              $time, clk, a, x, y);

    a = 0;
    #10;

    a = 1;
    #10;

    a = 0;
    #10;

    a = 1;
    #10;

    $finish;

end

endmodule
