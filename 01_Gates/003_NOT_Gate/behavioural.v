module not_gate (

input a,

output reg y
);

always@(*) begin

case(a)

1'b0: y = 1'b1;
1'b1: y = 1'b0;
default: y = 1'b0;

endcase

end

endmodule
