module tb_blocking_assignment;

reg a;
reg b;
wire x;
wire y;

integer i;

blocking_assignment DUT (
    .a(a),
    .b(b),
    .x(x),
    .y(y)
);

initial begin

    $dumpfile("blocking_assignment.vcd");
    $dumpvars(0, tb_blocking_assignment);

    $monitor("Time=%0t | a=%b | b=%b | x=%b | y=%b|",
              $time, a, b, x, y);

    for(i = 0; i < 2; i = i + 1) begin
        a = i;
        b = ~i;
        #10;
    end

    $finish;

end

endmodule
