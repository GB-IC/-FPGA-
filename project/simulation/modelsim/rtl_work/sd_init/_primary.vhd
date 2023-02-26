library verilog;
use verilog.vl_types.all;
entity sd_init is
    generic(
        CMD0            : vl_logic_vector(47 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1);
        CMD8            : vl_logic_vector(47 downto 0) := (Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1);
        CMD55           : vl_logic_vector(47 downto 0) := (Hi0, Hi1, Hi1, Hi1, Hi0, Hi1, Hi1, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1);
        ACMD41          : vl_logic_vector(47 downto 0) := (Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1);
        CNT_WAIT_MAX    : vl_logic_vector(0 to 7) := (Hi0, Hi1, Hi1, Hi0, Hi0, Hi1, Hi0, Hi0);
        IDLE            : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi0);
        SEND_CMD0       : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi0, Hi1);
        CMD0_ACK        : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi1);
        SEND_CMD8       : vl_logic_vector(0 to 3) := (Hi0, Hi0, Hi1, Hi0);
        CMD8_ACK        : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi0);
        SEND_CMD55      : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi1, Hi1);
        CMD55_ACK       : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi1);
        SEND_ACMD41     : vl_logic_vector(0 to 3) := (Hi0, Hi1, Hi0, Hi0);
        ACMD41_ACK      : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi0);
        \INIT_END\      : vl_logic_vector(0 to 3) := (Hi1, Hi1, Hi0, Hi1)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_clk_shift   : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        miso            : in     vl_logic;
        cs_n            : out    vl_logic;
        mosi            : out    vl_logic;
        init_end        : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CMD0 : constant is 1;
    attribute mti_svvh_generic_type of CMD8 : constant is 1;
    attribute mti_svvh_generic_type of CMD55 : constant is 1;
    attribute mti_svvh_generic_type of ACMD41 : constant is 1;
    attribute mti_svvh_generic_type of CNT_WAIT_MAX : constant is 1;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of SEND_CMD0 : constant is 1;
    attribute mti_svvh_generic_type of CMD0_ACK : constant is 1;
    attribute mti_svvh_generic_type of SEND_CMD8 : constant is 1;
    attribute mti_svvh_generic_type of CMD8_ACK : constant is 1;
    attribute mti_svvh_generic_type of SEND_CMD55 : constant is 1;
    attribute mti_svvh_generic_type of CMD55_ACK : constant is 1;
    attribute mti_svvh_generic_type of SEND_ACMD41 : constant is 1;
    attribute mti_svvh_generic_type of ACMD41_ACK : constant is 1;
    attribute mti_svvh_generic_type of \INIT_END\ : constant is 1;
end sd_init;
