module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

    assign sum = a ^ b;     // ^ කියන්නේ XOR එකට (Sum එක හැදෙන්නේ මෙහෙමයි)
    assign carry = a & b;   // & කියන්නේ AND එකට (Carry එක හැදෙන්නේ මෙහෙමයි)

endmodule 