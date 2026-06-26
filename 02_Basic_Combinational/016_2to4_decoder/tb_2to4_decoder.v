module tb_decoder_2to4;

reg a;
reg b;

wire w;
wire x;
wire y;
wire z;

integer i;

decoder_2to4 DUT (.a(a), .b(b), .w(w), .x(x), .y(y), .z(z));

initial begin 

$dumpfile ("decoder_2to4.vcd");
$dumpvars (0, tb_decoder_2to4);

$monitor ("Time = %0t | a = %b | b = %b | w = %b | x = %b | y = %b | z = %b", $time, a, b, w, x, y, z);

for(i = 0; i < 4; i = i +1)

begin 

{a, b} = i;
#10;

end 

$finish;

end 

endmodule
