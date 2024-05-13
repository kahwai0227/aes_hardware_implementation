library verilog;
use verilog.vl_types.all;
entity round is
    port(
        state_matrix    : in     vl_logic;
        round_key       : in     vl_logic_vector(127 downto 0);
        updated_state_matrix: out    vl_logic
    );
end round;
