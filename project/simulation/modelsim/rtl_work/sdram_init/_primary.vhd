library verilog;
use verilog.vl_types.all;
entity sdram_init is
    generic(
        T_POWER         : vl_logic_vector(0 to 14) := (Hi1, Hi0, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0);
        P_CHARGE        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        AUTO_REF        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        NOP             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        M_REG_SET       : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        INIT_IDLE       : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        INIT_PRE        : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        INIT_TRP        : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        INIT_AR         : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        INIT_TRF        : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        INIT_MRS        : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        INIT_TMRD       : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1);
        \INIT_END\      : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        TRP_CLK         : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        TRC_CLK         : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1);
        TMRD_CLK        : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        init_cmd        : out    vl_logic_vector(3 downto 0);
        init_ba         : out    vl_logic_vector(1 downto 0);
        init_addr       : out    vl_logic_vector(12 downto 0);
        init_end        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of T_POWER : constant is 1;
    attribute mti_svvh_generic_type of P_CHARGE : constant is 1;
    attribute mti_svvh_generic_type of AUTO_REF : constant is 1;
    attribute mti_svvh_generic_type of NOP : constant is 1;
    attribute mti_svvh_generic_type of M_REG_SET : constant is 1;
    attribute mti_svvh_generic_type of INIT_IDLE : constant is 1;
    attribute mti_svvh_generic_type of INIT_PRE : constant is 1;
    attribute mti_svvh_generic_type of INIT_TRP : constant is 1;
    attribute mti_svvh_generic_type of INIT_AR : constant is 1;
    attribute mti_svvh_generic_type of INIT_TRF : constant is 1;
    attribute mti_svvh_generic_type of INIT_MRS : constant is 1;
    attribute mti_svvh_generic_type of INIT_TMRD : constant is 1;
    attribute mti_svvh_generic_type of \INIT_END\ : constant is 1;
    attribute mti_svvh_generic_type of TRP_CLK : constant is 1;
    attribute mti_svvh_generic_type of TRC_CLK : constant is 1;
    attribute mti_svvh_generic_type of TMRD_CLK : constant is 1;
end sdram_init;
