module tb_sr_latch;

reg s;
reg r;

wire q;
wire q_bar;

integer i;

sr_latch DUT (.s(s), .r(r), .q(q), .q_bar(q_bar));

initial begin

$dumpfile ("sr_latch.vcd");
$dumpvars (0, tb_sr_latch);

$monitor (" Time = %0t | s = %b | r = %b | q = %b | q_bar = %b", $time, s, r, q, q_bar);

for (i = 0; i < 4; i = i +1) begin
{s, r} = i;
#10;
end

$finish;

end

endmodule
