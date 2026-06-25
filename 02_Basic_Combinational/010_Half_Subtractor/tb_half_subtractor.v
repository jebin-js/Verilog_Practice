module tb_half_subtractor;

reg a, b;
wire D, B0;

integer i;

half_subtractor DUT (.a(a), .b(b), .D(D), .B0(B0));

initial begin

begin

$dumpfile ("half_subtractor.vcd");
$dumpvars (0, tb_half_subtractor);

$display ("||-----------------------------------||");
$display ("-------------Half Subtractor-----------");
$display ("||-----------------------------------||");

$monitor ("/n Time = %0t | a = %b | b = %b | D = %b | B0 = %b", $time , a, b, D, B0);
 
for ( i = 0; i < 4; i = i +1)
 
begin 

{a, b} = i;
#20;

end 

$finish;

end

end

endmodule


