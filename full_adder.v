module full_adder(
    input a,
    input b,
    input cin,     // Carry In (කලින් ඉතිරි වුණු අගය)
    output sum,
    output cout    // Carry Out (දැන් ඉතිරි වන අගය)
);

    // Full Adder එකේ සූත්‍රය (Logic equations)
    assign sum = a ^ b ^ cin;
    assign cout = (a & b) | (b & cin) | (cin & a); // | කියන්නේ OR එකට

endmodule