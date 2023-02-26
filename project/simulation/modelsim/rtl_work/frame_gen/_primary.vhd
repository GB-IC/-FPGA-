library verilog;
use verilog.vl_types.all;
entity frame_gen is
    generic(
        H_SYNC          : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0);
        H_BACK          : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0);
        H_LEFT          : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        H_VALID         : vl_logic_vector(0 to 11) := (Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        H_RIGHT         : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        H_FRONT         : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi1, Hi1, Hi0);
        H_TOTAL         : vl_logic_vector(0 to 11) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0);
        V_SYNC          : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        V_BACK          : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0);
        V_TOP           : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        V_VALID         : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0);
        V_BOTTOM        : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        V_FRONT         : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi1);
        V_TOTAL         : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi1, Hi0, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1, Hi1, Hi0)
    );
    port(
        vga_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        key_flag        : in     vl_logic;
        frame           : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of H_SYNC : constant is 1;
    attribute mti_svvh_generic_type of H_BACK : constant is 1;
    attribute mti_svvh_generic_type of H_LEFT : constant is 1;
    attribute mti_svvh_generic_type of H_VALID : constant is 1;
    attribute mti_svvh_generic_type of H_RIGHT : constant is 1;
    attribute mti_svvh_generic_type of H_FRONT : constant is 1;
    attribute mti_svvh_generic_type of H_TOTAL : constant is 1;
    attribute mti_svvh_generic_type of V_SYNC : constant is 1;
    attribute mti_svvh_generic_type of V_BACK : constant is 1;
    attribute mti_svvh_generic_type of V_TOP : constant is 1;
    attribute mti_svvh_generic_type of V_VALID : constant is 1;
    attribute mti_svvh_generic_type of V_BOTTOM : constant is 1;
    attribute mti_svvh_generic_type of V_FRONT : constant is 1;
    attribute mti_svvh_generic_type of V_TOTAL : constant is 1;
end frame_gen;
