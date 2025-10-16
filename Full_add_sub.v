// Full Adder and Full Subtractor in one code
module Full_add_sub (
    input A, B, Cin,     // Inputs
    input Mode,          // Mode control: 0 = Adder, 1 = Subtractor
    output Sum, Cout     // Outputs: Sum/Difference and Carry/Borrow
);

    wire B_in;           // Modified B input

    // When Mode=0 → Adder; When Mode=1 → Subtractor
    assign B_in = B ^ Mode;   // In subtraction, B is complemented

    // Perform addition (works for both add and subtract)
    assign Sum  = A ^ B_in ^ Cin;                   
    assign Cout = (A & B_in) | (B_in & Cin) | (A & Cin);

endmodule
