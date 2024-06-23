library verilog;
use verilog.vl_types.all;
entity pt2sm_tb is
    generic(
        DATA_WIDTH      : integer := 128
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
end pt2sm_tb;
