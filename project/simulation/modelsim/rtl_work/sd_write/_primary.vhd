library verilog;
use verilog.vl_types.all;
entity sd_write is
    generic(
        IDLE            : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi0);
        SEND_CMD24      : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        CMD24_ACK       : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        \WR_DATA\       : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        \WR_BUSY\       : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0);
        WR_END          : vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi1);
        DATA_NUM        : vl_logic_vector(0 to 11) := (Hi0, Hi0, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        BYTE_HEAD       : vl_logic_vector(0 to 15) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi0)
    );
    port(
        sys_clk         : in     vl_logic;
        sys_clk_shift   : in     vl_logic;
        sys_rst_n       : in     vl_logic;
        miso            : in     vl_logic;
        wr_en           : in     vl_logic;
        wr_addr         : in     vl_logic_vector(31 downto 0);
        wr_data         : in     vl_logic_vector(15 downto 0);
        cs_n            : out    vl_logic;
        mosi            : out    vl_logic;
        wr_busy         : out    vl_logic;
        wr_req          : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE : constant is 1;
    attribute mti_svvh_generic_type of SEND_CMD24 : constant is 1;
    attribute mti_svvh_generic_type of CMD24_ACK : constant is 1;
    attribute mti_svvh_generic_type of \WR_DATA\ : constant is 1;
    attribute mti_svvh_generic_type of \WR_BUSY\ : constant is 1;
    attribute mti_svvh_generic_type of WR_END : constant is 1;
    attribute mti_svvh_generic_type of DATA_NUM : constant is 1;
    attribute mti_svvh_generic_type of BYTE_HEAD : constant is 1;
end sd_write;
