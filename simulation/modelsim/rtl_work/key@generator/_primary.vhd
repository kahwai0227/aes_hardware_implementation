library verilog;
use verilog.vl_types.all;
entity keyGenerator is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        ld              : in     vl_logic;
        rand_num        : out    vl_logic_vector(127 downto 0)
    );
end keyGenerator;
