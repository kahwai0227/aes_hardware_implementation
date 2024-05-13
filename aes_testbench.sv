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
        plaintext = 128'h00112233445566778899aabbccddeeff; // Example plaintext
        key = 128'h000102030405060708090a0b0c0d0e0f;       // Example key
		  #10;
		  $display("Ciphertext: %h", ciphertext);
    end

    // Add stimulus generation, assertions, and other testbench code here

endmodule