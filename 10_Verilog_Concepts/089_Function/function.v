module and_gate_function (

    input  a,
    input  b,
    output y

);

function and_func;

    input a;
    input b;

    begin
        and_func = a & b;
    end

endfunction

assign y = and_func(a, b);

endmodule
