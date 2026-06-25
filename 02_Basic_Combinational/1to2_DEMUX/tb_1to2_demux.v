module tb_demux_1to2;

reg a;
reg s;
wire x;
wire y;

integer i;


demux_1to2 DUT (.a(a), .s(s), .x(x), .y(y));

initial begin

$dumpfile ("demux_1to2.vcd");
$dumpvars (0, tb_demux_1to2);

$monitor ("Time = %0t | a = %b | s = %b | x = %b | y = %b ", $time , a, s, x, y);

for (i = 0; i < 4; i = i + 1)

begin

{a, s} = i;
#10;

end

$finish;

end 

endmodule
