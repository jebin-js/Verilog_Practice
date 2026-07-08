module tb_odd_even_detector;

reg [3:0] a;
wire odd;
wire even;

integer i;

odd_even_detector DUT (.a(a), .odd(odd), .even(even));

initial begin

$dumpfile ("odd_even_detector.vcd");
$dumpvars (0, tb_odd_even_detector);

$monitor (" Time = %0t | a = %b | odd = %b | even = %b", $time, a, odd, even);

for (i = 0; i < 16; i = i+1) begin

a = i;

#10;

end

$finish;

end

endmodule


