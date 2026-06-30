module tb_ripple_carry_adder;

reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] sum;
wire     carry;

integer i;


ripple_carry_adder DUT (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

initial begin

$dumpfile ("ripple_carry_adder.vcd");
$dumpvars (0, tb_ripple_carry_adder);

$monitor (" Time = %t | a = %b | b = %b | c = %b | sum = %b | carry = %b", $time, a, b, cin, sum, carry);

for (i = 0; i < 512; i = i+1) begin

{a,b,cin} = i;
#10;

end

$finish;

end

endmodule

