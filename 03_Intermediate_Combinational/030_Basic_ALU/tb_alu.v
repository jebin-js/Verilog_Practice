module tb_alu_4bit;

reg [3:0] a;
reg [3:0] b;
reg [1:0] s;

wire [3:0] out;
wire carry;
wire borrow;

integer i;

alu_4bit DUT (.a(a), .b(b), .s(s), .out(out), .carry(carry), .borrow(borrow));


parameter ADD = 2'b00,
          SUB = 2'b01,
          AND = 2'b10,
          OR  = 2'b11;

  reg[23:0] Operation;


  always@ (*) begin
	  case(s)
		  ADD: Operation = "ADD";
		  SUB: Operation = "SUB";
		  AND: Operation = "AND";
		  OR : Operation = "OR ";

	  endcase
  end


initial begin

$dumpfile ("alu_4bit.vcd");
$dumpvars (0, tb_alu_4bit);

$monitor (" Time = %0t | Operation = %s | a = %b | b = %b | s = %b | out = %b | carry = %b | borrow = %b", $time, Operation, a, b, s, out, carry, borrow);

for (i = 0; i < 64; i = i +1) begin

a = i[3:0];
b = i[3:0];
s = i[1:0];

#10;

end

$finish;

end

endmodule
