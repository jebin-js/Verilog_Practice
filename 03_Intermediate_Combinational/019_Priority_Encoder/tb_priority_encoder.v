module tb_priority_encoder;

reg d0;
reg d1;
reg d2; 
reg d3;

wire y0;
wire y1;

integer i;

priority_encoder DUT (.d0(d0), .d1(d1), . d2(d2), .d3(d3), .y0(y0), .y1(y1));

initial begin 
 
$dumpfile ("priority_encoder.vcd");
$dumpvars (0, tb_priority_encoder);

$monitor ("Time = %0t | d3 = %b | d2 = %b | d1 = %b | d0 = %b | y1 = %b | y0 = %b", $time , d3, d2, d1, d0, y1 ,y0);


for (i = 0; i < 16; i = i +1)

begin

{d3, d2, d1, d0} = i;

#10;

end 

$finish;

end

endmodule

