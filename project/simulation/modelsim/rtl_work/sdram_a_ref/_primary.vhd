library verilog;
use verilog.vl_types.all;
entity sdram_a_ref is
    generic(
        CNT_REF_MAX     : vl_logic_vector(0 to 9) := (Hi1, Hi0, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1, Hi0, Hi1);
        TRP_CLK         : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        TRC_CLK         : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1);
        P_CHARGE        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        A_REF           : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        NOP             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        AREF_IDLE       : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        AREF_PCHA       : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        AREF_TRP        : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        AUTO_REF        : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        AREF_TRF        : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        \AREF_END\      : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        init_end        : in     vl_logic;
        aref_en         : in     vl_logic;
        aref_req        : out    vl_logic;
        aref_cmd        : out    vl_logic_vector(3 downto 0);
        aref_ba         : out    vl_logic_vector(1 downto 0);
        aref_addr       : out    vl_logic_vector(12 downto 0);
        aref_end        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CNT_REF_MAX : constant is 1;
    attribute mti_svvh_generic_type of TRP_CLK : constant is 1;
    attribute mti_svvh_generic_type of TRC_CLK : constant is 1;
    attribute mti_svvh_generic_type of P_CHARGE : constant is 1;
    attribute mti_svvh_generic_type of A_REF : constant is 1;
    attribute mti_svvh_generic_type of NOP : constant is 1;
    attribute mti_svvh_generic_type of AREF_IDLE : constant is 1;
    attribute mti_svvh_generic_type of AREF_PCHA : constant is 1;
    attribute mti_svvh_generic_type of AREF_TRP : constant is 1;
    attribute mti_svvh_generic_type of AUTO_REF : constant is 1;
    attribute mti_svvh_generic_type of AREF_TRF : constant is 1;
    attribute mti_svvh_generic_type of \AREF_END\ : constant is 1;
end sdram_a_ref;
