module sr_latch (

input s,
input r,

output reg q,
output reg q_bar

);

always@ (*) begin

case ({s,r})

2'b00: ;
2'b01: {q, q_bar} = 2'b01;
2'b10: {q, q_bar} = 2'b10;
2'b11: {q, q_bar} = 2'bxx;

endcase

end

endmodule
