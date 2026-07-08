module tb_procedural_assignment;

reg clk;
reg a;
reg b;

wire y;

integer i;

procedural_assignment DUT (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
    clk = 0;
    forever #5 clk = ~clk;
end

initial begin

    $dumpfile("procedural_assignment.vcd");
    $dumpvars(0, tb_procedural_assignment);

    $monitor("Time=%0t | clk=%b | a=%b | b=%b | y=%b",
              $time, clk, a, b, y);

    for (i = 0; i < 4; i = i + 1) begin
        {a, b} = i;
        @(negedge clk);
    end

    $finish;

end

endmodule
