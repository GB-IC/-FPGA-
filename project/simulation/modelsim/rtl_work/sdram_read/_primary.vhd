library verilog;
use verilog.vl_types.all;
entity sdram_read is
    generic(
        TRCD_CLK        : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        TCL_CLK         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1);
        TRP_CLK         : vl_logic_vector(0 to 9) := (Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0);
        RD_IDLE         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        RD_ACTIVE       : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        RD_TRCD         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        RD_READ         : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        RD_CL           : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        \RD_DATA\       : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        RD_PRE          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        RD_TRP          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        \RD_END\        : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi0);
        NOP             : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        ACTIVE          : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        READ            : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        B_STOP          : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        P_CHARGE        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        init_end        : in     vl_logic;
        rd_en           : in     vl_logic;
        rd_addr         : in     vl_logic_vector(23 downto 0);
        rd_data         : in     vl_logic_vector(15 downto 0);
        rd_burst_len    : in     vl_logic_vector(9 downto 0);
        rd_ack          : out    vl_logic;
        rd_end          : out    vl_logic;
        read_cmd        : out    vl_logic_vector(3 downto 0);
        read_ba         : out    vl_logic_vector(1 downto 0);
        read_addr       : out    vl_logic_vector(12 downto 0);
        rd_sdram_data   : out    vl_logic_vector(15 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of TRCD_CLK : constant is 1;
    attribute mti_svvh_generic_type of TCL_CLK : constant is 1;
    attribute mti_svvh_generic_type of TRP_CLK : constant is 1;
    attribute mti_svvh_generic_type of RD_IDLE : constant is 1;
    attribute mti_svvh_generic_type of RD_ACTIVE : constant is 1;
    attribute mti_svvh_generic_type of RD_TRCD : constant is 1;
    attribute mti_svvh_generic_type of RD_READ : constant is 1;
    attribute mti_svvh_generic_type of RD_CL : constant is 1;
    attribute mti_svvh_generic_type of \RD_DATA\ : constant is 1;
    attribute mti_svvh_generic_type of RD_PRE : constant is 1;
    attribute mti_svvh_generic_type of RD_TRP : constant is 1;
    attribute mti_svvh_generic_type of \RD_END\ : constant is 1;
    attribute mti_svvh_generic_type of NOP : constant is 1;
    attribute mti_svvh_generic_type of ACTIVE : constant is 1;
    attribute mti_svvh_generic_type of READ : constant is 1;
    attribute mti_svvh_generic_type of B_STOP : constant is 1;
    attribute mti_svvh_generic_type of P_CHARGE : constant is 1;
end sdram_read;
