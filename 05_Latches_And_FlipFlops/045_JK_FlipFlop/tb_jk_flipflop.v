module tb_jk_flipflop;

reg j;
reg k;
reg clk;

wire q;
wire q_bar;

integer i;

initial begin
clk =0;
j = 0;
k = 0;
end

always #5 clk = ~clk;

jk_flipflop UUT (.j(j), .k(k), .clk(clk), .q(q), .q_bar(q_bar));

always @(posedge clk or negedge clk)
begin
    if (clk)
        $display("Time = %0t : Rising Edge", $time);
    else
        $display("Time = %0t : Falling Edge", $time);
end

initial begin 

$dumpfile ("jk_flipflop.vcd");
$dumpvars (0, tb_jk_flipflop);

$monitor (" Time = %0t | clk = %b| j = %b | k = %b | q = %b | q_bar = %b", $time,clk, j ,k, q, q_bar);

for (i = 0; i < 16; i = i+1) begin

{j, k} = i;

#10;
end

$finish;

end

endmodule

