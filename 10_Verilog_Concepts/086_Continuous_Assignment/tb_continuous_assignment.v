module tb_continuous_assignment;

reg a;
reg b;

wire y;

continuous_assignment DUT (
    .a(a),
    .b(b),
    .y(y)
);

initial begin

    $dumpfile("continuous_assignment.vcd");
    $dumpvars(0, tb_continuous_assignment);

    $monitor("Time=%0t | a=%b | b=%b | y=%b",
              $time, a, b, y);

    a = 0; b = 0; #10;
    a = 0; b = 1; #10;
    a = 1; b = 0; #10;
    a = 1; b = 1; #10;

    $finish;

end

endmodule
