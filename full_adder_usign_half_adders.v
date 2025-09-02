// Half Adder Module
module half_adder (
    input a, b,
    output sum, carry
);
    assign sum   = a ^ b;   // XOR for sum
    assign carry = a & b;   // AND for carry
endmodule

// Full Adder using two Half Adders
module full_adder (
    input a, b, cin,
    output sum, carry
);
    wire s1, c1, c2;

    // First Half Adder
    half_adder ha1 (
        .a(a),
        .b(b),
        .sum(s1),
        .carry(c1)
    );

    // Second Half Adder
    half_adder ha2 (
        .a(s1),
        .b(cin),
        .sum(sum),
        .carry(c2)
    );

    // Final Carry
    assign carry = c1 | c2;
endmodule
