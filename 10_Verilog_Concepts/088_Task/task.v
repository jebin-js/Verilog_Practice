module task_and (

input a,
input b,

output reg y

);

task and_operation;

input a_in;
input b_in;

output y_out;

begin

y_out = a_in & b_in;

end

endtask

always @(*)

and_operation (a, b, y);

endmodule

