module moore_fsm(

input clk,
input rst,

input x,
output reg y

);

parameter S1 = 2'b00,
          S2 = 2'b01,
          S3 = 2'b10,
          S4 = 2'b11;

reg [1:0] present_state;
reg [1:0] next_state;

always @(posedge clk or posedge rst) begin

if (rst)

present_state <= S1;

else 

present_state <= next_state;

end

always @(*) begin

case (present_state)

S1: begin

if(x)
next_state <= S2;
else
next_state <= S1;

end

S2: begin

if(x)
next_state <= S3;
else
next_state <= S1;

end

S3: begin

if(x)
next_state <= S4;
else
next_state <= S1;

end

S4: begin

if(x)
next_state <= S4;
else
next_state <= S1;

end

default: next_state = S1;

endcase

end

always @(*) begin
    case (present_state)

        S1 : y = 1'b0;
        S2 : y = 1'b0;
        S3 : y = 1'b1;
        S4 : y = 1'b1;

        default : y = 1'b0;

    endcase
end

endmodule
