// අපි කලින් හදපු full_adder එක මේ කෝඩ් එක ඇතුලෙත් පාවිච්චි කරනවා
module full_adder_sub(
    input a, input b, input cin,
    output sum, output cout
);
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a);
endmodule

// මේක තමයි ප්‍රධාන 4-bit adder එක
module ripple_carry_4bit(
    input [3:0] A,   // බිට් 4ක input එකක් (A3, A2, A1, A0)
    input [3:0] B,   // බිට් 4ක input එකක් (B3, B2, B1, B0)
    input Cin,
    output [3:0] Sum, // බිට් 4ක උත්තරය
    output Cout      // අන්තිමට ඉතිරි වන Carry එක
);
    wire c1, c2, c3; // මැදින් ගලාගෙන යන carry ඉරි ටික

    // Full Adders 4ක් එකකට එකක් සම්බන්ධ කිරීම
    full_adder_sub fa0 (A[0], B[0], Cin, Sum[0], c1);
    full_adder_sub fa1 (A[1], B[1], c1,  Sum[1], c2);
    full_adder_sub fa2 (A[2], B[2], c2,  Sum[2], c3);
    full_adder_sub fa3 (A[3], B[3], c3,  Sum[3], Cout);

endmodule