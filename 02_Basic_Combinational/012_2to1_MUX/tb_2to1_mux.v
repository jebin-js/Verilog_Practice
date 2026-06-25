module tb_mux_2to1;

reg a;
reg b;
reg s;

wire y;

integer i;

mux_2to1 DUT (.a(a), .b(b), .s(s), .y(y));

initial begin 

$dumpfile ("mux_2to1.vcd");
$dumpvars (0, tb_mux_2to1);

$monitor ("Time = %0t | a = %b | b = %b | s = %b | y = %b ", $time, a, b, s, y);

for (i = 0; i < 8; i = i + 1)

begin 

{a, b, s} = i;
#10;

end 

$finish;

end

endmodule
