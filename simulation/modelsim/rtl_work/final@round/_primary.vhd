library verilog;
use verilog.vl_types.all;
entity finalRound is
    port(
        state_matrix    : in     vl_logic;
        round_key       : in     vl_logic_vector(7 downto 0);
        ciphertext      : out    vl_logic_vector(127 downto 0)
    );
end finalRound;
