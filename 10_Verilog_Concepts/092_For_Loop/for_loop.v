module tb_for_loop;

integer i;

initial begin

    for(i = 0; i < 10; i = i + 1)
    begin
        $display("Value of i = %0d", i);
    end

end

endmodule
