module tb_dual_port_ram;

reg clk_a;
reg we_a;
reg [2:0] address_a;
reg [3:0] data_in_a;
wire [3:0] data_out_a;

reg clk_b;
reg we_b;
reg [2:0] address_b;
reg [3:0] data_in_b;
wire [3:0] data_out_b;

integer i;

dual_port_ram DUT(.clk_a(clk_a), .we_a(we_a), .address_a(address_a), .data_in_a(data_in_a), .data_out_a(data_out_a), .clk_b(clk_b), .we_b(we_b), .address_b(address_b), .data_in_b(data_in_b), .data_out_b(data_out_b));

initial clk_a = 0;
always #5 clk_a = ~clk_a;

initial clk_b = 0;
always #7 clk_b = ~clk_b;

always @(posedge clk_a or negedge clk_a) begin

	if (clk_a)
		$display("\nTime = %0t: Rising Edge", $time);
	else
		$display("Time = %0t: Falling Edge", $time);

end

always @(posedge clk_b or negedge clk_b) begin

	if (clk_b)
		$display("\nTime = %0t: Rising Edge", $time);
	else
		$display("Time = %0t: Falling Edge", $time);

end


initial begin

	$dumpfile ("dual_port_ram.vcd");
	$dumpvars (0, tb_dual_port_ram);

	$monitor ("Time = %0t | clk_a = %b| we_a=%b | address_a= %0d | data_in_a=%b | data_out_a=%b |||||||||||||| clk_b = %b | we_b=%b | address_b=%0d | data_in_b= %b | data_out_b=%b|",$time ,clk_a,we_a,address_a,data_in_a,data_out_a,clk_b,we_b,address_b,data_in_b,data_out_b);
end

initial
begin

we_a = 1;
we_b = 1;

address_a = 0;
address_b = 0;

data_in_a = 0;
data_in_b = 0;

fork

begin
    for(i=0;i<8;i=i+1)
    begin
        @(negedge clk_a);
        address_a = i;
        data_in_a = i+1;
    end
end

begin
    for(i=0;i<8;i=i+1)
    begin
        @(negedge clk_b);
        address_b = i;
        data_in_b = i+9;
    end
end

join




we_a = 0;
we_b = 0;

fork

begin
    for(i=0;i<8;i=i+1)
    begin
        @(negedge clk_a);
        address_a = i;
    end
end

begin
    for(i=0;i<8;i=i+1)
    begin
        @(negedge clk_b);
        address_b = i;
    end
end

join

#20;
$finish;

end

endmodule
