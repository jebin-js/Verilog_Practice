module tb_parity_generator;

reg [3:0] a;

wire even_parity;
wire odd_parity;

integer i;

parity_generator DUT (.a(a), .even_parity(even_parity), .odd_parity(odd_parity));

initial begin

$dumpfile ("parity_generator.vcd");
$dumpvars (0, tb_parity_generator);

$monitor (" Time = %0t | a = %b | even_parity = %b | odd_parity = %b", $time, a, even_parity, odd_parity);

for (i = 0; i < 16; i = i+1) begin

a = i;

#10;

end

$finish;

end

endmodule


