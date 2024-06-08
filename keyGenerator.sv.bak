module keyGenerator (
    output reg [127:0] original_key // Output original key (128 bits)
);

// Use a pseudo-random number generator to generate the key
initial begin
    // Seed the random number generator (optional)
    $random;
    
    // Generate the 128-bit key
    original_key = $random;
end

endmodule