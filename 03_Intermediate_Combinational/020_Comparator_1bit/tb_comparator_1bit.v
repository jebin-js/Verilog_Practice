module tb_comparator_1bit;

reg a0;
reg b0;

wire a_equal_b;
wire a_less_b;
wire a_greater_b;

integer i;

comparator_1bit DUT (.a0(a0), .b0(b0), .a_equal_b(a_equal_b), .a_less_b(a_less_b), .a_greater_b(a_greater_b));

initial begin

$dumpfile ("comparator_1bit.vcd");
$dumpvars (0, tb_comparator_1bit);

$monitor ("Time = %0t | a0 = %b | b0 = %b | a_equal_b = %b | a_less_b = %b | a_greater_b = %b", $time, a0, b0, a_equal_b, a_less_b, a_greater_b);

for (i = 0; i < 4; i = i + 1)

begin

{a0, b0} = i;

#10;

end

$finish;

end 

endmodule
