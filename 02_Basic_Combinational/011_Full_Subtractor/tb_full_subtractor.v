module tb_full_subtractor;

reg a, b, cin;
wire D, B0;

integer i;

full_subtractor DUT (.a(a), .b(b), .cin(cin), .D(D), .B0(B0));

initial begin

$dumpfile ("full_subtractor.vcd");
$dumpvars (0, tb_full_subtractor);

$display ("--------------Full Subtractor-----------------");

$monitor ("Time = %0t | a = %b | b = %b | cin = %b | D = %b | B0 = %b", $time, a, b, cin, D, B0);

for(i = 0; i < 8; i = i+1)

begin 

{a, b, cin} = i;
#10;

end 

$finish;

end

endmodule
