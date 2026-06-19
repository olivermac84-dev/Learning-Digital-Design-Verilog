`timescale 1ns / 1ps

module ripple_carry_4bit_tb;
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    ripple_carry_4bit uut (
        .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout)
    );

    initial begin
        $dumpfile("ripple_4bit_test.vcd");
        $dumpvars(0, ripple_carry_4bit_tb);

        // ටෙස්ට් 1: 4 + 3 එකතු කිරීම
        A = 4; B = 3; Cin = 0; #10; // Sum=7, Cout=0 වෙන්න ඕනේ

        // ටෙස්ට් 2: 12 + 5 එකතු කිරීම
        A = 12; B = 5; Cin = 0; #10; // 12+5 = 17. බිට් 4කින් පෙන්වන්න පුළුවන් උපරිම 15 නිසා උත්තරය 1ක් ඉතිරි වෙනවා (Sum=1, Cout=1 -> binary 10001)

        $finish;
    end
endmodule