module tb_and_gate;

parameter width = 4;

reg  [width-1:0] a;
reg  [width-1:0] b;
wire [width-1:0] y;

integer i, k;

and_gate #(.width(width)) DUT (
    .a(a),
    .b(b),
    .y(y)
);

initial begin

    $dumpfile("and_gate.vcd");
    $dumpvars(0, tb_and_gate);

    for(i = 0; i < (1<<width); i = i + 1)
	    for (k = 0; k < (1<<width); k = k +1) begin
        a = i;
        b = k;
        #10;
        $display("a=%b b=%b y=%b", a, b, y);
    end

    $finish;

end

endmodule
