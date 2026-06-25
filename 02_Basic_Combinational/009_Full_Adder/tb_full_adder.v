module tb_full_adder;

reg a, b, cin;
wire sum, carry;
integer i;

full_adder DUT (.a(a), .b(b), .cin(cin), .sum(sum), .carry(carry));

initial begin

$dumpfile ("full_adder.vcd");
$dumpvars (0, tb_full_adder);

$display("----------------------------------");
$display("-----------Full Adder-------------");
$display("----------------------------------");

$monitor ("Time = %t | a = %b | b = %b | cin = %b | sum = %b | carry = %b", $time, a, b, cin , sum , carry);

for (i = 0; i < 8 ; i = i +1)

begin

{a, b, cin} = i;
#10;

end

end 

endmodule
