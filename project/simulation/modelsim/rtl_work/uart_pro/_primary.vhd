library verilog;
use verilog.vl_types.all;
entity uart_pro is
    generic(
        IDLE            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        \X\             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        \Y\             : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        \W\             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        \H\             : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi0);
        \END\           : vl_logic_vector(0 to 3) := (Hi1, Hi0, Hi0, Hi1)
    );
    port(
        sys_rst_n       : in     vl_logic;
        sys_clk         : in     vl_logic;
        pi_data         : in     vl_logic_vector(7 downto 0);
        pi_flag         : in     vl_logic;
        x               : out    vl_logic_vector(9 downto 0);
        y               : out    vl_logic_vector(9 downto 0);
        w               : out    vl_logic_vector(9 downto 0);
        h               : out    vl_logic_vector(9 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of \X\ : constant is 1;
    attribute mti_svvh_generic_type of \Y\ : constant is 1;
    attribute mti_svvh_generic_type of \W\ : constant is 1;
    attribute mti_svvh_generic_type of \H\ : constant is 1;
    attribute mti_svvh_generic_type of \END\ : constant is 1;
end uart_pro;
