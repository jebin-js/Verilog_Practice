module tb_bcd_adder;

reg [3:0] a;
reg [3:0] b;
reg cin;

wire [3:0] sum;
wire c_out;


integer i;

bcd_adder DUT (.a(a), .b(b), .cin(cin), .sum(sum), .c_out(c_out));

initial begin

$dumpfile ("bcd_adder.vcd");
$dumpvars (0, tb_bcd_adder);

$monitor (" Time = %0t | a = %b | b = %b | cin = %b | sum = %b | c_out = %b", $time, a, b, cin, sum, c_out);


for (i = 0; i < 200; i = i +1) begin
 
a = i %10;
b = (i / 10) % 10;
cin = i % 2;

#10;

end 

$finish;

end 

endmodule
