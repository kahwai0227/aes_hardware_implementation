library verilog;
use verilog.vl_types.all;
entity aes_top is
    port(
        start           : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        plaintext       : in     vl_logic_vector(127 downto 0);
        key             : in     vl_logic_vector(127 downto 0);
        ciphertext      : out    vl_logic_vector(127 downto 0)
    );
end aes_top;
