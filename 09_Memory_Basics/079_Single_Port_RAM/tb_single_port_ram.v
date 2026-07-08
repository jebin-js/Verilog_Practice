module tb_single_port_ram;

reg clk;
reg we;
reg [2:0] address;
reg [3:0] data_in;

wire [3:0] data_out;

integer i;

single_port_ram DUT (
    .clk(clk),
    .we(we),
    .address(address),
    .data_in(data_in),
    .data_out(data_out)
);

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin

if(clk)
$display ("\nTime = %0t: Rising Edge", $time);
else
$display ("Time  = %0t: Falling Edge", $time);

end

initial begin

$dumpfile ("single_port_ram.vcd");
$dumpvars (0, tb_single_port_ram);

$monitor("Time=%0t | clk = %b | we=%b | address=%d | data_in=%b | data_out=%b",
             $time,clk,we, address,data_in,data_out);

     we = 1;
     data_in =0;
     address = 0;

for (i = 0; i < 8; i = i + 1) begin
 @(negedge clk);
  address = i;
  data_in = i +1;

end

@(posedge clk);
we = 0;

for (i = 0; i < 8; i = i + 1) begin
  @(negedge clk);
  address = i;

end



#10;
$finish;

end

endmodule
 
