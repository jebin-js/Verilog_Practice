module tb_comparator_4bit;

reg [3:0] a;
reg [3:0] b;

wire a_equal_b;
wire a_less_b;
wire a_greater_b;

integer i;


comparator_4bit DUT (.a(a), .b(b), .a_equal_b(a_equal_b), .a_less_b(a_less_b), .a_greater_b(a_greater_b));

initial begin 

$dumpfile ("comparator_4bit.vcd");
$dumpvars (0, tb_comparator_4bit);

$monitor ("Time = %0t | a = %b | b = %b | a_equal_b = %b | a_less_b = %b | a_greater_b = %b", $time, a, b, a_equal_b, a_less_b, a_greater_b);

a = 0;
b = 0;

#5;

for (i = 0; i < 256; i = i + 1)

begin

/*a = i[7:4];
b = i[3:0];*/

{a, b} = i;

#10;

end

$finish;

end

endmodule
