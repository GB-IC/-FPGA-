library verilog;
use verilog.vl_types.all;
entity encode is
    generic(
        DATA_OUT0       : vl_logic_vector(0 to 9) := (Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0);
        DATA_OUT1       : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1);
        DATA_OUT2       : vl_logic_vector(0 to 9) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0);
        DATA_OUT3       : vl_logic_vector(0 to 9) := (Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        data_in         : in     vl_logic_vector(7 downto 0);
        c0              : in     vl_logic;
        c1              : in     vl_logic;
        de              : in     vl_logic;
        data_out        : out    vl_logic_vector(9 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_OUT0 : constant is 1;
    attribute mti_svvh_generic_type of DATA_OUT1 : constant is 1;
    attribute mti_svvh_generic_type of DATA_OUT2 : constant is 1;
    attribute mti_svvh_generic_type of DATA_OUT3 : constant is 1;
end encode;
