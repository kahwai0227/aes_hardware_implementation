library verilog;
use verilog.vl_types.all;
entity subBytes is
    port(
        state_matrix    : in     vl_logic;
        substituted_matrix: out    vl_logic
    );
end subBytes;
