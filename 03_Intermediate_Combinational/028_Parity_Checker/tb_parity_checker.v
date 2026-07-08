module tb_parity_checker;

reg [3:0] a;
reg parity;

wire odd_error;
wire even_error;

integer i;

parity_checker DUT (.a(a), .parity(parity), .odd_error(odd_error), .even_error(even_error));

initial begin

$dumpfile ("parity_checker.vcd");
$dumpvars (0, tb_parity_checker);

$monitor (" Time = %0t | a = %b | parity = %b | odd_error = %b | even_error = %b ", $time, a, parity, odd_error, even_error);

for (i = 0; i < 32; i = i+1) begin

	a = i[4:1];
	parity = i[0];

#10;

end

$finish;

end

endmodule
