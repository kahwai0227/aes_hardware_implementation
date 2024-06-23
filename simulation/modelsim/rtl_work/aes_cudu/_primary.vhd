library verilog;
use verilog.vl_types.all;
entity aes_cudu is
    port(
        start           : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        plaintext       : in     vl_logic_vector(127 downto 0);
        cipher          : out    vl_logic_vector(127 downto 0)
    );
end aes_cudu;
