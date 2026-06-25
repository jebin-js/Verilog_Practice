module tb_half_adder;

reg a;
reg b;
wire sum;
wire carry;

half_adder DUT (.a(a), .b(b), .sum(sum), .carry(carry));

initial begin

$dumpfile ("half_adder.vcd");
$dumpvars (0, tb_half_adder);

$display("-------------------------");
$display("Half_adder");
$display("-------------------------");

$monitor("Time = %0t | a = %b | b = %b | sum = %b | carry = %b ", $time, a, b, sum, carry);

a = 0; b = 0; #10;
a = 0; b = 1; #10;
a = 1; b = 0; #10;
a = 1; b = 1; #10;

end 

endmodule
