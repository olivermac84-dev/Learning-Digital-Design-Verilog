`timescale 1ns / 1ps

module full_adder_tb;
    reg a;
    reg b;
    reg cin;
    wire sum;
    wire cout;

    // Full Adder එක සම්බන්ධ කිරීම
    full_adder uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    initial begin
        $dumpfile("full_adder_test.vcd");
        $dumpvars(0, full_adder_tb);

        // Inputs මාරු කරමින් ටෙස්ට් කිරීම (Truth Table)
        a = 0; b = 0; cin = 0; #10; // 0+0+0 = 0 (Sum=0, Cout=0)
        a = 0; b = 1; cin = 0; #10; // 0+1+0 = 1 (Sum=1, Cout=0)
        a = 1; b = 1; cin = 0; #10; // 1+1+0 = 2 (Sum=0, Cout=1)
        
        // දැන් කලින් ඉතිරි වුණු 1ක් (cin = 1) තියෙද්දී 1+1 එකතු වුණොත් (1+1+1 = 3)
        a = 1; b = 1; cin = 1; #10; // 1+1+1 = 3 -> binary වලින් 11 (Sum=1, Cout=1)

        $finish;
    end
endmodule