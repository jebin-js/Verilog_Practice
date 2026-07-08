module tb_sequence_detector_1101;

reg clk;
reg rst;
reg x;

wire y;

integer i;
reg [9:0] input_seq;

sequence_detector_1101 DUT (
    .clk(clk),
    .rst(rst),
    .x(x),
    .y(y)
);


initial
begin
    clk = 0;
    forever #5 clk = ~clk;
end

always @(posedge clk or negedge clk)
begin
    if(clk)
        $display("Time=%0t : Rising Edge", $time);
    else
        $display("Time=%0t : Falling Edge", $time);
end

initial
begin

    $dumpfile("sequence_detector_1101.vcd");
    $dumpvars(0, tb_sequence_detector_1101);

    $monitor("Time=%0t | clk=%b | rst=%b | x=%b | state=%b | y=%b",
              $time, clk, rst, x, DUT.present_state, y);

   
    input_seq = 10'b1101101101;

    rst = 1;
    x = 0;

    #10;
    rst = 0;

    
    for(i = 9; i >= 0; i = i - 1)
    begin
        @(negedge clk);
        x = input_seq[i];
    end

    #20;
    $finish;

end

endmodule
