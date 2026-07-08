module tb_rom;

reg [2:0] address;
wire [3:0] data;

integer i;

ROM DUT(.address(address), .data(data));

initial begin

$dumpfile ("ROM.vcd");
$dumpvars (0, tb_rom);

$monitor (" Time = %0t | address = %b | data = %b", $time, address, data);

for (i = 0; i < 8; i = i + 1)
begin

address = i;
#10;

end

$finish;

end

endmodule


