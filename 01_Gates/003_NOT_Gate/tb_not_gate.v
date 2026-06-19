module tb_not_gate;

reg a;

wire y;

not_gate uut (.a(a), .y(y));


initial begin

$dumpfile ("not_gate.vcd");
$dumpvars (0, tb_not_gate);

end

initial begin 

$monitor("Time = 0%t| a = %b | y = %b", $time, a, y);

a = 0;

#10

a = 1;

# 10

$finish;

end 

endmodule

 
