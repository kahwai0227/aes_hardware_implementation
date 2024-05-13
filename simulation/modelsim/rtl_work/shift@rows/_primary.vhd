library verilog;
use verilog.vl_types.all;
entity shiftRows is
    port(
        state_matrix    : in     vl_logic;
        shifted_matrix  : out    vl_logic
    );
end shiftRows;
