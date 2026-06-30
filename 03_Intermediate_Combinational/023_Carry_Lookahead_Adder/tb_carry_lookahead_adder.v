module tb_carry_lookahead_adder;

reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] sum;
wire carry;

integer i, j, k;

carry_lookahead_adder DUT (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

initial begin

	$dumpfile ("carry_lookahead_adder.vcd");
	$dumpvars (0, tb_carry_lookahead_adder);

$monitor ("Time = %0t | a = %b | b = %b | cin = %b | sum = %b | carry = %b", $time, a, b, cin, sum, carry);

for (i = 0; i < 2; i = i +1) begin

cin = i;

for (j = 0; j < 16; j = j +1) begin

a = j;

for (k = 0; k < 16; k = k + 1) begin

b = k;

#10;

end

end

end


$finish;

end

endmodule
