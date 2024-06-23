library verilog;
use verilog.vl_types.all;
entity mixColumns is
    port(
        state_matrix    : in     vl_logic;
        mixed_matrix    : out    vl_logic
    );
end mixColumns;
