library verilog;
use verilog.vl_types.all;
entity mixColumnOperation is
    port(
        state_column    : in     vl_logic;
        row             : in     vl_logic_vector(1 downto 0);
        result          : out    vl_logic_vector(7 downto 0)
    );
end mixColumnOperation;
