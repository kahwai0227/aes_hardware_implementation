library verilog;
use verilog.vl_types.all;
entity AES_CU is
    generic(
        S0              : vl_logic_vector(1 downto 0) := (Hi0, Hi0);
        S1              : vl_logic_vector(1 downto 0) := (Hi0, Hi1);
        S2              : vl_logic_vector(1 downto 0) := (Hi1, Hi0)
    );
    port(
        start           : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        genk            : out    vl_logic;
        enc             : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of S0 : constant is 2;
    attribute mti_svvh_generic_type of S1 : constant is 2;
    attribute mti_svvh_generic_type of S2 : constant is 2;
end AES_CU;
