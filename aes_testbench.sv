module aes_testbench();

    // Define input and output signals
    reg [127:0] plaintext;  // 128-bit input plaintext
    reg [127:0] key;        // 128-bit encryption key
    wire [127:0] ciphertext; // 128-bit output ciphertext

    // Instantiate AES module
    aes_top aes_inst (
        .plaintext(plaintext),
        .key(key),
        .ciphertext(ciphertext)
    );

    // Initial values for plaintext and key (you can modify these as needed)
	 initial begin
	 $monitor($time, " plaintext=%h, key=%h, ciphertext=%h", plaintext, key, ciphertext);
	 end
	 
    initial begin
        #0 plaintext = 128'h00000000000000000000000000000000; key = 128'h00000000000000000000000000000000;       // Example key
		  #50 plaintext = 128'h6BC1BEE22E409F96E93D7E117393172A; key = 128'h2B7E151628AED2A6ABF7158809CF4F3;
		  #100 plaintext = 128'hAE2D8A571E03AC9C9EB76FAC45AF8E51; key = 128'h2B7E151628AED2A6ABF7158809CF4F3;
		  #150 plaintext = 128'h00112233445566778899AABBCCDDEEF; key = 128'h000102030405060708090A0B0C0D0E0;
	 end

    // Add stimulus generation, assertions, and other testbench code here

endmodule