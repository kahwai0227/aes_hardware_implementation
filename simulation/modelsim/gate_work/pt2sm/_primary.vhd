library verilog;
use verilog.vl_types.all;
entity pt2sm is
    port(
        \state_matrix[3][3][0]\: out    vl_logic;
        \state_matrix[3][3][1]\: out    vl_logic;
        \state_matrix[3][3][2]\: out    vl_logic;
        \state_matrix[3][3][3]\: out    vl_logic;
        \state_matrix[3][3][4]\: out    vl_logic;
        \state_matrix[3][3][5]\: out    vl_logic;
        \state_matrix[3][3][6]\: out    vl_logic;
        \state_matrix[3][3][7]\: out    vl_logic;
        \state_matrix[3][2][0]\: out    vl_logic;
        \state_matrix[3][2][1]\: out    vl_logic;
        \state_matrix[3][2][2]\: out    vl_logic;
        \state_matrix[3][2][3]\: out    vl_logic;
        \state_matrix[3][2][4]\: out    vl_logic;
        \state_matrix[3][2][5]\: out    vl_logic;
        \state_matrix[3][2][6]\: out    vl_logic;
        \state_matrix[3][2][7]\: out    vl_logic;
        \state_matrix[3][1][0]\: out    vl_logic;
        \state_matrix[3][1][1]\: out    vl_logic;
        \state_matrix[3][1][2]\: out    vl_logic;
        \state_matrix[3][1][3]\: out    vl_logic;
        \state_matrix[3][1][4]\: out    vl_logic;
        \state_matrix[3][1][5]\: out    vl_logic;
        \state_matrix[3][1][6]\: out    vl_logic;
        \state_matrix[3][1][7]\: out    vl_logic;
        \state_matrix[3][0][0]\: out    vl_logic;
        \state_matrix[3][0][1]\: out    vl_logic;
        \state_matrix[3][0][2]\: out    vl_logic;
        \state_matrix[3][0][3]\: out    vl_logic;
        \state_matrix[3][0][4]\: out    vl_logic;
        \state_matrix[3][0][5]\: out    vl_logic;
        \state_matrix[3][0][6]\: out    vl_logic;
        \state_matrix[3][0][7]\: out    vl_logic;
        \state_matrix[2][3][0]\: out    vl_logic;
        \state_matrix[2][3][1]\: out    vl_logic;
        \state_matrix[2][3][2]\: out    vl_logic;
        \state_matrix[2][3][3]\: out    vl_logic;
        \state_matrix[2][3][4]\: out    vl_logic;
        \state_matrix[2][3][5]\: out    vl_logic;
        \state_matrix[2][3][6]\: out    vl_logic;
        \state_matrix[2][3][7]\: out    vl_logic;
        \state_matrix[2][2][0]\: out    vl_logic;
        \state_matrix[2][2][1]\: out    vl_logic;
        \state_matrix[2][2][2]\: out    vl_logic;
        \state_matrix[2][2][3]\: out    vl_logic;
        \state_matrix[2][2][4]\: out    vl_logic;
        \state_matrix[2][2][5]\: out    vl_logic;
        \state_matrix[2][2][6]\: out    vl_logic;
        \state_matrix[2][2][7]\: out    vl_logic;
        \state_matrix[2][1][0]\: out    vl_logic;
        \state_matrix[2][1][1]\: out    vl_logic;
        \state_matrix[2][1][2]\: out    vl_logic;
        \state_matrix[2][1][3]\: out    vl_logic;
        \state_matrix[2][1][4]\: out    vl_logic;
        \state_matrix[2][1][5]\: out    vl_logic;
        \state_matrix[2][1][6]\: out    vl_logic;
        \state_matrix[2][1][7]\: out    vl_logic;
        \state_matrix[2][0][0]\: out    vl_logic;
        \state_matrix[2][0][1]\: out    vl_logic;
        \state_matrix[2][0][2]\: out    vl_logic;
        \state_matrix[2][0][3]\: out    vl_logic;
        \state_matrix[2][0][4]\: out    vl_logic;
        \state_matrix[2][0][5]\: out    vl_logic;
        \state_matrix[2][0][6]\: out    vl_logic;
        \state_matrix[2][0][7]\: out    vl_logic;
        \state_matrix[1][3][0]\: out    vl_logic;
        \state_matrix[1][3][1]\: out    vl_logic;
        \state_matrix[1][3][2]\: out    vl_logic;
        \state_matrix[1][3][3]\: out    vl_logic;
        \state_matrix[1][3][4]\: out    vl_logic;
        \state_matrix[1][3][5]\: out    vl_logic;
        \state_matrix[1][3][6]\: out    vl_logic;
        \state_matrix[1][3][7]\: out    vl_logic;
        \state_matrix[1][2][0]\: out    vl_logic;
        \state_matrix[1][2][1]\: out    vl_logic;
        \state_matrix[1][2][2]\: out    vl_logic;
        \state_matrix[1][2][3]\: out    vl_logic;
        \state_matrix[1][2][4]\: out    vl_logic;
        \state_matrix[1][2][5]\: out    vl_logic;
        \state_matrix[1][2][6]\: out    vl_logic;
        \state_matrix[1][2][7]\: out    vl_logic;
        \state_matrix[1][1][0]\: out    vl_logic;
        \state_matrix[1][1][1]\: out    vl_logic;
        \state_matrix[1][1][2]\: out    vl_logic;
        \state_matrix[1][1][3]\: out    vl_logic;
        \state_matrix[1][1][4]\: out    vl_logic;
        \state_matrix[1][1][5]\: out    vl_logic;
        \state_matrix[1][1][6]\: out    vl_logic;
        \state_matrix[1][1][7]\: out    vl_logic;
        \state_matrix[1][0][0]\: out    vl_logic;
        \state_matrix[1][0][1]\: out    vl_logic;
        \state_matrix[1][0][2]\: out    vl_logic;
        \state_matrix[1][0][3]\: out    vl_logic;
        \state_matrix[1][0][4]\: out    vl_logic;
        \state_matrix[1][0][5]\: out    vl_logic;
        \state_matrix[1][0][6]\: out    vl_logic;
        \state_matrix[1][0][7]\: out    vl_logic;
        \state_matrix[0][3][0]\: out    vl_logic;
        \state_matrix[0][3][1]\: out    vl_logic;
        \state_matrix[0][3][2]\: out    vl_logic;
        \state_matrix[0][3][3]\: out    vl_logic;
        \state_matrix[0][3][4]\: out    vl_logic;
        \state_matrix[0][3][5]\: out    vl_logic;
        \state_matrix[0][3][6]\: out    vl_logic;
        \state_matrix[0][3][7]\: out    vl_logic;
        \state_matrix[0][2][0]\: out    vl_logic;
        \state_matrix[0][2][1]\: out    vl_logic;
        \state_matrix[0][2][2]\: out    vl_logic;
        \state_matrix[0][2][3]\: out    vl_logic;
        \state_matrix[0][2][4]\: out    vl_logic;
        \state_matrix[0][2][5]\: out    vl_logic;
        \state_matrix[0][2][6]\: out    vl_logic;
        \state_matrix[0][2][7]\: out    vl_logic;
        \state_matrix[0][1][0]\: out    vl_logic;
        \state_matrix[0][1][1]\: out    vl_logic;
        \state_matrix[0][1][2]\: out    vl_logic;
        \state_matrix[0][1][3]\: out    vl_logic;
        \state_matrix[0][1][4]\: out    vl_logic;
        \state_matrix[0][1][5]\: out    vl_logic;
        \state_matrix[0][1][6]\: out    vl_logic;
        \state_matrix[0][1][7]\: out    vl_logic;
        \state_matrix[0][0][0]\: out    vl_logic;
        \state_matrix[0][0][1]\: out    vl_logic;
        \state_matrix[0][0][2]\: out    vl_logic;
        \state_matrix[0][0][3]\: out    vl_logic;
        \state_matrix[0][0][4]\: out    vl_logic;
        \state_matrix[0][0][5]\: out    vl_logic;
        \state_matrix[0][0][6]\: out    vl_logic;
        \state_matrix[0][0][7]\: out    vl_logic;
        plaintext       : in     vl_logic_vector(127 downto 0)
    );
end pt2sm;
