module tb_universal_register;

reg clk;
reg rst;
reg [2:1] s;
reg shift_left_in;
reg shift_right_in;
reg [3:0] parallel_in;

wire [3:0] q;

integer i;

universal_shift_register UUT (.clk(clk), .rst(rst), .s(s), .shift_right_in(shift_right_in), .shift_left_in(shift_left_in), .parallel_in(parallel_in), .q(q));

reg [3:0] right_data;
reg [3:0] left_data;

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk) begin
	if (clk)
		$display("\nTime = %0t: Rising Edge", $time);
	else
		$display("Time = %0t: Falling Edge", $time);

end

initial begin

	$dumpfile ("universal_register.vcd");
	$dumpvars (0, tb_universal_register);

	$monitor("Time = %0t | clk = %b | rst = %b | s[2] = %b | s[1] = %b | shift_right_in = %b | shift_left_in = %b | parallel_in = %b | q = %b|", $time, clk, rst, s[2], s[1], shift_right_in, shift_left_in, parallel_in, q);

 rst = 1;
 s[2:1] = 0;
 shift_right_in = 0;
 shift_left_in = 0;
 parallel_in = 4'b0000;

 #10 rst = 0;

 $display ("\n============HOLD==============");

 s[2:1] = {1'b0, 1'b0};

 #20;

 $display ("\n============SHIFT_RIGHT_IN===========");

 s[2:1] = {1'b0, 1'b1};
 right_data = 4'b1011;

 for (i = 0; i < 4; i = i +1) begin

          shift_right_in = right_data[i];
          #10;
   end

   $display ("\n=============SHIFT_LEFT_IN==============");

   s[2:1] = {1'b1, 1'b0};
   left_data = 4'b1011;

   for (i = 0; i < 4; i = i + 1) begin

	   shift_left_in = left_data[i];
	   #10;

     end

     $display("\n=================PARALLEL_LOAD==========");
    
       s[2:1] = {1'b1, 1'b1};

       parallel_in = 4'b1011;
       #10;



       
$finish;

end


endmodule
