module tb_dff_with_en;

reg d;
reg clk;
reg en;

wire q;
wire q_bar;

integer i;

initial clk =0;
always #5 clk = ~clk;

dff_with_en UUT (.d(d), .clk(clk), .en(en), .q(q), .q_bar (q_bar));

always @(posedge clk or negedge clk) begin

if (clk)

$display (" Time = %0t : Rising time ", $time);

else 

$display (" Time = %0t : Falling time", $time);

end

initial begin;

en = 0;
#5 en = 1;

$dumpfile ("dff_with_en.vcd");
$dumpvars (0, tb_dff_with_en);

$monitor (" Time = %0t | clk = %b | en = %b | d = %b | q = %b | q_bar = %b", $time,clk , en, d, q, q_bar);

for (i = 0; i < 2; i = i + 1) begin

d = i;
#10;

end

$finish;

end

endmodule
  
