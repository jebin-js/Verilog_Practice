module tb_gray_to_binary;

reg [3:0] gray;
wire [3:0] bin;

integer i;

gray_to_binary DUT (.gray(gray), .bin(bin));

initial begin 

$dumpfile ("gray_to_binary.vcd");
$dumpvars (0, tb_gray_to_binary);

$monitor ("Time = %0t | gray = %b | bin = %b", $time , gray, bin);

for (i = 0; i < 16; i = i +1) begin

gray = i;
#10;

end

$finish;

end

endmodule
