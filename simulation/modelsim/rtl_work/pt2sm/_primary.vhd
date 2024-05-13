library verilog;
use verilog.vl_types.all;
entity pt2sm is
    port(
        plaintext       : in     vl_logic_vector(127 downto 0);
        state_matrix    : out    vl_logic
    );
end pt2sm;
