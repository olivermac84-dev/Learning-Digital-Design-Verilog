`timescale 1ns / 1ps

module half_adder_tb;
    reg a;
    reg b;
    wire sum;
    wire carry;

   
    half_adder uut (
        .a(a),
        .b(b),
        .sum(sum),
        .carry(carry)
    );

    initial begin
        $dumpfile("half_adder_test.vcd");
        $dumpvars(0, half_adder_tb);

        
        a = 0; b = 0; #10;  // 0 + 0 = 0 (Sum=0, Carry=0)
        a = 0; b = 1; #10;  // 0 + 1 = 1 (Sum=1, Carry=0)
        a = 1; b = 0; #10;  // 1 + 0 = 1 (Sum=1, Carry=0)
        a = 1; b = 1; #10;  // 1 + 1 = 2 -> binary වලින් 10 (Sum=0, Carry=1)

        $finish;
    end
endmodule
