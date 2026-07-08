module tb_even_odd_zero_detector;

reg clk;
reg rst;
reg x;

wire y;

integer i;

reg [9:0] input_seq;

even_odd_zero_detector UUT (.clk(clk), .rst(rst), .x(x), .y(y));

initial clk = 0;
always #5 clk = ~clk;

always @(posedge clk or negedge clk)
begin
    if(clk)
        $display("\nTime=%0t : Rising Edge",$time);
    else
        $display("Time=%0t : Falling Edge",$time);
end

initial
begin

    $dumpfile("even_odd_zero_detector.vcd");
    $dumpvars(0,tb_even_odd_zero_detector);

    $monitor("Time=%0t | clk=%b | rst=%b | x=%b | state=%b | y=%b",
              $time,clk,rst,x,UUT.present_state,y);

      input_seq = 10'b1001000101;
      
      rst = 1;
      x = 0;

      #10;

      rst = 0;

      for (i = 0; i < 10; i = i +1)
      begin
          @(negedge clk);
          x = input_seq [i];
         

  end

#20;
$finish;

end

endmodule
