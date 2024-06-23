library verilog;
use verilog.vl_types.all;
entity roundKeyGenerator is
    port(
        original_key    : in     vl_logic_vector(127 downto 0);
        round_keys      : out    vl_logic
    );
end roundKeyGenerator;
