module tb_encoder;

reg a; 
reg b; 
reg c;
reg d;

wire x;
wire y;

integer i;

encoder DUT (.a(a), .b(b), .c(c), .d(d), .x(x), .y(y));

initial begin 

$dumpfile ("encoder.vcd");
$dumpvars (0, tb_encoder);

$monitor ("Time = 0%t | a = %b | b = %b | c = %b | d = %b | x = %b | y = %b ", $time, a, b, c, d, x, y);

for (i = 0; i < 16; i = i+1)

begin

{a, b, c, d} = i;

#10;

end

$finish;

end

endmodule
