module tb_demux_1to4;

reg a;
reg s1;
reg s2;

wire w;
wire x;
wire y;
wire z;

integer i;

demux_1to4 DUT (.a(a), .s1(s1), .s2(s2), .w(w), .x(x), .y(y), .z(z));

initial begin

$dumpfile ("demux_1to4.vcd");
$dumpvars (0, tb_demux_1to4);

$monitor ("Time = %0t | a = %b | s1 = %b | s2 = %b | w = %b | x = %b | y = %b | z = %b", $time, a, s1, s2, w, x, y, z);

for (i = 0; i < 8; i = i+1)

begin

{s1, s2, a} = i;
#10;

end 

$finish;

end 

endmodule
