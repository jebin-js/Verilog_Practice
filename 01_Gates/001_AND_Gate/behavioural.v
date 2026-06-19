module and_gate(

input a,
input b,
output reg y

);

always@(*) begin

case ({a,b})

2'b00: y= 1'b0;
2'b01: y= 1'b0;
2'b10: y= 1'b0;
2'b11: y= 1'b1;

default: y=1'b0;

endcase

end

endmodule
