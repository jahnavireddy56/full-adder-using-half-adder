`timescale 1ns/1ps

module tb_full_adder;
    // Inputs
    reg a, b, cin;

    // Outputs
    wire sum, carry;

    // Instantiate the Unit Under Test (UUT)
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        // Display Header
        $display("A B Cin | Sum Carry");
        $display("------------------");

        // Apply all combinations of inputs
        a=0; b=0; cin=0; #10;
        $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);

        a=0; b=0; cin=1; #10;
        $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);

        a=0; b=1; cin=0; #10;
        $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);

        a=0; b=1; cin=1; #10;
        $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);

        a=1; b=0; cin=0; #10;
        $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);

        a=1; b=0; cin=1; #10;
        $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);

        a=1; b=1; cin=0; #10;
        $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);

        a=1; b=1; cin=1; #10;
        $display("%b %b  %b  |  %b    %b", a,b,cin,sum,carry);

        $finish;
    end
endmodule
