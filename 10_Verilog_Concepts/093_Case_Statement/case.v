module traffic_light;

reg [1:0] state;

initial begin

state = 2'b00;

case (state)

2'b00: $display ("red light --> stop");
2'b01: $display ("yellow light --> wait");
2'b10: $display ("green light ---> go");

default: $display ("Invalid state");

endcase


state = 2'b01;

 case (state)

2'b00: $display ("red light --> stop");
2'b01: $display ("yellow light --> wait");
2'b10: $display ("green light ---> go");

default: $display ("Invalid state");

endcase

#50;

$finish;

end

endmodule
