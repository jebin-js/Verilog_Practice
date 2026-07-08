module tb_and_gate_function;

reg a;
reg b;

wire y;

integer i;

//reg [1:0] input_vec [0:3];

and_gate_function DUT (
    .a(a),
    .b(b),
    .y(y)
);

initial begin

    $dumpfile("and_gate_function.vcd");
    $dumpvars(0, tb_and_gate_function);

    /*input_vec[0] = 2'b00;
    input_vec[1] = 2'b01;
    input_vec[2] = 2'b10;
    input_vec[3] = 2'b11;*/

    $display("--------------------------------");
    $display(" A  B | Y ");
    $display("--------------------------------");

    for(i = 0; i < 4; i = i + 1) begin
        {a, b} = i;
        #10;
        $display(" %b  %b | %b", a, b, y);
    end

    $finish;

end

endmodule
