module dsd_lab3(
    input a,
    input b,
    input c,
    output x,
    output y
    );
    assign x = (~c) ^ (a|b);
    assign y = (a|b) & (~((a&b))^(a|b));
endmodule