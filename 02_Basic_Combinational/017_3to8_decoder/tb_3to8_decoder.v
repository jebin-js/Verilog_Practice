module tb_decoder_3to8;

reg a;
reg b;
reg c;

wire y0;
wire y1;
wire y2; 
wire y3;
wire y4;
wire y5;
wire y6;
wire y7;

integer i;

decoder_3to8 DUT (.a(a), .b(b), .c(c), .y1(y1), .y2(y2), .y3(y3), .y4(y4), .y5(y5), .y6(y6), .y7(y7));

initial begin 

$dumpfile ("decoder_3to8.vcd");
$dumpvars (0, tb_decoder_3to8);

$monitor ("Time = 0%t | a = %b | b = %b | c = %b | y1 = %b | y2 %b | y3 = %b | y4 = %b | y5 = %b | y6 = %b | y7 = %b", $time , a, b, c, y1, y2, y3, y4, y5, y6, y7);

for (i = 0; i < 8; i = i +1)

begin 

{a, b, c} = i;
#10;

end 

$finish; 

end

endmodule
