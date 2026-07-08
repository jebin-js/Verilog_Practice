module tb_register_file;

reg clk;
reg we;
reg [2:0] write_address;
reg [2:0] read_address1;
reg [2:0] read_address2;
reg [7:0] write_data;

wire [7:0] read_data1;
wire [7:0] read_data2;

integer i;
register_file DUT (
    .clk(clk),
    .we(we),
    .write_address(write_address),
    .read_address1(read_address1),
    .read_address2(read_address2),
    .write_data(write_data),
    .read_data1(read_data1),
    .read_data2(read_data2)
);

initial clk = 0;
always #5 clk = ~clk;

initial begin
    $monitor("Time=%0t | WE=%b | WA=%0d | WD=%h | RA1=%0d | RD1=%h | RA2=%0d | RD2=%h",
             $time, we, write_address, write_data,
             read_address1, read_data1,
             read_address2, read_data2);
end

initial begin

    $dumpfile("register_file.vcd");
    $dumpvars(0, tb_register_file);

    clk = 0;
    we = 0;
    write_address = 0;
    write_data = 0;
    read_address1 = 0;
    read_address2 = 0;

    #10;

    we = 1;

    for(i = 0; i < 8; i = i + 1) begin
        write_address = i;
        write_data = i + 8'h10; 
        #10;
    end

    we = 0;

 
    for(i = 0; i < 8; i = i + 1) begin
        read_address1 = i;
        read_address2 = 7 - i;
        #10;
    end

 
    read_address1 = 2;
    read_address2 = 5;
    #10;

    read_address1 = 7;
    read_address2 = 0;
    #10;

    $finish;

end

endmodule
