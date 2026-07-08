module tb_and_gate;

parameter width = 8;

reg [width-1:0]a;
reg [width-1:0]b;

wire [width-1:0]y;

and_gate DUT (
    .a(a),
    .b(b),
    .y(y)
);

initial begin

    $dumpfile("and_gate.vcd");
    $dumpvars(0, tb_and_gate);

    $display("A B | Y");

    a=0; b=0; #10;
    $display("%b %b | %b", a,b,y);

    a=0; b=1; #10;
    $display("%b %b | %b", a,b,y);

    a=1; b=0; #10;
    $display("%b %b | %b", a,b,y);

    a=1; b=1; #10;
    $display("%b %b | %b", a,b,y);



    #200;
    $finish;

end

endmodule
