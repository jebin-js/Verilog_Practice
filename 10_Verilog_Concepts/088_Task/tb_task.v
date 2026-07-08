module tb_task_and;

reg a;
reg b;
reg clk;

wire y;

integer i;

task_and DUT (
    .a(a),
    .b(b),
    .y(y)
);

initial begin
	clk = 0;
	forever #5 clk = ~clk;
end

initial begin

    $dumpfile("task_and.vcd");
    $dumpvars(0, tb_task_and);

    $monitor("Time=%0t | a=%b | b=%b | y=%b",
              $time, a, b, y);

    apply_inputs();

end

task apply_inputs();

begin

for ( i = 0; i < 4; i = i +1) begin
{a, b} = i;
@(negedge clk);

end

end

endtask


initial #50 $finish;

endmodule
